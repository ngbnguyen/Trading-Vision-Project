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
dense_79/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_79/kernel
s
#dense_79/kernel/Read/ReadVariableOpReadVariableOpdense_79/kernel*
_output_shapes

:
*
dtype0
r
dense_79/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_79/bias
k
!dense_79/bias/Read/ReadVariableOpReadVariableOpdense_79/bias*
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
lstm_237/lstm_cell_237/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_237/lstm_cell_237/kernel
?
1lstm_237/lstm_cell_237/kernel/Read/ReadVariableOpReadVariableOplstm_237/lstm_cell_237/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_237/lstm_cell_237/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_237/lstm_cell_237/recurrent_kernel
?
;lstm_237/lstm_cell_237/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_237/lstm_cell_237/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_237/lstm_cell_237/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_237/lstm_cell_237/bias
?
/lstm_237/lstm_cell_237/bias/Read/ReadVariableOpReadVariableOplstm_237/lstm_cell_237/bias*
_output_shapes	
:?*
dtype0
?
lstm_238/lstm_cell_238/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_238/lstm_cell_238/kernel
?
1lstm_238/lstm_cell_238/kernel/Read/ReadVariableOpReadVariableOplstm_238/lstm_cell_238/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_238/lstm_cell_238/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_238/lstm_cell_238/recurrent_kernel
?
;lstm_238/lstm_cell_238/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_238/lstm_cell_238/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_238/lstm_cell_238/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_238/lstm_cell_238/bias
?
/lstm_238/lstm_cell_238/bias/Read/ReadVariableOpReadVariableOplstm_238/lstm_cell_238/bias*
_output_shapes	
:?*
dtype0
?
lstm_239/lstm_cell_239/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_239/lstm_cell_239/kernel
?
1lstm_239/lstm_cell_239/kernel/Read/ReadVariableOpReadVariableOplstm_239/lstm_cell_239/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_239/lstm_cell_239/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_239/lstm_cell_239/recurrent_kernel
?
;lstm_239/lstm_cell_239/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_239/lstm_cell_239/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_239/lstm_cell_239/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_239/lstm_cell_239/bias
?
/lstm_239/lstm_cell_239/bias/Read/ReadVariableOpReadVariableOplstm_239/lstm_cell_239/bias*
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
Adam/dense_79/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_79/kernel/m
?
*Adam/dense_79/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_79/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_79/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_79/bias/m
y
(Adam/dense_79/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_79/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_237/lstm_cell_237/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_237/lstm_cell_237/kernel/m
?
8Adam/lstm_237/lstm_cell_237/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_237/lstm_cell_237/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_237/lstm_cell_237/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_237/lstm_cell_237/recurrent_kernel/m
?
BAdam/lstm_237/lstm_cell_237/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_237/lstm_cell_237/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_237/lstm_cell_237/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_237/lstm_cell_237/bias/m
?
6Adam/lstm_237/lstm_cell_237/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_237/lstm_cell_237/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_238/lstm_cell_238/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_238/lstm_cell_238/kernel/m
?
8Adam/lstm_238/lstm_cell_238/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_238/lstm_cell_238/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_238/lstm_cell_238/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_238/lstm_cell_238/recurrent_kernel/m
?
BAdam/lstm_238/lstm_cell_238/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_238/lstm_cell_238/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_238/lstm_cell_238/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_238/lstm_cell_238/bias/m
?
6Adam/lstm_238/lstm_cell_238/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_238/lstm_cell_238/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_239/lstm_cell_239/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_239/lstm_cell_239/kernel/m
?
8Adam/lstm_239/lstm_cell_239/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_239/lstm_cell_239/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_239/lstm_cell_239/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_239/lstm_cell_239/recurrent_kernel/m
?
BAdam/lstm_239/lstm_cell_239/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_239/lstm_cell_239/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_239/lstm_cell_239/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_239/lstm_cell_239/bias/m
?
6Adam/lstm_239/lstm_cell_239/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_239/lstm_cell_239/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_79/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_79/kernel/v
?
*Adam/dense_79/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_79/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_79/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_79/bias/v
y
(Adam/dense_79/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_79/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_237/lstm_cell_237/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_237/lstm_cell_237/kernel/v
?
8Adam/lstm_237/lstm_cell_237/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_237/lstm_cell_237/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_237/lstm_cell_237/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_237/lstm_cell_237/recurrent_kernel/v
?
BAdam/lstm_237/lstm_cell_237/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_237/lstm_cell_237/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_237/lstm_cell_237/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_237/lstm_cell_237/bias/v
?
6Adam/lstm_237/lstm_cell_237/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_237/lstm_cell_237/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_238/lstm_cell_238/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_238/lstm_cell_238/kernel/v
?
8Adam/lstm_238/lstm_cell_238/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_238/lstm_cell_238/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_238/lstm_cell_238/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_238/lstm_cell_238/recurrent_kernel/v
?
BAdam/lstm_238/lstm_cell_238/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_238/lstm_cell_238/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_238/lstm_cell_238/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_238/lstm_cell_238/bias/v
?
6Adam/lstm_238/lstm_cell_238/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_238/lstm_cell_238/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_239/lstm_cell_239/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_239/lstm_cell_239/kernel/v
?
8Adam/lstm_239/lstm_cell_239/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_239/lstm_cell_239/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_239/lstm_cell_239/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_239/lstm_cell_239/recurrent_kernel/v
?
BAdam/lstm_239/lstm_cell_239/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_239/lstm_cell_239/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_239/lstm_cell_239/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_239/lstm_cell_239/bias/v
?
6Adam/lstm_239/lstm_cell_239/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_239/lstm_cell_239/bias/v*
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
VARIABLE_VALUEdense_79/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_79/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_237/lstm_cell_237/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_237/lstm_cell_237/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_237/lstm_cell_237/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_238/lstm_cell_238/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_238/lstm_cell_238/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_238/lstm_cell_238/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_239/lstm_cell_239/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_239/lstm_cell_239/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_239/lstm_cell_239/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_79/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_79/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_237/lstm_cell_237/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_237/lstm_cell_237/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_237/lstm_cell_237/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_238/lstm_cell_238/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_238/lstm_cell_238/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_238/lstm_cell_238/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_239/lstm_cell_239/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_239/lstm_cell_239/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_239/lstm_cell_239/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_79/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_79/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_237/lstm_cell_237/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_237/lstm_cell_237/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_237/lstm_cell_237/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_238/lstm_cell_238/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_238/lstm_cell_238/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_238/lstm_cell_238/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_239/lstm_cell_239/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_239/lstm_cell_239/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_239/lstm_cell_239/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_237_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_237_inputlstm_237/lstm_cell_237/kernel'lstm_237/lstm_cell_237/recurrent_kernellstm_237/lstm_cell_237/biaslstm_238/lstm_cell_238/kernel'lstm_238/lstm_cell_238/recurrent_kernellstm_238/lstm_cell_238/biaslstm_239/lstm_cell_239/kernel'lstm_239/lstm_cell_239/recurrent_kernellstm_239/lstm_cell_239/biasdense_79/kerneldense_79/bias*
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
%__inference_signature_wrapper_2265007
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_79/kernel/Read/ReadVariableOp!dense_79/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_237/lstm_cell_237/kernel/Read/ReadVariableOp;lstm_237/lstm_cell_237/recurrent_kernel/Read/ReadVariableOp/lstm_237/lstm_cell_237/bias/Read/ReadVariableOp1lstm_238/lstm_cell_238/kernel/Read/ReadVariableOp;lstm_238/lstm_cell_238/recurrent_kernel/Read/ReadVariableOp/lstm_238/lstm_cell_238/bias/Read/ReadVariableOp1lstm_239/lstm_cell_239/kernel/Read/ReadVariableOp;lstm_239/lstm_cell_239/recurrent_kernel/Read/ReadVariableOp/lstm_239/lstm_cell_239/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_79/kernel/m/Read/ReadVariableOp(Adam/dense_79/bias/m/Read/ReadVariableOp8Adam/lstm_237/lstm_cell_237/kernel/m/Read/ReadVariableOpBAdam/lstm_237/lstm_cell_237/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_237/lstm_cell_237/bias/m/Read/ReadVariableOp8Adam/lstm_238/lstm_cell_238/kernel/m/Read/ReadVariableOpBAdam/lstm_238/lstm_cell_238/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_238/lstm_cell_238/bias/m/Read/ReadVariableOp8Adam/lstm_239/lstm_cell_239/kernel/m/Read/ReadVariableOpBAdam/lstm_239/lstm_cell_239/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_239/lstm_cell_239/bias/m/Read/ReadVariableOp*Adam/dense_79/kernel/v/Read/ReadVariableOp(Adam/dense_79/bias/v/Read/ReadVariableOp8Adam/lstm_237/lstm_cell_237/kernel/v/Read/ReadVariableOpBAdam/lstm_237/lstm_cell_237/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_237/lstm_cell_237/bias/v/Read/ReadVariableOp8Adam/lstm_238/lstm_cell_238/kernel/v/Read/ReadVariableOpBAdam/lstm_238/lstm_cell_238/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_238/lstm_cell_238/bias/v/Read/ReadVariableOp8Adam/lstm_239/lstm_cell_239/kernel/v/Read/ReadVariableOpBAdam/lstm_239/lstm_cell_239/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_239/lstm_cell_239/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_2268219
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_79/kerneldense_79/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_237/lstm_cell_237/kernel'lstm_237/lstm_cell_237/recurrent_kernellstm_237/lstm_cell_237/biaslstm_238/lstm_cell_238/kernel'lstm_238/lstm_cell_238/recurrent_kernellstm_238/lstm_cell_238/biaslstm_239/lstm_cell_239/kernel'lstm_239/lstm_cell_239/recurrent_kernellstm_239/lstm_cell_239/biastotalcountAdam/dense_79/kernel/mAdam/dense_79/bias/m$Adam/lstm_237/lstm_cell_237/kernel/m.Adam/lstm_237/lstm_cell_237/recurrent_kernel/m"Adam/lstm_237/lstm_cell_237/bias/m$Adam/lstm_238/lstm_cell_238/kernel/m.Adam/lstm_238/lstm_cell_238/recurrent_kernel/m"Adam/lstm_238/lstm_cell_238/bias/m$Adam/lstm_239/lstm_cell_239/kernel/m.Adam/lstm_239/lstm_cell_239/recurrent_kernel/m"Adam/lstm_239/lstm_cell_239/bias/mAdam/dense_79/kernel/vAdam/dense_79/bias/v$Adam/lstm_237/lstm_cell_237/kernel/v.Adam/lstm_237/lstm_cell_237/recurrent_kernel/v"Adam/lstm_237/lstm_cell_237/bias/v$Adam/lstm_238/lstm_cell_238/kernel/v.Adam/lstm_238/lstm_cell_238/recurrent_kernel/v"Adam/lstm_238/lstm_cell_238/bias/v$Adam/lstm_239/lstm_cell_239/kernel/v.Adam/lstm_239/lstm_cell_239/recurrent_kernel/v"Adam/lstm_239/lstm_cell_239/bias/v*4
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
#__inference__traced_restore_2268349??+
??
?
"__inference__wrapped_model_2262747
lstm_237_inputV
Csequential_79_lstm_237_lstm_cell_372_matmul_readvariableop_resource:	?X
Esequential_79_lstm_237_lstm_cell_372_matmul_1_readvariableop_resource:	d?S
Dsequential_79_lstm_237_lstm_cell_372_biasadd_readvariableop_resource:	?V
Csequential_79_lstm_238_lstm_cell_373_matmul_readvariableop_resource:	d?X
Esequential_79_lstm_238_lstm_cell_373_matmul_1_readvariableop_resource:	2?S
Dsequential_79_lstm_238_lstm_cell_373_biasadd_readvariableop_resource:	?U
Csequential_79_lstm_239_lstm_cell_374_matmul_readvariableop_resource:2(W
Esequential_79_lstm_239_lstm_cell_374_matmul_1_readvariableop_resource:
(R
Dsequential_79_lstm_239_lstm_cell_374_biasadd_readvariableop_resource:(G
5sequential_79_dense_79_matmul_readvariableop_resource:
D
6sequential_79_dense_79_biasadd_readvariableop_resource:
identity??-sequential_79/dense_79/BiasAdd/ReadVariableOp?,sequential_79/dense_79/MatMul/ReadVariableOp?;sequential_79/lstm_237/lstm_cell_372/BiasAdd/ReadVariableOp?:sequential_79/lstm_237/lstm_cell_372/MatMul/ReadVariableOp?<sequential_79/lstm_237/lstm_cell_372/MatMul_1/ReadVariableOp?sequential_79/lstm_237/while?;sequential_79/lstm_238/lstm_cell_373/BiasAdd/ReadVariableOp?:sequential_79/lstm_238/lstm_cell_373/MatMul/ReadVariableOp?<sequential_79/lstm_238/lstm_cell_373/MatMul_1/ReadVariableOp?sequential_79/lstm_238/while?;sequential_79/lstm_239/lstm_cell_374/BiasAdd/ReadVariableOp?:sequential_79/lstm_239/lstm_cell_374/MatMul/ReadVariableOp?<sequential_79/lstm_239/lstm_cell_374/MatMul_1/ReadVariableOp?sequential_79/lstm_239/whileZ
sequential_79/lstm_237/ShapeShapelstm_237_input*
T0*
_output_shapes
:t
*sequential_79/lstm_237/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_79/lstm_237/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_79/lstm_237/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_79/lstm_237/strided_sliceStridedSlice%sequential_79/lstm_237/Shape:output:03sequential_79/lstm_237/strided_slice/stack:output:05sequential_79/lstm_237/strided_slice/stack_1:output:05sequential_79/lstm_237/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_79/lstm_237/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
#sequential_79/lstm_237/zeros/packedPack-sequential_79/lstm_237/strided_slice:output:0.sequential_79/lstm_237/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_79/lstm_237/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_79/lstm_237/zerosFill,sequential_79/lstm_237/zeros/packed:output:0+sequential_79/lstm_237/zeros/Const:output:0*
T0*'
_output_shapes
:?????????di
'sequential_79/lstm_237/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
%sequential_79/lstm_237/zeros_1/packedPack-sequential_79/lstm_237/strided_slice:output:00sequential_79/lstm_237/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_79/lstm_237/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_79/lstm_237/zeros_1Fill.sequential_79/lstm_237/zeros_1/packed:output:0-sequential_79/lstm_237/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dz
%sequential_79/lstm_237/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_79/lstm_237/transpose	Transposelstm_237_input.sequential_79/lstm_237/transpose/perm:output:0*
T0*+
_output_shapes
:?????????r
sequential_79/lstm_237/Shape_1Shape$sequential_79/lstm_237/transpose:y:0*
T0*
_output_shapes
:v
,sequential_79/lstm_237/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_79/lstm_237/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_79/lstm_237/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_79/lstm_237/strided_slice_1StridedSlice'sequential_79/lstm_237/Shape_1:output:05sequential_79/lstm_237/strided_slice_1/stack:output:07sequential_79/lstm_237/strided_slice_1/stack_1:output:07sequential_79/lstm_237/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_79/lstm_237/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_79/lstm_237/TensorArrayV2TensorListReserve;sequential_79/lstm_237/TensorArrayV2/element_shape:output:0/sequential_79/lstm_237/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_79/lstm_237/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
>sequential_79/lstm_237/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_79/lstm_237/transpose:y:0Usequential_79/lstm_237/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_79/lstm_237/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_79/lstm_237/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_79/lstm_237/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_79/lstm_237/strided_slice_2StridedSlice$sequential_79/lstm_237/transpose:y:05sequential_79/lstm_237/strided_slice_2/stack:output:07sequential_79/lstm_237/strided_slice_2/stack_1:output:07sequential_79/lstm_237/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
:sequential_79/lstm_237/lstm_cell_372/MatMul/ReadVariableOpReadVariableOpCsequential_79_lstm_237_lstm_cell_372_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
+sequential_79/lstm_237/lstm_cell_372/MatMulMatMul/sequential_79/lstm_237/strided_slice_2:output:0Bsequential_79/lstm_237/lstm_cell_372/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_79/lstm_237/lstm_cell_372/MatMul_1/ReadVariableOpReadVariableOpEsequential_79_lstm_237_lstm_cell_372_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
-sequential_79/lstm_237/lstm_cell_372/MatMul_1MatMul%sequential_79/lstm_237/zeros:output:0Dsequential_79/lstm_237/lstm_cell_372/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_79/lstm_237/lstm_cell_372/addAddV25sequential_79/lstm_237/lstm_cell_372/MatMul:product:07sequential_79/lstm_237/lstm_cell_372/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_79/lstm_237/lstm_cell_372/BiasAdd/ReadVariableOpReadVariableOpDsequential_79_lstm_237_lstm_cell_372_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_79/lstm_237/lstm_cell_372/BiasAddBiasAdd,sequential_79/lstm_237/lstm_cell_372/add:z:0Csequential_79/lstm_237/lstm_cell_372/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_79/lstm_237/lstm_cell_372/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_79/lstm_237/lstm_cell_372/splitSplit=sequential_79/lstm_237/lstm_cell_372/split/split_dim:output:05sequential_79/lstm_237/lstm_cell_372/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
,sequential_79/lstm_237/lstm_cell_372/SigmoidSigmoid3sequential_79/lstm_237/lstm_cell_372/split:output:0*
T0*'
_output_shapes
:?????????d?
.sequential_79/lstm_237/lstm_cell_372/Sigmoid_1Sigmoid3sequential_79/lstm_237/lstm_cell_372/split:output:1*
T0*'
_output_shapes
:?????????d?
(sequential_79/lstm_237/lstm_cell_372/mulMul2sequential_79/lstm_237/lstm_cell_372/Sigmoid_1:y:0'sequential_79/lstm_237/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
)sequential_79/lstm_237/lstm_cell_372/ReluRelu3sequential_79/lstm_237/lstm_cell_372/split:output:2*
T0*'
_output_shapes
:?????????d?
*sequential_79/lstm_237/lstm_cell_372/mul_1Mul0sequential_79/lstm_237/lstm_cell_372/Sigmoid:y:07sequential_79/lstm_237/lstm_cell_372/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
*sequential_79/lstm_237/lstm_cell_372/add_1AddV2,sequential_79/lstm_237/lstm_cell_372/mul:z:0.sequential_79/lstm_237/lstm_cell_372/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
.sequential_79/lstm_237/lstm_cell_372/Sigmoid_2Sigmoid3sequential_79/lstm_237/lstm_cell_372/split:output:3*
T0*'
_output_shapes
:?????????d?
+sequential_79/lstm_237/lstm_cell_372/Relu_1Relu.sequential_79/lstm_237/lstm_cell_372/add_1:z:0*
T0*'
_output_shapes
:?????????d?
*sequential_79/lstm_237/lstm_cell_372/mul_2Mul2sequential_79/lstm_237/lstm_cell_372/Sigmoid_2:y:09sequential_79/lstm_237/lstm_cell_372/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
4sequential_79/lstm_237/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
&sequential_79/lstm_237/TensorArrayV2_1TensorListReserve=sequential_79/lstm_237/TensorArrayV2_1/element_shape:output:0/sequential_79/lstm_237/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_79/lstm_237/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_79/lstm_237/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_79/lstm_237/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_79/lstm_237/whileWhile2sequential_79/lstm_237/while/loop_counter:output:08sequential_79/lstm_237/while/maximum_iterations:output:0$sequential_79/lstm_237/time:output:0/sequential_79/lstm_237/TensorArrayV2_1:handle:0%sequential_79/lstm_237/zeros:output:0'sequential_79/lstm_237/zeros_1:output:0/sequential_79/lstm_237/strided_slice_1:output:0Nsequential_79/lstm_237/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_79_lstm_237_lstm_cell_372_matmul_readvariableop_resourceEsequential_79_lstm_237_lstm_cell_372_matmul_1_readvariableop_resourceDsequential_79_lstm_237_lstm_cell_372_biasadd_readvariableop_resource*
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
)sequential_79_lstm_237_while_body_2262379*5
cond-R+
)sequential_79_lstm_237_while_cond_2262378*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Gsequential_79/lstm_237/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
9sequential_79/lstm_237/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_79/lstm_237/while:output:3Psequential_79/lstm_237/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0
,sequential_79/lstm_237/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_79/lstm_237/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_79/lstm_237/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_79/lstm_237/strided_slice_3StridedSliceBsequential_79/lstm_237/TensorArrayV2Stack/TensorListStack:tensor:05sequential_79/lstm_237/strided_slice_3/stack:output:07sequential_79/lstm_237/strided_slice_3/stack_1:output:07sequential_79/lstm_237/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask|
'sequential_79/lstm_237/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_79/lstm_237/transpose_1	TransposeBsequential_79/lstm_237/TensorArrayV2Stack/TensorListStack:tensor:00sequential_79/lstm_237/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_79/lstm_237/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_79/lstm_238/ShapeShape&sequential_79/lstm_237/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_79/lstm_238/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_79/lstm_238/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_79/lstm_238/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_79/lstm_238/strided_sliceStridedSlice%sequential_79/lstm_238/Shape:output:03sequential_79/lstm_238/strided_slice/stack:output:05sequential_79/lstm_238/strided_slice/stack_1:output:05sequential_79/lstm_238/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_79/lstm_238/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
#sequential_79/lstm_238/zeros/packedPack-sequential_79/lstm_238/strided_slice:output:0.sequential_79/lstm_238/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_79/lstm_238/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_79/lstm_238/zerosFill,sequential_79/lstm_238/zeros/packed:output:0+sequential_79/lstm_238/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2i
'sequential_79/lstm_238/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
%sequential_79/lstm_238/zeros_1/packedPack-sequential_79/lstm_238/strided_slice:output:00sequential_79/lstm_238/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_79/lstm_238/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_79/lstm_238/zeros_1Fill.sequential_79/lstm_238/zeros_1/packed:output:0-sequential_79/lstm_238/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2z
%sequential_79/lstm_238/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_79/lstm_238/transpose	Transpose&sequential_79/lstm_237/transpose_1:y:0.sequential_79/lstm_238/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_79/lstm_238/Shape_1Shape$sequential_79/lstm_238/transpose:y:0*
T0*
_output_shapes
:v
,sequential_79/lstm_238/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_79/lstm_238/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_79/lstm_238/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_79/lstm_238/strided_slice_1StridedSlice'sequential_79/lstm_238/Shape_1:output:05sequential_79/lstm_238/strided_slice_1/stack:output:07sequential_79/lstm_238/strided_slice_1/stack_1:output:07sequential_79/lstm_238/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_79/lstm_238/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_79/lstm_238/TensorArrayV2TensorListReserve;sequential_79/lstm_238/TensorArrayV2/element_shape:output:0/sequential_79/lstm_238/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_79/lstm_238/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
>sequential_79/lstm_238/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_79/lstm_238/transpose:y:0Usequential_79/lstm_238/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_79/lstm_238/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_79/lstm_238/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_79/lstm_238/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_79/lstm_238/strided_slice_2StridedSlice$sequential_79/lstm_238/transpose:y:05sequential_79/lstm_238/strided_slice_2/stack:output:07sequential_79/lstm_238/strided_slice_2/stack_1:output:07sequential_79/lstm_238/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
:sequential_79/lstm_238/lstm_cell_373/MatMul/ReadVariableOpReadVariableOpCsequential_79_lstm_238_lstm_cell_373_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
+sequential_79/lstm_238/lstm_cell_373/MatMulMatMul/sequential_79/lstm_238/strided_slice_2:output:0Bsequential_79/lstm_238/lstm_cell_373/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_79/lstm_238/lstm_cell_373/MatMul_1/ReadVariableOpReadVariableOpEsequential_79_lstm_238_lstm_cell_373_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
-sequential_79/lstm_238/lstm_cell_373/MatMul_1MatMul%sequential_79/lstm_238/zeros:output:0Dsequential_79/lstm_238/lstm_cell_373/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_79/lstm_238/lstm_cell_373/addAddV25sequential_79/lstm_238/lstm_cell_373/MatMul:product:07sequential_79/lstm_238/lstm_cell_373/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_79/lstm_238/lstm_cell_373/BiasAdd/ReadVariableOpReadVariableOpDsequential_79_lstm_238_lstm_cell_373_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_79/lstm_238/lstm_cell_373/BiasAddBiasAdd,sequential_79/lstm_238/lstm_cell_373/add:z:0Csequential_79/lstm_238/lstm_cell_373/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_79/lstm_238/lstm_cell_373/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_79/lstm_238/lstm_cell_373/splitSplit=sequential_79/lstm_238/lstm_cell_373/split/split_dim:output:05sequential_79/lstm_238/lstm_cell_373/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
,sequential_79/lstm_238/lstm_cell_373/SigmoidSigmoid3sequential_79/lstm_238/lstm_cell_373/split:output:0*
T0*'
_output_shapes
:?????????2?
.sequential_79/lstm_238/lstm_cell_373/Sigmoid_1Sigmoid3sequential_79/lstm_238/lstm_cell_373/split:output:1*
T0*'
_output_shapes
:?????????2?
(sequential_79/lstm_238/lstm_cell_373/mulMul2sequential_79/lstm_238/lstm_cell_373/Sigmoid_1:y:0'sequential_79/lstm_238/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
)sequential_79/lstm_238/lstm_cell_373/ReluRelu3sequential_79/lstm_238/lstm_cell_373/split:output:2*
T0*'
_output_shapes
:?????????2?
*sequential_79/lstm_238/lstm_cell_373/mul_1Mul0sequential_79/lstm_238/lstm_cell_373/Sigmoid:y:07sequential_79/lstm_238/lstm_cell_373/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
*sequential_79/lstm_238/lstm_cell_373/add_1AddV2,sequential_79/lstm_238/lstm_cell_373/mul:z:0.sequential_79/lstm_238/lstm_cell_373/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
.sequential_79/lstm_238/lstm_cell_373/Sigmoid_2Sigmoid3sequential_79/lstm_238/lstm_cell_373/split:output:3*
T0*'
_output_shapes
:?????????2?
+sequential_79/lstm_238/lstm_cell_373/Relu_1Relu.sequential_79/lstm_238/lstm_cell_373/add_1:z:0*
T0*'
_output_shapes
:?????????2?
*sequential_79/lstm_238/lstm_cell_373/mul_2Mul2sequential_79/lstm_238/lstm_cell_373/Sigmoid_2:y:09sequential_79/lstm_238/lstm_cell_373/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
4sequential_79/lstm_238/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
&sequential_79/lstm_238/TensorArrayV2_1TensorListReserve=sequential_79/lstm_238/TensorArrayV2_1/element_shape:output:0/sequential_79/lstm_238/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_79/lstm_238/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_79/lstm_238/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_79/lstm_238/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_79/lstm_238/whileWhile2sequential_79/lstm_238/while/loop_counter:output:08sequential_79/lstm_238/while/maximum_iterations:output:0$sequential_79/lstm_238/time:output:0/sequential_79/lstm_238/TensorArrayV2_1:handle:0%sequential_79/lstm_238/zeros:output:0'sequential_79/lstm_238/zeros_1:output:0/sequential_79/lstm_238/strided_slice_1:output:0Nsequential_79/lstm_238/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_79_lstm_238_lstm_cell_373_matmul_readvariableop_resourceEsequential_79_lstm_238_lstm_cell_373_matmul_1_readvariableop_resourceDsequential_79_lstm_238_lstm_cell_373_biasadd_readvariableop_resource*
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
)sequential_79_lstm_238_while_body_2262518*5
cond-R+
)sequential_79_lstm_238_while_cond_2262517*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Gsequential_79/lstm_238/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
9sequential_79/lstm_238/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_79/lstm_238/while:output:3Psequential_79/lstm_238/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0
,sequential_79/lstm_238/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_79/lstm_238/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_79/lstm_238/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_79/lstm_238/strided_slice_3StridedSliceBsequential_79/lstm_238/TensorArrayV2Stack/TensorListStack:tensor:05sequential_79/lstm_238/strided_slice_3/stack:output:07sequential_79/lstm_238/strided_slice_3/stack_1:output:07sequential_79/lstm_238/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask|
'sequential_79/lstm_238/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_79/lstm_238/transpose_1	TransposeBsequential_79/lstm_238/TensorArrayV2Stack/TensorListStack:tensor:00sequential_79/lstm_238/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_79/lstm_238/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_79/lstm_239/ShapeShape&sequential_79/lstm_238/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_79/lstm_239/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_79/lstm_239/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_79/lstm_239/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_79/lstm_239/strided_sliceStridedSlice%sequential_79/lstm_239/Shape:output:03sequential_79/lstm_239/strided_slice/stack:output:05sequential_79/lstm_239/strided_slice/stack_1:output:05sequential_79/lstm_239/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_79/lstm_239/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
#sequential_79/lstm_239/zeros/packedPack-sequential_79/lstm_239/strided_slice:output:0.sequential_79/lstm_239/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_79/lstm_239/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_79/lstm_239/zerosFill,sequential_79/lstm_239/zeros/packed:output:0+sequential_79/lstm_239/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
i
'sequential_79/lstm_239/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
%sequential_79/lstm_239/zeros_1/packedPack-sequential_79/lstm_239/strided_slice:output:00sequential_79/lstm_239/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_79/lstm_239/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_79/lstm_239/zeros_1Fill.sequential_79/lstm_239/zeros_1/packed:output:0-sequential_79/lstm_239/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
z
%sequential_79/lstm_239/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_79/lstm_239/transpose	Transpose&sequential_79/lstm_238/transpose_1:y:0.sequential_79/lstm_239/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_79/lstm_239/Shape_1Shape$sequential_79/lstm_239/transpose:y:0*
T0*
_output_shapes
:v
,sequential_79/lstm_239/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_79/lstm_239/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_79/lstm_239/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_79/lstm_239/strided_slice_1StridedSlice'sequential_79/lstm_239/Shape_1:output:05sequential_79/lstm_239/strided_slice_1/stack:output:07sequential_79/lstm_239/strided_slice_1/stack_1:output:07sequential_79/lstm_239/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_79/lstm_239/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_79/lstm_239/TensorArrayV2TensorListReserve;sequential_79/lstm_239/TensorArrayV2/element_shape:output:0/sequential_79/lstm_239/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_79/lstm_239/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
>sequential_79/lstm_239/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_79/lstm_239/transpose:y:0Usequential_79/lstm_239/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_79/lstm_239/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_79/lstm_239/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_79/lstm_239/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_79/lstm_239/strided_slice_2StridedSlice$sequential_79/lstm_239/transpose:y:05sequential_79/lstm_239/strided_slice_2/stack:output:07sequential_79/lstm_239/strided_slice_2/stack_1:output:07sequential_79/lstm_239/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
:sequential_79/lstm_239/lstm_cell_374/MatMul/ReadVariableOpReadVariableOpCsequential_79_lstm_239_lstm_cell_374_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
+sequential_79/lstm_239/lstm_cell_374/MatMulMatMul/sequential_79/lstm_239/strided_slice_2:output:0Bsequential_79/lstm_239/lstm_cell_374/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
<sequential_79/lstm_239/lstm_cell_374/MatMul_1/ReadVariableOpReadVariableOpEsequential_79_lstm_239_lstm_cell_374_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
-sequential_79/lstm_239/lstm_cell_374/MatMul_1MatMul%sequential_79/lstm_239/zeros:output:0Dsequential_79/lstm_239/lstm_cell_374/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
(sequential_79/lstm_239/lstm_cell_374/addAddV25sequential_79/lstm_239/lstm_cell_374/MatMul:product:07sequential_79/lstm_239/lstm_cell_374/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
;sequential_79/lstm_239/lstm_cell_374/BiasAdd/ReadVariableOpReadVariableOpDsequential_79_lstm_239_lstm_cell_374_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
,sequential_79/lstm_239/lstm_cell_374/BiasAddBiasAdd,sequential_79/lstm_239/lstm_cell_374/add:z:0Csequential_79/lstm_239/lstm_cell_374/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(v
4sequential_79/lstm_239/lstm_cell_374/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_79/lstm_239/lstm_cell_374/splitSplit=sequential_79/lstm_239/lstm_cell_374/split/split_dim:output:05sequential_79/lstm_239/lstm_cell_374/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
,sequential_79/lstm_239/lstm_cell_374/SigmoidSigmoid3sequential_79/lstm_239/lstm_cell_374/split:output:0*
T0*'
_output_shapes
:?????????
?
.sequential_79/lstm_239/lstm_cell_374/Sigmoid_1Sigmoid3sequential_79/lstm_239/lstm_cell_374/split:output:1*
T0*'
_output_shapes
:?????????
?
(sequential_79/lstm_239/lstm_cell_374/mulMul2sequential_79/lstm_239/lstm_cell_374/Sigmoid_1:y:0'sequential_79/lstm_239/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
)sequential_79/lstm_239/lstm_cell_374/ReluRelu3sequential_79/lstm_239/lstm_cell_374/split:output:2*
T0*'
_output_shapes
:?????????
?
*sequential_79/lstm_239/lstm_cell_374/mul_1Mul0sequential_79/lstm_239/lstm_cell_374/Sigmoid:y:07sequential_79/lstm_239/lstm_cell_374/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
*sequential_79/lstm_239/lstm_cell_374/add_1AddV2,sequential_79/lstm_239/lstm_cell_374/mul:z:0.sequential_79/lstm_239/lstm_cell_374/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
.sequential_79/lstm_239/lstm_cell_374/Sigmoid_2Sigmoid3sequential_79/lstm_239/lstm_cell_374/split:output:3*
T0*'
_output_shapes
:?????????
?
+sequential_79/lstm_239/lstm_cell_374/Relu_1Relu.sequential_79/lstm_239/lstm_cell_374/add_1:z:0*
T0*'
_output_shapes
:?????????
?
*sequential_79/lstm_239/lstm_cell_374/mul_2Mul2sequential_79/lstm_239/lstm_cell_374/Sigmoid_2:y:09sequential_79/lstm_239/lstm_cell_374/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
4sequential_79/lstm_239/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
&sequential_79/lstm_239/TensorArrayV2_1TensorListReserve=sequential_79/lstm_239/TensorArrayV2_1/element_shape:output:0/sequential_79/lstm_239/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_79/lstm_239/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_79/lstm_239/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_79/lstm_239/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_79/lstm_239/whileWhile2sequential_79/lstm_239/while/loop_counter:output:08sequential_79/lstm_239/while/maximum_iterations:output:0$sequential_79/lstm_239/time:output:0/sequential_79/lstm_239/TensorArrayV2_1:handle:0%sequential_79/lstm_239/zeros:output:0'sequential_79/lstm_239/zeros_1:output:0/sequential_79/lstm_239/strided_slice_1:output:0Nsequential_79/lstm_239/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_79_lstm_239_lstm_cell_374_matmul_readvariableop_resourceEsequential_79_lstm_239_lstm_cell_374_matmul_1_readvariableop_resourceDsequential_79_lstm_239_lstm_cell_374_biasadd_readvariableop_resource*
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
)sequential_79_lstm_239_while_body_2262657*5
cond-R+
)sequential_79_lstm_239_while_cond_2262656*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Gsequential_79/lstm_239/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
9sequential_79/lstm_239/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_79/lstm_239/while:output:3Psequential_79/lstm_239/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0
,sequential_79/lstm_239/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_79/lstm_239/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_79/lstm_239/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_79/lstm_239/strided_slice_3StridedSliceBsequential_79/lstm_239/TensorArrayV2Stack/TensorListStack:tensor:05sequential_79/lstm_239/strided_slice_3/stack:output:07sequential_79/lstm_239/strided_slice_3/stack_1:output:07sequential_79/lstm_239/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask|
'sequential_79/lstm_239/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_79/lstm_239/transpose_1	TransposeBsequential_79/lstm_239/TensorArrayV2Stack/TensorListStack:tensor:00sequential_79/lstm_239/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
r
sequential_79/lstm_239/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_79/dense_79/MatMul/ReadVariableOpReadVariableOp5sequential_79_dense_79_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_79/dense_79/MatMulMatMul/sequential_79/lstm_239/strided_slice_3:output:04sequential_79/dense_79/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_79/dense_79/BiasAdd/ReadVariableOpReadVariableOp6sequential_79_dense_79_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_79/dense_79/BiasAddBiasAdd'sequential_79/dense_79/MatMul:product:05sequential_79/dense_79/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_79/dense_79/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_79/dense_79/BiasAdd/ReadVariableOp-^sequential_79/dense_79/MatMul/ReadVariableOp<^sequential_79/lstm_237/lstm_cell_372/BiasAdd/ReadVariableOp;^sequential_79/lstm_237/lstm_cell_372/MatMul/ReadVariableOp=^sequential_79/lstm_237/lstm_cell_372/MatMul_1/ReadVariableOp^sequential_79/lstm_237/while<^sequential_79/lstm_238/lstm_cell_373/BiasAdd/ReadVariableOp;^sequential_79/lstm_238/lstm_cell_373/MatMul/ReadVariableOp=^sequential_79/lstm_238/lstm_cell_373/MatMul_1/ReadVariableOp^sequential_79/lstm_238/while<^sequential_79/lstm_239/lstm_cell_374/BiasAdd/ReadVariableOp;^sequential_79/lstm_239/lstm_cell_374/MatMul/ReadVariableOp=^sequential_79/lstm_239/lstm_cell_374/MatMul_1/ReadVariableOp^sequential_79/lstm_239/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2^
-sequential_79/dense_79/BiasAdd/ReadVariableOp-sequential_79/dense_79/BiasAdd/ReadVariableOp2\
,sequential_79/dense_79/MatMul/ReadVariableOp,sequential_79/dense_79/MatMul/ReadVariableOp2z
;sequential_79/lstm_237/lstm_cell_372/BiasAdd/ReadVariableOp;sequential_79/lstm_237/lstm_cell_372/BiasAdd/ReadVariableOp2x
:sequential_79/lstm_237/lstm_cell_372/MatMul/ReadVariableOp:sequential_79/lstm_237/lstm_cell_372/MatMul/ReadVariableOp2|
<sequential_79/lstm_237/lstm_cell_372/MatMul_1/ReadVariableOp<sequential_79/lstm_237/lstm_cell_372/MatMul_1/ReadVariableOp2<
sequential_79/lstm_237/whilesequential_79/lstm_237/while2z
;sequential_79/lstm_238/lstm_cell_373/BiasAdd/ReadVariableOp;sequential_79/lstm_238/lstm_cell_373/BiasAdd/ReadVariableOp2x
:sequential_79/lstm_238/lstm_cell_373/MatMul/ReadVariableOp:sequential_79/lstm_238/lstm_cell_373/MatMul/ReadVariableOp2|
<sequential_79/lstm_238/lstm_cell_373/MatMul_1/ReadVariableOp<sequential_79/lstm_238/lstm_cell_373/MatMul_1/ReadVariableOp2<
sequential_79/lstm_238/whilesequential_79/lstm_238/while2z
;sequential_79/lstm_239/lstm_cell_374/BiasAdd/ReadVariableOp;sequential_79/lstm_239/lstm_cell_374/BiasAdd/ReadVariableOp2x
:sequential_79/lstm_239/lstm_cell_374/MatMul/ReadVariableOp:sequential_79/lstm_239/lstm_cell_374/MatMul/ReadVariableOp2|
<sequential_79/lstm_239/lstm_cell_374/MatMul_1/ReadVariableOp<sequential_79/lstm_239/lstm_cell_374/MatMul_1/ReadVariableOp2<
sequential_79/lstm_239/whilesequential_79/lstm_239/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_237_input
?
?
)sequential_79_lstm_237_while_cond_2262378J
Fsequential_79_lstm_237_while_sequential_79_lstm_237_while_loop_counterP
Lsequential_79_lstm_237_while_sequential_79_lstm_237_while_maximum_iterations,
(sequential_79_lstm_237_while_placeholder.
*sequential_79_lstm_237_while_placeholder_1.
*sequential_79_lstm_237_while_placeholder_2.
*sequential_79_lstm_237_while_placeholder_3L
Hsequential_79_lstm_237_while_less_sequential_79_lstm_237_strided_slice_1c
_sequential_79_lstm_237_while_sequential_79_lstm_237_while_cond_2262378___redundant_placeholder0c
_sequential_79_lstm_237_while_sequential_79_lstm_237_while_cond_2262378___redundant_placeholder1c
_sequential_79_lstm_237_while_sequential_79_lstm_237_while_cond_2262378___redundant_placeholder2c
_sequential_79_lstm_237_while_sequential_79_lstm_237_while_cond_2262378___redundant_placeholder3)
%sequential_79_lstm_237_while_identity
?
!sequential_79/lstm_237/while/LessLess(sequential_79_lstm_237_while_placeholderHsequential_79_lstm_237_while_less_sequential_79_lstm_237_strided_slice_1*
T0*
_output_shapes
: y
%sequential_79/lstm_237/while/IdentityIdentity%sequential_79/lstm_237/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_79_lstm_237_while_identity.sequential_79/lstm_237/while/Identity:output:0*(
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
lstm_239_while_cond_2265397.
*lstm_239_while_lstm_239_while_loop_counter4
0lstm_239_while_lstm_239_while_maximum_iterations
lstm_239_while_placeholder 
lstm_239_while_placeholder_1 
lstm_239_while_placeholder_2 
lstm_239_while_placeholder_30
,lstm_239_while_less_lstm_239_strided_slice_1G
Clstm_239_while_lstm_239_while_cond_2265397___redundant_placeholder0G
Clstm_239_while_lstm_239_while_cond_2265397___redundant_placeholder1G
Clstm_239_while_lstm_239_while_cond_2265397___redundant_placeholder2G
Clstm_239_while_lstm_239_while_cond_2265397___redundant_placeholder3
lstm_239_while_identity
?
lstm_239/while/LessLesslstm_239_while_placeholder,lstm_239_while_less_lstm_239_strided_slice_1*
T0*
_output_shapes
: ]
lstm_239/while/IdentityIdentitylstm_239/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_239_while_identity lstm_239/while/Identity:output:0*(
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
E__inference_lstm_237_layer_call_and_return_conditional_losses_2266531

inputs?
,lstm_cell_372_matmul_readvariableop_resource:	?A
.lstm_cell_372_matmul_1_readvariableop_resource:	d?<
-lstm_cell_372_biasadd_readvariableop_resource:	?
identity??$lstm_cell_372/BiasAdd/ReadVariableOp?#lstm_cell_372/MatMul/ReadVariableOp?%lstm_cell_372/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_372/MatMul/ReadVariableOpReadVariableOp,lstm_cell_372_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_372/MatMulMatMulstrided_slice_2:output:0+lstm_cell_372/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_372/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_372_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_372/MatMul_1MatMulzeros:output:0-lstm_cell_372/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_372/addAddV2lstm_cell_372/MatMul:product:0 lstm_cell_372/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_372/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_372_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_372/BiasAddBiasAddlstm_cell_372/add:z:0,lstm_cell_372/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_372/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_372/splitSplit&lstm_cell_372/split/split_dim:output:0lstm_cell_372/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_372/SigmoidSigmoidlstm_cell_372/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_372/Sigmoid_1Sigmoidlstm_cell_372/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_372/mulMullstm_cell_372/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_372/ReluRelulstm_cell_372/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_372/mul_1Mullstm_cell_372/Sigmoid:y:0 lstm_cell_372/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_372/add_1AddV2lstm_cell_372/mul:z:0lstm_cell_372/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_372/Sigmoid_2Sigmoidlstm_cell_372/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_372/Relu_1Relulstm_cell_372/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_372/mul_2Mullstm_cell_372/Sigmoid_2:y:0"lstm_cell_372/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_372_matmul_readvariableop_resource.lstm_cell_372_matmul_1_readvariableop_resource-lstm_cell_372_biasadd_readvariableop_resource*
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
while_body_2266447*
condR
while_cond_2266446*K
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
NoOpNoOp%^lstm_cell_372/BiasAdd/ReadVariableOp$^lstm_cell_372/MatMul/ReadVariableOp&^lstm_cell_372/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_372/BiasAdd/ReadVariableOp$lstm_cell_372/BiasAdd/ReadVariableOp2J
#lstm_cell_372/MatMul/ReadVariableOp#lstm_cell_372/MatMul/ReadVariableOp2N
%lstm_cell_372/MatMul_1/ReadVariableOp%lstm_cell_372/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_2263178
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_373_2263202_0:	d?0
while_lstm_cell_373_2263204_0:	2?,
while_lstm_cell_373_2263206_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_373_2263202:	d?.
while_lstm_cell_373_2263204:	2?*
while_lstm_cell_373_2263206:	???+while/lstm_cell_373/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_373/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_373_2263202_0while_lstm_cell_373_2263204_0while_lstm_cell_373_2263206_0*
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
J__inference_lstm_cell_373_layer_call_and_return_conditional_losses_2263164?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_373/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_373/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_373/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_373/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_373_2263202while_lstm_cell_373_2263202_0"<
while_lstm_cell_373_2263204while_lstm_cell_373_2263204_0"<
while_lstm_cell_373_2263206while_lstm_cell_373_2263206_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_373/StatefulPartitionedCall+while/lstm_cell_373/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_372_layer_call_and_return_conditional_losses_2267880

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
??
?
J__inference_sequential_79_layer_call_and_return_conditional_losses_2265488

inputsH
5lstm_237_lstm_cell_372_matmul_readvariableop_resource:	?J
7lstm_237_lstm_cell_372_matmul_1_readvariableop_resource:	d?E
6lstm_237_lstm_cell_372_biasadd_readvariableop_resource:	?H
5lstm_238_lstm_cell_373_matmul_readvariableop_resource:	d?J
7lstm_238_lstm_cell_373_matmul_1_readvariableop_resource:	2?E
6lstm_238_lstm_cell_373_biasadd_readvariableop_resource:	?G
5lstm_239_lstm_cell_374_matmul_readvariableop_resource:2(I
7lstm_239_lstm_cell_374_matmul_1_readvariableop_resource:
(D
6lstm_239_lstm_cell_374_biasadd_readvariableop_resource:(9
'dense_79_matmul_readvariableop_resource:
6
(dense_79_biasadd_readvariableop_resource:
identity??dense_79/BiasAdd/ReadVariableOp?dense_79/MatMul/ReadVariableOp?-lstm_237/lstm_cell_372/BiasAdd/ReadVariableOp?,lstm_237/lstm_cell_372/MatMul/ReadVariableOp?.lstm_237/lstm_cell_372/MatMul_1/ReadVariableOp?lstm_237/while?-lstm_238/lstm_cell_373/BiasAdd/ReadVariableOp?,lstm_238/lstm_cell_373/MatMul/ReadVariableOp?.lstm_238/lstm_cell_373/MatMul_1/ReadVariableOp?lstm_238/while?-lstm_239/lstm_cell_374/BiasAdd/ReadVariableOp?,lstm_239/lstm_cell_374/MatMul/ReadVariableOp?.lstm_239/lstm_cell_374/MatMul_1/ReadVariableOp?lstm_239/whileD
lstm_237/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_237/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_237/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_237/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_237/strided_sliceStridedSlicelstm_237/Shape:output:0%lstm_237/strided_slice/stack:output:0'lstm_237/strided_slice/stack_1:output:0'lstm_237/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_237/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_237/zeros/packedPacklstm_237/strided_slice:output:0 lstm_237/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_237/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_237/zerosFilllstm_237/zeros/packed:output:0lstm_237/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_237/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_237/zeros_1/packedPacklstm_237/strided_slice:output:0"lstm_237/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_237/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_237/zeros_1Fill lstm_237/zeros_1/packed:output:0lstm_237/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_237/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_237/transpose	Transposeinputs lstm_237/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_237/Shape_1Shapelstm_237/transpose:y:0*
T0*
_output_shapes
:h
lstm_237/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_237/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_237/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_237/strided_slice_1StridedSlicelstm_237/Shape_1:output:0'lstm_237/strided_slice_1/stack:output:0)lstm_237/strided_slice_1/stack_1:output:0)lstm_237/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_237/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_237/TensorArrayV2TensorListReserve-lstm_237/TensorArrayV2/element_shape:output:0!lstm_237/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_237/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_237/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_237/transpose:y:0Glstm_237/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_237/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_237/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_237/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_237/strided_slice_2StridedSlicelstm_237/transpose:y:0'lstm_237/strided_slice_2/stack:output:0)lstm_237/strided_slice_2/stack_1:output:0)lstm_237/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_237/lstm_cell_372/MatMul/ReadVariableOpReadVariableOp5lstm_237_lstm_cell_372_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_237/lstm_cell_372/MatMulMatMul!lstm_237/strided_slice_2:output:04lstm_237/lstm_cell_372/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_237/lstm_cell_372/MatMul_1/ReadVariableOpReadVariableOp7lstm_237_lstm_cell_372_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_237/lstm_cell_372/MatMul_1MatMullstm_237/zeros:output:06lstm_237/lstm_cell_372/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_237/lstm_cell_372/addAddV2'lstm_237/lstm_cell_372/MatMul:product:0)lstm_237/lstm_cell_372/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_237/lstm_cell_372/BiasAdd/ReadVariableOpReadVariableOp6lstm_237_lstm_cell_372_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_237/lstm_cell_372/BiasAddBiasAddlstm_237/lstm_cell_372/add:z:05lstm_237/lstm_cell_372/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_237/lstm_cell_372/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_237/lstm_cell_372/splitSplit/lstm_237/lstm_cell_372/split/split_dim:output:0'lstm_237/lstm_cell_372/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_237/lstm_cell_372/SigmoidSigmoid%lstm_237/lstm_cell_372/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_237/lstm_cell_372/Sigmoid_1Sigmoid%lstm_237/lstm_cell_372/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_237/lstm_cell_372/mulMul$lstm_237/lstm_cell_372/Sigmoid_1:y:0lstm_237/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_237/lstm_cell_372/ReluRelu%lstm_237/lstm_cell_372/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_237/lstm_cell_372/mul_1Mul"lstm_237/lstm_cell_372/Sigmoid:y:0)lstm_237/lstm_cell_372/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_237/lstm_cell_372/add_1AddV2lstm_237/lstm_cell_372/mul:z:0 lstm_237/lstm_cell_372/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_237/lstm_cell_372/Sigmoid_2Sigmoid%lstm_237/lstm_cell_372/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_237/lstm_cell_372/Relu_1Relu lstm_237/lstm_cell_372/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_237/lstm_cell_372/mul_2Mul$lstm_237/lstm_cell_372/Sigmoid_2:y:0+lstm_237/lstm_cell_372/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_237/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_237/TensorArrayV2_1TensorListReserve/lstm_237/TensorArrayV2_1/element_shape:output:0!lstm_237/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_237/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_237/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_237/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_237/whileWhile$lstm_237/while/loop_counter:output:0*lstm_237/while/maximum_iterations:output:0lstm_237/time:output:0!lstm_237/TensorArrayV2_1:handle:0lstm_237/zeros:output:0lstm_237/zeros_1:output:0!lstm_237/strided_slice_1:output:0@lstm_237/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_237_lstm_cell_372_matmul_readvariableop_resource7lstm_237_lstm_cell_372_matmul_1_readvariableop_resource6lstm_237_lstm_cell_372_biasadd_readvariableop_resource*
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
lstm_237_while_body_2265120*'
condR
lstm_237_while_cond_2265119*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_237/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_237/TensorArrayV2Stack/TensorListStackTensorListStacklstm_237/while:output:3Blstm_237/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_237/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_237/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_237/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_237/strided_slice_3StridedSlice4lstm_237/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_237/strided_slice_3/stack:output:0)lstm_237/strided_slice_3/stack_1:output:0)lstm_237/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_237/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_237/transpose_1	Transpose4lstm_237/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_237/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_237/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_238/ShapeShapelstm_237/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_238/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_238/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_238/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_238/strided_sliceStridedSlicelstm_238/Shape:output:0%lstm_238/strided_slice/stack:output:0'lstm_238/strided_slice/stack_1:output:0'lstm_238/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_238/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_238/zeros/packedPacklstm_238/strided_slice:output:0 lstm_238/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_238/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_238/zerosFilllstm_238/zeros/packed:output:0lstm_238/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_238/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_238/zeros_1/packedPacklstm_238/strided_slice:output:0"lstm_238/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_238/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_238/zeros_1Fill lstm_238/zeros_1/packed:output:0lstm_238/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_238/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_238/transpose	Transposelstm_237/transpose_1:y:0 lstm_238/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_238/Shape_1Shapelstm_238/transpose:y:0*
T0*
_output_shapes
:h
lstm_238/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_238/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_238/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_238/strided_slice_1StridedSlicelstm_238/Shape_1:output:0'lstm_238/strided_slice_1/stack:output:0)lstm_238/strided_slice_1/stack_1:output:0)lstm_238/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_238/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_238/TensorArrayV2TensorListReserve-lstm_238/TensorArrayV2/element_shape:output:0!lstm_238/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_238/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_238/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_238/transpose:y:0Glstm_238/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_238/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_238/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_238/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_238/strided_slice_2StridedSlicelstm_238/transpose:y:0'lstm_238/strided_slice_2/stack:output:0)lstm_238/strided_slice_2/stack_1:output:0)lstm_238/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_238/lstm_cell_373/MatMul/ReadVariableOpReadVariableOp5lstm_238_lstm_cell_373_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_238/lstm_cell_373/MatMulMatMul!lstm_238/strided_slice_2:output:04lstm_238/lstm_cell_373/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_238/lstm_cell_373/MatMul_1/ReadVariableOpReadVariableOp7lstm_238_lstm_cell_373_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_238/lstm_cell_373/MatMul_1MatMullstm_238/zeros:output:06lstm_238/lstm_cell_373/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_238/lstm_cell_373/addAddV2'lstm_238/lstm_cell_373/MatMul:product:0)lstm_238/lstm_cell_373/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_238/lstm_cell_373/BiasAdd/ReadVariableOpReadVariableOp6lstm_238_lstm_cell_373_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_238/lstm_cell_373/BiasAddBiasAddlstm_238/lstm_cell_373/add:z:05lstm_238/lstm_cell_373/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_238/lstm_cell_373/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_238/lstm_cell_373/splitSplit/lstm_238/lstm_cell_373/split/split_dim:output:0'lstm_238/lstm_cell_373/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_238/lstm_cell_373/SigmoidSigmoid%lstm_238/lstm_cell_373/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_238/lstm_cell_373/Sigmoid_1Sigmoid%lstm_238/lstm_cell_373/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_238/lstm_cell_373/mulMul$lstm_238/lstm_cell_373/Sigmoid_1:y:0lstm_238/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_238/lstm_cell_373/ReluRelu%lstm_238/lstm_cell_373/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_238/lstm_cell_373/mul_1Mul"lstm_238/lstm_cell_373/Sigmoid:y:0)lstm_238/lstm_cell_373/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_238/lstm_cell_373/add_1AddV2lstm_238/lstm_cell_373/mul:z:0 lstm_238/lstm_cell_373/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_238/lstm_cell_373/Sigmoid_2Sigmoid%lstm_238/lstm_cell_373/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_238/lstm_cell_373/Relu_1Relu lstm_238/lstm_cell_373/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_238/lstm_cell_373/mul_2Mul$lstm_238/lstm_cell_373/Sigmoid_2:y:0+lstm_238/lstm_cell_373/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_238/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_238/TensorArrayV2_1TensorListReserve/lstm_238/TensorArrayV2_1/element_shape:output:0!lstm_238/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_238/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_238/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_238/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_238/whileWhile$lstm_238/while/loop_counter:output:0*lstm_238/while/maximum_iterations:output:0lstm_238/time:output:0!lstm_238/TensorArrayV2_1:handle:0lstm_238/zeros:output:0lstm_238/zeros_1:output:0!lstm_238/strided_slice_1:output:0@lstm_238/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_238_lstm_cell_373_matmul_readvariableop_resource7lstm_238_lstm_cell_373_matmul_1_readvariableop_resource6lstm_238_lstm_cell_373_biasadd_readvariableop_resource*
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
lstm_238_while_body_2265259*'
condR
lstm_238_while_cond_2265258*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_238/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_238/TensorArrayV2Stack/TensorListStackTensorListStacklstm_238/while:output:3Blstm_238/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_238/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_238/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_238/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_238/strided_slice_3StridedSlice4lstm_238/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_238/strided_slice_3/stack:output:0)lstm_238/strided_slice_3/stack_1:output:0)lstm_238/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_238/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_238/transpose_1	Transpose4lstm_238/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_238/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_238/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_239/ShapeShapelstm_238/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_239/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_239/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_239/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_239/strided_sliceStridedSlicelstm_239/Shape:output:0%lstm_239/strided_slice/stack:output:0'lstm_239/strided_slice/stack_1:output:0'lstm_239/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_239/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_239/zeros/packedPacklstm_239/strided_slice:output:0 lstm_239/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_239/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_239/zerosFilllstm_239/zeros/packed:output:0lstm_239/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_239/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_239/zeros_1/packedPacklstm_239/strided_slice:output:0"lstm_239/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_239/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_239/zeros_1Fill lstm_239/zeros_1/packed:output:0lstm_239/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_239/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_239/transpose	Transposelstm_238/transpose_1:y:0 lstm_239/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_239/Shape_1Shapelstm_239/transpose:y:0*
T0*
_output_shapes
:h
lstm_239/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_239/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_239/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_239/strided_slice_1StridedSlicelstm_239/Shape_1:output:0'lstm_239/strided_slice_1/stack:output:0)lstm_239/strided_slice_1/stack_1:output:0)lstm_239/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_239/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_239/TensorArrayV2TensorListReserve-lstm_239/TensorArrayV2/element_shape:output:0!lstm_239/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_239/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_239/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_239/transpose:y:0Glstm_239/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_239/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_239/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_239/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_239/strided_slice_2StridedSlicelstm_239/transpose:y:0'lstm_239/strided_slice_2/stack:output:0)lstm_239/strided_slice_2/stack_1:output:0)lstm_239/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_239/lstm_cell_374/MatMul/ReadVariableOpReadVariableOp5lstm_239_lstm_cell_374_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_239/lstm_cell_374/MatMulMatMul!lstm_239/strided_slice_2:output:04lstm_239/lstm_cell_374/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_239/lstm_cell_374/MatMul_1/ReadVariableOpReadVariableOp7lstm_239_lstm_cell_374_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_239/lstm_cell_374/MatMul_1MatMullstm_239/zeros:output:06lstm_239/lstm_cell_374/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_239/lstm_cell_374/addAddV2'lstm_239/lstm_cell_374/MatMul:product:0)lstm_239/lstm_cell_374/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_239/lstm_cell_374/BiasAdd/ReadVariableOpReadVariableOp6lstm_239_lstm_cell_374_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_239/lstm_cell_374/BiasAddBiasAddlstm_239/lstm_cell_374/add:z:05lstm_239/lstm_cell_374/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_239/lstm_cell_374/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_239/lstm_cell_374/splitSplit/lstm_239/lstm_cell_374/split/split_dim:output:0'lstm_239/lstm_cell_374/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_239/lstm_cell_374/SigmoidSigmoid%lstm_239/lstm_cell_374/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_239/lstm_cell_374/Sigmoid_1Sigmoid%lstm_239/lstm_cell_374/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_239/lstm_cell_374/mulMul$lstm_239/lstm_cell_374/Sigmoid_1:y:0lstm_239/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_239/lstm_cell_374/ReluRelu%lstm_239/lstm_cell_374/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_239/lstm_cell_374/mul_1Mul"lstm_239/lstm_cell_374/Sigmoid:y:0)lstm_239/lstm_cell_374/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_239/lstm_cell_374/add_1AddV2lstm_239/lstm_cell_374/mul:z:0 lstm_239/lstm_cell_374/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_239/lstm_cell_374/Sigmoid_2Sigmoid%lstm_239/lstm_cell_374/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_239/lstm_cell_374/Relu_1Relu lstm_239/lstm_cell_374/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_239/lstm_cell_374/mul_2Mul$lstm_239/lstm_cell_374/Sigmoid_2:y:0+lstm_239/lstm_cell_374/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_239/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_239/TensorArrayV2_1TensorListReserve/lstm_239/TensorArrayV2_1/element_shape:output:0!lstm_239/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_239/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_239/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_239/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_239/whileWhile$lstm_239/while/loop_counter:output:0*lstm_239/while/maximum_iterations:output:0lstm_239/time:output:0!lstm_239/TensorArrayV2_1:handle:0lstm_239/zeros:output:0lstm_239/zeros_1:output:0!lstm_239/strided_slice_1:output:0@lstm_239/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_239_lstm_cell_374_matmul_readvariableop_resource7lstm_239_lstm_cell_374_matmul_1_readvariableop_resource6lstm_239_lstm_cell_374_biasadd_readvariableop_resource*
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
lstm_239_while_body_2265398*'
condR
lstm_239_while_cond_2265397*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_239/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_239/TensorArrayV2Stack/TensorListStackTensorListStacklstm_239/while:output:3Blstm_239/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_239/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_239/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_239/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_239/strided_slice_3StridedSlice4lstm_239/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_239/strided_slice_3/stack:output:0)lstm_239/strided_slice_3/stack_1:output:0)lstm_239/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_239/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_239/transpose_1	Transpose4lstm_239/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_239/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_239/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_79/MatMul/ReadVariableOpReadVariableOp'dense_79_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_79/MatMulMatMul!lstm_239/strided_slice_3:output:0&dense_79/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_79/BiasAdd/ReadVariableOpReadVariableOp(dense_79_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_79/BiasAddBiasAdddense_79/MatMul:product:0'dense_79/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_79/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_79/BiasAdd/ReadVariableOp^dense_79/MatMul/ReadVariableOp.^lstm_237/lstm_cell_372/BiasAdd/ReadVariableOp-^lstm_237/lstm_cell_372/MatMul/ReadVariableOp/^lstm_237/lstm_cell_372/MatMul_1/ReadVariableOp^lstm_237/while.^lstm_238/lstm_cell_373/BiasAdd/ReadVariableOp-^lstm_238/lstm_cell_373/MatMul/ReadVariableOp/^lstm_238/lstm_cell_373/MatMul_1/ReadVariableOp^lstm_238/while.^lstm_239/lstm_cell_374/BiasAdd/ReadVariableOp-^lstm_239/lstm_cell_374/MatMul/ReadVariableOp/^lstm_239/lstm_cell_374/MatMul_1/ReadVariableOp^lstm_239/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_79/BiasAdd/ReadVariableOpdense_79/BiasAdd/ReadVariableOp2@
dense_79/MatMul/ReadVariableOpdense_79/MatMul/ReadVariableOp2^
-lstm_237/lstm_cell_372/BiasAdd/ReadVariableOp-lstm_237/lstm_cell_372/BiasAdd/ReadVariableOp2\
,lstm_237/lstm_cell_372/MatMul/ReadVariableOp,lstm_237/lstm_cell_372/MatMul/ReadVariableOp2`
.lstm_237/lstm_cell_372/MatMul_1/ReadVariableOp.lstm_237/lstm_cell_372/MatMul_1/ReadVariableOp2 
lstm_237/whilelstm_237/while2^
-lstm_238/lstm_cell_373/BiasAdd/ReadVariableOp-lstm_238/lstm_cell_373/BiasAdd/ReadVariableOp2\
,lstm_238/lstm_cell_373/MatMul/ReadVariableOp,lstm_238/lstm_cell_373/MatMul/ReadVariableOp2`
.lstm_238/lstm_cell_373/MatMul_1/ReadVariableOp.lstm_238/lstm_cell_373/MatMul_1/ReadVariableOp2 
lstm_238/whilelstm_238/while2^
-lstm_239/lstm_cell_374/BiasAdd/ReadVariableOp-lstm_239/lstm_cell_374/BiasAdd/ReadVariableOp2\
,lstm_239/lstm_cell_374/MatMul/ReadVariableOp,lstm_239/lstm_cell_374/MatMul/ReadVariableOp2`
.lstm_239/lstm_cell_374/MatMul_1/ReadVariableOp.lstm_239/lstm_cell_374/MatMul_1/ReadVariableOp2 
lstm_239/whilelstm_239/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_2267062
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2267062___redundant_placeholder05
1while_while_cond_2267062___redundant_placeholder15
1while_while_cond_2267062___redundant_placeholder25
1while_while_cond_2267062___redundant_placeholder3
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
E__inference_lstm_238_layer_call_and_return_conditional_losses_2267147

inputs?
,lstm_cell_373_matmul_readvariableop_resource:	d?A
.lstm_cell_373_matmul_1_readvariableop_resource:	2?<
-lstm_cell_373_biasadd_readvariableop_resource:	?
identity??$lstm_cell_373/BiasAdd/ReadVariableOp?#lstm_cell_373/MatMul/ReadVariableOp?%lstm_cell_373/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_373/MatMul/ReadVariableOpReadVariableOp,lstm_cell_373_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_373/MatMulMatMulstrided_slice_2:output:0+lstm_cell_373/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_373/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_373_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_373/MatMul_1MatMulzeros:output:0-lstm_cell_373/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_373/addAddV2lstm_cell_373/MatMul:product:0 lstm_cell_373/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_373/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_373_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_373/BiasAddBiasAddlstm_cell_373/add:z:0,lstm_cell_373/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_373/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_373/splitSplit&lstm_cell_373/split/split_dim:output:0lstm_cell_373/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_373/SigmoidSigmoidlstm_cell_373/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_373/Sigmoid_1Sigmoidlstm_cell_373/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_373/mulMullstm_cell_373/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_373/ReluRelulstm_cell_373/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_373/mul_1Mullstm_cell_373/Sigmoid:y:0 lstm_cell_373/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_373/add_1AddV2lstm_cell_373/mul:z:0lstm_cell_373/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_373/Sigmoid_2Sigmoidlstm_cell_373/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_373/Relu_1Relulstm_cell_373/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_373/mul_2Mullstm_cell_373/Sigmoid_2:y:0"lstm_cell_373/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_373_matmul_readvariableop_resource.lstm_cell_373_matmul_1_readvariableop_resource-lstm_cell_373_biasadd_readvariableop_resource*
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
while_body_2267063*
condR
while_cond_2267062*K
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
NoOpNoOp%^lstm_cell_373/BiasAdd/ReadVariableOp$^lstm_cell_373/MatMul/ReadVariableOp&^lstm_cell_373/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_373/BiasAdd/ReadVariableOp$lstm_cell_373/BiasAdd/ReadVariableOp2J
#lstm_cell_373/MatMul/ReadVariableOp#lstm_cell_373/MatMul/ReadVariableOp2N
%lstm_cell_373/MatMul_1/ReadVariableOp%lstm_cell_373/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
/__inference_sequential_79_layer_call_fn_2264296
lstm_237_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_237_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_79_layer_call_and_return_conditional_losses_2264271o
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
_user_specified_namelstm_237_input
?
?
*__inference_lstm_238_layer_call_fn_2266564

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
E__inference_lstm_238_layer_call_and_return_conditional_losses_2264096s
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
E__inference_dense_79_layer_call_and_return_conditional_losses_2264264

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
E__inference_lstm_239_layer_call_and_return_conditional_losses_2263788

inputs'
lstm_cell_374_2263706:2('
lstm_cell_374_2263708:
(#
lstm_cell_374_2263710:(
identity??%lstm_cell_374/StatefulPartitionedCall?while;
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
%lstm_cell_374/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_374_2263706lstm_cell_374_2263708lstm_cell_374_2263710*
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
J__inference_lstm_cell_374_layer_call_and_return_conditional_losses_2263660n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_374_2263706lstm_cell_374_2263708lstm_cell_374_2263710*
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
while_body_2263719*
condR
while_cond_2263718*K
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
NoOpNoOp&^lstm_cell_374/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_374/StatefulPartitionedCall%lstm_cell_374/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_2266776
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2266776___redundant_placeholder05
1while_while_cond_2266776___redundant_placeholder15
1while_while_cond_2266776___redundant_placeholder25
1while_while_cond_2266776___redundant_placeholder3
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
/__inference_sequential_79_layer_call_fn_2265061

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
J__inference_sequential_79_layer_call_and_return_conditional_losses_2264860o
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
E__inference_dense_79_layer_call_and_return_conditional_losses_2267782

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
?
/__inference_lstm_cell_372_layer_call_fn_2267799

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
J__inference_lstm_cell_372_layer_call_and_return_conditional_losses_2262814o
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
while_body_2267536
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_374_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_374_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_374_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_374_matmul_readvariableop_resource:2(F
4while_lstm_cell_374_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_374_biasadd_readvariableop_resource:(??*while/lstm_cell_374/BiasAdd/ReadVariableOp?)while/lstm_cell_374/MatMul/ReadVariableOp?+while/lstm_cell_374/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_374/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_374_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_374/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_374/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_374/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_374_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_374/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_374/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_374/addAddV2$while/lstm_cell_374/MatMul:product:0&while/lstm_cell_374/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_374/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_374_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_374/BiasAddBiasAddwhile/lstm_cell_374/add:z:02while/lstm_cell_374/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_374/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_374/splitSplit,while/lstm_cell_374/split/split_dim:output:0$while/lstm_cell_374/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_374/SigmoidSigmoid"while/lstm_cell_374/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_374/Sigmoid_1Sigmoid"while/lstm_cell_374/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_374/mulMul!while/lstm_cell_374/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_374/ReluRelu"while/lstm_cell_374/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_374/mul_1Mulwhile/lstm_cell_374/Sigmoid:y:0&while/lstm_cell_374/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_374/add_1AddV2while/lstm_cell_374/mul:z:0while/lstm_cell_374/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_374/Sigmoid_2Sigmoid"while/lstm_cell_374/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_374/Relu_1Reluwhile/lstm_cell_374/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_374/mul_2Mul!while/lstm_cell_374/Sigmoid_2:y:0(while/lstm_cell_374/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_374/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_374/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_374/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_374/BiasAdd/ReadVariableOp*^while/lstm_cell_374/MatMul/ReadVariableOp,^while/lstm_cell_374/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_374_biasadd_readvariableop_resource5while_lstm_cell_374_biasadd_readvariableop_resource_0"n
4while_lstm_cell_374_matmul_1_readvariableop_resource6while_lstm_cell_374_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_374_matmul_readvariableop_resource4while_lstm_cell_374_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_374/BiasAdd/ReadVariableOp*while/lstm_cell_374/BiasAdd/ReadVariableOp2V
)while/lstm_cell_374/MatMul/ReadVariableOp)while/lstm_cell_374/MatMul/ReadVariableOp2Z
+while/lstm_cell_374/MatMul_1/ReadVariableOp+while/lstm_cell_374/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_239_layer_call_and_return_conditional_losses_2267477
inputs_0>
,lstm_cell_374_matmul_readvariableop_resource:2(@
.lstm_cell_374_matmul_1_readvariableop_resource:
(;
-lstm_cell_374_biasadd_readvariableop_resource:(
identity??$lstm_cell_374/BiasAdd/ReadVariableOp?#lstm_cell_374/MatMul/ReadVariableOp?%lstm_cell_374/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_374/MatMul/ReadVariableOpReadVariableOp,lstm_cell_374_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_374/MatMulMatMulstrided_slice_2:output:0+lstm_cell_374/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_374/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_374_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_374/MatMul_1MatMulzeros:output:0-lstm_cell_374/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_374/addAddV2lstm_cell_374/MatMul:product:0 lstm_cell_374/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_374/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_374_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_374/BiasAddBiasAddlstm_cell_374/add:z:0,lstm_cell_374/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_374/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_374/splitSplit&lstm_cell_374/split/split_dim:output:0lstm_cell_374/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_374/SigmoidSigmoidlstm_cell_374/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_374/Sigmoid_1Sigmoidlstm_cell_374/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_374/mulMullstm_cell_374/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_374/ReluRelulstm_cell_374/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_374/mul_1Mullstm_cell_374/Sigmoid:y:0 lstm_cell_374/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_374/add_1AddV2lstm_cell_374/mul:z:0lstm_cell_374/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_374/Sigmoid_2Sigmoidlstm_cell_374/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_374/Relu_1Relulstm_cell_374/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_374/mul_2Mullstm_cell_374/Sigmoid_2:y:0"lstm_cell_374/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_374_matmul_readvariableop_resource.lstm_cell_374_matmul_1_readvariableop_resource-lstm_cell_374_biasadd_readvariableop_resource*
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
while_body_2267393*
condR
while_cond_2267392*K
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
NoOpNoOp%^lstm_cell_374/BiasAdd/ReadVariableOp$^lstm_cell_374/MatMul/ReadVariableOp&^lstm_cell_374/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_374/BiasAdd/ReadVariableOp$lstm_cell_374/BiasAdd/ReadVariableOp2J
#lstm_cell_374/MatMul/ReadVariableOp#lstm_cell_374/MatMul/ReadVariableOp2N
%lstm_cell_374/MatMul_1/ReadVariableOp%lstm_cell_374/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_239_layer_call_and_return_conditional_losses_2267620

inputs>
,lstm_cell_374_matmul_readvariableop_resource:2(@
.lstm_cell_374_matmul_1_readvariableop_resource:
(;
-lstm_cell_374_biasadd_readvariableop_resource:(
identity??$lstm_cell_374/BiasAdd/ReadVariableOp?#lstm_cell_374/MatMul/ReadVariableOp?%lstm_cell_374/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_374/MatMul/ReadVariableOpReadVariableOp,lstm_cell_374_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_374/MatMulMatMulstrided_slice_2:output:0+lstm_cell_374/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_374/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_374_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_374/MatMul_1MatMulzeros:output:0-lstm_cell_374/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_374/addAddV2lstm_cell_374/MatMul:product:0 lstm_cell_374/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_374/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_374_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_374/BiasAddBiasAddlstm_cell_374/add:z:0,lstm_cell_374/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_374/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_374/splitSplit&lstm_cell_374/split/split_dim:output:0lstm_cell_374/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_374/SigmoidSigmoidlstm_cell_374/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_374/Sigmoid_1Sigmoidlstm_cell_374/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_374/mulMullstm_cell_374/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_374/ReluRelulstm_cell_374/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_374/mul_1Mullstm_cell_374/Sigmoid:y:0 lstm_cell_374/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_374/add_1AddV2lstm_cell_374/mul:z:0lstm_cell_374/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_374/Sigmoid_2Sigmoidlstm_cell_374/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_374/Relu_1Relulstm_cell_374/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_374/mul_2Mullstm_cell_374/Sigmoid_2:y:0"lstm_cell_374/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_374_matmul_readvariableop_resource.lstm_cell_374_matmul_1_readvariableop_resource-lstm_cell_374_biasadd_readvariableop_resource*
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
while_body_2267536*
condR
while_cond_2267535*K
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
NoOpNoOp%^lstm_cell_374/BiasAdd/ReadVariableOp$^lstm_cell_374/MatMul/ReadVariableOp&^lstm_cell_374/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_374/BiasAdd/ReadVariableOp$lstm_cell_374/BiasAdd/ReadVariableOp2J
#lstm_cell_374/MatMul/ReadVariableOp#lstm_cell_374/MatMul/ReadVariableOp2N
%lstm_cell_374/MatMul_1/ReadVariableOp%lstm_cell_374/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_2267678
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2267678___redundant_placeholder05
1while_while_cond_2267678___redundant_placeholder15
1while_while_cond_2267678___redundant_placeholder25
1while_while_cond_2267678___redundant_placeholder3
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
while_body_2264162
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_374_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_374_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_374_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_374_matmul_readvariableop_resource:2(F
4while_lstm_cell_374_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_374_biasadd_readvariableop_resource:(??*while/lstm_cell_374/BiasAdd/ReadVariableOp?)while/lstm_cell_374/MatMul/ReadVariableOp?+while/lstm_cell_374/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_374/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_374_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_374/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_374/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_374/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_374_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_374/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_374/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_374/addAddV2$while/lstm_cell_374/MatMul:product:0&while/lstm_cell_374/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_374/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_374_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_374/BiasAddBiasAddwhile/lstm_cell_374/add:z:02while/lstm_cell_374/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_374/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_374/splitSplit,while/lstm_cell_374/split/split_dim:output:0$while/lstm_cell_374/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_374/SigmoidSigmoid"while/lstm_cell_374/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_374/Sigmoid_1Sigmoid"while/lstm_cell_374/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_374/mulMul!while/lstm_cell_374/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_374/ReluRelu"while/lstm_cell_374/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_374/mul_1Mulwhile/lstm_cell_374/Sigmoid:y:0&while/lstm_cell_374/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_374/add_1AddV2while/lstm_cell_374/mul:z:0while/lstm_cell_374/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_374/Sigmoid_2Sigmoid"while/lstm_cell_374/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_374/Relu_1Reluwhile/lstm_cell_374/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_374/mul_2Mul!while/lstm_cell_374/Sigmoid_2:y:0(while/lstm_cell_374/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_374/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_374/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_374/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_374/BiasAdd/ReadVariableOp*^while/lstm_cell_374/MatMul/ReadVariableOp,^while/lstm_cell_374/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_374_biasadd_readvariableop_resource5while_lstm_cell_374_biasadd_readvariableop_resource_0"n
4while_lstm_cell_374_matmul_1_readvariableop_resource6while_lstm_cell_374_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_374_matmul_readvariableop_resource4while_lstm_cell_374_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_374/BiasAdd/ReadVariableOp*while/lstm_cell_374/BiasAdd/ReadVariableOp2V
)while/lstm_cell_374/MatMul/ReadVariableOp)while/lstm_cell_374/MatMul/ReadVariableOp2Z
+while/lstm_cell_374/MatMul_1/ReadVariableOp+while/lstm_cell_374/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_239_layer_call_and_return_conditional_losses_2264462

inputs>
,lstm_cell_374_matmul_readvariableop_resource:2(@
.lstm_cell_374_matmul_1_readvariableop_resource:
(;
-lstm_cell_374_biasadd_readvariableop_resource:(
identity??$lstm_cell_374/BiasAdd/ReadVariableOp?#lstm_cell_374/MatMul/ReadVariableOp?%lstm_cell_374/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_374/MatMul/ReadVariableOpReadVariableOp,lstm_cell_374_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_374/MatMulMatMulstrided_slice_2:output:0+lstm_cell_374/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_374/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_374_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_374/MatMul_1MatMulzeros:output:0-lstm_cell_374/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_374/addAddV2lstm_cell_374/MatMul:product:0 lstm_cell_374/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_374/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_374_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_374/BiasAddBiasAddlstm_cell_374/add:z:0,lstm_cell_374/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_374/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_374/splitSplit&lstm_cell_374/split/split_dim:output:0lstm_cell_374/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_374/SigmoidSigmoidlstm_cell_374/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_374/Sigmoid_1Sigmoidlstm_cell_374/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_374/mulMullstm_cell_374/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_374/ReluRelulstm_cell_374/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_374/mul_1Mullstm_cell_374/Sigmoid:y:0 lstm_cell_374/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_374/add_1AddV2lstm_cell_374/mul:z:0lstm_cell_374/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_374/Sigmoid_2Sigmoidlstm_cell_374/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_374/Relu_1Relulstm_cell_374/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_374/mul_2Mullstm_cell_374/Sigmoid_2:y:0"lstm_cell_374/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_374_matmul_readvariableop_resource.lstm_cell_374_matmul_1_readvariableop_resource-lstm_cell_374_biasadd_readvariableop_resource*
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
while_body_2264378*
condR
while_cond_2264377*K
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
NoOpNoOp%^lstm_cell_374/BiasAdd/ReadVariableOp$^lstm_cell_374/MatMul/ReadVariableOp&^lstm_cell_374/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_374/BiasAdd/ReadVariableOp$lstm_cell_374/BiasAdd/ReadVariableOp2J
#lstm_cell_374/MatMul/ReadVariableOp#lstm_cell_374/MatMul/ReadVariableOp2N
%lstm_cell_374/MatMul_1/ReadVariableOp%lstm_cell_374/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_2266920
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_373_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_373_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_373_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_373_matmul_readvariableop_resource:	d?G
4while_lstm_cell_373_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_373_biasadd_readvariableop_resource:	???*while/lstm_cell_373/BiasAdd/ReadVariableOp?)while/lstm_cell_373/MatMul/ReadVariableOp?+while/lstm_cell_373/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_373/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_373_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_373/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_373/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_373/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_373_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_373/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_373/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_373/addAddV2$while/lstm_cell_373/MatMul:product:0&while/lstm_cell_373/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_373/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_373_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_373/BiasAddBiasAddwhile/lstm_cell_373/add:z:02while/lstm_cell_373/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_373/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_373/splitSplit,while/lstm_cell_373/split/split_dim:output:0$while/lstm_cell_373/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_373/SigmoidSigmoid"while/lstm_cell_373/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_373/Sigmoid_1Sigmoid"while/lstm_cell_373/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_373/mulMul!while/lstm_cell_373/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_373/ReluRelu"while/lstm_cell_373/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_373/mul_1Mulwhile/lstm_cell_373/Sigmoid:y:0&while/lstm_cell_373/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_373/add_1AddV2while/lstm_cell_373/mul:z:0while/lstm_cell_373/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_373/Sigmoid_2Sigmoid"while/lstm_cell_373/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_373/Relu_1Reluwhile/lstm_cell_373/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_373/mul_2Mul!while/lstm_cell_373/Sigmoid_2:y:0(while/lstm_cell_373/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_373/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_373/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_373/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_373/BiasAdd/ReadVariableOp*^while/lstm_cell_373/MatMul/ReadVariableOp,^while/lstm_cell_373/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_373_biasadd_readvariableop_resource5while_lstm_cell_373_biasadd_readvariableop_resource_0"n
4while_lstm_cell_373_matmul_1_readvariableop_resource6while_lstm_cell_373_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_373_matmul_readvariableop_resource4while_lstm_cell_373_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_373/BiasAdd/ReadVariableOp*while/lstm_cell_373/BiasAdd/ReadVariableOp2V
)while/lstm_cell_373/MatMul/ReadVariableOp)while/lstm_cell_373/MatMul/ReadVariableOp2Z
+while/lstm_cell_373/MatMul_1/ReadVariableOp+while/lstm_cell_373/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_238_layer_call_and_return_conditional_losses_2263247

inputs(
lstm_cell_373_2263165:	d?(
lstm_cell_373_2263167:	2?$
lstm_cell_373_2263169:	?
identity??%lstm_cell_373/StatefulPartitionedCall?while;
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
%lstm_cell_373/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_373_2263165lstm_cell_373_2263167lstm_cell_373_2263169*
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
J__inference_lstm_cell_373_layer_call_and_return_conditional_losses_2263164n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_373_2263165lstm_cell_373_2263167lstm_cell_373_2263169*
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
while_body_2263178*
condR
while_cond_2263177*K
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
NoOpNoOp&^lstm_cell_373/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_373/StatefulPartitionedCall%lstm_cell_373/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
E__inference_lstm_238_layer_call_and_return_conditional_losses_2263438

inputs(
lstm_cell_373_2263356:	d?(
lstm_cell_373_2263358:	2?$
lstm_cell_373_2263360:	?
identity??%lstm_cell_373/StatefulPartitionedCall?while;
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
%lstm_cell_373/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_373_2263356lstm_cell_373_2263358lstm_cell_373_2263360*
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
J__inference_lstm_cell_373_layer_call_and_return_conditional_losses_2263310n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_373_2263356lstm_cell_373_2263358lstm_cell_373_2263360*
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
while_body_2263369*
condR
while_cond_2263368*K
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
NoOpNoOp&^lstm_cell_373/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_373/StatefulPartitionedCall%lstm_cell_373/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
*__inference_dense_79_layer_call_fn_2267772

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
E__inference_dense_79_layer_call_and_return_conditional_losses_2264264o
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
*__inference_lstm_237_layer_call_fn_2265937
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
E__inference_lstm_237_layer_call_and_return_conditional_losses_2263088|
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

?
lstm_238_while_cond_2265685.
*lstm_238_while_lstm_238_while_loop_counter4
0lstm_238_while_lstm_238_while_maximum_iterations
lstm_238_while_placeholder 
lstm_238_while_placeholder_1 
lstm_238_while_placeholder_2 
lstm_238_while_placeholder_30
,lstm_238_while_less_lstm_238_strided_slice_1G
Clstm_238_while_lstm_238_while_cond_2265685___redundant_placeholder0G
Clstm_238_while_lstm_238_while_cond_2265685___redundant_placeholder1G
Clstm_238_while_lstm_238_while_cond_2265685___redundant_placeholder2G
Clstm_238_while_lstm_238_while_cond_2265685___redundant_placeholder3
lstm_238_while_identity
?
lstm_238/while/LessLesslstm_238_while_placeholder,lstm_238_while_less_lstm_238_strided_slice_1*
T0*
_output_shapes
: ]
lstm_238/while/IdentityIdentitylstm_238/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_238_while_identity lstm_238/while/Identity:output:0*(
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
/__inference_lstm_cell_372_layer_call_fn_2267816

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
J__inference_lstm_cell_372_layer_call_and_return_conditional_losses_2262960o
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
while_body_2267393
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_374_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_374_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_374_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_374_matmul_readvariableop_resource:2(F
4while_lstm_cell_374_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_374_biasadd_readvariableop_resource:(??*while/lstm_cell_374/BiasAdd/ReadVariableOp?)while/lstm_cell_374/MatMul/ReadVariableOp?+while/lstm_cell_374/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_374/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_374_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_374/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_374/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_374/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_374_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_374/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_374/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_374/addAddV2$while/lstm_cell_374/MatMul:product:0&while/lstm_cell_374/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_374/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_374_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_374/BiasAddBiasAddwhile/lstm_cell_374/add:z:02while/lstm_cell_374/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_374/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_374/splitSplit,while/lstm_cell_374/split/split_dim:output:0$while/lstm_cell_374/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_374/SigmoidSigmoid"while/lstm_cell_374/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_374/Sigmoid_1Sigmoid"while/lstm_cell_374/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_374/mulMul!while/lstm_cell_374/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_374/ReluRelu"while/lstm_cell_374/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_374/mul_1Mulwhile/lstm_cell_374/Sigmoid:y:0&while/lstm_cell_374/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_374/add_1AddV2while/lstm_cell_374/mul:z:0while/lstm_cell_374/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_374/Sigmoid_2Sigmoid"while/lstm_cell_374/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_374/Relu_1Reluwhile/lstm_cell_374/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_374/mul_2Mul!while/lstm_cell_374/Sigmoid_2:y:0(while/lstm_cell_374/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_374/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_374/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_374/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_374/BiasAdd/ReadVariableOp*^while/lstm_cell_374/MatMul/ReadVariableOp,^while/lstm_cell_374/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_374_biasadd_readvariableop_resource5while_lstm_cell_374_biasadd_readvariableop_resource_0"n
4while_lstm_cell_374_matmul_1_readvariableop_resource6while_lstm_cell_374_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_374_matmul_readvariableop_resource4while_lstm_cell_374_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_374/BiasAdd/ReadVariableOp*while/lstm_cell_374/BiasAdd/ReadVariableOp2V
)while/lstm_cell_374/MatMul/ReadVariableOp)while/lstm_cell_374/MatMul/ReadVariableOp2Z
+while/lstm_cell_374/MatMul_1/ReadVariableOp+while/lstm_cell_374/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_373_layer_call_fn_2267897

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
J__inference_lstm_cell_373_layer_call_and_return_conditional_losses_2263164o
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
while_cond_2264011
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2264011___redundant_placeholder05
1while_while_cond_2264011___redundant_placeholder15
1while_while_cond_2264011___redundant_placeholder25
1while_while_cond_2264011___redundant_placeholder3
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
lstm_238_while_cond_2265258.
*lstm_238_while_lstm_238_while_loop_counter4
0lstm_238_while_lstm_238_while_maximum_iterations
lstm_238_while_placeholder 
lstm_238_while_placeholder_1 
lstm_238_while_placeholder_2 
lstm_238_while_placeholder_30
,lstm_238_while_less_lstm_238_strided_slice_1G
Clstm_238_while_lstm_238_while_cond_2265258___redundant_placeholder0G
Clstm_238_while_lstm_238_while_cond_2265258___redundant_placeholder1G
Clstm_238_while_lstm_238_while_cond_2265258___redundant_placeholder2G
Clstm_238_while_lstm_238_while_cond_2265258___redundant_placeholder3
lstm_238_while_identity
?
lstm_238/while/LessLesslstm_238_while_placeholder,lstm_238_while_less_lstm_238_strided_slice_1*
T0*
_output_shapes
: ]
lstm_238/while/IdentityIdentitylstm_238/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_238_while_identity lstm_238/while/Identity:output:0*(
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
while_cond_2266017
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2266017___redundant_placeholder05
1while_while_cond_2266017___redundant_placeholder15
1while_while_cond_2266017___redundant_placeholder25
1while_while_cond_2266017___redundant_placeholder3
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
while_body_2266161
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_372_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_372_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_372_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_372_matmul_readvariableop_resource:	?G
4while_lstm_cell_372_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_372_biasadd_readvariableop_resource:	???*while/lstm_cell_372/BiasAdd/ReadVariableOp?)while/lstm_cell_372/MatMul/ReadVariableOp?+while/lstm_cell_372/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_372/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_372_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_372/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_372/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_372/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_372_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_372/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_372/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_372/addAddV2$while/lstm_cell_372/MatMul:product:0&while/lstm_cell_372/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_372/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_372_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_372/BiasAddBiasAddwhile/lstm_cell_372/add:z:02while/lstm_cell_372/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_372/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_372/splitSplit,while/lstm_cell_372/split/split_dim:output:0$while/lstm_cell_372/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_372/SigmoidSigmoid"while/lstm_cell_372/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_372/Sigmoid_1Sigmoid"while/lstm_cell_372/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_372/mulMul!while/lstm_cell_372/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_372/ReluRelu"while/lstm_cell_372/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_372/mul_1Mulwhile/lstm_cell_372/Sigmoid:y:0&while/lstm_cell_372/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_372/add_1AddV2while/lstm_cell_372/mul:z:0while/lstm_cell_372/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_372/Sigmoid_2Sigmoid"while/lstm_cell_372/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_372/Relu_1Reluwhile/lstm_cell_372/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_372/mul_2Mul!while/lstm_cell_372/Sigmoid_2:y:0(while/lstm_cell_372/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_372/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_372/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_372/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_372/BiasAdd/ReadVariableOp*^while/lstm_cell_372/MatMul/ReadVariableOp,^while/lstm_cell_372/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_372_biasadd_readvariableop_resource5while_lstm_cell_372_biasadd_readvariableop_resource_0"n
4while_lstm_cell_372_matmul_1_readvariableop_resource6while_lstm_cell_372_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_372_matmul_readvariableop_resource4while_lstm_cell_372_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_372/BiasAdd/ReadVariableOp*while/lstm_cell_372/BiasAdd/ReadVariableOp2V
)while/lstm_cell_372/MatMul/ReadVariableOp)while/lstm_cell_372/MatMul/ReadVariableOp2Z
+while/lstm_cell_372/MatMul_1/ReadVariableOp+while/lstm_cell_372/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_sequential_79_layer_call_fn_2265034

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
J__inference_sequential_79_layer_call_and_return_conditional_losses_2264271o
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
/__inference_lstm_cell_374_layer_call_fn_2268012

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
J__inference_lstm_cell_374_layer_call_and_return_conditional_losses_2263660o
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
E__inference_lstm_237_layer_call_and_return_conditional_losses_2266102
inputs_0?
,lstm_cell_372_matmul_readvariableop_resource:	?A
.lstm_cell_372_matmul_1_readvariableop_resource:	d?<
-lstm_cell_372_biasadd_readvariableop_resource:	?
identity??$lstm_cell_372/BiasAdd/ReadVariableOp?#lstm_cell_372/MatMul/ReadVariableOp?%lstm_cell_372/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_372/MatMul/ReadVariableOpReadVariableOp,lstm_cell_372_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_372/MatMulMatMulstrided_slice_2:output:0+lstm_cell_372/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_372/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_372_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_372/MatMul_1MatMulzeros:output:0-lstm_cell_372/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_372/addAddV2lstm_cell_372/MatMul:product:0 lstm_cell_372/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_372/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_372_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_372/BiasAddBiasAddlstm_cell_372/add:z:0,lstm_cell_372/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_372/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_372/splitSplit&lstm_cell_372/split/split_dim:output:0lstm_cell_372/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_372/SigmoidSigmoidlstm_cell_372/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_372/Sigmoid_1Sigmoidlstm_cell_372/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_372/mulMullstm_cell_372/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_372/ReluRelulstm_cell_372/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_372/mul_1Mullstm_cell_372/Sigmoid:y:0 lstm_cell_372/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_372/add_1AddV2lstm_cell_372/mul:z:0lstm_cell_372/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_372/Sigmoid_2Sigmoidlstm_cell_372/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_372/Relu_1Relulstm_cell_372/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_372/mul_2Mullstm_cell_372/Sigmoid_2:y:0"lstm_cell_372/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_372_matmul_readvariableop_resource.lstm_cell_372_matmul_1_readvariableop_resource-lstm_cell_372_biasadd_readvariableop_resource*
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
while_body_2266018*
condR
while_cond_2266017*K
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
NoOpNoOp%^lstm_cell_372/BiasAdd/ReadVariableOp$^lstm_cell_372/MatMul/ReadVariableOp&^lstm_cell_372/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_372/BiasAdd/ReadVariableOp$lstm_cell_372/BiasAdd/ReadVariableOp2J
#lstm_cell_372/MatMul/ReadVariableOp#lstm_cell_372/MatMul/ReadVariableOp2N
%lstm_cell_372/MatMul_1/ReadVariableOp%lstm_cell_372/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_2267535
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2267535___redundant_placeholder05
1while_while_cond_2267535___redundant_placeholder15
1while_while_cond_2267535___redundant_placeholder25
1while_while_cond_2267535___redundant_placeholder3
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
E__inference_lstm_238_layer_call_and_return_conditional_losses_2264096

inputs?
,lstm_cell_373_matmul_readvariableop_resource:	d?A
.lstm_cell_373_matmul_1_readvariableop_resource:	2?<
-lstm_cell_373_biasadd_readvariableop_resource:	?
identity??$lstm_cell_373/BiasAdd/ReadVariableOp?#lstm_cell_373/MatMul/ReadVariableOp?%lstm_cell_373/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_373/MatMul/ReadVariableOpReadVariableOp,lstm_cell_373_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_373/MatMulMatMulstrided_slice_2:output:0+lstm_cell_373/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_373/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_373_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_373/MatMul_1MatMulzeros:output:0-lstm_cell_373/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_373/addAddV2lstm_cell_373/MatMul:product:0 lstm_cell_373/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_373/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_373_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_373/BiasAddBiasAddlstm_cell_373/add:z:0,lstm_cell_373/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_373/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_373/splitSplit&lstm_cell_373/split/split_dim:output:0lstm_cell_373/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_373/SigmoidSigmoidlstm_cell_373/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_373/Sigmoid_1Sigmoidlstm_cell_373/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_373/mulMullstm_cell_373/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_373/ReluRelulstm_cell_373/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_373/mul_1Mullstm_cell_373/Sigmoid:y:0 lstm_cell_373/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_373/add_1AddV2lstm_cell_373/mul:z:0lstm_cell_373/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_373/Sigmoid_2Sigmoidlstm_cell_373/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_373/Relu_1Relulstm_cell_373/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_373/mul_2Mullstm_cell_373/Sigmoid_2:y:0"lstm_cell_373/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_373_matmul_readvariableop_resource.lstm_cell_373_matmul_1_readvariableop_resource-lstm_cell_373_biasadd_readvariableop_resource*
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
while_body_2264012*
condR
while_cond_2264011*K
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
NoOpNoOp%^lstm_cell_373/BiasAdd/ReadVariableOp$^lstm_cell_373/MatMul/ReadVariableOp&^lstm_cell_373/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_373/BiasAdd/ReadVariableOp$lstm_cell_373/BiasAdd/ReadVariableOp2J
#lstm_cell_373/MatMul/ReadVariableOp#lstm_cell_373/MatMul/ReadVariableOp2N
%lstm_cell_373/MatMul_1/ReadVariableOp%lstm_cell_373/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_2266633
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2266633___redundant_placeholder05
1while_while_cond_2266633___redundant_placeholder15
1while_while_cond_2266633___redundant_placeholder25
1while_while_cond_2266633___redundant_placeholder3
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
while_cond_2263018
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2263018___redundant_placeholder05
1while_while_cond_2263018___redundant_placeholder15
1while_while_cond_2263018___redundant_placeholder25
1while_while_cond_2263018___redundant_placeholder3
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
while_body_2267679
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_374_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_374_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_374_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_374_matmul_readvariableop_resource:2(F
4while_lstm_cell_374_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_374_biasadd_readvariableop_resource:(??*while/lstm_cell_374/BiasAdd/ReadVariableOp?)while/lstm_cell_374/MatMul/ReadVariableOp?+while/lstm_cell_374/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_374/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_374_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_374/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_374/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_374/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_374_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_374/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_374/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_374/addAddV2$while/lstm_cell_374/MatMul:product:0&while/lstm_cell_374/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_374/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_374_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_374/BiasAddBiasAddwhile/lstm_cell_374/add:z:02while/lstm_cell_374/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_374/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_374/splitSplit,while/lstm_cell_374/split/split_dim:output:0$while/lstm_cell_374/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_374/SigmoidSigmoid"while/lstm_cell_374/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_374/Sigmoid_1Sigmoid"while/lstm_cell_374/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_374/mulMul!while/lstm_cell_374/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_374/ReluRelu"while/lstm_cell_374/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_374/mul_1Mulwhile/lstm_cell_374/Sigmoid:y:0&while/lstm_cell_374/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_374/add_1AddV2while/lstm_cell_374/mul:z:0while/lstm_cell_374/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_374/Sigmoid_2Sigmoid"while/lstm_cell_374/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_374/Relu_1Reluwhile/lstm_cell_374/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_374/mul_2Mul!while/lstm_cell_374/Sigmoid_2:y:0(while/lstm_cell_374/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_374/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_374/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_374/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_374/BiasAdd/ReadVariableOp*^while/lstm_cell_374/MatMul/ReadVariableOp,^while/lstm_cell_374/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_374_biasadd_readvariableop_resource5while_lstm_cell_374_biasadd_readvariableop_resource_0"n
4while_lstm_cell_374_matmul_1_readvariableop_resource6while_lstm_cell_374_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_374_matmul_readvariableop_resource4while_lstm_cell_374_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_374/BiasAdd/ReadVariableOp*while/lstm_cell_374/BiasAdd/ReadVariableOp2V
)while/lstm_cell_374/MatMul/ReadVariableOp)while/lstm_cell_374/MatMul/ReadVariableOp2Z
+while/lstm_cell_374/MatMul_1/ReadVariableOp+while/lstm_cell_374/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_373_layer_call_and_return_conditional_losses_2267978

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
?
?
*__inference_lstm_239_layer_call_fn_2267191

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
E__inference_lstm_239_layer_call_and_return_conditional_losses_2264462o
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
?
?
J__inference_sequential_79_layer_call_and_return_conditional_losses_2264860

inputs#
lstm_237_2264833:	?#
lstm_237_2264835:	d?
lstm_237_2264837:	?#
lstm_238_2264840:	d?#
lstm_238_2264842:	2?
lstm_238_2264844:	?"
lstm_239_2264847:2("
lstm_239_2264849:
(
lstm_239_2264851:("
dense_79_2264854:

dense_79_2264856:
identity?? dense_79/StatefulPartitionedCall? lstm_237/StatefulPartitionedCall? lstm_238/StatefulPartitionedCall? lstm_239/StatefulPartitionedCall?
 lstm_237/StatefulPartitionedCallStatefulPartitionedCallinputslstm_237_2264833lstm_237_2264835lstm_237_2264837*
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
E__inference_lstm_237_layer_call_and_return_conditional_losses_2264792?
 lstm_238/StatefulPartitionedCallStatefulPartitionedCall)lstm_237/StatefulPartitionedCall:output:0lstm_238_2264840lstm_238_2264842lstm_238_2264844*
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
E__inference_lstm_238_layer_call_and_return_conditional_losses_2264627?
 lstm_239/StatefulPartitionedCallStatefulPartitionedCall)lstm_238/StatefulPartitionedCall:output:0lstm_239_2264847lstm_239_2264849lstm_239_2264851*
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
E__inference_lstm_239_layer_call_and_return_conditional_losses_2264462?
 dense_79/StatefulPartitionedCallStatefulPartitionedCall)lstm_239/StatefulPartitionedCall:output:0dense_79_2264854dense_79_2264856*
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
E__inference_dense_79_layer_call_and_return_conditional_losses_2264264x
IdentityIdentity)dense_79/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_79/StatefulPartitionedCall!^lstm_237/StatefulPartitionedCall!^lstm_238/StatefulPartitionedCall!^lstm_239/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_79/StatefulPartitionedCall dense_79/StatefulPartitionedCall2D
 lstm_237/StatefulPartitionedCall lstm_237/StatefulPartitionedCall2D
 lstm_238/StatefulPartitionedCall lstm_238/StatefulPartitionedCall2D
 lstm_239/StatefulPartitionedCall lstm_239/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_2266919
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2266919___redundant_placeholder05
1while_while_cond_2266919___redundant_placeholder15
1while_while_cond_2266919___redundant_placeholder25
1while_while_cond_2266919___redundant_placeholder3
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
/__inference_lstm_cell_373_layer_call_fn_2267914

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
J__inference_lstm_cell_373_layer_call_and_return_conditional_losses_2263310o
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
while_cond_2267392
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2267392___redundant_placeholder05
1while_while_cond_2267392___redundant_placeholder15
1while_while_cond_2267392___redundant_placeholder25
1while_while_cond_2267392___redundant_placeholder3
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
lstm_237_while_cond_2265119.
*lstm_237_while_lstm_237_while_loop_counter4
0lstm_237_while_lstm_237_while_maximum_iterations
lstm_237_while_placeholder 
lstm_237_while_placeholder_1 
lstm_237_while_placeholder_2 
lstm_237_while_placeholder_30
,lstm_237_while_less_lstm_237_strided_slice_1G
Clstm_237_while_lstm_237_while_cond_2265119___redundant_placeholder0G
Clstm_237_while_lstm_237_while_cond_2265119___redundant_placeholder1G
Clstm_237_while_lstm_237_while_cond_2265119___redundant_placeholder2G
Clstm_237_while_lstm_237_while_cond_2265119___redundant_placeholder3
lstm_237_while_identity
?
lstm_237/while/LessLesslstm_237_while_placeholder,lstm_237_while_less_lstm_237_strided_slice_1*
T0*
_output_shapes
: ]
lstm_237/while/IdentityIdentitylstm_237/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_237_while_identity lstm_237/while/Identity:output:0*(
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
?W
?
 __inference__traced_save_2268219
file_prefix.
*savev2_dense_79_kernel_read_readvariableop,
(savev2_dense_79_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_237_lstm_cell_237_kernel_read_readvariableopF
Bsavev2_lstm_237_lstm_cell_237_recurrent_kernel_read_readvariableop:
6savev2_lstm_237_lstm_cell_237_bias_read_readvariableop<
8savev2_lstm_238_lstm_cell_238_kernel_read_readvariableopF
Bsavev2_lstm_238_lstm_cell_238_recurrent_kernel_read_readvariableop:
6savev2_lstm_238_lstm_cell_238_bias_read_readvariableop<
8savev2_lstm_239_lstm_cell_239_kernel_read_readvariableopF
Bsavev2_lstm_239_lstm_cell_239_recurrent_kernel_read_readvariableop:
6savev2_lstm_239_lstm_cell_239_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_79_kernel_m_read_readvariableop3
/savev2_adam_dense_79_bias_m_read_readvariableopC
?savev2_adam_lstm_237_lstm_cell_237_kernel_m_read_readvariableopM
Isavev2_adam_lstm_237_lstm_cell_237_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_237_lstm_cell_237_bias_m_read_readvariableopC
?savev2_adam_lstm_238_lstm_cell_238_kernel_m_read_readvariableopM
Isavev2_adam_lstm_238_lstm_cell_238_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_238_lstm_cell_238_bias_m_read_readvariableopC
?savev2_adam_lstm_239_lstm_cell_239_kernel_m_read_readvariableopM
Isavev2_adam_lstm_239_lstm_cell_239_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_239_lstm_cell_239_bias_m_read_readvariableop5
1savev2_adam_dense_79_kernel_v_read_readvariableop3
/savev2_adam_dense_79_bias_v_read_readvariableopC
?savev2_adam_lstm_237_lstm_cell_237_kernel_v_read_readvariableopM
Isavev2_adam_lstm_237_lstm_cell_237_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_237_lstm_cell_237_bias_v_read_readvariableopC
?savev2_adam_lstm_238_lstm_cell_238_kernel_v_read_readvariableopM
Isavev2_adam_lstm_238_lstm_cell_238_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_238_lstm_cell_238_bias_v_read_readvariableopC
?savev2_adam_lstm_239_lstm_cell_239_kernel_v_read_readvariableopM
Isavev2_adam_lstm_239_lstm_cell_239_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_239_lstm_cell_239_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_79_kernel_read_readvariableop(savev2_dense_79_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_237_lstm_cell_237_kernel_read_readvariableopBsavev2_lstm_237_lstm_cell_237_recurrent_kernel_read_readvariableop6savev2_lstm_237_lstm_cell_237_bias_read_readvariableop8savev2_lstm_238_lstm_cell_238_kernel_read_readvariableopBsavev2_lstm_238_lstm_cell_238_recurrent_kernel_read_readvariableop6savev2_lstm_238_lstm_cell_238_bias_read_readvariableop8savev2_lstm_239_lstm_cell_239_kernel_read_readvariableopBsavev2_lstm_239_lstm_cell_239_recurrent_kernel_read_readvariableop6savev2_lstm_239_lstm_cell_239_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_79_kernel_m_read_readvariableop/savev2_adam_dense_79_bias_m_read_readvariableop?savev2_adam_lstm_237_lstm_cell_237_kernel_m_read_readvariableopIsavev2_adam_lstm_237_lstm_cell_237_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_237_lstm_cell_237_bias_m_read_readvariableop?savev2_adam_lstm_238_lstm_cell_238_kernel_m_read_readvariableopIsavev2_adam_lstm_238_lstm_cell_238_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_238_lstm_cell_238_bias_m_read_readvariableop?savev2_adam_lstm_239_lstm_cell_239_kernel_m_read_readvariableopIsavev2_adam_lstm_239_lstm_cell_239_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_239_lstm_cell_239_bias_m_read_readvariableop1savev2_adam_dense_79_kernel_v_read_readvariableop/savev2_adam_dense_79_bias_v_read_readvariableop?savev2_adam_lstm_237_lstm_cell_237_kernel_v_read_readvariableopIsavev2_adam_lstm_237_lstm_cell_237_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_237_lstm_cell_237_bias_v_read_readvariableop?savev2_adam_lstm_238_lstm_cell_238_kernel_v_read_readvariableopIsavev2_adam_lstm_238_lstm_cell_238_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_238_lstm_cell_238_bias_v_read_readvariableop?savev2_adam_lstm_239_lstm_cell_239_kernel_v_read_readvariableopIsavev2_adam_lstm_239_lstm_cell_239_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_239_lstm_cell_239_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
J__inference_sequential_79_layer_call_and_return_conditional_losses_2264271

inputs#
lstm_237_2263947:	?#
lstm_237_2263949:	d?
lstm_237_2263951:	?#
lstm_238_2264097:	d?#
lstm_238_2264099:	2?
lstm_238_2264101:	?"
lstm_239_2264247:2("
lstm_239_2264249:
(
lstm_239_2264251:("
dense_79_2264265:

dense_79_2264267:
identity?? dense_79/StatefulPartitionedCall? lstm_237/StatefulPartitionedCall? lstm_238/StatefulPartitionedCall? lstm_239/StatefulPartitionedCall?
 lstm_237/StatefulPartitionedCallStatefulPartitionedCallinputslstm_237_2263947lstm_237_2263949lstm_237_2263951*
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
E__inference_lstm_237_layer_call_and_return_conditional_losses_2263946?
 lstm_238/StatefulPartitionedCallStatefulPartitionedCall)lstm_237/StatefulPartitionedCall:output:0lstm_238_2264097lstm_238_2264099lstm_238_2264101*
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
E__inference_lstm_238_layer_call_and_return_conditional_losses_2264096?
 lstm_239/StatefulPartitionedCallStatefulPartitionedCall)lstm_238/StatefulPartitionedCall:output:0lstm_239_2264247lstm_239_2264249lstm_239_2264251*
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
E__inference_lstm_239_layer_call_and_return_conditional_losses_2264246?
 dense_79/StatefulPartitionedCallStatefulPartitionedCall)lstm_239/StatefulPartitionedCall:output:0dense_79_2264265dense_79_2264267*
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
E__inference_dense_79_layer_call_and_return_conditional_losses_2264264x
IdentityIdentity)dense_79/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_79/StatefulPartitionedCall!^lstm_237/StatefulPartitionedCall!^lstm_238/StatefulPartitionedCall!^lstm_239/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_79/StatefulPartitionedCall dense_79/StatefulPartitionedCall2D
 lstm_237/StatefulPartitionedCall lstm_237/StatefulPartitionedCall2D
 lstm_238/StatefulPartitionedCall lstm_238/StatefulPartitionedCall2D
 lstm_239/StatefulPartitionedCall lstm_239/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_2264378
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_374_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_374_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_374_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_374_matmul_readvariableop_resource:2(F
4while_lstm_cell_374_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_374_biasadd_readvariableop_resource:(??*while/lstm_cell_374/BiasAdd/ReadVariableOp?)while/lstm_cell_374/MatMul/ReadVariableOp?+while/lstm_cell_374/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_374/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_374_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_374/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_374/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_374/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_374_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_374/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_374/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_374/addAddV2$while/lstm_cell_374/MatMul:product:0&while/lstm_cell_374/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_374/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_374_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_374/BiasAddBiasAddwhile/lstm_cell_374/add:z:02while/lstm_cell_374/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_374/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_374/splitSplit,while/lstm_cell_374/split/split_dim:output:0$while/lstm_cell_374/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_374/SigmoidSigmoid"while/lstm_cell_374/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_374/Sigmoid_1Sigmoid"while/lstm_cell_374/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_374/mulMul!while/lstm_cell_374/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_374/ReluRelu"while/lstm_cell_374/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_374/mul_1Mulwhile/lstm_cell_374/Sigmoid:y:0&while/lstm_cell_374/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_374/add_1AddV2while/lstm_cell_374/mul:z:0while/lstm_cell_374/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_374/Sigmoid_2Sigmoid"while/lstm_cell_374/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_374/Relu_1Reluwhile/lstm_cell_374/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_374/mul_2Mul!while/lstm_cell_374/Sigmoid_2:y:0(while/lstm_cell_374/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_374/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_374/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_374/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_374/BiasAdd/ReadVariableOp*^while/lstm_cell_374/MatMul/ReadVariableOp,^while/lstm_cell_374/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_374_biasadd_readvariableop_resource5while_lstm_cell_374_biasadd_readvariableop_resource_0"n
4while_lstm_cell_374_matmul_1_readvariableop_resource6while_lstm_cell_374_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_374_matmul_readvariableop_resource4while_lstm_cell_374_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_374/BiasAdd/ReadVariableOp*while/lstm_cell_374/BiasAdd/ReadVariableOp2V
)while/lstm_cell_374/MatMul/ReadVariableOp)while/lstm_cell_374/MatMul/ReadVariableOp2Z
+while/lstm_cell_374/MatMul_1/ReadVariableOp+while/lstm_cell_374/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2264708
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_372_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_372_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_372_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_372_matmul_readvariableop_resource:	?G
4while_lstm_cell_372_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_372_biasadd_readvariableop_resource:	???*while/lstm_cell_372/BiasAdd/ReadVariableOp?)while/lstm_cell_372/MatMul/ReadVariableOp?+while/lstm_cell_372/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_372/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_372_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_372/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_372/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_372/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_372_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_372/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_372/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_372/addAddV2$while/lstm_cell_372/MatMul:product:0&while/lstm_cell_372/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_372/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_372_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_372/BiasAddBiasAddwhile/lstm_cell_372/add:z:02while/lstm_cell_372/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_372/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_372/splitSplit,while/lstm_cell_372/split/split_dim:output:0$while/lstm_cell_372/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_372/SigmoidSigmoid"while/lstm_cell_372/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_372/Sigmoid_1Sigmoid"while/lstm_cell_372/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_372/mulMul!while/lstm_cell_372/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_372/ReluRelu"while/lstm_cell_372/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_372/mul_1Mulwhile/lstm_cell_372/Sigmoid:y:0&while/lstm_cell_372/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_372/add_1AddV2while/lstm_cell_372/mul:z:0while/lstm_cell_372/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_372/Sigmoid_2Sigmoid"while/lstm_cell_372/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_372/Relu_1Reluwhile/lstm_cell_372/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_372/mul_2Mul!while/lstm_cell_372/Sigmoid_2:y:0(while/lstm_cell_372/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_372/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_372/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_372/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_372/BiasAdd/ReadVariableOp*^while/lstm_cell_372/MatMul/ReadVariableOp,^while/lstm_cell_372/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_372_biasadd_readvariableop_resource5while_lstm_cell_372_biasadd_readvariableop_resource_0"n
4while_lstm_cell_372_matmul_1_readvariableop_resource6while_lstm_cell_372_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_372_matmul_readvariableop_resource4while_lstm_cell_372_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_372/BiasAdd/ReadVariableOp*while/lstm_cell_372/BiasAdd/ReadVariableOp2V
)while/lstm_cell_372/MatMul/ReadVariableOp)while/lstm_cell_372/MatMul/ReadVariableOp2Z
+while/lstm_cell_372/MatMul_1/ReadVariableOp+while/lstm_cell_372/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2266304
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_372_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_372_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_372_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_372_matmul_readvariableop_resource:	?G
4while_lstm_cell_372_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_372_biasadd_readvariableop_resource:	???*while/lstm_cell_372/BiasAdd/ReadVariableOp?)while/lstm_cell_372/MatMul/ReadVariableOp?+while/lstm_cell_372/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_372/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_372_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_372/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_372/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_372/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_372_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_372/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_372/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_372/addAddV2$while/lstm_cell_372/MatMul:product:0&while/lstm_cell_372/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_372/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_372_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_372/BiasAddBiasAddwhile/lstm_cell_372/add:z:02while/lstm_cell_372/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_372/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_372/splitSplit,while/lstm_cell_372/split/split_dim:output:0$while/lstm_cell_372/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_372/SigmoidSigmoid"while/lstm_cell_372/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_372/Sigmoid_1Sigmoid"while/lstm_cell_372/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_372/mulMul!while/lstm_cell_372/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_372/ReluRelu"while/lstm_cell_372/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_372/mul_1Mulwhile/lstm_cell_372/Sigmoid:y:0&while/lstm_cell_372/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_372/add_1AddV2while/lstm_cell_372/mul:z:0while/lstm_cell_372/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_372/Sigmoid_2Sigmoid"while/lstm_cell_372/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_372/Relu_1Reluwhile/lstm_cell_372/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_372/mul_2Mul!while/lstm_cell_372/Sigmoid_2:y:0(while/lstm_cell_372/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_372/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_372/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_372/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_372/BiasAdd/ReadVariableOp*^while/lstm_cell_372/MatMul/ReadVariableOp,^while/lstm_cell_372/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_372_biasadd_readvariableop_resource5while_lstm_cell_372_biasadd_readvariableop_resource_0"n
4while_lstm_cell_372_matmul_1_readvariableop_resource6while_lstm_cell_372_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_372_matmul_readvariableop_resource4while_lstm_cell_372_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_372/BiasAdd/ReadVariableOp*while/lstm_cell_372/BiasAdd/ReadVariableOp2V
)while/lstm_cell_372/MatMul/ReadVariableOp)while/lstm_cell_372/MatMul/ReadVariableOp2Z
+while/lstm_cell_372/MatMul_1/ReadVariableOp+while/lstm_cell_372/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_237_layer_call_fn_2265926
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
E__inference_lstm_237_layer_call_and_return_conditional_losses_2262897|
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
?
?
J__inference_lstm_cell_372_layer_call_and_return_conditional_losses_2262814

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
?
*__inference_lstm_238_layer_call_fn_2266575

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
E__inference_lstm_238_layer_call_and_return_conditional_losses_2264627s
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
E__inference_lstm_239_layer_call_and_return_conditional_losses_2263597

inputs'
lstm_cell_374_2263515:2('
lstm_cell_374_2263517:
(#
lstm_cell_374_2263519:(
identity??%lstm_cell_374/StatefulPartitionedCall?while;
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
%lstm_cell_374/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_374_2263515lstm_cell_374_2263517lstm_cell_374_2263519*
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
J__inference_lstm_cell_374_layer_call_and_return_conditional_losses_2263514n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_374_2263515lstm_cell_374_2263517lstm_cell_374_2263519*
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
while_body_2263528*
condR
while_cond_2263527*K
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
NoOpNoOp&^lstm_cell_374/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_374/StatefulPartitionedCall%lstm_cell_374/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_238_layer_call_and_return_conditional_losses_2267004

inputs?
,lstm_cell_373_matmul_readvariableop_resource:	d?A
.lstm_cell_373_matmul_1_readvariableop_resource:	2?<
-lstm_cell_373_biasadd_readvariableop_resource:	?
identity??$lstm_cell_373/BiasAdd/ReadVariableOp?#lstm_cell_373/MatMul/ReadVariableOp?%lstm_cell_373/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_373/MatMul/ReadVariableOpReadVariableOp,lstm_cell_373_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_373/MatMulMatMulstrided_slice_2:output:0+lstm_cell_373/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_373/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_373_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_373/MatMul_1MatMulzeros:output:0-lstm_cell_373/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_373/addAddV2lstm_cell_373/MatMul:product:0 lstm_cell_373/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_373/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_373_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_373/BiasAddBiasAddlstm_cell_373/add:z:0,lstm_cell_373/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_373/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_373/splitSplit&lstm_cell_373/split/split_dim:output:0lstm_cell_373/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_373/SigmoidSigmoidlstm_cell_373/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_373/Sigmoid_1Sigmoidlstm_cell_373/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_373/mulMullstm_cell_373/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_373/ReluRelulstm_cell_373/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_373/mul_1Mullstm_cell_373/Sigmoid:y:0 lstm_cell_373/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_373/add_1AddV2lstm_cell_373/mul:z:0lstm_cell_373/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_373/Sigmoid_2Sigmoidlstm_cell_373/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_373/Relu_1Relulstm_cell_373/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_373/mul_2Mullstm_cell_373/Sigmoid_2:y:0"lstm_cell_373/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_373_matmul_readvariableop_resource.lstm_cell_373_matmul_1_readvariableop_resource-lstm_cell_373_biasadd_readvariableop_resource*
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
while_body_2266920*
condR
while_cond_2266919*K
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
NoOpNoOp%^lstm_cell_373/BiasAdd/ReadVariableOp$^lstm_cell_373/MatMul/ReadVariableOp&^lstm_cell_373/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_373/BiasAdd/ReadVariableOp$lstm_cell_373/BiasAdd/ReadVariableOp2J
#lstm_cell_373/MatMul/ReadVariableOp#lstm_cell_373/MatMul/ReadVariableOp2N
%lstm_cell_373/MatMul_1/ReadVariableOp%lstm_cell_373/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?K
?
E__inference_lstm_237_layer_call_and_return_conditional_losses_2266245
inputs_0?
,lstm_cell_372_matmul_readvariableop_resource:	?A
.lstm_cell_372_matmul_1_readvariableop_resource:	d?<
-lstm_cell_372_biasadd_readvariableop_resource:	?
identity??$lstm_cell_372/BiasAdd/ReadVariableOp?#lstm_cell_372/MatMul/ReadVariableOp?%lstm_cell_372/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_372/MatMul/ReadVariableOpReadVariableOp,lstm_cell_372_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_372/MatMulMatMulstrided_slice_2:output:0+lstm_cell_372/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_372/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_372_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_372/MatMul_1MatMulzeros:output:0-lstm_cell_372/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_372/addAddV2lstm_cell_372/MatMul:product:0 lstm_cell_372/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_372/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_372_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_372/BiasAddBiasAddlstm_cell_372/add:z:0,lstm_cell_372/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_372/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_372/splitSplit&lstm_cell_372/split/split_dim:output:0lstm_cell_372/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_372/SigmoidSigmoidlstm_cell_372/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_372/Sigmoid_1Sigmoidlstm_cell_372/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_372/mulMullstm_cell_372/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_372/ReluRelulstm_cell_372/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_372/mul_1Mullstm_cell_372/Sigmoid:y:0 lstm_cell_372/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_372/add_1AddV2lstm_cell_372/mul:z:0lstm_cell_372/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_372/Sigmoid_2Sigmoidlstm_cell_372/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_372/Relu_1Relulstm_cell_372/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_372/mul_2Mullstm_cell_372/Sigmoid_2:y:0"lstm_cell_372/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_372_matmul_readvariableop_resource.lstm_cell_372_matmul_1_readvariableop_resource-lstm_cell_372_biasadd_readvariableop_resource*
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
while_body_2266161*
condR
while_cond_2266160*K
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
NoOpNoOp%^lstm_cell_372/BiasAdd/ReadVariableOp$^lstm_cell_372/MatMul/ReadVariableOp&^lstm_cell_372/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_372/BiasAdd/ReadVariableOp$lstm_cell_372/BiasAdd/ReadVariableOp2J
#lstm_cell_372/MatMul/ReadVariableOp#lstm_cell_372/MatMul/ReadVariableOp2N
%lstm_cell_372/MatMul_1/ReadVariableOp%lstm_cell_372/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_374_layer_call_and_return_conditional_losses_2263660

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
while_cond_2264161
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2264161___redundant_placeholder05
1while_while_cond_2264161___redundant_placeholder15
1while_while_cond_2264161___redundant_placeholder25
1while_while_cond_2264161___redundant_placeholder3
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
E__inference_lstm_237_layer_call_and_return_conditional_losses_2264792

inputs?
,lstm_cell_372_matmul_readvariableop_resource:	?A
.lstm_cell_372_matmul_1_readvariableop_resource:	d?<
-lstm_cell_372_biasadd_readvariableop_resource:	?
identity??$lstm_cell_372/BiasAdd/ReadVariableOp?#lstm_cell_372/MatMul/ReadVariableOp?%lstm_cell_372/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_372/MatMul/ReadVariableOpReadVariableOp,lstm_cell_372_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_372/MatMulMatMulstrided_slice_2:output:0+lstm_cell_372/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_372/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_372_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_372/MatMul_1MatMulzeros:output:0-lstm_cell_372/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_372/addAddV2lstm_cell_372/MatMul:product:0 lstm_cell_372/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_372/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_372_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_372/BiasAddBiasAddlstm_cell_372/add:z:0,lstm_cell_372/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_372/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_372/splitSplit&lstm_cell_372/split/split_dim:output:0lstm_cell_372/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_372/SigmoidSigmoidlstm_cell_372/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_372/Sigmoid_1Sigmoidlstm_cell_372/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_372/mulMullstm_cell_372/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_372/ReluRelulstm_cell_372/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_372/mul_1Mullstm_cell_372/Sigmoid:y:0 lstm_cell_372/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_372/add_1AddV2lstm_cell_372/mul:z:0lstm_cell_372/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_372/Sigmoid_2Sigmoidlstm_cell_372/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_372/Relu_1Relulstm_cell_372/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_372/mul_2Mullstm_cell_372/Sigmoid_2:y:0"lstm_cell_372/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_372_matmul_readvariableop_resource.lstm_cell_372_matmul_1_readvariableop_resource-lstm_cell_372_biasadd_readvariableop_resource*
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
while_body_2264708*
condR
while_cond_2264707*K
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
NoOpNoOp%^lstm_cell_372/BiasAdd/ReadVariableOp$^lstm_cell_372/MatMul/ReadVariableOp&^lstm_cell_372/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_372/BiasAdd/ReadVariableOp$lstm_cell_372/BiasAdd/ReadVariableOp2J
#lstm_cell_372/MatMul/ReadVariableOp#lstm_cell_372/MatMul/ReadVariableOp2N
%lstm_cell_372/MatMul_1/ReadVariableOp%lstm_cell_372/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_238_while_body_2265686.
*lstm_238_while_lstm_238_while_loop_counter4
0lstm_238_while_lstm_238_while_maximum_iterations
lstm_238_while_placeholder 
lstm_238_while_placeholder_1 
lstm_238_while_placeholder_2 
lstm_238_while_placeholder_3-
)lstm_238_while_lstm_238_strided_slice_1_0i
elstm_238_while_tensorarrayv2read_tensorlistgetitem_lstm_238_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_238_while_lstm_cell_373_matmul_readvariableop_resource_0:	d?R
?lstm_238_while_lstm_cell_373_matmul_1_readvariableop_resource_0:	2?M
>lstm_238_while_lstm_cell_373_biasadd_readvariableop_resource_0:	?
lstm_238_while_identity
lstm_238_while_identity_1
lstm_238_while_identity_2
lstm_238_while_identity_3
lstm_238_while_identity_4
lstm_238_while_identity_5+
'lstm_238_while_lstm_238_strided_slice_1g
clstm_238_while_tensorarrayv2read_tensorlistgetitem_lstm_238_tensorarrayunstack_tensorlistfromtensorN
;lstm_238_while_lstm_cell_373_matmul_readvariableop_resource:	d?P
=lstm_238_while_lstm_cell_373_matmul_1_readvariableop_resource:	2?K
<lstm_238_while_lstm_cell_373_biasadd_readvariableop_resource:	???3lstm_238/while/lstm_cell_373/BiasAdd/ReadVariableOp?2lstm_238/while/lstm_cell_373/MatMul/ReadVariableOp?4lstm_238/while/lstm_cell_373/MatMul_1/ReadVariableOp?
@lstm_238/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_238/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_238_while_tensorarrayv2read_tensorlistgetitem_lstm_238_tensorarrayunstack_tensorlistfromtensor_0lstm_238_while_placeholderIlstm_238/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_238/while/lstm_cell_373/MatMul/ReadVariableOpReadVariableOp=lstm_238_while_lstm_cell_373_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_238/while/lstm_cell_373/MatMulMatMul9lstm_238/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_238/while/lstm_cell_373/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_238/while/lstm_cell_373/MatMul_1/ReadVariableOpReadVariableOp?lstm_238_while_lstm_cell_373_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_238/while/lstm_cell_373/MatMul_1MatMullstm_238_while_placeholder_2<lstm_238/while/lstm_cell_373/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_238/while/lstm_cell_373/addAddV2-lstm_238/while/lstm_cell_373/MatMul:product:0/lstm_238/while/lstm_cell_373/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_238/while/lstm_cell_373/BiasAdd/ReadVariableOpReadVariableOp>lstm_238_while_lstm_cell_373_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_238/while/lstm_cell_373/BiasAddBiasAdd$lstm_238/while/lstm_cell_373/add:z:0;lstm_238/while/lstm_cell_373/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_238/while/lstm_cell_373/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_238/while/lstm_cell_373/splitSplit5lstm_238/while/lstm_cell_373/split/split_dim:output:0-lstm_238/while/lstm_cell_373/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_238/while/lstm_cell_373/SigmoidSigmoid+lstm_238/while/lstm_cell_373/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_238/while/lstm_cell_373/Sigmoid_1Sigmoid+lstm_238/while/lstm_cell_373/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_238/while/lstm_cell_373/mulMul*lstm_238/while/lstm_cell_373/Sigmoid_1:y:0lstm_238_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_238/while/lstm_cell_373/ReluRelu+lstm_238/while/lstm_cell_373/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_238/while/lstm_cell_373/mul_1Mul(lstm_238/while/lstm_cell_373/Sigmoid:y:0/lstm_238/while/lstm_cell_373/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_238/while/lstm_cell_373/add_1AddV2$lstm_238/while/lstm_cell_373/mul:z:0&lstm_238/while/lstm_cell_373/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_238/while/lstm_cell_373/Sigmoid_2Sigmoid+lstm_238/while/lstm_cell_373/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_238/while/lstm_cell_373/Relu_1Relu&lstm_238/while/lstm_cell_373/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_238/while/lstm_cell_373/mul_2Mul*lstm_238/while/lstm_cell_373/Sigmoid_2:y:01lstm_238/while/lstm_cell_373/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_238/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_238_while_placeholder_1lstm_238_while_placeholder&lstm_238/while/lstm_cell_373/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_238/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_238/while/addAddV2lstm_238_while_placeholderlstm_238/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_238/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_238/while/add_1AddV2*lstm_238_while_lstm_238_while_loop_counterlstm_238/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_238/while/IdentityIdentitylstm_238/while/add_1:z:0^lstm_238/while/NoOp*
T0*
_output_shapes
: ?
lstm_238/while/Identity_1Identity0lstm_238_while_lstm_238_while_maximum_iterations^lstm_238/while/NoOp*
T0*
_output_shapes
: t
lstm_238/while/Identity_2Identitylstm_238/while/add:z:0^lstm_238/while/NoOp*
T0*
_output_shapes
: ?
lstm_238/while/Identity_3IdentityClstm_238/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_238/while/NoOp*
T0*
_output_shapes
: ?
lstm_238/while/Identity_4Identity&lstm_238/while/lstm_cell_373/mul_2:z:0^lstm_238/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_238/while/Identity_5Identity&lstm_238/while/lstm_cell_373/add_1:z:0^lstm_238/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_238/while/NoOpNoOp4^lstm_238/while/lstm_cell_373/BiasAdd/ReadVariableOp3^lstm_238/while/lstm_cell_373/MatMul/ReadVariableOp5^lstm_238/while/lstm_cell_373/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_238_while_identity lstm_238/while/Identity:output:0"?
lstm_238_while_identity_1"lstm_238/while/Identity_1:output:0"?
lstm_238_while_identity_2"lstm_238/while/Identity_2:output:0"?
lstm_238_while_identity_3"lstm_238/while/Identity_3:output:0"?
lstm_238_while_identity_4"lstm_238/while/Identity_4:output:0"?
lstm_238_while_identity_5"lstm_238/while/Identity_5:output:0"T
'lstm_238_while_lstm_238_strided_slice_1)lstm_238_while_lstm_238_strided_slice_1_0"~
<lstm_238_while_lstm_cell_373_biasadd_readvariableop_resource>lstm_238_while_lstm_cell_373_biasadd_readvariableop_resource_0"?
=lstm_238_while_lstm_cell_373_matmul_1_readvariableop_resource?lstm_238_while_lstm_cell_373_matmul_1_readvariableop_resource_0"|
;lstm_238_while_lstm_cell_373_matmul_readvariableop_resource=lstm_238_while_lstm_cell_373_matmul_readvariableop_resource_0"?
clstm_238_while_tensorarrayv2read_tensorlistgetitem_lstm_238_tensorarrayunstack_tensorlistfromtensorelstm_238_while_tensorarrayv2read_tensorlistgetitem_lstm_238_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_238/while/lstm_cell_373/BiasAdd/ReadVariableOp3lstm_238/while/lstm_cell_373/BiasAdd/ReadVariableOp2h
2lstm_238/while/lstm_cell_373/MatMul/ReadVariableOp2lstm_238/while/lstm_cell_373/MatMul/ReadVariableOp2l
4lstm_238/while/lstm_cell_373/MatMul_1/ReadVariableOp4lstm_238/while/lstm_cell_373/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_373_layer_call_and_return_conditional_losses_2267946

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
?K
?
E__inference_lstm_238_layer_call_and_return_conditional_losses_2266718
inputs_0?
,lstm_cell_373_matmul_readvariableop_resource:	d?A
.lstm_cell_373_matmul_1_readvariableop_resource:	2?<
-lstm_cell_373_biasadd_readvariableop_resource:	?
identity??$lstm_cell_373/BiasAdd/ReadVariableOp?#lstm_cell_373/MatMul/ReadVariableOp?%lstm_cell_373/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_373/MatMul/ReadVariableOpReadVariableOp,lstm_cell_373_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_373/MatMulMatMulstrided_slice_2:output:0+lstm_cell_373/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_373/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_373_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_373/MatMul_1MatMulzeros:output:0-lstm_cell_373/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_373/addAddV2lstm_cell_373/MatMul:product:0 lstm_cell_373/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_373/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_373_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_373/BiasAddBiasAddlstm_cell_373/add:z:0,lstm_cell_373/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_373/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_373/splitSplit&lstm_cell_373/split/split_dim:output:0lstm_cell_373/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_373/SigmoidSigmoidlstm_cell_373/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_373/Sigmoid_1Sigmoidlstm_cell_373/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_373/mulMullstm_cell_373/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_373/ReluRelulstm_cell_373/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_373/mul_1Mullstm_cell_373/Sigmoid:y:0 lstm_cell_373/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_373/add_1AddV2lstm_cell_373/mul:z:0lstm_cell_373/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_373/Sigmoid_2Sigmoidlstm_cell_373/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_373/Relu_1Relulstm_cell_373/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_373/mul_2Mullstm_cell_373/Sigmoid_2:y:0"lstm_cell_373/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_373_matmul_readvariableop_resource.lstm_cell_373_matmul_1_readvariableop_resource-lstm_cell_373_biasadd_readvariableop_resource*
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
while_body_2266634*
condR
while_cond_2266633*K
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
NoOpNoOp%^lstm_cell_373/BiasAdd/ReadVariableOp$^lstm_cell_373/MatMul/ReadVariableOp&^lstm_cell_373/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_373/BiasAdd/ReadVariableOp$lstm_cell_373/BiasAdd/ReadVariableOp2J
#lstm_cell_373/MatMul/ReadVariableOp#lstm_cell_373/MatMul/ReadVariableOp2N
%lstm_cell_373/MatMul_1/ReadVariableOp%lstm_cell_373/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?S
?
)sequential_79_lstm_238_while_body_2262518J
Fsequential_79_lstm_238_while_sequential_79_lstm_238_while_loop_counterP
Lsequential_79_lstm_238_while_sequential_79_lstm_238_while_maximum_iterations,
(sequential_79_lstm_238_while_placeholder.
*sequential_79_lstm_238_while_placeholder_1.
*sequential_79_lstm_238_while_placeholder_2.
*sequential_79_lstm_238_while_placeholder_3I
Esequential_79_lstm_238_while_sequential_79_lstm_238_strided_slice_1_0?
?sequential_79_lstm_238_while_tensorarrayv2read_tensorlistgetitem_sequential_79_lstm_238_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_79_lstm_238_while_lstm_cell_373_matmul_readvariableop_resource_0:	d?`
Msequential_79_lstm_238_while_lstm_cell_373_matmul_1_readvariableop_resource_0:	2?[
Lsequential_79_lstm_238_while_lstm_cell_373_biasadd_readvariableop_resource_0:	?)
%sequential_79_lstm_238_while_identity+
'sequential_79_lstm_238_while_identity_1+
'sequential_79_lstm_238_while_identity_2+
'sequential_79_lstm_238_while_identity_3+
'sequential_79_lstm_238_while_identity_4+
'sequential_79_lstm_238_while_identity_5G
Csequential_79_lstm_238_while_sequential_79_lstm_238_strided_slice_1?
sequential_79_lstm_238_while_tensorarrayv2read_tensorlistgetitem_sequential_79_lstm_238_tensorarrayunstack_tensorlistfromtensor\
Isequential_79_lstm_238_while_lstm_cell_373_matmul_readvariableop_resource:	d?^
Ksequential_79_lstm_238_while_lstm_cell_373_matmul_1_readvariableop_resource:	2?Y
Jsequential_79_lstm_238_while_lstm_cell_373_biasadd_readvariableop_resource:	???Asequential_79/lstm_238/while/lstm_cell_373/BiasAdd/ReadVariableOp?@sequential_79/lstm_238/while/lstm_cell_373/MatMul/ReadVariableOp?Bsequential_79/lstm_238/while/lstm_cell_373/MatMul_1/ReadVariableOp?
Nsequential_79/lstm_238/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
@sequential_79/lstm_238/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_79_lstm_238_while_tensorarrayv2read_tensorlistgetitem_sequential_79_lstm_238_tensorarrayunstack_tensorlistfromtensor_0(sequential_79_lstm_238_while_placeholderWsequential_79/lstm_238/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
@sequential_79/lstm_238/while/lstm_cell_373/MatMul/ReadVariableOpReadVariableOpKsequential_79_lstm_238_while_lstm_cell_373_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
1sequential_79/lstm_238/while/lstm_cell_373/MatMulMatMulGsequential_79/lstm_238/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_79/lstm_238/while/lstm_cell_373/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_79/lstm_238/while/lstm_cell_373/MatMul_1/ReadVariableOpReadVariableOpMsequential_79_lstm_238_while_lstm_cell_373_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
3sequential_79/lstm_238/while/lstm_cell_373/MatMul_1MatMul*sequential_79_lstm_238_while_placeholder_2Jsequential_79/lstm_238/while/lstm_cell_373/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_79/lstm_238/while/lstm_cell_373/addAddV2;sequential_79/lstm_238/while/lstm_cell_373/MatMul:product:0=sequential_79/lstm_238/while/lstm_cell_373/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_79/lstm_238/while/lstm_cell_373/BiasAdd/ReadVariableOpReadVariableOpLsequential_79_lstm_238_while_lstm_cell_373_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_79/lstm_238/while/lstm_cell_373/BiasAddBiasAdd2sequential_79/lstm_238/while/lstm_cell_373/add:z:0Isequential_79/lstm_238/while/lstm_cell_373/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_79/lstm_238/while/lstm_cell_373/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_79/lstm_238/while/lstm_cell_373/splitSplitCsequential_79/lstm_238/while/lstm_cell_373/split/split_dim:output:0;sequential_79/lstm_238/while/lstm_cell_373/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
2sequential_79/lstm_238/while/lstm_cell_373/SigmoidSigmoid9sequential_79/lstm_238/while/lstm_cell_373/split:output:0*
T0*'
_output_shapes
:?????????2?
4sequential_79/lstm_238/while/lstm_cell_373/Sigmoid_1Sigmoid9sequential_79/lstm_238/while/lstm_cell_373/split:output:1*
T0*'
_output_shapes
:?????????2?
.sequential_79/lstm_238/while/lstm_cell_373/mulMul8sequential_79/lstm_238/while/lstm_cell_373/Sigmoid_1:y:0*sequential_79_lstm_238_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
/sequential_79/lstm_238/while/lstm_cell_373/ReluRelu9sequential_79/lstm_238/while/lstm_cell_373/split:output:2*
T0*'
_output_shapes
:?????????2?
0sequential_79/lstm_238/while/lstm_cell_373/mul_1Mul6sequential_79/lstm_238/while/lstm_cell_373/Sigmoid:y:0=sequential_79/lstm_238/while/lstm_cell_373/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
0sequential_79/lstm_238/while/lstm_cell_373/add_1AddV22sequential_79/lstm_238/while/lstm_cell_373/mul:z:04sequential_79/lstm_238/while/lstm_cell_373/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
4sequential_79/lstm_238/while/lstm_cell_373/Sigmoid_2Sigmoid9sequential_79/lstm_238/while/lstm_cell_373/split:output:3*
T0*'
_output_shapes
:?????????2?
1sequential_79/lstm_238/while/lstm_cell_373/Relu_1Relu4sequential_79/lstm_238/while/lstm_cell_373/add_1:z:0*
T0*'
_output_shapes
:?????????2?
0sequential_79/lstm_238/while/lstm_cell_373/mul_2Mul8sequential_79/lstm_238/while/lstm_cell_373/Sigmoid_2:y:0?sequential_79/lstm_238/while/lstm_cell_373/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Asequential_79/lstm_238/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_79_lstm_238_while_placeholder_1(sequential_79_lstm_238_while_placeholder4sequential_79/lstm_238/while/lstm_cell_373/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_79/lstm_238/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_79/lstm_238/while/addAddV2(sequential_79_lstm_238_while_placeholder+sequential_79/lstm_238/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_79/lstm_238/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_79/lstm_238/while/add_1AddV2Fsequential_79_lstm_238_while_sequential_79_lstm_238_while_loop_counter-sequential_79/lstm_238/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_79/lstm_238/while/IdentityIdentity&sequential_79/lstm_238/while/add_1:z:0"^sequential_79/lstm_238/while/NoOp*
T0*
_output_shapes
: ?
'sequential_79/lstm_238/while/Identity_1IdentityLsequential_79_lstm_238_while_sequential_79_lstm_238_while_maximum_iterations"^sequential_79/lstm_238/while/NoOp*
T0*
_output_shapes
: ?
'sequential_79/lstm_238/while/Identity_2Identity$sequential_79/lstm_238/while/add:z:0"^sequential_79/lstm_238/while/NoOp*
T0*
_output_shapes
: ?
'sequential_79/lstm_238/while/Identity_3IdentityQsequential_79/lstm_238/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_79/lstm_238/while/NoOp*
T0*
_output_shapes
: ?
'sequential_79/lstm_238/while/Identity_4Identity4sequential_79/lstm_238/while/lstm_cell_373/mul_2:z:0"^sequential_79/lstm_238/while/NoOp*
T0*'
_output_shapes
:?????????2?
'sequential_79/lstm_238/while/Identity_5Identity4sequential_79/lstm_238/while/lstm_cell_373/add_1:z:0"^sequential_79/lstm_238/while/NoOp*
T0*'
_output_shapes
:?????????2?
!sequential_79/lstm_238/while/NoOpNoOpB^sequential_79/lstm_238/while/lstm_cell_373/BiasAdd/ReadVariableOpA^sequential_79/lstm_238/while/lstm_cell_373/MatMul/ReadVariableOpC^sequential_79/lstm_238/while/lstm_cell_373/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_79_lstm_238_while_identity.sequential_79/lstm_238/while/Identity:output:0"[
'sequential_79_lstm_238_while_identity_10sequential_79/lstm_238/while/Identity_1:output:0"[
'sequential_79_lstm_238_while_identity_20sequential_79/lstm_238/while/Identity_2:output:0"[
'sequential_79_lstm_238_while_identity_30sequential_79/lstm_238/while/Identity_3:output:0"[
'sequential_79_lstm_238_while_identity_40sequential_79/lstm_238/while/Identity_4:output:0"[
'sequential_79_lstm_238_while_identity_50sequential_79/lstm_238/while/Identity_5:output:0"?
Jsequential_79_lstm_238_while_lstm_cell_373_biasadd_readvariableop_resourceLsequential_79_lstm_238_while_lstm_cell_373_biasadd_readvariableop_resource_0"?
Ksequential_79_lstm_238_while_lstm_cell_373_matmul_1_readvariableop_resourceMsequential_79_lstm_238_while_lstm_cell_373_matmul_1_readvariableop_resource_0"?
Isequential_79_lstm_238_while_lstm_cell_373_matmul_readvariableop_resourceKsequential_79_lstm_238_while_lstm_cell_373_matmul_readvariableop_resource_0"?
Csequential_79_lstm_238_while_sequential_79_lstm_238_strided_slice_1Esequential_79_lstm_238_while_sequential_79_lstm_238_strided_slice_1_0"?
sequential_79_lstm_238_while_tensorarrayv2read_tensorlistgetitem_sequential_79_lstm_238_tensorarrayunstack_tensorlistfromtensor?sequential_79_lstm_238_while_tensorarrayv2read_tensorlistgetitem_sequential_79_lstm_238_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Asequential_79/lstm_238/while/lstm_cell_373/BiasAdd/ReadVariableOpAsequential_79/lstm_238/while/lstm_cell_373/BiasAdd/ReadVariableOp2?
@sequential_79/lstm_238/while/lstm_cell_373/MatMul/ReadVariableOp@sequential_79/lstm_238/while/lstm_cell_373/MatMul/ReadVariableOp2?
Bsequential_79/lstm_238/while/lstm_cell_373/MatMul_1/ReadVariableOpBsequential_79/lstm_238/while/lstm_cell_373/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2264543
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_373_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_373_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_373_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_373_matmul_readvariableop_resource:	d?G
4while_lstm_cell_373_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_373_biasadd_readvariableop_resource:	???*while/lstm_cell_373/BiasAdd/ReadVariableOp?)while/lstm_cell_373/MatMul/ReadVariableOp?+while/lstm_cell_373/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_373/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_373_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_373/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_373/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_373/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_373_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_373/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_373/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_373/addAddV2$while/lstm_cell_373/MatMul:product:0&while/lstm_cell_373/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_373/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_373_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_373/BiasAddBiasAddwhile/lstm_cell_373/add:z:02while/lstm_cell_373/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_373/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_373/splitSplit,while/lstm_cell_373/split/split_dim:output:0$while/lstm_cell_373/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_373/SigmoidSigmoid"while/lstm_cell_373/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_373/Sigmoid_1Sigmoid"while/lstm_cell_373/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_373/mulMul!while/lstm_cell_373/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_373/ReluRelu"while/lstm_cell_373/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_373/mul_1Mulwhile/lstm_cell_373/Sigmoid:y:0&while/lstm_cell_373/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_373/add_1AddV2while/lstm_cell_373/mul:z:0while/lstm_cell_373/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_373/Sigmoid_2Sigmoid"while/lstm_cell_373/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_373/Relu_1Reluwhile/lstm_cell_373/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_373/mul_2Mul!while/lstm_cell_373/Sigmoid_2:y:0(while/lstm_cell_373/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_373/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_373/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_373/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_373/BiasAdd/ReadVariableOp*^while/lstm_cell_373/MatMul/ReadVariableOp,^while/lstm_cell_373/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_373_biasadd_readvariableop_resource5while_lstm_cell_373_biasadd_readvariableop_resource_0"n
4while_lstm_cell_373_matmul_1_readvariableop_resource6while_lstm_cell_373_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_373_matmul_readvariableop_resource4while_lstm_cell_373_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_373/BiasAdd/ReadVariableOp*while/lstm_cell_373/BiasAdd/ReadVariableOp2V
)while/lstm_cell_373/MatMul/ReadVariableOp)while/lstm_cell_373/MatMul/ReadVariableOp2Z
+while/lstm_cell_373/MatMul_1/ReadVariableOp+while/lstm_cell_373/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_239_layer_call_fn_2267158
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
E__inference_lstm_239_layer_call_and_return_conditional_losses_2263597o
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
J__inference_lstm_cell_374_layer_call_and_return_conditional_losses_2263514

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
*__inference_lstm_239_layer_call_fn_2267169
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
E__inference_lstm_239_layer_call_and_return_conditional_losses_2263788o
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
E__inference_lstm_237_layer_call_and_return_conditional_losses_2262897

inputs(
lstm_cell_372_2262815:	?(
lstm_cell_372_2262817:	d?$
lstm_cell_372_2262819:	?
identity??%lstm_cell_372/StatefulPartitionedCall?while;
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
%lstm_cell_372/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_372_2262815lstm_cell_372_2262817lstm_cell_372_2262819*
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
J__inference_lstm_cell_372_layer_call_and_return_conditional_losses_2262814n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_372_2262815lstm_cell_372_2262817lstm_cell_372_2262819*
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
while_body_2262828*
condR
while_cond_2262827*K
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
NoOpNoOp&^lstm_cell_372/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_372/StatefulPartitionedCall%lstm_cell_372/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_238_layer_call_fn_2266553
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
E__inference_lstm_238_layer_call_and_return_conditional_losses_2263438|
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
*__inference_lstm_237_layer_call_fn_2265959

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
E__inference_lstm_237_layer_call_and_return_conditional_losses_2264792s
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
?#
?
while_body_2263019
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_372_2263043_0:	?0
while_lstm_cell_372_2263045_0:	d?,
while_lstm_cell_372_2263047_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_372_2263043:	?.
while_lstm_cell_372_2263045:	d?*
while_lstm_cell_372_2263047:	???+while/lstm_cell_372/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_372/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_372_2263043_0while_lstm_cell_372_2263045_0while_lstm_cell_372_2263047_0*
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
J__inference_lstm_cell_372_layer_call_and_return_conditional_losses_2262960?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_372/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_372/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_372/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_372/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_372_2263043while_lstm_cell_372_2263043_0"<
while_lstm_cell_372_2263045while_lstm_cell_372_2263045_0"<
while_lstm_cell_372_2263047while_lstm_cell_372_2263047_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_372/StatefulPartitionedCall+while/lstm_cell_372/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_2267249
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2267249___redundant_placeholder05
1while_while_cond_2267249___redundant_placeholder15
1while_while_cond_2267249___redundant_placeholder25
1while_while_cond_2267249___redundant_placeholder3
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
while_cond_2266303
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2266303___redundant_placeholder05
1while_while_cond_2266303___redundant_placeholder15
1while_while_cond_2266303___redundant_placeholder25
1while_while_cond_2266303___redundant_placeholder3
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
while_body_2266634
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_373_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_373_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_373_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_373_matmul_readvariableop_resource:	d?G
4while_lstm_cell_373_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_373_biasadd_readvariableop_resource:	???*while/lstm_cell_373/BiasAdd/ReadVariableOp?)while/lstm_cell_373/MatMul/ReadVariableOp?+while/lstm_cell_373/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_373/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_373_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_373/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_373/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_373/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_373_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_373/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_373/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_373/addAddV2$while/lstm_cell_373/MatMul:product:0&while/lstm_cell_373/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_373/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_373_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_373/BiasAddBiasAddwhile/lstm_cell_373/add:z:02while/lstm_cell_373/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_373/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_373/splitSplit,while/lstm_cell_373/split/split_dim:output:0$while/lstm_cell_373/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_373/SigmoidSigmoid"while/lstm_cell_373/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_373/Sigmoid_1Sigmoid"while/lstm_cell_373/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_373/mulMul!while/lstm_cell_373/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_373/ReluRelu"while/lstm_cell_373/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_373/mul_1Mulwhile/lstm_cell_373/Sigmoid:y:0&while/lstm_cell_373/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_373/add_1AddV2while/lstm_cell_373/mul:z:0while/lstm_cell_373/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_373/Sigmoid_2Sigmoid"while/lstm_cell_373/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_373/Relu_1Reluwhile/lstm_cell_373/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_373/mul_2Mul!while/lstm_cell_373/Sigmoid_2:y:0(while/lstm_cell_373/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_373/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_373/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_373/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_373/BiasAdd/ReadVariableOp*^while/lstm_cell_373/MatMul/ReadVariableOp,^while/lstm_cell_373/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_373_biasadd_readvariableop_resource5while_lstm_cell_373_biasadd_readvariableop_resource_0"n
4while_lstm_cell_373_matmul_1_readvariableop_resource6while_lstm_cell_373_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_373_matmul_readvariableop_resource4while_lstm_cell_373_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_373/BiasAdd/ReadVariableOp*while/lstm_cell_373/BiasAdd/ReadVariableOp2V
)while/lstm_cell_373/MatMul/ReadVariableOp)while/lstm_cell_373/MatMul/ReadVariableOp2Z
+while/lstm_cell_373/MatMul_1/ReadVariableOp+while/lstm_cell_373/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_237_while_body_2265547.
*lstm_237_while_lstm_237_while_loop_counter4
0lstm_237_while_lstm_237_while_maximum_iterations
lstm_237_while_placeholder 
lstm_237_while_placeholder_1 
lstm_237_while_placeholder_2 
lstm_237_while_placeholder_3-
)lstm_237_while_lstm_237_strided_slice_1_0i
elstm_237_while_tensorarrayv2read_tensorlistgetitem_lstm_237_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_237_while_lstm_cell_372_matmul_readvariableop_resource_0:	?R
?lstm_237_while_lstm_cell_372_matmul_1_readvariableop_resource_0:	d?M
>lstm_237_while_lstm_cell_372_biasadd_readvariableop_resource_0:	?
lstm_237_while_identity
lstm_237_while_identity_1
lstm_237_while_identity_2
lstm_237_while_identity_3
lstm_237_while_identity_4
lstm_237_while_identity_5+
'lstm_237_while_lstm_237_strided_slice_1g
clstm_237_while_tensorarrayv2read_tensorlistgetitem_lstm_237_tensorarrayunstack_tensorlistfromtensorN
;lstm_237_while_lstm_cell_372_matmul_readvariableop_resource:	?P
=lstm_237_while_lstm_cell_372_matmul_1_readvariableop_resource:	d?K
<lstm_237_while_lstm_cell_372_biasadd_readvariableop_resource:	???3lstm_237/while/lstm_cell_372/BiasAdd/ReadVariableOp?2lstm_237/while/lstm_cell_372/MatMul/ReadVariableOp?4lstm_237/while/lstm_cell_372/MatMul_1/ReadVariableOp?
@lstm_237/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_237/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_237_while_tensorarrayv2read_tensorlistgetitem_lstm_237_tensorarrayunstack_tensorlistfromtensor_0lstm_237_while_placeholderIlstm_237/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_237/while/lstm_cell_372/MatMul/ReadVariableOpReadVariableOp=lstm_237_while_lstm_cell_372_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_237/while/lstm_cell_372/MatMulMatMul9lstm_237/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_237/while/lstm_cell_372/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_237/while/lstm_cell_372/MatMul_1/ReadVariableOpReadVariableOp?lstm_237_while_lstm_cell_372_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_237/while/lstm_cell_372/MatMul_1MatMullstm_237_while_placeholder_2<lstm_237/while/lstm_cell_372/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_237/while/lstm_cell_372/addAddV2-lstm_237/while/lstm_cell_372/MatMul:product:0/lstm_237/while/lstm_cell_372/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_237/while/lstm_cell_372/BiasAdd/ReadVariableOpReadVariableOp>lstm_237_while_lstm_cell_372_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_237/while/lstm_cell_372/BiasAddBiasAdd$lstm_237/while/lstm_cell_372/add:z:0;lstm_237/while/lstm_cell_372/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_237/while/lstm_cell_372/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_237/while/lstm_cell_372/splitSplit5lstm_237/while/lstm_cell_372/split/split_dim:output:0-lstm_237/while/lstm_cell_372/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_237/while/lstm_cell_372/SigmoidSigmoid+lstm_237/while/lstm_cell_372/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_237/while/lstm_cell_372/Sigmoid_1Sigmoid+lstm_237/while/lstm_cell_372/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_237/while/lstm_cell_372/mulMul*lstm_237/while/lstm_cell_372/Sigmoid_1:y:0lstm_237_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_237/while/lstm_cell_372/ReluRelu+lstm_237/while/lstm_cell_372/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_237/while/lstm_cell_372/mul_1Mul(lstm_237/while/lstm_cell_372/Sigmoid:y:0/lstm_237/while/lstm_cell_372/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_237/while/lstm_cell_372/add_1AddV2$lstm_237/while/lstm_cell_372/mul:z:0&lstm_237/while/lstm_cell_372/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_237/while/lstm_cell_372/Sigmoid_2Sigmoid+lstm_237/while/lstm_cell_372/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_237/while/lstm_cell_372/Relu_1Relu&lstm_237/while/lstm_cell_372/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_237/while/lstm_cell_372/mul_2Mul*lstm_237/while/lstm_cell_372/Sigmoid_2:y:01lstm_237/while/lstm_cell_372/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_237/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_237_while_placeholder_1lstm_237_while_placeholder&lstm_237/while/lstm_cell_372/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_237/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_237/while/addAddV2lstm_237_while_placeholderlstm_237/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_237/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_237/while/add_1AddV2*lstm_237_while_lstm_237_while_loop_counterlstm_237/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_237/while/IdentityIdentitylstm_237/while/add_1:z:0^lstm_237/while/NoOp*
T0*
_output_shapes
: ?
lstm_237/while/Identity_1Identity0lstm_237_while_lstm_237_while_maximum_iterations^lstm_237/while/NoOp*
T0*
_output_shapes
: t
lstm_237/while/Identity_2Identitylstm_237/while/add:z:0^lstm_237/while/NoOp*
T0*
_output_shapes
: ?
lstm_237/while/Identity_3IdentityClstm_237/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_237/while/NoOp*
T0*
_output_shapes
: ?
lstm_237/while/Identity_4Identity&lstm_237/while/lstm_cell_372/mul_2:z:0^lstm_237/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_237/while/Identity_5Identity&lstm_237/while/lstm_cell_372/add_1:z:0^lstm_237/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_237/while/NoOpNoOp4^lstm_237/while/lstm_cell_372/BiasAdd/ReadVariableOp3^lstm_237/while/lstm_cell_372/MatMul/ReadVariableOp5^lstm_237/while/lstm_cell_372/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_237_while_identity lstm_237/while/Identity:output:0"?
lstm_237_while_identity_1"lstm_237/while/Identity_1:output:0"?
lstm_237_while_identity_2"lstm_237/while/Identity_2:output:0"?
lstm_237_while_identity_3"lstm_237/while/Identity_3:output:0"?
lstm_237_while_identity_4"lstm_237/while/Identity_4:output:0"?
lstm_237_while_identity_5"lstm_237/while/Identity_5:output:0"T
'lstm_237_while_lstm_237_strided_slice_1)lstm_237_while_lstm_237_strided_slice_1_0"~
<lstm_237_while_lstm_cell_372_biasadd_readvariableop_resource>lstm_237_while_lstm_cell_372_biasadd_readvariableop_resource_0"?
=lstm_237_while_lstm_cell_372_matmul_1_readvariableop_resource?lstm_237_while_lstm_cell_372_matmul_1_readvariableop_resource_0"|
;lstm_237_while_lstm_cell_372_matmul_readvariableop_resource=lstm_237_while_lstm_cell_372_matmul_readvariableop_resource_0"?
clstm_237_while_tensorarrayv2read_tensorlistgetitem_lstm_237_tensorarrayunstack_tensorlistfromtensorelstm_237_while_tensorarrayv2read_tensorlistgetitem_lstm_237_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_237/while/lstm_cell_372/BiasAdd/ReadVariableOp3lstm_237/while/lstm_cell_372/BiasAdd/ReadVariableOp2h
2lstm_237/while/lstm_cell_372/MatMul/ReadVariableOp2lstm_237/while/lstm_cell_372/MatMul/ReadVariableOp2l
4lstm_237/while/lstm_cell_372/MatMul_1/ReadVariableOp4lstm_237/while/lstm_cell_372/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2266446
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2266446___redundant_placeholder05
1while_while_cond_2266446___redundant_placeholder15
1while_while_cond_2266446___redundant_placeholder25
1while_while_cond_2266446___redundant_placeholder3
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
J__inference_sequential_79_layer_call_and_return_conditional_losses_2264972
lstm_237_input#
lstm_237_2264945:	?#
lstm_237_2264947:	d?
lstm_237_2264949:	?#
lstm_238_2264952:	d?#
lstm_238_2264954:	2?
lstm_238_2264956:	?"
lstm_239_2264959:2("
lstm_239_2264961:
(
lstm_239_2264963:("
dense_79_2264966:

dense_79_2264968:
identity?? dense_79/StatefulPartitionedCall? lstm_237/StatefulPartitionedCall? lstm_238/StatefulPartitionedCall? lstm_239/StatefulPartitionedCall?
 lstm_237/StatefulPartitionedCallStatefulPartitionedCalllstm_237_inputlstm_237_2264945lstm_237_2264947lstm_237_2264949*
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
E__inference_lstm_237_layer_call_and_return_conditional_losses_2264792?
 lstm_238/StatefulPartitionedCallStatefulPartitionedCall)lstm_237/StatefulPartitionedCall:output:0lstm_238_2264952lstm_238_2264954lstm_238_2264956*
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
E__inference_lstm_238_layer_call_and_return_conditional_losses_2264627?
 lstm_239/StatefulPartitionedCallStatefulPartitionedCall)lstm_238/StatefulPartitionedCall:output:0lstm_239_2264959lstm_239_2264961lstm_239_2264963*
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
E__inference_lstm_239_layer_call_and_return_conditional_losses_2264462?
 dense_79/StatefulPartitionedCallStatefulPartitionedCall)lstm_239/StatefulPartitionedCall:output:0dense_79_2264966dense_79_2264968*
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
E__inference_dense_79_layer_call_and_return_conditional_losses_2264264x
IdentityIdentity)dense_79/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_79/StatefulPartitionedCall!^lstm_237/StatefulPartitionedCall!^lstm_238/StatefulPartitionedCall!^lstm_239/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_79/StatefulPartitionedCall dense_79/StatefulPartitionedCall2D
 lstm_237/StatefulPartitionedCall lstm_237/StatefulPartitionedCall2D
 lstm_238/StatefulPartitionedCall lstm_238/StatefulPartitionedCall2D
 lstm_239/StatefulPartitionedCall lstm_239/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_237_input
?8
?
while_body_2266777
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_373_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_373_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_373_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_373_matmul_readvariableop_resource:	d?G
4while_lstm_cell_373_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_373_biasadd_readvariableop_resource:	???*while/lstm_cell_373/BiasAdd/ReadVariableOp?)while/lstm_cell_373/MatMul/ReadVariableOp?+while/lstm_cell_373/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_373/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_373_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_373/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_373/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_373/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_373_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_373/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_373/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_373/addAddV2$while/lstm_cell_373/MatMul:product:0&while/lstm_cell_373/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_373/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_373_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_373/BiasAddBiasAddwhile/lstm_cell_373/add:z:02while/lstm_cell_373/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_373/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_373/splitSplit,while/lstm_cell_373/split/split_dim:output:0$while/lstm_cell_373/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_373/SigmoidSigmoid"while/lstm_cell_373/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_373/Sigmoid_1Sigmoid"while/lstm_cell_373/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_373/mulMul!while/lstm_cell_373/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_373/ReluRelu"while/lstm_cell_373/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_373/mul_1Mulwhile/lstm_cell_373/Sigmoid:y:0&while/lstm_cell_373/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_373/add_1AddV2while/lstm_cell_373/mul:z:0while/lstm_cell_373/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_373/Sigmoid_2Sigmoid"while/lstm_cell_373/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_373/Relu_1Reluwhile/lstm_cell_373/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_373/mul_2Mul!while/lstm_cell_373/Sigmoid_2:y:0(while/lstm_cell_373/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_373/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_373/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_373/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_373/BiasAdd/ReadVariableOp*^while/lstm_cell_373/MatMul/ReadVariableOp,^while/lstm_cell_373/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_373_biasadd_readvariableop_resource5while_lstm_cell_373_biasadd_readvariableop_resource_0"n
4while_lstm_cell_373_matmul_1_readvariableop_resource6while_lstm_cell_373_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_373_matmul_readvariableop_resource4while_lstm_cell_373_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_373/BiasAdd/ReadVariableOp*while/lstm_cell_373/BiasAdd/ReadVariableOp2V
)while/lstm_cell_373/MatMul/ReadVariableOp)while/lstm_cell_373/MatMul/ReadVariableOp2Z
+while/lstm_cell_373/MatMul_1/ReadVariableOp+while/lstm_cell_373/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2263369
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_373_2263393_0:	d?0
while_lstm_cell_373_2263395_0:	2?,
while_lstm_cell_373_2263397_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_373_2263393:	d?.
while_lstm_cell_373_2263395:	2?*
while_lstm_cell_373_2263397:	???+while/lstm_cell_373/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_373/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_373_2263393_0while_lstm_cell_373_2263395_0while_lstm_cell_373_2263397_0*
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
J__inference_lstm_cell_373_layer_call_and_return_conditional_losses_2263310?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_373/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_373/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_373/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_373/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_373_2263393while_lstm_cell_373_2263393_0"<
while_lstm_cell_373_2263395while_lstm_cell_373_2263395_0"<
while_lstm_cell_373_2263397while_lstm_cell_373_2263397_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_373/StatefulPartitionedCall+while/lstm_cell_373/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_374_layer_call_fn_2267995

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
J__inference_lstm_cell_374_layer_call_and_return_conditional_losses_2263514o
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
while_body_2266447
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_372_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_372_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_372_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_372_matmul_readvariableop_resource:	?G
4while_lstm_cell_372_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_372_biasadd_readvariableop_resource:	???*while/lstm_cell_372/BiasAdd/ReadVariableOp?)while/lstm_cell_372/MatMul/ReadVariableOp?+while/lstm_cell_372/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_372/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_372_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_372/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_372/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_372/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_372_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_372/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_372/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_372/addAddV2$while/lstm_cell_372/MatMul:product:0&while/lstm_cell_372/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_372/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_372_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_372/BiasAddBiasAddwhile/lstm_cell_372/add:z:02while/lstm_cell_372/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_372/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_372/splitSplit,while/lstm_cell_372/split/split_dim:output:0$while/lstm_cell_372/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_372/SigmoidSigmoid"while/lstm_cell_372/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_372/Sigmoid_1Sigmoid"while/lstm_cell_372/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_372/mulMul!while/lstm_cell_372/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_372/ReluRelu"while/lstm_cell_372/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_372/mul_1Mulwhile/lstm_cell_372/Sigmoid:y:0&while/lstm_cell_372/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_372/add_1AddV2while/lstm_cell_372/mul:z:0while/lstm_cell_372/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_372/Sigmoid_2Sigmoid"while/lstm_cell_372/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_372/Relu_1Reluwhile/lstm_cell_372/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_372/mul_2Mul!while/lstm_cell_372/Sigmoid_2:y:0(while/lstm_cell_372/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_372/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_372/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_372/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_372/BiasAdd/ReadVariableOp*^while/lstm_cell_372/MatMul/ReadVariableOp,^while/lstm_cell_372/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_372_biasadd_readvariableop_resource5while_lstm_cell_372_biasadd_readvariableop_resource_0"n
4while_lstm_cell_372_matmul_1_readvariableop_resource6while_lstm_cell_372_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_372_matmul_readvariableop_resource4while_lstm_cell_372_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_372/BiasAdd/ReadVariableOp*while/lstm_cell_372/BiasAdd/ReadVariableOp2V
)while/lstm_cell_372/MatMul/ReadVariableOp)while/lstm_cell_372/MatMul/ReadVariableOp2Z
+while/lstm_cell_372/MatMul_1/ReadVariableOp+while/lstm_cell_372/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
#__inference__traced_restore_2268349
file_prefix2
 assignvariableop_dense_79_kernel:
.
 assignvariableop_1_dense_79_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_237_lstm_cell_237_kernel:	?M
:assignvariableop_8_lstm_237_lstm_cell_237_recurrent_kernel:	d?=
.assignvariableop_9_lstm_237_lstm_cell_237_bias:	?D
1assignvariableop_10_lstm_238_lstm_cell_238_kernel:	d?N
;assignvariableop_11_lstm_238_lstm_cell_238_recurrent_kernel:	2?>
/assignvariableop_12_lstm_238_lstm_cell_238_bias:	?C
1assignvariableop_13_lstm_239_lstm_cell_239_kernel:2(M
;assignvariableop_14_lstm_239_lstm_cell_239_recurrent_kernel:
(=
/assignvariableop_15_lstm_239_lstm_cell_239_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_79_kernel_m:
6
(assignvariableop_19_adam_dense_79_bias_m:K
8assignvariableop_20_adam_lstm_237_lstm_cell_237_kernel_m:	?U
Bassignvariableop_21_adam_lstm_237_lstm_cell_237_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_237_lstm_cell_237_bias_m:	?K
8assignvariableop_23_adam_lstm_238_lstm_cell_238_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_238_lstm_cell_238_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_238_lstm_cell_238_bias_m:	?J
8assignvariableop_26_adam_lstm_239_lstm_cell_239_kernel_m:2(T
Bassignvariableop_27_adam_lstm_239_lstm_cell_239_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_239_lstm_cell_239_bias_m:(<
*assignvariableop_29_adam_dense_79_kernel_v:
6
(assignvariableop_30_adam_dense_79_bias_v:K
8assignvariableop_31_adam_lstm_237_lstm_cell_237_kernel_v:	?U
Bassignvariableop_32_adam_lstm_237_lstm_cell_237_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_237_lstm_cell_237_bias_v:	?K
8assignvariableop_34_adam_lstm_238_lstm_cell_238_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_238_lstm_cell_238_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_238_lstm_cell_238_bias_v:	?J
8assignvariableop_37_adam_lstm_239_lstm_cell_239_kernel_v:2(T
Bassignvariableop_38_adam_lstm_239_lstm_cell_239_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_239_lstm_cell_239_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_79_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_79_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_237_lstm_cell_237_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_237_lstm_cell_237_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_237_lstm_cell_237_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_238_lstm_cell_238_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_238_lstm_cell_238_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_238_lstm_cell_238_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_239_lstm_cell_239_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_239_lstm_cell_239_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_239_lstm_cell_239_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_79_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_79_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_237_lstm_cell_237_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_237_lstm_cell_237_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_237_lstm_cell_237_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_238_lstm_cell_238_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_238_lstm_cell_238_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_238_lstm_cell_238_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_239_lstm_cell_239_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_239_lstm_cell_239_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_239_lstm_cell_239_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_79_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_79_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_237_lstm_cell_237_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_237_lstm_cell_237_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_237_lstm_cell_237_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_238_lstm_cell_238_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_238_lstm_cell_238_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_238_lstm_cell_238_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_239_lstm_cell_239_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_239_lstm_cell_239_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_239_lstm_cell_239_bias_vIdentity_39:output:0"/device:CPU:0*
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

?
%__inference_signature_wrapper_2265007
lstm_237_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_237_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_2262747o
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
_user_specified_namelstm_237_input
?
?
J__inference_lstm_cell_373_layer_call_and_return_conditional_losses_2263310

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
while_cond_2263861
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2263861___redundant_placeholder05
1while_while_cond_2263861___redundant_placeholder15
1while_while_cond_2263861___redundant_placeholder25
1while_while_cond_2263861___redundant_placeholder3
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
E__inference_lstm_237_layer_call_and_return_conditional_losses_2263946

inputs?
,lstm_cell_372_matmul_readvariableop_resource:	?A
.lstm_cell_372_matmul_1_readvariableop_resource:	d?<
-lstm_cell_372_biasadd_readvariableop_resource:	?
identity??$lstm_cell_372/BiasAdd/ReadVariableOp?#lstm_cell_372/MatMul/ReadVariableOp?%lstm_cell_372/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_372/MatMul/ReadVariableOpReadVariableOp,lstm_cell_372_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_372/MatMulMatMulstrided_slice_2:output:0+lstm_cell_372/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_372/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_372_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_372/MatMul_1MatMulzeros:output:0-lstm_cell_372/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_372/addAddV2lstm_cell_372/MatMul:product:0 lstm_cell_372/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_372/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_372_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_372/BiasAddBiasAddlstm_cell_372/add:z:0,lstm_cell_372/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_372/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_372/splitSplit&lstm_cell_372/split/split_dim:output:0lstm_cell_372/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_372/SigmoidSigmoidlstm_cell_372/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_372/Sigmoid_1Sigmoidlstm_cell_372/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_372/mulMullstm_cell_372/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_372/ReluRelulstm_cell_372/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_372/mul_1Mullstm_cell_372/Sigmoid:y:0 lstm_cell_372/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_372/add_1AddV2lstm_cell_372/mul:z:0lstm_cell_372/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_372/Sigmoid_2Sigmoidlstm_cell_372/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_372/Relu_1Relulstm_cell_372/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_372/mul_2Mullstm_cell_372/Sigmoid_2:y:0"lstm_cell_372/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_372_matmul_readvariableop_resource.lstm_cell_372_matmul_1_readvariableop_resource-lstm_cell_372_biasadd_readvariableop_resource*
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
while_body_2263862*
condR
while_cond_2263861*K
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
NoOpNoOp%^lstm_cell_372/BiasAdd/ReadVariableOp$^lstm_cell_372/MatMul/ReadVariableOp&^lstm_cell_372/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_372/BiasAdd/ReadVariableOp$lstm_cell_372/BiasAdd/ReadVariableOp2J
#lstm_cell_372/MatMul/ReadVariableOp#lstm_cell_372/MatMul/ReadVariableOp2N
%lstm_cell_372/MatMul_1/ReadVariableOp%lstm_cell_372/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_237_layer_call_and_return_conditional_losses_2266388

inputs?
,lstm_cell_372_matmul_readvariableop_resource:	?A
.lstm_cell_372_matmul_1_readvariableop_resource:	d?<
-lstm_cell_372_biasadd_readvariableop_resource:	?
identity??$lstm_cell_372/BiasAdd/ReadVariableOp?#lstm_cell_372/MatMul/ReadVariableOp?%lstm_cell_372/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_372/MatMul/ReadVariableOpReadVariableOp,lstm_cell_372_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_372/MatMulMatMulstrided_slice_2:output:0+lstm_cell_372/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_372/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_372_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_372/MatMul_1MatMulzeros:output:0-lstm_cell_372/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_372/addAddV2lstm_cell_372/MatMul:product:0 lstm_cell_372/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_372/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_372_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_372/BiasAddBiasAddlstm_cell_372/add:z:0,lstm_cell_372/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_372/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_372/splitSplit&lstm_cell_372/split/split_dim:output:0lstm_cell_372/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_372/SigmoidSigmoidlstm_cell_372/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_372/Sigmoid_1Sigmoidlstm_cell_372/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_372/mulMullstm_cell_372/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_372/ReluRelulstm_cell_372/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_372/mul_1Mullstm_cell_372/Sigmoid:y:0 lstm_cell_372/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_372/add_1AddV2lstm_cell_372/mul:z:0lstm_cell_372/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_372/Sigmoid_2Sigmoidlstm_cell_372/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_372/Relu_1Relulstm_cell_372/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_372/mul_2Mullstm_cell_372/Sigmoid_2:y:0"lstm_cell_372/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_372_matmul_readvariableop_resource.lstm_cell_372_matmul_1_readvariableop_resource-lstm_cell_372_biasadd_readvariableop_resource*
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
while_body_2266304*
condR
while_cond_2266303*K
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
NoOpNoOp%^lstm_cell_372/BiasAdd/ReadVariableOp$^lstm_cell_372/MatMul/ReadVariableOp&^lstm_cell_372/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_372/BiasAdd/ReadVariableOp$lstm_cell_372/BiasAdd/ReadVariableOp2J
#lstm_cell_372/MatMul/ReadVariableOp#lstm_cell_372/MatMul/ReadVariableOp2N
%lstm_cell_372/MatMul_1/ReadVariableOp%lstm_cell_372/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_237_while_body_2265120.
*lstm_237_while_lstm_237_while_loop_counter4
0lstm_237_while_lstm_237_while_maximum_iterations
lstm_237_while_placeholder 
lstm_237_while_placeholder_1 
lstm_237_while_placeholder_2 
lstm_237_while_placeholder_3-
)lstm_237_while_lstm_237_strided_slice_1_0i
elstm_237_while_tensorarrayv2read_tensorlistgetitem_lstm_237_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_237_while_lstm_cell_372_matmul_readvariableop_resource_0:	?R
?lstm_237_while_lstm_cell_372_matmul_1_readvariableop_resource_0:	d?M
>lstm_237_while_lstm_cell_372_biasadd_readvariableop_resource_0:	?
lstm_237_while_identity
lstm_237_while_identity_1
lstm_237_while_identity_2
lstm_237_while_identity_3
lstm_237_while_identity_4
lstm_237_while_identity_5+
'lstm_237_while_lstm_237_strided_slice_1g
clstm_237_while_tensorarrayv2read_tensorlistgetitem_lstm_237_tensorarrayunstack_tensorlistfromtensorN
;lstm_237_while_lstm_cell_372_matmul_readvariableop_resource:	?P
=lstm_237_while_lstm_cell_372_matmul_1_readvariableop_resource:	d?K
<lstm_237_while_lstm_cell_372_biasadd_readvariableop_resource:	???3lstm_237/while/lstm_cell_372/BiasAdd/ReadVariableOp?2lstm_237/while/lstm_cell_372/MatMul/ReadVariableOp?4lstm_237/while/lstm_cell_372/MatMul_1/ReadVariableOp?
@lstm_237/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_237/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_237_while_tensorarrayv2read_tensorlistgetitem_lstm_237_tensorarrayunstack_tensorlistfromtensor_0lstm_237_while_placeholderIlstm_237/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_237/while/lstm_cell_372/MatMul/ReadVariableOpReadVariableOp=lstm_237_while_lstm_cell_372_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_237/while/lstm_cell_372/MatMulMatMul9lstm_237/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_237/while/lstm_cell_372/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_237/while/lstm_cell_372/MatMul_1/ReadVariableOpReadVariableOp?lstm_237_while_lstm_cell_372_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_237/while/lstm_cell_372/MatMul_1MatMullstm_237_while_placeholder_2<lstm_237/while/lstm_cell_372/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_237/while/lstm_cell_372/addAddV2-lstm_237/while/lstm_cell_372/MatMul:product:0/lstm_237/while/lstm_cell_372/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_237/while/lstm_cell_372/BiasAdd/ReadVariableOpReadVariableOp>lstm_237_while_lstm_cell_372_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_237/while/lstm_cell_372/BiasAddBiasAdd$lstm_237/while/lstm_cell_372/add:z:0;lstm_237/while/lstm_cell_372/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_237/while/lstm_cell_372/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_237/while/lstm_cell_372/splitSplit5lstm_237/while/lstm_cell_372/split/split_dim:output:0-lstm_237/while/lstm_cell_372/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_237/while/lstm_cell_372/SigmoidSigmoid+lstm_237/while/lstm_cell_372/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_237/while/lstm_cell_372/Sigmoid_1Sigmoid+lstm_237/while/lstm_cell_372/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_237/while/lstm_cell_372/mulMul*lstm_237/while/lstm_cell_372/Sigmoid_1:y:0lstm_237_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_237/while/lstm_cell_372/ReluRelu+lstm_237/while/lstm_cell_372/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_237/while/lstm_cell_372/mul_1Mul(lstm_237/while/lstm_cell_372/Sigmoid:y:0/lstm_237/while/lstm_cell_372/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_237/while/lstm_cell_372/add_1AddV2$lstm_237/while/lstm_cell_372/mul:z:0&lstm_237/while/lstm_cell_372/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_237/while/lstm_cell_372/Sigmoid_2Sigmoid+lstm_237/while/lstm_cell_372/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_237/while/lstm_cell_372/Relu_1Relu&lstm_237/while/lstm_cell_372/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_237/while/lstm_cell_372/mul_2Mul*lstm_237/while/lstm_cell_372/Sigmoid_2:y:01lstm_237/while/lstm_cell_372/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_237/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_237_while_placeholder_1lstm_237_while_placeholder&lstm_237/while/lstm_cell_372/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_237/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_237/while/addAddV2lstm_237_while_placeholderlstm_237/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_237/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_237/while/add_1AddV2*lstm_237_while_lstm_237_while_loop_counterlstm_237/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_237/while/IdentityIdentitylstm_237/while/add_1:z:0^lstm_237/while/NoOp*
T0*
_output_shapes
: ?
lstm_237/while/Identity_1Identity0lstm_237_while_lstm_237_while_maximum_iterations^lstm_237/while/NoOp*
T0*
_output_shapes
: t
lstm_237/while/Identity_2Identitylstm_237/while/add:z:0^lstm_237/while/NoOp*
T0*
_output_shapes
: ?
lstm_237/while/Identity_3IdentityClstm_237/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_237/while/NoOp*
T0*
_output_shapes
: ?
lstm_237/while/Identity_4Identity&lstm_237/while/lstm_cell_372/mul_2:z:0^lstm_237/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_237/while/Identity_5Identity&lstm_237/while/lstm_cell_372/add_1:z:0^lstm_237/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_237/while/NoOpNoOp4^lstm_237/while/lstm_cell_372/BiasAdd/ReadVariableOp3^lstm_237/while/lstm_cell_372/MatMul/ReadVariableOp5^lstm_237/while/lstm_cell_372/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_237_while_identity lstm_237/while/Identity:output:0"?
lstm_237_while_identity_1"lstm_237/while/Identity_1:output:0"?
lstm_237_while_identity_2"lstm_237/while/Identity_2:output:0"?
lstm_237_while_identity_3"lstm_237/while/Identity_3:output:0"?
lstm_237_while_identity_4"lstm_237/while/Identity_4:output:0"?
lstm_237_while_identity_5"lstm_237/while/Identity_5:output:0"T
'lstm_237_while_lstm_237_strided_slice_1)lstm_237_while_lstm_237_strided_slice_1_0"~
<lstm_237_while_lstm_cell_372_biasadd_readvariableop_resource>lstm_237_while_lstm_cell_372_biasadd_readvariableop_resource_0"?
=lstm_237_while_lstm_cell_372_matmul_1_readvariableop_resource?lstm_237_while_lstm_cell_372_matmul_1_readvariableop_resource_0"|
;lstm_237_while_lstm_cell_372_matmul_readvariableop_resource=lstm_237_while_lstm_cell_372_matmul_readvariableop_resource_0"?
clstm_237_while_tensorarrayv2read_tensorlistgetitem_lstm_237_tensorarrayunstack_tensorlistfromtensorelstm_237_while_tensorarrayv2read_tensorlistgetitem_lstm_237_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_237/while/lstm_cell_372/BiasAdd/ReadVariableOp3lstm_237/while/lstm_cell_372/BiasAdd/ReadVariableOp2h
2lstm_237/while/lstm_cell_372/MatMul/ReadVariableOp2lstm_237/while/lstm_cell_372/MatMul/ReadVariableOp2l
4lstm_237/while/lstm_cell_372/MatMul_1/ReadVariableOp4lstm_237/while/lstm_cell_372/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_238_while_body_2265259.
*lstm_238_while_lstm_238_while_loop_counter4
0lstm_238_while_lstm_238_while_maximum_iterations
lstm_238_while_placeholder 
lstm_238_while_placeholder_1 
lstm_238_while_placeholder_2 
lstm_238_while_placeholder_3-
)lstm_238_while_lstm_238_strided_slice_1_0i
elstm_238_while_tensorarrayv2read_tensorlistgetitem_lstm_238_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_238_while_lstm_cell_373_matmul_readvariableop_resource_0:	d?R
?lstm_238_while_lstm_cell_373_matmul_1_readvariableop_resource_0:	2?M
>lstm_238_while_lstm_cell_373_biasadd_readvariableop_resource_0:	?
lstm_238_while_identity
lstm_238_while_identity_1
lstm_238_while_identity_2
lstm_238_while_identity_3
lstm_238_while_identity_4
lstm_238_while_identity_5+
'lstm_238_while_lstm_238_strided_slice_1g
clstm_238_while_tensorarrayv2read_tensorlistgetitem_lstm_238_tensorarrayunstack_tensorlistfromtensorN
;lstm_238_while_lstm_cell_373_matmul_readvariableop_resource:	d?P
=lstm_238_while_lstm_cell_373_matmul_1_readvariableop_resource:	2?K
<lstm_238_while_lstm_cell_373_biasadd_readvariableop_resource:	???3lstm_238/while/lstm_cell_373/BiasAdd/ReadVariableOp?2lstm_238/while/lstm_cell_373/MatMul/ReadVariableOp?4lstm_238/while/lstm_cell_373/MatMul_1/ReadVariableOp?
@lstm_238/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_238/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_238_while_tensorarrayv2read_tensorlistgetitem_lstm_238_tensorarrayunstack_tensorlistfromtensor_0lstm_238_while_placeholderIlstm_238/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_238/while/lstm_cell_373/MatMul/ReadVariableOpReadVariableOp=lstm_238_while_lstm_cell_373_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_238/while/lstm_cell_373/MatMulMatMul9lstm_238/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_238/while/lstm_cell_373/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_238/while/lstm_cell_373/MatMul_1/ReadVariableOpReadVariableOp?lstm_238_while_lstm_cell_373_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_238/while/lstm_cell_373/MatMul_1MatMullstm_238_while_placeholder_2<lstm_238/while/lstm_cell_373/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_238/while/lstm_cell_373/addAddV2-lstm_238/while/lstm_cell_373/MatMul:product:0/lstm_238/while/lstm_cell_373/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_238/while/lstm_cell_373/BiasAdd/ReadVariableOpReadVariableOp>lstm_238_while_lstm_cell_373_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_238/while/lstm_cell_373/BiasAddBiasAdd$lstm_238/while/lstm_cell_373/add:z:0;lstm_238/while/lstm_cell_373/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_238/while/lstm_cell_373/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_238/while/lstm_cell_373/splitSplit5lstm_238/while/lstm_cell_373/split/split_dim:output:0-lstm_238/while/lstm_cell_373/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_238/while/lstm_cell_373/SigmoidSigmoid+lstm_238/while/lstm_cell_373/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_238/while/lstm_cell_373/Sigmoid_1Sigmoid+lstm_238/while/lstm_cell_373/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_238/while/lstm_cell_373/mulMul*lstm_238/while/lstm_cell_373/Sigmoid_1:y:0lstm_238_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_238/while/lstm_cell_373/ReluRelu+lstm_238/while/lstm_cell_373/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_238/while/lstm_cell_373/mul_1Mul(lstm_238/while/lstm_cell_373/Sigmoid:y:0/lstm_238/while/lstm_cell_373/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_238/while/lstm_cell_373/add_1AddV2$lstm_238/while/lstm_cell_373/mul:z:0&lstm_238/while/lstm_cell_373/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_238/while/lstm_cell_373/Sigmoid_2Sigmoid+lstm_238/while/lstm_cell_373/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_238/while/lstm_cell_373/Relu_1Relu&lstm_238/while/lstm_cell_373/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_238/while/lstm_cell_373/mul_2Mul*lstm_238/while/lstm_cell_373/Sigmoid_2:y:01lstm_238/while/lstm_cell_373/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_238/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_238_while_placeholder_1lstm_238_while_placeholder&lstm_238/while/lstm_cell_373/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_238/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_238/while/addAddV2lstm_238_while_placeholderlstm_238/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_238/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_238/while/add_1AddV2*lstm_238_while_lstm_238_while_loop_counterlstm_238/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_238/while/IdentityIdentitylstm_238/while/add_1:z:0^lstm_238/while/NoOp*
T0*
_output_shapes
: ?
lstm_238/while/Identity_1Identity0lstm_238_while_lstm_238_while_maximum_iterations^lstm_238/while/NoOp*
T0*
_output_shapes
: t
lstm_238/while/Identity_2Identitylstm_238/while/add:z:0^lstm_238/while/NoOp*
T0*
_output_shapes
: ?
lstm_238/while/Identity_3IdentityClstm_238/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_238/while/NoOp*
T0*
_output_shapes
: ?
lstm_238/while/Identity_4Identity&lstm_238/while/lstm_cell_373/mul_2:z:0^lstm_238/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_238/while/Identity_5Identity&lstm_238/while/lstm_cell_373/add_1:z:0^lstm_238/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_238/while/NoOpNoOp4^lstm_238/while/lstm_cell_373/BiasAdd/ReadVariableOp3^lstm_238/while/lstm_cell_373/MatMul/ReadVariableOp5^lstm_238/while/lstm_cell_373/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_238_while_identity lstm_238/while/Identity:output:0"?
lstm_238_while_identity_1"lstm_238/while/Identity_1:output:0"?
lstm_238_while_identity_2"lstm_238/while/Identity_2:output:0"?
lstm_238_while_identity_3"lstm_238/while/Identity_3:output:0"?
lstm_238_while_identity_4"lstm_238/while/Identity_4:output:0"?
lstm_238_while_identity_5"lstm_238/while/Identity_5:output:0"T
'lstm_238_while_lstm_238_strided_slice_1)lstm_238_while_lstm_238_strided_slice_1_0"~
<lstm_238_while_lstm_cell_373_biasadd_readvariableop_resource>lstm_238_while_lstm_cell_373_biasadd_readvariableop_resource_0"?
=lstm_238_while_lstm_cell_373_matmul_1_readvariableop_resource?lstm_238_while_lstm_cell_373_matmul_1_readvariableop_resource_0"|
;lstm_238_while_lstm_cell_373_matmul_readvariableop_resource=lstm_238_while_lstm_cell_373_matmul_readvariableop_resource_0"?
clstm_238_while_tensorarrayv2read_tensorlistgetitem_lstm_238_tensorarrayunstack_tensorlistfromtensorelstm_238_while_tensorarrayv2read_tensorlistgetitem_lstm_238_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_238/while/lstm_cell_373/BiasAdd/ReadVariableOp3lstm_238/while/lstm_cell_373/BiasAdd/ReadVariableOp2h
2lstm_238/while/lstm_cell_373/MatMul/ReadVariableOp2lstm_238/while/lstm_cell_373/MatMul/ReadVariableOp2l
4lstm_238/while/lstm_cell_373/MatMul_1/ReadVariableOp4lstm_238/while/lstm_cell_373/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2264012
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_373_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_373_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_373_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_373_matmul_readvariableop_resource:	d?G
4while_lstm_cell_373_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_373_biasadd_readvariableop_resource:	???*while/lstm_cell_373/BiasAdd/ReadVariableOp?)while/lstm_cell_373/MatMul/ReadVariableOp?+while/lstm_cell_373/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_373/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_373_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_373/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_373/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_373/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_373_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_373/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_373/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_373/addAddV2$while/lstm_cell_373/MatMul:product:0&while/lstm_cell_373/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_373/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_373_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_373/BiasAddBiasAddwhile/lstm_cell_373/add:z:02while/lstm_cell_373/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_373/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_373/splitSplit,while/lstm_cell_373/split/split_dim:output:0$while/lstm_cell_373/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_373/SigmoidSigmoid"while/lstm_cell_373/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_373/Sigmoid_1Sigmoid"while/lstm_cell_373/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_373/mulMul!while/lstm_cell_373/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_373/ReluRelu"while/lstm_cell_373/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_373/mul_1Mulwhile/lstm_cell_373/Sigmoid:y:0&while/lstm_cell_373/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_373/add_1AddV2while/lstm_cell_373/mul:z:0while/lstm_cell_373/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_373/Sigmoid_2Sigmoid"while/lstm_cell_373/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_373/Relu_1Reluwhile/lstm_cell_373/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_373/mul_2Mul!while/lstm_cell_373/Sigmoid_2:y:0(while/lstm_cell_373/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_373/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_373/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_373/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_373/BiasAdd/ReadVariableOp*^while/lstm_cell_373/MatMul/ReadVariableOp,^while/lstm_cell_373/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_373_biasadd_readvariableop_resource5while_lstm_cell_373_biasadd_readvariableop_resource_0"n
4while_lstm_cell_373_matmul_1_readvariableop_resource6while_lstm_cell_373_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_373_matmul_readvariableop_resource4while_lstm_cell_373_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_373/BiasAdd/ReadVariableOp*while/lstm_cell_373/BiasAdd/ReadVariableOp2V
)while/lstm_cell_373/MatMul/ReadVariableOp)while/lstm_cell_373/MatMul/ReadVariableOp2Z
+while/lstm_cell_373/MatMul_1/ReadVariableOp+while/lstm_cell_373/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_374_layer_call_and_return_conditional_losses_2268044

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
J__inference_lstm_cell_373_layer_call_and_return_conditional_losses_2263164

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
??
?
J__inference_sequential_79_layer_call_and_return_conditional_losses_2265915

inputsH
5lstm_237_lstm_cell_372_matmul_readvariableop_resource:	?J
7lstm_237_lstm_cell_372_matmul_1_readvariableop_resource:	d?E
6lstm_237_lstm_cell_372_biasadd_readvariableop_resource:	?H
5lstm_238_lstm_cell_373_matmul_readvariableop_resource:	d?J
7lstm_238_lstm_cell_373_matmul_1_readvariableop_resource:	2?E
6lstm_238_lstm_cell_373_biasadd_readvariableop_resource:	?G
5lstm_239_lstm_cell_374_matmul_readvariableop_resource:2(I
7lstm_239_lstm_cell_374_matmul_1_readvariableop_resource:
(D
6lstm_239_lstm_cell_374_biasadd_readvariableop_resource:(9
'dense_79_matmul_readvariableop_resource:
6
(dense_79_biasadd_readvariableop_resource:
identity??dense_79/BiasAdd/ReadVariableOp?dense_79/MatMul/ReadVariableOp?-lstm_237/lstm_cell_372/BiasAdd/ReadVariableOp?,lstm_237/lstm_cell_372/MatMul/ReadVariableOp?.lstm_237/lstm_cell_372/MatMul_1/ReadVariableOp?lstm_237/while?-lstm_238/lstm_cell_373/BiasAdd/ReadVariableOp?,lstm_238/lstm_cell_373/MatMul/ReadVariableOp?.lstm_238/lstm_cell_373/MatMul_1/ReadVariableOp?lstm_238/while?-lstm_239/lstm_cell_374/BiasAdd/ReadVariableOp?,lstm_239/lstm_cell_374/MatMul/ReadVariableOp?.lstm_239/lstm_cell_374/MatMul_1/ReadVariableOp?lstm_239/whileD
lstm_237/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_237/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_237/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_237/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_237/strided_sliceStridedSlicelstm_237/Shape:output:0%lstm_237/strided_slice/stack:output:0'lstm_237/strided_slice/stack_1:output:0'lstm_237/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_237/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_237/zeros/packedPacklstm_237/strided_slice:output:0 lstm_237/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_237/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_237/zerosFilllstm_237/zeros/packed:output:0lstm_237/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_237/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_237/zeros_1/packedPacklstm_237/strided_slice:output:0"lstm_237/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_237/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_237/zeros_1Fill lstm_237/zeros_1/packed:output:0lstm_237/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_237/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_237/transpose	Transposeinputs lstm_237/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_237/Shape_1Shapelstm_237/transpose:y:0*
T0*
_output_shapes
:h
lstm_237/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_237/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_237/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_237/strided_slice_1StridedSlicelstm_237/Shape_1:output:0'lstm_237/strided_slice_1/stack:output:0)lstm_237/strided_slice_1/stack_1:output:0)lstm_237/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_237/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_237/TensorArrayV2TensorListReserve-lstm_237/TensorArrayV2/element_shape:output:0!lstm_237/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_237/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_237/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_237/transpose:y:0Glstm_237/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_237/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_237/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_237/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_237/strided_slice_2StridedSlicelstm_237/transpose:y:0'lstm_237/strided_slice_2/stack:output:0)lstm_237/strided_slice_2/stack_1:output:0)lstm_237/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_237/lstm_cell_372/MatMul/ReadVariableOpReadVariableOp5lstm_237_lstm_cell_372_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_237/lstm_cell_372/MatMulMatMul!lstm_237/strided_slice_2:output:04lstm_237/lstm_cell_372/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_237/lstm_cell_372/MatMul_1/ReadVariableOpReadVariableOp7lstm_237_lstm_cell_372_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_237/lstm_cell_372/MatMul_1MatMullstm_237/zeros:output:06lstm_237/lstm_cell_372/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_237/lstm_cell_372/addAddV2'lstm_237/lstm_cell_372/MatMul:product:0)lstm_237/lstm_cell_372/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_237/lstm_cell_372/BiasAdd/ReadVariableOpReadVariableOp6lstm_237_lstm_cell_372_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_237/lstm_cell_372/BiasAddBiasAddlstm_237/lstm_cell_372/add:z:05lstm_237/lstm_cell_372/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_237/lstm_cell_372/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_237/lstm_cell_372/splitSplit/lstm_237/lstm_cell_372/split/split_dim:output:0'lstm_237/lstm_cell_372/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_237/lstm_cell_372/SigmoidSigmoid%lstm_237/lstm_cell_372/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_237/lstm_cell_372/Sigmoid_1Sigmoid%lstm_237/lstm_cell_372/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_237/lstm_cell_372/mulMul$lstm_237/lstm_cell_372/Sigmoid_1:y:0lstm_237/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_237/lstm_cell_372/ReluRelu%lstm_237/lstm_cell_372/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_237/lstm_cell_372/mul_1Mul"lstm_237/lstm_cell_372/Sigmoid:y:0)lstm_237/lstm_cell_372/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_237/lstm_cell_372/add_1AddV2lstm_237/lstm_cell_372/mul:z:0 lstm_237/lstm_cell_372/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_237/lstm_cell_372/Sigmoid_2Sigmoid%lstm_237/lstm_cell_372/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_237/lstm_cell_372/Relu_1Relu lstm_237/lstm_cell_372/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_237/lstm_cell_372/mul_2Mul$lstm_237/lstm_cell_372/Sigmoid_2:y:0+lstm_237/lstm_cell_372/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_237/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_237/TensorArrayV2_1TensorListReserve/lstm_237/TensorArrayV2_1/element_shape:output:0!lstm_237/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_237/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_237/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_237/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_237/whileWhile$lstm_237/while/loop_counter:output:0*lstm_237/while/maximum_iterations:output:0lstm_237/time:output:0!lstm_237/TensorArrayV2_1:handle:0lstm_237/zeros:output:0lstm_237/zeros_1:output:0!lstm_237/strided_slice_1:output:0@lstm_237/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_237_lstm_cell_372_matmul_readvariableop_resource7lstm_237_lstm_cell_372_matmul_1_readvariableop_resource6lstm_237_lstm_cell_372_biasadd_readvariableop_resource*
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
lstm_237_while_body_2265547*'
condR
lstm_237_while_cond_2265546*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_237/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_237/TensorArrayV2Stack/TensorListStackTensorListStacklstm_237/while:output:3Blstm_237/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_237/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_237/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_237/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_237/strided_slice_3StridedSlice4lstm_237/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_237/strided_slice_3/stack:output:0)lstm_237/strided_slice_3/stack_1:output:0)lstm_237/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_237/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_237/transpose_1	Transpose4lstm_237/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_237/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_237/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_238/ShapeShapelstm_237/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_238/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_238/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_238/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_238/strided_sliceStridedSlicelstm_238/Shape:output:0%lstm_238/strided_slice/stack:output:0'lstm_238/strided_slice/stack_1:output:0'lstm_238/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_238/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_238/zeros/packedPacklstm_238/strided_slice:output:0 lstm_238/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_238/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_238/zerosFilllstm_238/zeros/packed:output:0lstm_238/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_238/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_238/zeros_1/packedPacklstm_238/strided_slice:output:0"lstm_238/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_238/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_238/zeros_1Fill lstm_238/zeros_1/packed:output:0lstm_238/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_238/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_238/transpose	Transposelstm_237/transpose_1:y:0 lstm_238/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_238/Shape_1Shapelstm_238/transpose:y:0*
T0*
_output_shapes
:h
lstm_238/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_238/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_238/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_238/strided_slice_1StridedSlicelstm_238/Shape_1:output:0'lstm_238/strided_slice_1/stack:output:0)lstm_238/strided_slice_1/stack_1:output:0)lstm_238/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_238/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_238/TensorArrayV2TensorListReserve-lstm_238/TensorArrayV2/element_shape:output:0!lstm_238/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_238/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_238/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_238/transpose:y:0Glstm_238/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_238/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_238/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_238/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_238/strided_slice_2StridedSlicelstm_238/transpose:y:0'lstm_238/strided_slice_2/stack:output:0)lstm_238/strided_slice_2/stack_1:output:0)lstm_238/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_238/lstm_cell_373/MatMul/ReadVariableOpReadVariableOp5lstm_238_lstm_cell_373_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_238/lstm_cell_373/MatMulMatMul!lstm_238/strided_slice_2:output:04lstm_238/lstm_cell_373/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_238/lstm_cell_373/MatMul_1/ReadVariableOpReadVariableOp7lstm_238_lstm_cell_373_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_238/lstm_cell_373/MatMul_1MatMullstm_238/zeros:output:06lstm_238/lstm_cell_373/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_238/lstm_cell_373/addAddV2'lstm_238/lstm_cell_373/MatMul:product:0)lstm_238/lstm_cell_373/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_238/lstm_cell_373/BiasAdd/ReadVariableOpReadVariableOp6lstm_238_lstm_cell_373_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_238/lstm_cell_373/BiasAddBiasAddlstm_238/lstm_cell_373/add:z:05lstm_238/lstm_cell_373/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_238/lstm_cell_373/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_238/lstm_cell_373/splitSplit/lstm_238/lstm_cell_373/split/split_dim:output:0'lstm_238/lstm_cell_373/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_238/lstm_cell_373/SigmoidSigmoid%lstm_238/lstm_cell_373/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_238/lstm_cell_373/Sigmoid_1Sigmoid%lstm_238/lstm_cell_373/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_238/lstm_cell_373/mulMul$lstm_238/lstm_cell_373/Sigmoid_1:y:0lstm_238/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_238/lstm_cell_373/ReluRelu%lstm_238/lstm_cell_373/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_238/lstm_cell_373/mul_1Mul"lstm_238/lstm_cell_373/Sigmoid:y:0)lstm_238/lstm_cell_373/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_238/lstm_cell_373/add_1AddV2lstm_238/lstm_cell_373/mul:z:0 lstm_238/lstm_cell_373/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_238/lstm_cell_373/Sigmoid_2Sigmoid%lstm_238/lstm_cell_373/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_238/lstm_cell_373/Relu_1Relu lstm_238/lstm_cell_373/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_238/lstm_cell_373/mul_2Mul$lstm_238/lstm_cell_373/Sigmoid_2:y:0+lstm_238/lstm_cell_373/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_238/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_238/TensorArrayV2_1TensorListReserve/lstm_238/TensorArrayV2_1/element_shape:output:0!lstm_238/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_238/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_238/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_238/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_238/whileWhile$lstm_238/while/loop_counter:output:0*lstm_238/while/maximum_iterations:output:0lstm_238/time:output:0!lstm_238/TensorArrayV2_1:handle:0lstm_238/zeros:output:0lstm_238/zeros_1:output:0!lstm_238/strided_slice_1:output:0@lstm_238/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_238_lstm_cell_373_matmul_readvariableop_resource7lstm_238_lstm_cell_373_matmul_1_readvariableop_resource6lstm_238_lstm_cell_373_biasadd_readvariableop_resource*
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
lstm_238_while_body_2265686*'
condR
lstm_238_while_cond_2265685*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_238/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_238/TensorArrayV2Stack/TensorListStackTensorListStacklstm_238/while:output:3Blstm_238/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_238/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_238/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_238/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_238/strided_slice_3StridedSlice4lstm_238/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_238/strided_slice_3/stack:output:0)lstm_238/strided_slice_3/stack_1:output:0)lstm_238/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_238/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_238/transpose_1	Transpose4lstm_238/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_238/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_238/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_239/ShapeShapelstm_238/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_239/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_239/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_239/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_239/strided_sliceStridedSlicelstm_239/Shape:output:0%lstm_239/strided_slice/stack:output:0'lstm_239/strided_slice/stack_1:output:0'lstm_239/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_239/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_239/zeros/packedPacklstm_239/strided_slice:output:0 lstm_239/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_239/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_239/zerosFilllstm_239/zeros/packed:output:0lstm_239/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_239/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_239/zeros_1/packedPacklstm_239/strided_slice:output:0"lstm_239/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_239/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_239/zeros_1Fill lstm_239/zeros_1/packed:output:0lstm_239/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_239/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_239/transpose	Transposelstm_238/transpose_1:y:0 lstm_239/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_239/Shape_1Shapelstm_239/transpose:y:0*
T0*
_output_shapes
:h
lstm_239/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_239/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_239/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_239/strided_slice_1StridedSlicelstm_239/Shape_1:output:0'lstm_239/strided_slice_1/stack:output:0)lstm_239/strided_slice_1/stack_1:output:0)lstm_239/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_239/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_239/TensorArrayV2TensorListReserve-lstm_239/TensorArrayV2/element_shape:output:0!lstm_239/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_239/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_239/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_239/transpose:y:0Glstm_239/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_239/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_239/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_239/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_239/strided_slice_2StridedSlicelstm_239/transpose:y:0'lstm_239/strided_slice_2/stack:output:0)lstm_239/strided_slice_2/stack_1:output:0)lstm_239/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_239/lstm_cell_374/MatMul/ReadVariableOpReadVariableOp5lstm_239_lstm_cell_374_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_239/lstm_cell_374/MatMulMatMul!lstm_239/strided_slice_2:output:04lstm_239/lstm_cell_374/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_239/lstm_cell_374/MatMul_1/ReadVariableOpReadVariableOp7lstm_239_lstm_cell_374_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_239/lstm_cell_374/MatMul_1MatMullstm_239/zeros:output:06lstm_239/lstm_cell_374/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_239/lstm_cell_374/addAddV2'lstm_239/lstm_cell_374/MatMul:product:0)lstm_239/lstm_cell_374/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_239/lstm_cell_374/BiasAdd/ReadVariableOpReadVariableOp6lstm_239_lstm_cell_374_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_239/lstm_cell_374/BiasAddBiasAddlstm_239/lstm_cell_374/add:z:05lstm_239/lstm_cell_374/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_239/lstm_cell_374/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_239/lstm_cell_374/splitSplit/lstm_239/lstm_cell_374/split/split_dim:output:0'lstm_239/lstm_cell_374/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_239/lstm_cell_374/SigmoidSigmoid%lstm_239/lstm_cell_374/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_239/lstm_cell_374/Sigmoid_1Sigmoid%lstm_239/lstm_cell_374/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_239/lstm_cell_374/mulMul$lstm_239/lstm_cell_374/Sigmoid_1:y:0lstm_239/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_239/lstm_cell_374/ReluRelu%lstm_239/lstm_cell_374/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_239/lstm_cell_374/mul_1Mul"lstm_239/lstm_cell_374/Sigmoid:y:0)lstm_239/lstm_cell_374/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_239/lstm_cell_374/add_1AddV2lstm_239/lstm_cell_374/mul:z:0 lstm_239/lstm_cell_374/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_239/lstm_cell_374/Sigmoid_2Sigmoid%lstm_239/lstm_cell_374/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_239/lstm_cell_374/Relu_1Relu lstm_239/lstm_cell_374/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_239/lstm_cell_374/mul_2Mul$lstm_239/lstm_cell_374/Sigmoid_2:y:0+lstm_239/lstm_cell_374/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_239/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_239/TensorArrayV2_1TensorListReserve/lstm_239/TensorArrayV2_1/element_shape:output:0!lstm_239/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_239/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_239/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_239/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_239/whileWhile$lstm_239/while/loop_counter:output:0*lstm_239/while/maximum_iterations:output:0lstm_239/time:output:0!lstm_239/TensorArrayV2_1:handle:0lstm_239/zeros:output:0lstm_239/zeros_1:output:0!lstm_239/strided_slice_1:output:0@lstm_239/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_239_lstm_cell_374_matmul_readvariableop_resource7lstm_239_lstm_cell_374_matmul_1_readvariableop_resource6lstm_239_lstm_cell_374_biasadd_readvariableop_resource*
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
lstm_239_while_body_2265825*'
condR
lstm_239_while_cond_2265824*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_239/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_239/TensorArrayV2Stack/TensorListStackTensorListStacklstm_239/while:output:3Blstm_239/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_239/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_239/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_239/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_239/strided_slice_3StridedSlice4lstm_239/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_239/strided_slice_3/stack:output:0)lstm_239/strided_slice_3/stack_1:output:0)lstm_239/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_239/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_239/transpose_1	Transpose4lstm_239/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_239/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_239/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_79/MatMul/ReadVariableOpReadVariableOp'dense_79_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_79/MatMulMatMul!lstm_239/strided_slice_3:output:0&dense_79/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_79/BiasAdd/ReadVariableOpReadVariableOp(dense_79_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_79/BiasAddBiasAdddense_79/MatMul:product:0'dense_79/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_79/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_79/BiasAdd/ReadVariableOp^dense_79/MatMul/ReadVariableOp.^lstm_237/lstm_cell_372/BiasAdd/ReadVariableOp-^lstm_237/lstm_cell_372/MatMul/ReadVariableOp/^lstm_237/lstm_cell_372/MatMul_1/ReadVariableOp^lstm_237/while.^lstm_238/lstm_cell_373/BiasAdd/ReadVariableOp-^lstm_238/lstm_cell_373/MatMul/ReadVariableOp/^lstm_238/lstm_cell_373/MatMul_1/ReadVariableOp^lstm_238/while.^lstm_239/lstm_cell_374/BiasAdd/ReadVariableOp-^lstm_239/lstm_cell_374/MatMul/ReadVariableOp/^lstm_239/lstm_cell_374/MatMul_1/ReadVariableOp^lstm_239/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_79/BiasAdd/ReadVariableOpdense_79/BiasAdd/ReadVariableOp2@
dense_79/MatMul/ReadVariableOpdense_79/MatMul/ReadVariableOp2^
-lstm_237/lstm_cell_372/BiasAdd/ReadVariableOp-lstm_237/lstm_cell_372/BiasAdd/ReadVariableOp2\
,lstm_237/lstm_cell_372/MatMul/ReadVariableOp,lstm_237/lstm_cell_372/MatMul/ReadVariableOp2`
.lstm_237/lstm_cell_372/MatMul_1/ReadVariableOp.lstm_237/lstm_cell_372/MatMul_1/ReadVariableOp2 
lstm_237/whilelstm_237/while2^
-lstm_238/lstm_cell_373/BiasAdd/ReadVariableOp-lstm_238/lstm_cell_373/BiasAdd/ReadVariableOp2\
,lstm_238/lstm_cell_373/MatMul/ReadVariableOp,lstm_238/lstm_cell_373/MatMul/ReadVariableOp2`
.lstm_238/lstm_cell_373/MatMul_1/ReadVariableOp.lstm_238/lstm_cell_373/MatMul_1/ReadVariableOp2 
lstm_238/whilelstm_238/while2^
-lstm_239/lstm_cell_374/BiasAdd/ReadVariableOp-lstm_239/lstm_cell_374/BiasAdd/ReadVariableOp2\
,lstm_239/lstm_cell_374/MatMul/ReadVariableOp,lstm_239/lstm_cell_374/MatMul/ReadVariableOp2`
.lstm_239/lstm_cell_374/MatMul_1/ReadVariableOp.lstm_239/lstm_cell_374/MatMul_1/ReadVariableOp2 
lstm_239/whilelstm_239/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_2266160
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2266160___redundant_placeholder05
1while_while_cond_2266160___redundant_placeholder15
1while_while_cond_2266160___redundant_placeholder25
1while_while_cond_2266160___redundant_placeholder3
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
while_body_2262828
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_372_2262852_0:	?0
while_lstm_cell_372_2262854_0:	d?,
while_lstm_cell_372_2262856_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_372_2262852:	?.
while_lstm_cell_372_2262854:	d?*
while_lstm_cell_372_2262856:	???+while/lstm_cell_372/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_372/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_372_2262852_0while_lstm_cell_372_2262854_0while_lstm_cell_372_2262856_0*
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
J__inference_lstm_cell_372_layer_call_and_return_conditional_losses_2262814?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_372/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_372/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_372/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_372/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_372_2262852while_lstm_cell_372_2262852_0"<
while_lstm_cell_372_2262854while_lstm_cell_372_2262854_0"<
while_lstm_cell_372_2262856while_lstm_cell_372_2262856_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_372/StatefulPartitionedCall+while/lstm_cell_372/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
?
)sequential_79_lstm_238_while_cond_2262517J
Fsequential_79_lstm_238_while_sequential_79_lstm_238_while_loop_counterP
Lsequential_79_lstm_238_while_sequential_79_lstm_238_while_maximum_iterations,
(sequential_79_lstm_238_while_placeholder.
*sequential_79_lstm_238_while_placeholder_1.
*sequential_79_lstm_238_while_placeholder_2.
*sequential_79_lstm_238_while_placeholder_3L
Hsequential_79_lstm_238_while_less_sequential_79_lstm_238_strided_slice_1c
_sequential_79_lstm_238_while_sequential_79_lstm_238_while_cond_2262517___redundant_placeholder0c
_sequential_79_lstm_238_while_sequential_79_lstm_238_while_cond_2262517___redundant_placeholder1c
_sequential_79_lstm_238_while_sequential_79_lstm_238_while_cond_2262517___redundant_placeholder2c
_sequential_79_lstm_238_while_sequential_79_lstm_238_while_cond_2262517___redundant_placeholder3)
%sequential_79_lstm_238_while_identity
?
!sequential_79/lstm_238/while/LessLess(sequential_79_lstm_238_while_placeholderHsequential_79_lstm_238_while_less_sequential_79_lstm_238_strided_slice_1*
T0*
_output_shapes
: y
%sequential_79/lstm_238/while/IdentityIdentity%sequential_79/lstm_238/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_79_lstm_238_while_identity.sequential_79/lstm_238/while/Identity:output:0*(
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
while_body_2266018
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_372_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_372_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_372_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_372_matmul_readvariableop_resource:	?G
4while_lstm_cell_372_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_372_biasadd_readvariableop_resource:	???*while/lstm_cell_372/BiasAdd/ReadVariableOp?)while/lstm_cell_372/MatMul/ReadVariableOp?+while/lstm_cell_372/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_372/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_372_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_372/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_372/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_372/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_372_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_372/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_372/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_372/addAddV2$while/lstm_cell_372/MatMul:product:0&while/lstm_cell_372/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_372/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_372_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_372/BiasAddBiasAddwhile/lstm_cell_372/add:z:02while/lstm_cell_372/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_372/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_372/splitSplit,while/lstm_cell_372/split/split_dim:output:0$while/lstm_cell_372/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_372/SigmoidSigmoid"while/lstm_cell_372/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_372/Sigmoid_1Sigmoid"while/lstm_cell_372/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_372/mulMul!while/lstm_cell_372/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_372/ReluRelu"while/lstm_cell_372/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_372/mul_1Mulwhile/lstm_cell_372/Sigmoid:y:0&while/lstm_cell_372/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_372/add_1AddV2while/lstm_cell_372/mul:z:0while/lstm_cell_372/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_372/Sigmoid_2Sigmoid"while/lstm_cell_372/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_372/Relu_1Reluwhile/lstm_cell_372/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_372/mul_2Mul!while/lstm_cell_372/Sigmoid_2:y:0(while/lstm_cell_372/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_372/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_372/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_372/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_372/BiasAdd/ReadVariableOp*^while/lstm_cell_372/MatMul/ReadVariableOp,^while/lstm_cell_372/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_372_biasadd_readvariableop_resource5while_lstm_cell_372_biasadd_readvariableop_resource_0"n
4while_lstm_cell_372_matmul_1_readvariableop_resource6while_lstm_cell_372_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_372_matmul_readvariableop_resource4while_lstm_cell_372_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_372/BiasAdd/ReadVariableOp*while/lstm_cell_372/BiasAdd/ReadVariableOp2V
)while/lstm_cell_372/MatMul/ReadVariableOp)while/lstm_cell_372/MatMul/ReadVariableOp2Z
+while/lstm_cell_372/MatMul_1/ReadVariableOp+while/lstm_cell_372/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_239_while_body_2265398.
*lstm_239_while_lstm_239_while_loop_counter4
0lstm_239_while_lstm_239_while_maximum_iterations
lstm_239_while_placeholder 
lstm_239_while_placeholder_1 
lstm_239_while_placeholder_2 
lstm_239_while_placeholder_3-
)lstm_239_while_lstm_239_strided_slice_1_0i
elstm_239_while_tensorarrayv2read_tensorlistgetitem_lstm_239_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_239_while_lstm_cell_374_matmul_readvariableop_resource_0:2(Q
?lstm_239_while_lstm_cell_374_matmul_1_readvariableop_resource_0:
(L
>lstm_239_while_lstm_cell_374_biasadd_readvariableop_resource_0:(
lstm_239_while_identity
lstm_239_while_identity_1
lstm_239_while_identity_2
lstm_239_while_identity_3
lstm_239_while_identity_4
lstm_239_while_identity_5+
'lstm_239_while_lstm_239_strided_slice_1g
clstm_239_while_tensorarrayv2read_tensorlistgetitem_lstm_239_tensorarrayunstack_tensorlistfromtensorM
;lstm_239_while_lstm_cell_374_matmul_readvariableop_resource:2(O
=lstm_239_while_lstm_cell_374_matmul_1_readvariableop_resource:
(J
<lstm_239_while_lstm_cell_374_biasadd_readvariableop_resource:(??3lstm_239/while/lstm_cell_374/BiasAdd/ReadVariableOp?2lstm_239/while/lstm_cell_374/MatMul/ReadVariableOp?4lstm_239/while/lstm_cell_374/MatMul_1/ReadVariableOp?
@lstm_239/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_239/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_239_while_tensorarrayv2read_tensorlistgetitem_lstm_239_tensorarrayunstack_tensorlistfromtensor_0lstm_239_while_placeholderIlstm_239/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_239/while/lstm_cell_374/MatMul/ReadVariableOpReadVariableOp=lstm_239_while_lstm_cell_374_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_239/while/lstm_cell_374/MatMulMatMul9lstm_239/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_239/while/lstm_cell_374/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_239/while/lstm_cell_374/MatMul_1/ReadVariableOpReadVariableOp?lstm_239_while_lstm_cell_374_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_239/while/lstm_cell_374/MatMul_1MatMullstm_239_while_placeholder_2<lstm_239/while/lstm_cell_374/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_239/while/lstm_cell_374/addAddV2-lstm_239/while/lstm_cell_374/MatMul:product:0/lstm_239/while/lstm_cell_374/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_239/while/lstm_cell_374/BiasAdd/ReadVariableOpReadVariableOp>lstm_239_while_lstm_cell_374_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_239/while/lstm_cell_374/BiasAddBiasAdd$lstm_239/while/lstm_cell_374/add:z:0;lstm_239/while/lstm_cell_374/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_239/while/lstm_cell_374/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_239/while/lstm_cell_374/splitSplit5lstm_239/while/lstm_cell_374/split/split_dim:output:0-lstm_239/while/lstm_cell_374/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_239/while/lstm_cell_374/SigmoidSigmoid+lstm_239/while/lstm_cell_374/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_239/while/lstm_cell_374/Sigmoid_1Sigmoid+lstm_239/while/lstm_cell_374/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_239/while/lstm_cell_374/mulMul*lstm_239/while/lstm_cell_374/Sigmoid_1:y:0lstm_239_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_239/while/lstm_cell_374/ReluRelu+lstm_239/while/lstm_cell_374/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_239/while/lstm_cell_374/mul_1Mul(lstm_239/while/lstm_cell_374/Sigmoid:y:0/lstm_239/while/lstm_cell_374/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_239/while/lstm_cell_374/add_1AddV2$lstm_239/while/lstm_cell_374/mul:z:0&lstm_239/while/lstm_cell_374/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_239/while/lstm_cell_374/Sigmoid_2Sigmoid+lstm_239/while/lstm_cell_374/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_239/while/lstm_cell_374/Relu_1Relu&lstm_239/while/lstm_cell_374/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_239/while/lstm_cell_374/mul_2Mul*lstm_239/while/lstm_cell_374/Sigmoid_2:y:01lstm_239/while/lstm_cell_374/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_239/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_239_while_placeholder_1lstm_239_while_placeholder&lstm_239/while/lstm_cell_374/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_239/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_239/while/addAddV2lstm_239_while_placeholderlstm_239/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_239/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_239/while/add_1AddV2*lstm_239_while_lstm_239_while_loop_counterlstm_239/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_239/while/IdentityIdentitylstm_239/while/add_1:z:0^lstm_239/while/NoOp*
T0*
_output_shapes
: ?
lstm_239/while/Identity_1Identity0lstm_239_while_lstm_239_while_maximum_iterations^lstm_239/while/NoOp*
T0*
_output_shapes
: t
lstm_239/while/Identity_2Identitylstm_239/while/add:z:0^lstm_239/while/NoOp*
T0*
_output_shapes
: ?
lstm_239/while/Identity_3IdentityClstm_239/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_239/while/NoOp*
T0*
_output_shapes
: ?
lstm_239/while/Identity_4Identity&lstm_239/while/lstm_cell_374/mul_2:z:0^lstm_239/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_239/while/Identity_5Identity&lstm_239/while/lstm_cell_374/add_1:z:0^lstm_239/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_239/while/NoOpNoOp4^lstm_239/while/lstm_cell_374/BiasAdd/ReadVariableOp3^lstm_239/while/lstm_cell_374/MatMul/ReadVariableOp5^lstm_239/while/lstm_cell_374/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_239_while_identity lstm_239/while/Identity:output:0"?
lstm_239_while_identity_1"lstm_239/while/Identity_1:output:0"?
lstm_239_while_identity_2"lstm_239/while/Identity_2:output:0"?
lstm_239_while_identity_3"lstm_239/while/Identity_3:output:0"?
lstm_239_while_identity_4"lstm_239/while/Identity_4:output:0"?
lstm_239_while_identity_5"lstm_239/while/Identity_5:output:0"T
'lstm_239_while_lstm_239_strided_slice_1)lstm_239_while_lstm_239_strided_slice_1_0"~
<lstm_239_while_lstm_cell_374_biasadd_readvariableop_resource>lstm_239_while_lstm_cell_374_biasadd_readvariableop_resource_0"?
=lstm_239_while_lstm_cell_374_matmul_1_readvariableop_resource?lstm_239_while_lstm_cell_374_matmul_1_readvariableop_resource_0"|
;lstm_239_while_lstm_cell_374_matmul_readvariableop_resource=lstm_239_while_lstm_cell_374_matmul_readvariableop_resource_0"?
clstm_239_while_tensorarrayv2read_tensorlistgetitem_lstm_239_tensorarrayunstack_tensorlistfromtensorelstm_239_while_tensorarrayv2read_tensorlistgetitem_lstm_239_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_239/while/lstm_cell_374/BiasAdd/ReadVariableOp3lstm_239/while/lstm_cell_374/BiasAdd/ReadVariableOp2h
2lstm_239/while/lstm_cell_374/MatMul/ReadVariableOp2lstm_239/while/lstm_cell_374/MatMul/ReadVariableOp2l
4lstm_239/while/lstm_cell_374/MatMul_1/ReadVariableOp4lstm_239/while/lstm_cell_374/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2264707
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2264707___redundant_placeholder05
1while_while_cond_2264707___redundant_placeholder15
1while_while_cond_2264707___redundant_placeholder25
1while_while_cond_2264707___redundant_placeholder3
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
E__inference_lstm_237_layer_call_and_return_conditional_losses_2263088

inputs(
lstm_cell_372_2263006:	?(
lstm_cell_372_2263008:	d?$
lstm_cell_372_2263010:	?
identity??%lstm_cell_372/StatefulPartitionedCall?while;
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
%lstm_cell_372/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_372_2263006lstm_cell_372_2263008lstm_cell_372_2263010*
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
J__inference_lstm_cell_372_layer_call_and_return_conditional_losses_2262960n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_372_2263006lstm_cell_372_2263008lstm_cell_372_2263010*
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
while_body_2263019*
condR
while_cond_2263018*K
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
NoOpNoOp&^lstm_cell_372/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_372/StatefulPartitionedCall%lstm_cell_372/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?#
?
while_body_2263719
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_374_2263743_0:2(/
while_lstm_cell_374_2263745_0:
(+
while_lstm_cell_374_2263747_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_374_2263743:2(-
while_lstm_cell_374_2263745:
()
while_lstm_cell_374_2263747:(??+while/lstm_cell_374/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_374/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_374_2263743_0while_lstm_cell_374_2263745_0while_lstm_cell_374_2263747_0*
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
J__inference_lstm_cell_374_layer_call_and_return_conditional_losses_2263660?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_374/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_374/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_374/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_374/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_374_2263743while_lstm_cell_374_2263743_0"<
while_lstm_cell_374_2263745while_lstm_cell_374_2263745_0"<
while_lstm_cell_374_2263747while_lstm_cell_374_2263747_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_374/StatefulPartitionedCall+while/lstm_cell_374/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_2262827
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2262827___redundant_placeholder05
1while_while_cond_2262827___redundant_placeholder15
1while_while_cond_2262827___redundant_placeholder25
1while_while_cond_2262827___redundant_placeholder3
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
E__inference_lstm_239_layer_call_and_return_conditional_losses_2267334
inputs_0>
,lstm_cell_374_matmul_readvariableop_resource:2(@
.lstm_cell_374_matmul_1_readvariableop_resource:
(;
-lstm_cell_374_biasadd_readvariableop_resource:(
identity??$lstm_cell_374/BiasAdd/ReadVariableOp?#lstm_cell_374/MatMul/ReadVariableOp?%lstm_cell_374/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_374/MatMul/ReadVariableOpReadVariableOp,lstm_cell_374_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_374/MatMulMatMulstrided_slice_2:output:0+lstm_cell_374/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_374/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_374_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_374/MatMul_1MatMulzeros:output:0-lstm_cell_374/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_374/addAddV2lstm_cell_374/MatMul:product:0 lstm_cell_374/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_374/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_374_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_374/BiasAddBiasAddlstm_cell_374/add:z:0,lstm_cell_374/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_374/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_374/splitSplit&lstm_cell_374/split/split_dim:output:0lstm_cell_374/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_374/SigmoidSigmoidlstm_cell_374/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_374/Sigmoid_1Sigmoidlstm_cell_374/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_374/mulMullstm_cell_374/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_374/ReluRelulstm_cell_374/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_374/mul_1Mullstm_cell_374/Sigmoid:y:0 lstm_cell_374/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_374/add_1AddV2lstm_cell_374/mul:z:0lstm_cell_374/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_374/Sigmoid_2Sigmoidlstm_cell_374/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_374/Relu_1Relulstm_cell_374/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_374/mul_2Mullstm_cell_374/Sigmoid_2:y:0"lstm_cell_374/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_374_matmul_readvariableop_resource.lstm_cell_374_matmul_1_readvariableop_resource-lstm_cell_374_biasadd_readvariableop_resource*
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
while_body_2267250*
condR
while_cond_2267249*K
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
NoOpNoOp%^lstm_cell_374/BiasAdd/ReadVariableOp$^lstm_cell_374/MatMul/ReadVariableOp&^lstm_cell_374/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_374/BiasAdd/ReadVariableOp$lstm_cell_374/BiasAdd/ReadVariableOp2J
#lstm_cell_374/MatMul/ReadVariableOp#lstm_cell_374/MatMul/ReadVariableOp2N
%lstm_cell_374/MatMul_1/ReadVariableOp%lstm_cell_374/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_239_layer_call_and_return_conditional_losses_2264246

inputs>
,lstm_cell_374_matmul_readvariableop_resource:2(@
.lstm_cell_374_matmul_1_readvariableop_resource:
(;
-lstm_cell_374_biasadd_readvariableop_resource:(
identity??$lstm_cell_374/BiasAdd/ReadVariableOp?#lstm_cell_374/MatMul/ReadVariableOp?%lstm_cell_374/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_374/MatMul/ReadVariableOpReadVariableOp,lstm_cell_374_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_374/MatMulMatMulstrided_slice_2:output:0+lstm_cell_374/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_374/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_374_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_374/MatMul_1MatMulzeros:output:0-lstm_cell_374/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_374/addAddV2lstm_cell_374/MatMul:product:0 lstm_cell_374/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_374/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_374_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_374/BiasAddBiasAddlstm_cell_374/add:z:0,lstm_cell_374/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_374/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_374/splitSplit&lstm_cell_374/split/split_dim:output:0lstm_cell_374/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_374/SigmoidSigmoidlstm_cell_374/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_374/Sigmoid_1Sigmoidlstm_cell_374/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_374/mulMullstm_cell_374/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_374/ReluRelulstm_cell_374/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_374/mul_1Mullstm_cell_374/Sigmoid:y:0 lstm_cell_374/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_374/add_1AddV2lstm_cell_374/mul:z:0lstm_cell_374/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_374/Sigmoid_2Sigmoidlstm_cell_374/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_374/Relu_1Relulstm_cell_374/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_374/mul_2Mullstm_cell_374/Sigmoid_2:y:0"lstm_cell_374/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_374_matmul_readvariableop_resource.lstm_cell_374_matmul_1_readvariableop_resource-lstm_cell_374_biasadd_readvariableop_resource*
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
while_body_2264162*
condR
while_cond_2264161*K
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
NoOpNoOp%^lstm_cell_374/BiasAdd/ReadVariableOp$^lstm_cell_374/MatMul/ReadVariableOp&^lstm_cell_374/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_374/BiasAdd/ReadVariableOp$lstm_cell_374/BiasAdd/ReadVariableOp2J
#lstm_cell_374/MatMul/ReadVariableOp#lstm_cell_374/MatMul/ReadVariableOp2N
%lstm_cell_374/MatMul_1/ReadVariableOp%lstm_cell_374/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?#
?
while_body_2263528
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_374_2263552_0:2(/
while_lstm_cell_374_2263554_0:
(+
while_lstm_cell_374_2263556_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_374_2263552:2(-
while_lstm_cell_374_2263554:
()
while_lstm_cell_374_2263556:(??+while/lstm_cell_374/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_374/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_374_2263552_0while_lstm_cell_374_2263554_0while_lstm_cell_374_2263556_0*
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
J__inference_lstm_cell_374_layer_call_and_return_conditional_losses_2263514?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_374/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_374/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_374/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_374/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_374_2263552while_lstm_cell_374_2263552_0"<
while_lstm_cell_374_2263554while_lstm_cell_374_2263554_0"<
while_lstm_cell_374_2263556while_lstm_cell_374_2263556_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_374/StatefulPartitionedCall+while/lstm_cell_374/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_2264377
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2264377___redundant_placeholder05
1while_while_cond_2264377___redundant_placeholder15
1while_while_cond_2264377___redundant_placeholder25
1while_while_cond_2264377___redundant_placeholder3
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
J__inference_lstm_cell_372_layer_call_and_return_conditional_losses_2267848

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
/__inference_sequential_79_layer_call_fn_2264912
lstm_237_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_237_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_79_layer_call_and_return_conditional_losses_2264860o
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
_user_specified_namelstm_237_input
?8
?
while_body_2267063
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_373_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_373_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_373_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_373_matmul_readvariableop_resource:	d?G
4while_lstm_cell_373_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_373_biasadd_readvariableop_resource:	???*while/lstm_cell_373/BiasAdd/ReadVariableOp?)while/lstm_cell_373/MatMul/ReadVariableOp?+while/lstm_cell_373/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_373/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_373_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_373/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_373/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_373/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_373_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_373/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_373/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_373/addAddV2$while/lstm_cell_373/MatMul:product:0&while/lstm_cell_373/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_373/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_373_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_373/BiasAddBiasAddwhile/lstm_cell_373/add:z:02while/lstm_cell_373/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_373/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_373/splitSplit,while/lstm_cell_373/split/split_dim:output:0$while/lstm_cell_373/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_373/SigmoidSigmoid"while/lstm_cell_373/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_373/Sigmoid_1Sigmoid"while/lstm_cell_373/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_373/mulMul!while/lstm_cell_373/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_373/ReluRelu"while/lstm_cell_373/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_373/mul_1Mulwhile/lstm_cell_373/Sigmoid:y:0&while/lstm_cell_373/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_373/add_1AddV2while/lstm_cell_373/mul:z:0while/lstm_cell_373/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_373/Sigmoid_2Sigmoid"while/lstm_cell_373/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_373/Relu_1Reluwhile/lstm_cell_373/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_373/mul_2Mul!while/lstm_cell_373/Sigmoid_2:y:0(while/lstm_cell_373/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_373/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_373/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_373/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_373/BiasAdd/ReadVariableOp*^while/lstm_cell_373/MatMul/ReadVariableOp,^while/lstm_cell_373/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_373_biasadd_readvariableop_resource5while_lstm_cell_373_biasadd_readvariableop_resource_0"n
4while_lstm_cell_373_matmul_1_readvariableop_resource6while_lstm_cell_373_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_373_matmul_readvariableop_resource4while_lstm_cell_373_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_373/BiasAdd/ReadVariableOp*while/lstm_cell_373/BiasAdd/ReadVariableOp2V
)while/lstm_cell_373/MatMul/ReadVariableOp)while/lstm_cell_373/MatMul/ReadVariableOp2Z
+while/lstm_cell_373/MatMul_1/ReadVariableOp+while/lstm_cell_373/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2263527
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2263527___redundant_placeholder05
1while_while_cond_2263527___redundant_placeholder15
1while_while_cond_2263527___redundant_placeholder25
1while_while_cond_2263527___redundant_placeholder3
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
)sequential_79_lstm_237_while_body_2262379J
Fsequential_79_lstm_237_while_sequential_79_lstm_237_while_loop_counterP
Lsequential_79_lstm_237_while_sequential_79_lstm_237_while_maximum_iterations,
(sequential_79_lstm_237_while_placeholder.
*sequential_79_lstm_237_while_placeholder_1.
*sequential_79_lstm_237_while_placeholder_2.
*sequential_79_lstm_237_while_placeholder_3I
Esequential_79_lstm_237_while_sequential_79_lstm_237_strided_slice_1_0?
?sequential_79_lstm_237_while_tensorarrayv2read_tensorlistgetitem_sequential_79_lstm_237_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_79_lstm_237_while_lstm_cell_372_matmul_readvariableop_resource_0:	?`
Msequential_79_lstm_237_while_lstm_cell_372_matmul_1_readvariableop_resource_0:	d?[
Lsequential_79_lstm_237_while_lstm_cell_372_biasadd_readvariableop_resource_0:	?)
%sequential_79_lstm_237_while_identity+
'sequential_79_lstm_237_while_identity_1+
'sequential_79_lstm_237_while_identity_2+
'sequential_79_lstm_237_while_identity_3+
'sequential_79_lstm_237_while_identity_4+
'sequential_79_lstm_237_while_identity_5G
Csequential_79_lstm_237_while_sequential_79_lstm_237_strided_slice_1?
sequential_79_lstm_237_while_tensorarrayv2read_tensorlistgetitem_sequential_79_lstm_237_tensorarrayunstack_tensorlistfromtensor\
Isequential_79_lstm_237_while_lstm_cell_372_matmul_readvariableop_resource:	?^
Ksequential_79_lstm_237_while_lstm_cell_372_matmul_1_readvariableop_resource:	d?Y
Jsequential_79_lstm_237_while_lstm_cell_372_biasadd_readvariableop_resource:	???Asequential_79/lstm_237/while/lstm_cell_372/BiasAdd/ReadVariableOp?@sequential_79/lstm_237/while/lstm_cell_372/MatMul/ReadVariableOp?Bsequential_79/lstm_237/while/lstm_cell_372/MatMul_1/ReadVariableOp?
Nsequential_79/lstm_237/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
@sequential_79/lstm_237/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_79_lstm_237_while_tensorarrayv2read_tensorlistgetitem_sequential_79_lstm_237_tensorarrayunstack_tensorlistfromtensor_0(sequential_79_lstm_237_while_placeholderWsequential_79/lstm_237/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
@sequential_79/lstm_237/while/lstm_cell_372/MatMul/ReadVariableOpReadVariableOpKsequential_79_lstm_237_while_lstm_cell_372_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
1sequential_79/lstm_237/while/lstm_cell_372/MatMulMatMulGsequential_79/lstm_237/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_79/lstm_237/while/lstm_cell_372/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_79/lstm_237/while/lstm_cell_372/MatMul_1/ReadVariableOpReadVariableOpMsequential_79_lstm_237_while_lstm_cell_372_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
3sequential_79/lstm_237/while/lstm_cell_372/MatMul_1MatMul*sequential_79_lstm_237_while_placeholder_2Jsequential_79/lstm_237/while/lstm_cell_372/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_79/lstm_237/while/lstm_cell_372/addAddV2;sequential_79/lstm_237/while/lstm_cell_372/MatMul:product:0=sequential_79/lstm_237/while/lstm_cell_372/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_79/lstm_237/while/lstm_cell_372/BiasAdd/ReadVariableOpReadVariableOpLsequential_79_lstm_237_while_lstm_cell_372_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_79/lstm_237/while/lstm_cell_372/BiasAddBiasAdd2sequential_79/lstm_237/while/lstm_cell_372/add:z:0Isequential_79/lstm_237/while/lstm_cell_372/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_79/lstm_237/while/lstm_cell_372/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_79/lstm_237/while/lstm_cell_372/splitSplitCsequential_79/lstm_237/while/lstm_cell_372/split/split_dim:output:0;sequential_79/lstm_237/while/lstm_cell_372/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
2sequential_79/lstm_237/while/lstm_cell_372/SigmoidSigmoid9sequential_79/lstm_237/while/lstm_cell_372/split:output:0*
T0*'
_output_shapes
:?????????d?
4sequential_79/lstm_237/while/lstm_cell_372/Sigmoid_1Sigmoid9sequential_79/lstm_237/while/lstm_cell_372/split:output:1*
T0*'
_output_shapes
:?????????d?
.sequential_79/lstm_237/while/lstm_cell_372/mulMul8sequential_79/lstm_237/while/lstm_cell_372/Sigmoid_1:y:0*sequential_79_lstm_237_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
/sequential_79/lstm_237/while/lstm_cell_372/ReluRelu9sequential_79/lstm_237/while/lstm_cell_372/split:output:2*
T0*'
_output_shapes
:?????????d?
0sequential_79/lstm_237/while/lstm_cell_372/mul_1Mul6sequential_79/lstm_237/while/lstm_cell_372/Sigmoid:y:0=sequential_79/lstm_237/while/lstm_cell_372/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
0sequential_79/lstm_237/while/lstm_cell_372/add_1AddV22sequential_79/lstm_237/while/lstm_cell_372/mul:z:04sequential_79/lstm_237/while/lstm_cell_372/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
4sequential_79/lstm_237/while/lstm_cell_372/Sigmoid_2Sigmoid9sequential_79/lstm_237/while/lstm_cell_372/split:output:3*
T0*'
_output_shapes
:?????????d?
1sequential_79/lstm_237/while/lstm_cell_372/Relu_1Relu4sequential_79/lstm_237/while/lstm_cell_372/add_1:z:0*
T0*'
_output_shapes
:?????????d?
0sequential_79/lstm_237/while/lstm_cell_372/mul_2Mul8sequential_79/lstm_237/while/lstm_cell_372/Sigmoid_2:y:0?sequential_79/lstm_237/while/lstm_cell_372/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Asequential_79/lstm_237/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_79_lstm_237_while_placeholder_1(sequential_79_lstm_237_while_placeholder4sequential_79/lstm_237/while/lstm_cell_372/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_79/lstm_237/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_79/lstm_237/while/addAddV2(sequential_79_lstm_237_while_placeholder+sequential_79/lstm_237/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_79/lstm_237/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_79/lstm_237/while/add_1AddV2Fsequential_79_lstm_237_while_sequential_79_lstm_237_while_loop_counter-sequential_79/lstm_237/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_79/lstm_237/while/IdentityIdentity&sequential_79/lstm_237/while/add_1:z:0"^sequential_79/lstm_237/while/NoOp*
T0*
_output_shapes
: ?
'sequential_79/lstm_237/while/Identity_1IdentityLsequential_79_lstm_237_while_sequential_79_lstm_237_while_maximum_iterations"^sequential_79/lstm_237/while/NoOp*
T0*
_output_shapes
: ?
'sequential_79/lstm_237/while/Identity_2Identity$sequential_79/lstm_237/while/add:z:0"^sequential_79/lstm_237/while/NoOp*
T0*
_output_shapes
: ?
'sequential_79/lstm_237/while/Identity_3IdentityQsequential_79/lstm_237/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_79/lstm_237/while/NoOp*
T0*
_output_shapes
: ?
'sequential_79/lstm_237/while/Identity_4Identity4sequential_79/lstm_237/while/lstm_cell_372/mul_2:z:0"^sequential_79/lstm_237/while/NoOp*
T0*'
_output_shapes
:?????????d?
'sequential_79/lstm_237/while/Identity_5Identity4sequential_79/lstm_237/while/lstm_cell_372/add_1:z:0"^sequential_79/lstm_237/while/NoOp*
T0*'
_output_shapes
:?????????d?
!sequential_79/lstm_237/while/NoOpNoOpB^sequential_79/lstm_237/while/lstm_cell_372/BiasAdd/ReadVariableOpA^sequential_79/lstm_237/while/lstm_cell_372/MatMul/ReadVariableOpC^sequential_79/lstm_237/while/lstm_cell_372/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_79_lstm_237_while_identity.sequential_79/lstm_237/while/Identity:output:0"[
'sequential_79_lstm_237_while_identity_10sequential_79/lstm_237/while/Identity_1:output:0"[
'sequential_79_lstm_237_while_identity_20sequential_79/lstm_237/while/Identity_2:output:0"[
'sequential_79_lstm_237_while_identity_30sequential_79/lstm_237/while/Identity_3:output:0"[
'sequential_79_lstm_237_while_identity_40sequential_79/lstm_237/while/Identity_4:output:0"[
'sequential_79_lstm_237_while_identity_50sequential_79/lstm_237/while/Identity_5:output:0"?
Jsequential_79_lstm_237_while_lstm_cell_372_biasadd_readvariableop_resourceLsequential_79_lstm_237_while_lstm_cell_372_biasadd_readvariableop_resource_0"?
Ksequential_79_lstm_237_while_lstm_cell_372_matmul_1_readvariableop_resourceMsequential_79_lstm_237_while_lstm_cell_372_matmul_1_readvariableop_resource_0"?
Isequential_79_lstm_237_while_lstm_cell_372_matmul_readvariableop_resourceKsequential_79_lstm_237_while_lstm_cell_372_matmul_readvariableop_resource_0"?
Csequential_79_lstm_237_while_sequential_79_lstm_237_strided_slice_1Esequential_79_lstm_237_while_sequential_79_lstm_237_strided_slice_1_0"?
sequential_79_lstm_237_while_tensorarrayv2read_tensorlistgetitem_sequential_79_lstm_237_tensorarrayunstack_tensorlistfromtensor?sequential_79_lstm_237_while_tensorarrayv2read_tensorlistgetitem_sequential_79_lstm_237_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Asequential_79/lstm_237/while/lstm_cell_372/BiasAdd/ReadVariableOpAsequential_79/lstm_237/while/lstm_cell_372/BiasAdd/ReadVariableOp2?
@sequential_79/lstm_237/while/lstm_cell_372/MatMul/ReadVariableOp@sequential_79/lstm_237/while/lstm_cell_372/MatMul/ReadVariableOp2?
Bsequential_79/lstm_237/while/lstm_cell_372/MatMul_1/ReadVariableOpBsequential_79/lstm_237/while/lstm_cell_372/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2267250
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_374_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_374_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_374_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_374_matmul_readvariableop_resource:2(F
4while_lstm_cell_374_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_374_biasadd_readvariableop_resource:(??*while/lstm_cell_374/BiasAdd/ReadVariableOp?)while/lstm_cell_374/MatMul/ReadVariableOp?+while/lstm_cell_374/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_374/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_374_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_374/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_374/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_374/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_374_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_374/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_374/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_374/addAddV2$while/lstm_cell_374/MatMul:product:0&while/lstm_cell_374/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_374/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_374_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_374/BiasAddBiasAddwhile/lstm_cell_374/add:z:02while/lstm_cell_374/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_374/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_374/splitSplit,while/lstm_cell_374/split/split_dim:output:0$while/lstm_cell_374/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_374/SigmoidSigmoid"while/lstm_cell_374/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_374/Sigmoid_1Sigmoid"while/lstm_cell_374/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_374/mulMul!while/lstm_cell_374/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_374/ReluRelu"while/lstm_cell_374/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_374/mul_1Mulwhile/lstm_cell_374/Sigmoid:y:0&while/lstm_cell_374/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_374/add_1AddV2while/lstm_cell_374/mul:z:0while/lstm_cell_374/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_374/Sigmoid_2Sigmoid"while/lstm_cell_374/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_374/Relu_1Reluwhile/lstm_cell_374/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_374/mul_2Mul!while/lstm_cell_374/Sigmoid_2:y:0(while/lstm_cell_374/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_374/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_374/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_374/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_374/BiasAdd/ReadVariableOp*^while/lstm_cell_374/MatMul/ReadVariableOp,^while/lstm_cell_374/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_374_biasadd_readvariableop_resource5while_lstm_cell_374_biasadd_readvariableop_resource_0"n
4while_lstm_cell_374_matmul_1_readvariableop_resource6while_lstm_cell_374_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_374_matmul_readvariableop_resource4while_lstm_cell_374_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_374/BiasAdd/ReadVariableOp*while/lstm_cell_374/BiasAdd/ReadVariableOp2V
)while/lstm_cell_374/MatMul/ReadVariableOp)while/lstm_cell_374/MatMul/ReadVariableOp2Z
+while/lstm_cell_374/MatMul_1/ReadVariableOp+while/lstm_cell_374/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_237_layer_call_fn_2265948

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
E__inference_lstm_237_layer_call_and_return_conditional_losses_2263946s
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
while_cond_2264542
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2264542___redundant_placeholder05
1while_while_cond_2264542___redundant_placeholder15
1while_while_cond_2264542___redundant_placeholder25
1while_while_cond_2264542___redundant_placeholder3
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
J__inference_lstm_cell_372_layer_call_and_return_conditional_losses_2262960

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
?
*__inference_lstm_238_layer_call_fn_2266542
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
E__inference_lstm_238_layer_call_and_return_conditional_losses_2263247|
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

?
lstm_239_while_cond_2265824.
*lstm_239_while_lstm_239_while_loop_counter4
0lstm_239_while_lstm_239_while_maximum_iterations
lstm_239_while_placeholder 
lstm_239_while_placeholder_1 
lstm_239_while_placeholder_2 
lstm_239_while_placeholder_30
,lstm_239_while_less_lstm_239_strided_slice_1G
Clstm_239_while_lstm_239_while_cond_2265824___redundant_placeholder0G
Clstm_239_while_lstm_239_while_cond_2265824___redundant_placeholder1G
Clstm_239_while_lstm_239_while_cond_2265824___redundant_placeholder2G
Clstm_239_while_lstm_239_while_cond_2265824___redundant_placeholder3
lstm_239_while_identity
?
lstm_239/while/LessLesslstm_239_while_placeholder,lstm_239_while_less_lstm_239_strided_slice_1*
T0*
_output_shapes
: ]
lstm_239/while/IdentityIdentitylstm_239/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_239_while_identity lstm_239/while/Identity:output:0*(
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
while_cond_2263177
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2263177___redundant_placeholder05
1while_while_cond_2263177___redundant_placeholder15
1while_while_cond_2263177___redundant_placeholder25
1while_while_cond_2263177___redundant_placeholder3
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
while_cond_2263368
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2263368___redundant_placeholder05
1while_while_cond_2263368___redundant_placeholder15
1while_while_cond_2263368___redundant_placeholder25
1while_while_cond_2263368___redundant_placeholder3
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
E__inference_lstm_238_layer_call_and_return_conditional_losses_2266861
inputs_0?
,lstm_cell_373_matmul_readvariableop_resource:	d?A
.lstm_cell_373_matmul_1_readvariableop_resource:	2?<
-lstm_cell_373_biasadd_readvariableop_resource:	?
identity??$lstm_cell_373/BiasAdd/ReadVariableOp?#lstm_cell_373/MatMul/ReadVariableOp?%lstm_cell_373/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_373/MatMul/ReadVariableOpReadVariableOp,lstm_cell_373_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_373/MatMulMatMulstrided_slice_2:output:0+lstm_cell_373/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_373/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_373_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_373/MatMul_1MatMulzeros:output:0-lstm_cell_373/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_373/addAddV2lstm_cell_373/MatMul:product:0 lstm_cell_373/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_373/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_373_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_373/BiasAddBiasAddlstm_cell_373/add:z:0,lstm_cell_373/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_373/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_373/splitSplit&lstm_cell_373/split/split_dim:output:0lstm_cell_373/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_373/SigmoidSigmoidlstm_cell_373/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_373/Sigmoid_1Sigmoidlstm_cell_373/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_373/mulMullstm_cell_373/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_373/ReluRelulstm_cell_373/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_373/mul_1Mullstm_cell_373/Sigmoid:y:0 lstm_cell_373/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_373/add_1AddV2lstm_cell_373/mul:z:0lstm_cell_373/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_373/Sigmoid_2Sigmoidlstm_cell_373/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_373/Relu_1Relulstm_cell_373/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_373/mul_2Mullstm_cell_373/Sigmoid_2:y:0"lstm_cell_373/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_373_matmul_readvariableop_resource.lstm_cell_373_matmul_1_readvariableop_resource-lstm_cell_373_biasadd_readvariableop_resource*
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
while_body_2266777*
condR
while_cond_2266776*K
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
NoOpNoOp%^lstm_cell_373/BiasAdd/ReadVariableOp$^lstm_cell_373/MatMul/ReadVariableOp&^lstm_cell_373/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_373/BiasAdd/ReadVariableOp$lstm_cell_373/BiasAdd/ReadVariableOp2J
#lstm_cell_373/MatMul/ReadVariableOp#lstm_cell_373/MatMul/ReadVariableOp2N
%lstm_cell_373/MatMul_1/ReadVariableOp%lstm_cell_373/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_239_layer_call_and_return_conditional_losses_2267763

inputs>
,lstm_cell_374_matmul_readvariableop_resource:2(@
.lstm_cell_374_matmul_1_readvariableop_resource:
(;
-lstm_cell_374_biasadd_readvariableop_resource:(
identity??$lstm_cell_374/BiasAdd/ReadVariableOp?#lstm_cell_374/MatMul/ReadVariableOp?%lstm_cell_374/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_374/MatMul/ReadVariableOpReadVariableOp,lstm_cell_374_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_374/MatMulMatMulstrided_slice_2:output:0+lstm_cell_374/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_374/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_374_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_374/MatMul_1MatMulzeros:output:0-lstm_cell_374/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_374/addAddV2lstm_cell_374/MatMul:product:0 lstm_cell_374/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_374/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_374_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_374/BiasAddBiasAddlstm_cell_374/add:z:0,lstm_cell_374/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_374/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_374/splitSplit&lstm_cell_374/split/split_dim:output:0lstm_cell_374/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_374/SigmoidSigmoidlstm_cell_374/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_374/Sigmoid_1Sigmoidlstm_cell_374/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_374/mulMullstm_cell_374/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_374/ReluRelulstm_cell_374/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_374/mul_1Mullstm_cell_374/Sigmoid:y:0 lstm_cell_374/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_374/add_1AddV2lstm_cell_374/mul:z:0lstm_cell_374/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_374/Sigmoid_2Sigmoidlstm_cell_374/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_374/Relu_1Relulstm_cell_374/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_374/mul_2Mullstm_cell_374/Sigmoid_2:y:0"lstm_cell_374/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_374_matmul_readvariableop_resource.lstm_cell_374_matmul_1_readvariableop_resource-lstm_cell_374_biasadd_readvariableop_resource*
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
while_body_2267679*
condR
while_cond_2267678*K
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
NoOpNoOp%^lstm_cell_374/BiasAdd/ReadVariableOp$^lstm_cell_374/MatMul/ReadVariableOp&^lstm_cell_374/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_374/BiasAdd/ReadVariableOp$lstm_cell_374/BiasAdd/ReadVariableOp2J
#lstm_cell_374/MatMul/ReadVariableOp#lstm_cell_374/MatMul/ReadVariableOp2N
%lstm_cell_374/MatMul_1/ReadVariableOp%lstm_cell_374/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
lstm_237_while_cond_2265546.
*lstm_237_while_lstm_237_while_loop_counter4
0lstm_237_while_lstm_237_while_maximum_iterations
lstm_237_while_placeholder 
lstm_237_while_placeholder_1 
lstm_237_while_placeholder_2 
lstm_237_while_placeholder_30
,lstm_237_while_less_lstm_237_strided_slice_1G
Clstm_237_while_lstm_237_while_cond_2265546___redundant_placeholder0G
Clstm_237_while_lstm_237_while_cond_2265546___redundant_placeholder1G
Clstm_237_while_lstm_237_while_cond_2265546___redundant_placeholder2G
Clstm_237_while_lstm_237_while_cond_2265546___redundant_placeholder3
lstm_237_while_identity
?
lstm_237/while/LessLesslstm_237_while_placeholder,lstm_237_while_less_lstm_237_strided_slice_1*
T0*
_output_shapes
: ]
lstm_237/while/IdentityIdentitylstm_237/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_237_while_identity lstm_237/while/Identity:output:0*(
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
J__inference_sequential_79_layer_call_and_return_conditional_losses_2264942
lstm_237_input#
lstm_237_2264915:	?#
lstm_237_2264917:	d?
lstm_237_2264919:	?#
lstm_238_2264922:	d?#
lstm_238_2264924:	2?
lstm_238_2264926:	?"
lstm_239_2264929:2("
lstm_239_2264931:
(
lstm_239_2264933:("
dense_79_2264936:

dense_79_2264938:
identity?? dense_79/StatefulPartitionedCall? lstm_237/StatefulPartitionedCall? lstm_238/StatefulPartitionedCall? lstm_239/StatefulPartitionedCall?
 lstm_237/StatefulPartitionedCallStatefulPartitionedCalllstm_237_inputlstm_237_2264915lstm_237_2264917lstm_237_2264919*
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
E__inference_lstm_237_layer_call_and_return_conditional_losses_2263946?
 lstm_238/StatefulPartitionedCallStatefulPartitionedCall)lstm_237/StatefulPartitionedCall:output:0lstm_238_2264922lstm_238_2264924lstm_238_2264926*
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
E__inference_lstm_238_layer_call_and_return_conditional_losses_2264096?
 lstm_239/StatefulPartitionedCallStatefulPartitionedCall)lstm_238/StatefulPartitionedCall:output:0lstm_239_2264929lstm_239_2264931lstm_239_2264933*
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
E__inference_lstm_239_layer_call_and_return_conditional_losses_2264246?
 dense_79/StatefulPartitionedCallStatefulPartitionedCall)lstm_239/StatefulPartitionedCall:output:0dense_79_2264936dense_79_2264938*
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
E__inference_dense_79_layer_call_and_return_conditional_losses_2264264x
IdentityIdentity)dense_79/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_79/StatefulPartitionedCall!^lstm_237/StatefulPartitionedCall!^lstm_238/StatefulPartitionedCall!^lstm_239/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_79/StatefulPartitionedCall dense_79/StatefulPartitionedCall2D
 lstm_237/StatefulPartitionedCall lstm_237/StatefulPartitionedCall2D
 lstm_238/StatefulPartitionedCall lstm_238/StatefulPartitionedCall2D
 lstm_239/StatefulPartitionedCall lstm_239/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_237_input
?
?
while_cond_2263718
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2263718___redundant_placeholder05
1while_while_cond_2263718___redundant_placeholder15
1while_while_cond_2263718___redundant_placeholder25
1while_while_cond_2263718___redundant_placeholder3
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
J__inference_lstm_cell_374_layer_call_and_return_conditional_losses_2268076

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
?S
?
)sequential_79_lstm_239_while_body_2262657J
Fsequential_79_lstm_239_while_sequential_79_lstm_239_while_loop_counterP
Lsequential_79_lstm_239_while_sequential_79_lstm_239_while_maximum_iterations,
(sequential_79_lstm_239_while_placeholder.
*sequential_79_lstm_239_while_placeholder_1.
*sequential_79_lstm_239_while_placeholder_2.
*sequential_79_lstm_239_while_placeholder_3I
Esequential_79_lstm_239_while_sequential_79_lstm_239_strided_slice_1_0?
?sequential_79_lstm_239_while_tensorarrayv2read_tensorlistgetitem_sequential_79_lstm_239_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_79_lstm_239_while_lstm_cell_374_matmul_readvariableop_resource_0:2(_
Msequential_79_lstm_239_while_lstm_cell_374_matmul_1_readvariableop_resource_0:
(Z
Lsequential_79_lstm_239_while_lstm_cell_374_biasadd_readvariableop_resource_0:()
%sequential_79_lstm_239_while_identity+
'sequential_79_lstm_239_while_identity_1+
'sequential_79_lstm_239_while_identity_2+
'sequential_79_lstm_239_while_identity_3+
'sequential_79_lstm_239_while_identity_4+
'sequential_79_lstm_239_while_identity_5G
Csequential_79_lstm_239_while_sequential_79_lstm_239_strided_slice_1?
sequential_79_lstm_239_while_tensorarrayv2read_tensorlistgetitem_sequential_79_lstm_239_tensorarrayunstack_tensorlistfromtensor[
Isequential_79_lstm_239_while_lstm_cell_374_matmul_readvariableop_resource:2(]
Ksequential_79_lstm_239_while_lstm_cell_374_matmul_1_readvariableop_resource:
(X
Jsequential_79_lstm_239_while_lstm_cell_374_biasadd_readvariableop_resource:(??Asequential_79/lstm_239/while/lstm_cell_374/BiasAdd/ReadVariableOp?@sequential_79/lstm_239/while/lstm_cell_374/MatMul/ReadVariableOp?Bsequential_79/lstm_239/while/lstm_cell_374/MatMul_1/ReadVariableOp?
Nsequential_79/lstm_239/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
@sequential_79/lstm_239/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_79_lstm_239_while_tensorarrayv2read_tensorlistgetitem_sequential_79_lstm_239_tensorarrayunstack_tensorlistfromtensor_0(sequential_79_lstm_239_while_placeholderWsequential_79/lstm_239/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
@sequential_79/lstm_239/while/lstm_cell_374/MatMul/ReadVariableOpReadVariableOpKsequential_79_lstm_239_while_lstm_cell_374_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
1sequential_79/lstm_239/while/lstm_cell_374/MatMulMatMulGsequential_79/lstm_239/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_79/lstm_239/while/lstm_cell_374/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Bsequential_79/lstm_239/while/lstm_cell_374/MatMul_1/ReadVariableOpReadVariableOpMsequential_79_lstm_239_while_lstm_cell_374_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
3sequential_79/lstm_239/while/lstm_cell_374/MatMul_1MatMul*sequential_79_lstm_239_while_placeholder_2Jsequential_79/lstm_239/while/lstm_cell_374/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.sequential_79/lstm_239/while/lstm_cell_374/addAddV2;sequential_79/lstm_239/while/lstm_cell_374/MatMul:product:0=sequential_79/lstm_239/while/lstm_cell_374/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Asequential_79/lstm_239/while/lstm_cell_374/BiasAdd/ReadVariableOpReadVariableOpLsequential_79_lstm_239_while_lstm_cell_374_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
2sequential_79/lstm_239/while/lstm_cell_374/BiasAddBiasAdd2sequential_79/lstm_239/while/lstm_cell_374/add:z:0Isequential_79/lstm_239/while/lstm_cell_374/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(|
:sequential_79/lstm_239/while/lstm_cell_374/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_79/lstm_239/while/lstm_cell_374/splitSplitCsequential_79/lstm_239/while/lstm_cell_374/split/split_dim:output:0;sequential_79/lstm_239/while/lstm_cell_374/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
2sequential_79/lstm_239/while/lstm_cell_374/SigmoidSigmoid9sequential_79/lstm_239/while/lstm_cell_374/split:output:0*
T0*'
_output_shapes
:?????????
?
4sequential_79/lstm_239/while/lstm_cell_374/Sigmoid_1Sigmoid9sequential_79/lstm_239/while/lstm_cell_374/split:output:1*
T0*'
_output_shapes
:?????????
?
.sequential_79/lstm_239/while/lstm_cell_374/mulMul8sequential_79/lstm_239/while/lstm_cell_374/Sigmoid_1:y:0*sequential_79_lstm_239_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
/sequential_79/lstm_239/while/lstm_cell_374/ReluRelu9sequential_79/lstm_239/while/lstm_cell_374/split:output:2*
T0*'
_output_shapes
:?????????
?
0sequential_79/lstm_239/while/lstm_cell_374/mul_1Mul6sequential_79/lstm_239/while/lstm_cell_374/Sigmoid:y:0=sequential_79/lstm_239/while/lstm_cell_374/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
0sequential_79/lstm_239/while/lstm_cell_374/add_1AddV22sequential_79/lstm_239/while/lstm_cell_374/mul:z:04sequential_79/lstm_239/while/lstm_cell_374/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
4sequential_79/lstm_239/while/lstm_cell_374/Sigmoid_2Sigmoid9sequential_79/lstm_239/while/lstm_cell_374/split:output:3*
T0*'
_output_shapes
:?????????
?
1sequential_79/lstm_239/while/lstm_cell_374/Relu_1Relu4sequential_79/lstm_239/while/lstm_cell_374/add_1:z:0*
T0*'
_output_shapes
:?????????
?
0sequential_79/lstm_239/while/lstm_cell_374/mul_2Mul8sequential_79/lstm_239/while/lstm_cell_374/Sigmoid_2:y:0?sequential_79/lstm_239/while/lstm_cell_374/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Asequential_79/lstm_239/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_79_lstm_239_while_placeholder_1(sequential_79_lstm_239_while_placeholder4sequential_79/lstm_239/while/lstm_cell_374/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_79/lstm_239/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_79/lstm_239/while/addAddV2(sequential_79_lstm_239_while_placeholder+sequential_79/lstm_239/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_79/lstm_239/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_79/lstm_239/while/add_1AddV2Fsequential_79_lstm_239_while_sequential_79_lstm_239_while_loop_counter-sequential_79/lstm_239/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_79/lstm_239/while/IdentityIdentity&sequential_79/lstm_239/while/add_1:z:0"^sequential_79/lstm_239/while/NoOp*
T0*
_output_shapes
: ?
'sequential_79/lstm_239/while/Identity_1IdentityLsequential_79_lstm_239_while_sequential_79_lstm_239_while_maximum_iterations"^sequential_79/lstm_239/while/NoOp*
T0*
_output_shapes
: ?
'sequential_79/lstm_239/while/Identity_2Identity$sequential_79/lstm_239/while/add:z:0"^sequential_79/lstm_239/while/NoOp*
T0*
_output_shapes
: ?
'sequential_79/lstm_239/while/Identity_3IdentityQsequential_79/lstm_239/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_79/lstm_239/while/NoOp*
T0*
_output_shapes
: ?
'sequential_79/lstm_239/while/Identity_4Identity4sequential_79/lstm_239/while/lstm_cell_374/mul_2:z:0"^sequential_79/lstm_239/while/NoOp*
T0*'
_output_shapes
:?????????
?
'sequential_79/lstm_239/while/Identity_5Identity4sequential_79/lstm_239/while/lstm_cell_374/add_1:z:0"^sequential_79/lstm_239/while/NoOp*
T0*'
_output_shapes
:?????????
?
!sequential_79/lstm_239/while/NoOpNoOpB^sequential_79/lstm_239/while/lstm_cell_374/BiasAdd/ReadVariableOpA^sequential_79/lstm_239/while/lstm_cell_374/MatMul/ReadVariableOpC^sequential_79/lstm_239/while/lstm_cell_374/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_79_lstm_239_while_identity.sequential_79/lstm_239/while/Identity:output:0"[
'sequential_79_lstm_239_while_identity_10sequential_79/lstm_239/while/Identity_1:output:0"[
'sequential_79_lstm_239_while_identity_20sequential_79/lstm_239/while/Identity_2:output:0"[
'sequential_79_lstm_239_while_identity_30sequential_79/lstm_239/while/Identity_3:output:0"[
'sequential_79_lstm_239_while_identity_40sequential_79/lstm_239/while/Identity_4:output:0"[
'sequential_79_lstm_239_while_identity_50sequential_79/lstm_239/while/Identity_5:output:0"?
Jsequential_79_lstm_239_while_lstm_cell_374_biasadd_readvariableop_resourceLsequential_79_lstm_239_while_lstm_cell_374_biasadd_readvariableop_resource_0"?
Ksequential_79_lstm_239_while_lstm_cell_374_matmul_1_readvariableop_resourceMsequential_79_lstm_239_while_lstm_cell_374_matmul_1_readvariableop_resource_0"?
Isequential_79_lstm_239_while_lstm_cell_374_matmul_readvariableop_resourceKsequential_79_lstm_239_while_lstm_cell_374_matmul_readvariableop_resource_0"?
Csequential_79_lstm_239_while_sequential_79_lstm_239_strided_slice_1Esequential_79_lstm_239_while_sequential_79_lstm_239_strided_slice_1_0"?
sequential_79_lstm_239_while_tensorarrayv2read_tensorlistgetitem_sequential_79_lstm_239_tensorarrayunstack_tensorlistfromtensor?sequential_79_lstm_239_while_tensorarrayv2read_tensorlistgetitem_sequential_79_lstm_239_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Asequential_79/lstm_239/while/lstm_cell_374/BiasAdd/ReadVariableOpAsequential_79/lstm_239/while/lstm_cell_374/BiasAdd/ReadVariableOp2?
@sequential_79/lstm_239/while/lstm_cell_374/MatMul/ReadVariableOp@sequential_79/lstm_239/while/lstm_cell_374/MatMul/ReadVariableOp2?
Bsequential_79/lstm_239/while/lstm_cell_374/MatMul_1/ReadVariableOpBsequential_79/lstm_239/while/lstm_cell_374/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_239_while_body_2265825.
*lstm_239_while_lstm_239_while_loop_counter4
0lstm_239_while_lstm_239_while_maximum_iterations
lstm_239_while_placeholder 
lstm_239_while_placeholder_1 
lstm_239_while_placeholder_2 
lstm_239_while_placeholder_3-
)lstm_239_while_lstm_239_strided_slice_1_0i
elstm_239_while_tensorarrayv2read_tensorlistgetitem_lstm_239_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_239_while_lstm_cell_374_matmul_readvariableop_resource_0:2(Q
?lstm_239_while_lstm_cell_374_matmul_1_readvariableop_resource_0:
(L
>lstm_239_while_lstm_cell_374_biasadd_readvariableop_resource_0:(
lstm_239_while_identity
lstm_239_while_identity_1
lstm_239_while_identity_2
lstm_239_while_identity_3
lstm_239_while_identity_4
lstm_239_while_identity_5+
'lstm_239_while_lstm_239_strided_slice_1g
clstm_239_while_tensorarrayv2read_tensorlistgetitem_lstm_239_tensorarrayunstack_tensorlistfromtensorM
;lstm_239_while_lstm_cell_374_matmul_readvariableop_resource:2(O
=lstm_239_while_lstm_cell_374_matmul_1_readvariableop_resource:
(J
<lstm_239_while_lstm_cell_374_biasadd_readvariableop_resource:(??3lstm_239/while/lstm_cell_374/BiasAdd/ReadVariableOp?2lstm_239/while/lstm_cell_374/MatMul/ReadVariableOp?4lstm_239/while/lstm_cell_374/MatMul_1/ReadVariableOp?
@lstm_239/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_239/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_239_while_tensorarrayv2read_tensorlistgetitem_lstm_239_tensorarrayunstack_tensorlistfromtensor_0lstm_239_while_placeholderIlstm_239/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_239/while/lstm_cell_374/MatMul/ReadVariableOpReadVariableOp=lstm_239_while_lstm_cell_374_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_239/while/lstm_cell_374/MatMulMatMul9lstm_239/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_239/while/lstm_cell_374/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_239/while/lstm_cell_374/MatMul_1/ReadVariableOpReadVariableOp?lstm_239_while_lstm_cell_374_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_239/while/lstm_cell_374/MatMul_1MatMullstm_239_while_placeholder_2<lstm_239/while/lstm_cell_374/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_239/while/lstm_cell_374/addAddV2-lstm_239/while/lstm_cell_374/MatMul:product:0/lstm_239/while/lstm_cell_374/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_239/while/lstm_cell_374/BiasAdd/ReadVariableOpReadVariableOp>lstm_239_while_lstm_cell_374_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_239/while/lstm_cell_374/BiasAddBiasAdd$lstm_239/while/lstm_cell_374/add:z:0;lstm_239/while/lstm_cell_374/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_239/while/lstm_cell_374/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_239/while/lstm_cell_374/splitSplit5lstm_239/while/lstm_cell_374/split/split_dim:output:0-lstm_239/while/lstm_cell_374/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_239/while/lstm_cell_374/SigmoidSigmoid+lstm_239/while/lstm_cell_374/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_239/while/lstm_cell_374/Sigmoid_1Sigmoid+lstm_239/while/lstm_cell_374/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_239/while/lstm_cell_374/mulMul*lstm_239/while/lstm_cell_374/Sigmoid_1:y:0lstm_239_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_239/while/lstm_cell_374/ReluRelu+lstm_239/while/lstm_cell_374/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_239/while/lstm_cell_374/mul_1Mul(lstm_239/while/lstm_cell_374/Sigmoid:y:0/lstm_239/while/lstm_cell_374/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_239/while/lstm_cell_374/add_1AddV2$lstm_239/while/lstm_cell_374/mul:z:0&lstm_239/while/lstm_cell_374/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_239/while/lstm_cell_374/Sigmoid_2Sigmoid+lstm_239/while/lstm_cell_374/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_239/while/lstm_cell_374/Relu_1Relu&lstm_239/while/lstm_cell_374/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_239/while/lstm_cell_374/mul_2Mul*lstm_239/while/lstm_cell_374/Sigmoid_2:y:01lstm_239/while/lstm_cell_374/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_239/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_239_while_placeholder_1lstm_239_while_placeholder&lstm_239/while/lstm_cell_374/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_239/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_239/while/addAddV2lstm_239_while_placeholderlstm_239/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_239/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_239/while/add_1AddV2*lstm_239_while_lstm_239_while_loop_counterlstm_239/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_239/while/IdentityIdentitylstm_239/while/add_1:z:0^lstm_239/while/NoOp*
T0*
_output_shapes
: ?
lstm_239/while/Identity_1Identity0lstm_239_while_lstm_239_while_maximum_iterations^lstm_239/while/NoOp*
T0*
_output_shapes
: t
lstm_239/while/Identity_2Identitylstm_239/while/add:z:0^lstm_239/while/NoOp*
T0*
_output_shapes
: ?
lstm_239/while/Identity_3IdentityClstm_239/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_239/while/NoOp*
T0*
_output_shapes
: ?
lstm_239/while/Identity_4Identity&lstm_239/while/lstm_cell_374/mul_2:z:0^lstm_239/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_239/while/Identity_5Identity&lstm_239/while/lstm_cell_374/add_1:z:0^lstm_239/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_239/while/NoOpNoOp4^lstm_239/while/lstm_cell_374/BiasAdd/ReadVariableOp3^lstm_239/while/lstm_cell_374/MatMul/ReadVariableOp5^lstm_239/while/lstm_cell_374/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_239_while_identity lstm_239/while/Identity:output:0"?
lstm_239_while_identity_1"lstm_239/while/Identity_1:output:0"?
lstm_239_while_identity_2"lstm_239/while/Identity_2:output:0"?
lstm_239_while_identity_3"lstm_239/while/Identity_3:output:0"?
lstm_239_while_identity_4"lstm_239/while/Identity_4:output:0"?
lstm_239_while_identity_5"lstm_239/while/Identity_5:output:0"T
'lstm_239_while_lstm_239_strided_slice_1)lstm_239_while_lstm_239_strided_slice_1_0"~
<lstm_239_while_lstm_cell_374_biasadd_readvariableop_resource>lstm_239_while_lstm_cell_374_biasadd_readvariableop_resource_0"?
=lstm_239_while_lstm_cell_374_matmul_1_readvariableop_resource?lstm_239_while_lstm_cell_374_matmul_1_readvariableop_resource_0"|
;lstm_239_while_lstm_cell_374_matmul_readvariableop_resource=lstm_239_while_lstm_cell_374_matmul_readvariableop_resource_0"?
clstm_239_while_tensorarrayv2read_tensorlistgetitem_lstm_239_tensorarrayunstack_tensorlistfromtensorelstm_239_while_tensorarrayv2read_tensorlistgetitem_lstm_239_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_239/while/lstm_cell_374/BiasAdd/ReadVariableOp3lstm_239/while/lstm_cell_374/BiasAdd/ReadVariableOp2h
2lstm_239/while/lstm_cell_374/MatMul/ReadVariableOp2lstm_239/while/lstm_cell_374/MatMul/ReadVariableOp2l
4lstm_239/while/lstm_cell_374/MatMul_1/ReadVariableOp4lstm_239/while/lstm_cell_374/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_238_layer_call_and_return_conditional_losses_2264627

inputs?
,lstm_cell_373_matmul_readvariableop_resource:	d?A
.lstm_cell_373_matmul_1_readvariableop_resource:	2?<
-lstm_cell_373_biasadd_readvariableop_resource:	?
identity??$lstm_cell_373/BiasAdd/ReadVariableOp?#lstm_cell_373/MatMul/ReadVariableOp?%lstm_cell_373/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_373/MatMul/ReadVariableOpReadVariableOp,lstm_cell_373_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_373/MatMulMatMulstrided_slice_2:output:0+lstm_cell_373/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_373/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_373_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_373/MatMul_1MatMulzeros:output:0-lstm_cell_373/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_373/addAddV2lstm_cell_373/MatMul:product:0 lstm_cell_373/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_373/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_373_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_373/BiasAddBiasAddlstm_cell_373/add:z:0,lstm_cell_373/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_373/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_373/splitSplit&lstm_cell_373/split/split_dim:output:0lstm_cell_373/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_373/SigmoidSigmoidlstm_cell_373/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_373/Sigmoid_1Sigmoidlstm_cell_373/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_373/mulMullstm_cell_373/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_373/ReluRelulstm_cell_373/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_373/mul_1Mullstm_cell_373/Sigmoid:y:0 lstm_cell_373/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_373/add_1AddV2lstm_cell_373/mul:z:0lstm_cell_373/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_373/Sigmoid_2Sigmoidlstm_cell_373/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_373/Relu_1Relulstm_cell_373/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_373/mul_2Mullstm_cell_373/Sigmoid_2:y:0"lstm_cell_373/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_373_matmul_readvariableop_resource.lstm_cell_373_matmul_1_readvariableop_resource-lstm_cell_373_biasadd_readvariableop_resource*
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
while_body_2264543*
condR
while_cond_2264542*K
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
NoOpNoOp%^lstm_cell_373/BiasAdd/ReadVariableOp$^lstm_cell_373/MatMul/ReadVariableOp&^lstm_cell_373/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_373/BiasAdd/ReadVariableOp$lstm_cell_373/BiasAdd/ReadVariableOp2J
#lstm_cell_373/MatMul/ReadVariableOp#lstm_cell_373/MatMul/ReadVariableOp2N
%lstm_cell_373/MatMul_1/ReadVariableOp%lstm_cell_373/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
)sequential_79_lstm_239_while_cond_2262656J
Fsequential_79_lstm_239_while_sequential_79_lstm_239_while_loop_counterP
Lsequential_79_lstm_239_while_sequential_79_lstm_239_while_maximum_iterations,
(sequential_79_lstm_239_while_placeholder.
*sequential_79_lstm_239_while_placeholder_1.
*sequential_79_lstm_239_while_placeholder_2.
*sequential_79_lstm_239_while_placeholder_3L
Hsequential_79_lstm_239_while_less_sequential_79_lstm_239_strided_slice_1c
_sequential_79_lstm_239_while_sequential_79_lstm_239_while_cond_2262656___redundant_placeholder0c
_sequential_79_lstm_239_while_sequential_79_lstm_239_while_cond_2262656___redundant_placeholder1c
_sequential_79_lstm_239_while_sequential_79_lstm_239_while_cond_2262656___redundant_placeholder2c
_sequential_79_lstm_239_while_sequential_79_lstm_239_while_cond_2262656___redundant_placeholder3)
%sequential_79_lstm_239_while_identity
?
!sequential_79/lstm_239/while/LessLess(sequential_79_lstm_239_while_placeholderHsequential_79_lstm_239_while_less_sequential_79_lstm_239_strided_slice_1*
T0*
_output_shapes
: y
%sequential_79/lstm_239/while/IdentityIdentity%sequential_79/lstm_239/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_79_lstm_239_while_identity.sequential_79/lstm_239/while/Identity:output:0*(
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
while_body_2263862
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_372_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_372_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_372_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_372_matmul_readvariableop_resource:	?G
4while_lstm_cell_372_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_372_biasadd_readvariableop_resource:	???*while/lstm_cell_372/BiasAdd/ReadVariableOp?)while/lstm_cell_372/MatMul/ReadVariableOp?+while/lstm_cell_372/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_372/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_372_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_372/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_372/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_372/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_372_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_372/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_372/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_372/addAddV2$while/lstm_cell_372/MatMul:product:0&while/lstm_cell_372/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_372/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_372_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_372/BiasAddBiasAddwhile/lstm_cell_372/add:z:02while/lstm_cell_372/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_372/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_372/splitSplit,while/lstm_cell_372/split/split_dim:output:0$while/lstm_cell_372/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_372/SigmoidSigmoid"while/lstm_cell_372/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_372/Sigmoid_1Sigmoid"while/lstm_cell_372/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_372/mulMul!while/lstm_cell_372/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_372/ReluRelu"while/lstm_cell_372/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_372/mul_1Mulwhile/lstm_cell_372/Sigmoid:y:0&while/lstm_cell_372/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_372/add_1AddV2while/lstm_cell_372/mul:z:0while/lstm_cell_372/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_372/Sigmoid_2Sigmoid"while/lstm_cell_372/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_372/Relu_1Reluwhile/lstm_cell_372/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_372/mul_2Mul!while/lstm_cell_372/Sigmoid_2:y:0(while/lstm_cell_372/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_372/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_372/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_372/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_372/BiasAdd/ReadVariableOp*^while/lstm_cell_372/MatMul/ReadVariableOp,^while/lstm_cell_372/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_372_biasadd_readvariableop_resource5while_lstm_cell_372_biasadd_readvariableop_resource_0"n
4while_lstm_cell_372_matmul_1_readvariableop_resource6while_lstm_cell_372_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_372_matmul_readvariableop_resource4while_lstm_cell_372_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_372/BiasAdd/ReadVariableOp*while/lstm_cell_372/BiasAdd/ReadVariableOp2V
)while/lstm_cell_372/MatMul/ReadVariableOp)while/lstm_cell_372/MatMul/ReadVariableOp2Z
+while/lstm_cell_372/MatMul_1/ReadVariableOp+while/lstm_cell_372/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_239_layer_call_fn_2267180

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
E__inference_lstm_239_layer_call_and_return_conditional_losses_2264246o
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
lstm_237_input;
 serving_default_lstm_237_input:0?????????<
dense_790
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
2dense_79/kernel
:2dense_79/bias
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
0:.	?2lstm_237/lstm_cell_237/kernel
::8	d?2'lstm_237/lstm_cell_237/recurrent_kernel
*:(?2lstm_237/lstm_cell_237/bias
0:.	d?2lstm_238/lstm_cell_238/kernel
::8	2?2'lstm_238/lstm_cell_238/recurrent_kernel
*:(?2lstm_238/lstm_cell_238/bias
/:-2(2lstm_239/lstm_cell_239/kernel
9:7
(2'lstm_239/lstm_cell_239/recurrent_kernel
):'(2lstm_239/lstm_cell_239/bias
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
2Adam/dense_79/kernel/m
 :2Adam/dense_79/bias/m
5:3	?2$Adam/lstm_237/lstm_cell_237/kernel/m
?:=	d?2.Adam/lstm_237/lstm_cell_237/recurrent_kernel/m
/:-?2"Adam/lstm_237/lstm_cell_237/bias/m
5:3	d?2$Adam/lstm_238/lstm_cell_238/kernel/m
?:=	2?2.Adam/lstm_238/lstm_cell_238/recurrent_kernel/m
/:-?2"Adam/lstm_238/lstm_cell_238/bias/m
4:22(2$Adam/lstm_239/lstm_cell_239/kernel/m
>:<
(2.Adam/lstm_239/lstm_cell_239/recurrent_kernel/m
.:,(2"Adam/lstm_239/lstm_cell_239/bias/m
&:$
2Adam/dense_79/kernel/v
 :2Adam/dense_79/bias/v
5:3	?2$Adam/lstm_237/lstm_cell_237/kernel/v
?:=	d?2.Adam/lstm_237/lstm_cell_237/recurrent_kernel/v
/:-?2"Adam/lstm_237/lstm_cell_237/bias/v
5:3	d?2$Adam/lstm_238/lstm_cell_238/kernel/v
?:=	2?2.Adam/lstm_238/lstm_cell_238/recurrent_kernel/v
/:-?2"Adam/lstm_238/lstm_cell_238/bias/v
4:22(2$Adam/lstm_239/lstm_cell_239/kernel/v
>:<
(2.Adam/lstm_239/lstm_cell_239/recurrent_kernel/v
.:,(2"Adam/lstm_239/lstm_cell_239/bias/v
?2?
/__inference_sequential_79_layer_call_fn_2264296
/__inference_sequential_79_layer_call_fn_2265034
/__inference_sequential_79_layer_call_fn_2265061
/__inference_sequential_79_layer_call_fn_2264912?
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
J__inference_sequential_79_layer_call_and_return_conditional_losses_2265488
J__inference_sequential_79_layer_call_and_return_conditional_losses_2265915
J__inference_sequential_79_layer_call_and_return_conditional_losses_2264942
J__inference_sequential_79_layer_call_and_return_conditional_losses_2264972?
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
"__inference__wrapped_model_2262747lstm_237_input"?
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
*__inference_lstm_237_layer_call_fn_2265926
*__inference_lstm_237_layer_call_fn_2265937
*__inference_lstm_237_layer_call_fn_2265948
*__inference_lstm_237_layer_call_fn_2265959?
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
E__inference_lstm_237_layer_call_and_return_conditional_losses_2266102
E__inference_lstm_237_layer_call_and_return_conditional_losses_2266245
E__inference_lstm_237_layer_call_and_return_conditional_losses_2266388
E__inference_lstm_237_layer_call_and_return_conditional_losses_2266531?
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
*__inference_lstm_238_layer_call_fn_2266542
*__inference_lstm_238_layer_call_fn_2266553
*__inference_lstm_238_layer_call_fn_2266564
*__inference_lstm_238_layer_call_fn_2266575?
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
E__inference_lstm_238_layer_call_and_return_conditional_losses_2266718
E__inference_lstm_238_layer_call_and_return_conditional_losses_2266861
E__inference_lstm_238_layer_call_and_return_conditional_losses_2267004
E__inference_lstm_238_layer_call_and_return_conditional_losses_2267147?
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
*__inference_lstm_239_layer_call_fn_2267158
*__inference_lstm_239_layer_call_fn_2267169
*__inference_lstm_239_layer_call_fn_2267180
*__inference_lstm_239_layer_call_fn_2267191?
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
E__inference_lstm_239_layer_call_and_return_conditional_losses_2267334
E__inference_lstm_239_layer_call_and_return_conditional_losses_2267477
E__inference_lstm_239_layer_call_and_return_conditional_losses_2267620
E__inference_lstm_239_layer_call_and_return_conditional_losses_2267763?
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
*__inference_dense_79_layer_call_fn_2267772?
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
E__inference_dense_79_layer_call_and_return_conditional_losses_2267782?
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
%__inference_signature_wrapper_2265007lstm_237_input"?
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
/__inference_lstm_cell_372_layer_call_fn_2267799
/__inference_lstm_cell_372_layer_call_fn_2267816?
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
J__inference_lstm_cell_372_layer_call_and_return_conditional_losses_2267848
J__inference_lstm_cell_372_layer_call_and_return_conditional_losses_2267880?
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
/__inference_lstm_cell_373_layer_call_fn_2267897
/__inference_lstm_cell_373_layer_call_fn_2267914?
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
J__inference_lstm_cell_373_layer_call_and_return_conditional_losses_2267946
J__inference_lstm_cell_373_layer_call_and_return_conditional_losses_2267978?
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
/__inference_lstm_cell_374_layer_call_fn_2267995
/__inference_lstm_cell_374_layer_call_fn_2268012?
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
J__inference_lstm_cell_374_layer_call_and_return_conditional_losses_2268044
J__inference_lstm_cell_374_layer_call_and_return_conditional_losses_2268076?
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
"__inference__wrapped_model_2262747-./012345!";?8
1?.
,?)
lstm_237_input?????????
? "3?0
.
dense_79"?
dense_79??????????
E__inference_dense_79_layer_call_and_return_conditional_losses_2267782\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_79_layer_call_fn_2267772O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_237_layer_call_and_return_conditional_losses_2266102?-./O?L
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
E__inference_lstm_237_layer_call_and_return_conditional_losses_2266245?-./O?L
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
E__inference_lstm_237_layer_call_and_return_conditional_losses_2266388q-./??<
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
E__inference_lstm_237_layer_call_and_return_conditional_losses_2266531q-./??<
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
*__inference_lstm_237_layer_call_fn_2265926}-./O?L
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
*__inference_lstm_237_layer_call_fn_2265937}-./O?L
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
*__inference_lstm_237_layer_call_fn_2265948d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_237_layer_call_fn_2265959d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_238_layer_call_and_return_conditional_losses_2266718?012O?L
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
E__inference_lstm_238_layer_call_and_return_conditional_losses_2266861?012O?L
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
E__inference_lstm_238_layer_call_and_return_conditional_losses_2267004q012??<
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
E__inference_lstm_238_layer_call_and_return_conditional_losses_2267147q012??<
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
*__inference_lstm_238_layer_call_fn_2266542}012O?L
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
*__inference_lstm_238_layer_call_fn_2266553}012O?L
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
*__inference_lstm_238_layer_call_fn_2266564d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_238_layer_call_fn_2266575d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_239_layer_call_and_return_conditional_losses_2267334}345O?L
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
E__inference_lstm_239_layer_call_and_return_conditional_losses_2267477}345O?L
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
E__inference_lstm_239_layer_call_and_return_conditional_losses_2267620m345??<
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
E__inference_lstm_239_layer_call_and_return_conditional_losses_2267763m345??<
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
*__inference_lstm_239_layer_call_fn_2267158p345O?L
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
*__inference_lstm_239_layer_call_fn_2267169p345O?L
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
*__inference_lstm_239_layer_call_fn_2267180`345??<
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
*__inference_lstm_239_layer_call_fn_2267191`345??<
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
J__inference_lstm_cell_372_layer_call_and_return_conditional_losses_2267848?-./??}
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
J__inference_lstm_cell_372_layer_call_and_return_conditional_losses_2267880?-./??}
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
/__inference_lstm_cell_372_layer_call_fn_2267799?-./??}
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
/__inference_lstm_cell_372_layer_call_fn_2267816?-./??}
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
J__inference_lstm_cell_373_layer_call_and_return_conditional_losses_2267946?012??}
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
J__inference_lstm_cell_373_layer_call_and_return_conditional_losses_2267978?012??}
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
/__inference_lstm_cell_373_layer_call_fn_2267897?012??}
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
/__inference_lstm_cell_373_layer_call_fn_2267914?012??}
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
J__inference_lstm_cell_374_layer_call_and_return_conditional_losses_2268044?345??}
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
J__inference_lstm_cell_374_layer_call_and_return_conditional_losses_2268076?345??}
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
/__inference_lstm_cell_374_layer_call_fn_2267995?345??}
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
/__inference_lstm_cell_374_layer_call_fn_2268012?345??}
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
J__inference_sequential_79_layer_call_and_return_conditional_losses_2264942y-./012345!"C?@
9?6
,?)
lstm_237_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_79_layer_call_and_return_conditional_losses_2264972y-./012345!"C?@
9?6
,?)
lstm_237_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_79_layer_call_and_return_conditional_losses_2265488q-./012345!";?8
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
J__inference_sequential_79_layer_call_and_return_conditional_losses_2265915q-./012345!";?8
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
/__inference_sequential_79_layer_call_fn_2264296l-./012345!"C?@
9?6
,?)
lstm_237_input?????????
p 

 
? "???????????
/__inference_sequential_79_layer_call_fn_2264912l-./012345!"C?@
9?6
,?)
lstm_237_input?????????
p

 
? "???????????
/__inference_sequential_79_layer_call_fn_2265034d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_79_layer_call_fn_2265061d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_2265007?-./012345!"M?J
? 
C?@
>
lstm_237_input,?)
lstm_237_input?????????"3?0
.
dense_79"?
dense_79?????????