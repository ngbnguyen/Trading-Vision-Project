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
dense_94/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_94/kernel
s
#dense_94/kernel/Read/ReadVariableOpReadVariableOpdense_94/kernel*
_output_shapes

:
*
dtype0
r
dense_94/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_94/bias
k
!dense_94/bias/Read/ReadVariableOpReadVariableOpdense_94/bias*
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
lstm_282/lstm_cell_282/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_282/lstm_cell_282/kernel
?
1lstm_282/lstm_cell_282/kernel/Read/ReadVariableOpReadVariableOplstm_282/lstm_cell_282/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_282/lstm_cell_282/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_282/lstm_cell_282/recurrent_kernel
?
;lstm_282/lstm_cell_282/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_282/lstm_cell_282/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_282/lstm_cell_282/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_282/lstm_cell_282/bias
?
/lstm_282/lstm_cell_282/bias/Read/ReadVariableOpReadVariableOplstm_282/lstm_cell_282/bias*
_output_shapes	
:?*
dtype0
?
lstm_283/lstm_cell_283/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_283/lstm_cell_283/kernel
?
1lstm_283/lstm_cell_283/kernel/Read/ReadVariableOpReadVariableOplstm_283/lstm_cell_283/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_283/lstm_cell_283/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_283/lstm_cell_283/recurrent_kernel
?
;lstm_283/lstm_cell_283/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_283/lstm_cell_283/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_283/lstm_cell_283/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_283/lstm_cell_283/bias
?
/lstm_283/lstm_cell_283/bias/Read/ReadVariableOpReadVariableOplstm_283/lstm_cell_283/bias*
_output_shapes	
:?*
dtype0
?
lstm_284/lstm_cell_284/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_284/lstm_cell_284/kernel
?
1lstm_284/lstm_cell_284/kernel/Read/ReadVariableOpReadVariableOplstm_284/lstm_cell_284/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_284/lstm_cell_284/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_284/lstm_cell_284/recurrent_kernel
?
;lstm_284/lstm_cell_284/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_284/lstm_cell_284/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_284/lstm_cell_284/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_284/lstm_cell_284/bias
?
/lstm_284/lstm_cell_284/bias/Read/ReadVariableOpReadVariableOplstm_284/lstm_cell_284/bias*
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
Adam/dense_94/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_94/kernel/m
?
*Adam/dense_94/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_94/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_94/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_94/bias/m
y
(Adam/dense_94/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_94/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_282/lstm_cell_282/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_282/lstm_cell_282/kernel/m
?
8Adam/lstm_282/lstm_cell_282/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_282/lstm_cell_282/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_282/lstm_cell_282/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_282/lstm_cell_282/recurrent_kernel/m
?
BAdam/lstm_282/lstm_cell_282/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_282/lstm_cell_282/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_282/lstm_cell_282/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_282/lstm_cell_282/bias/m
?
6Adam/lstm_282/lstm_cell_282/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_282/lstm_cell_282/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_283/lstm_cell_283/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_283/lstm_cell_283/kernel/m
?
8Adam/lstm_283/lstm_cell_283/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_283/lstm_cell_283/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_283/lstm_cell_283/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_283/lstm_cell_283/recurrent_kernel/m
?
BAdam/lstm_283/lstm_cell_283/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_283/lstm_cell_283/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_283/lstm_cell_283/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_283/lstm_cell_283/bias/m
?
6Adam/lstm_283/lstm_cell_283/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_283/lstm_cell_283/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_284/lstm_cell_284/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_284/lstm_cell_284/kernel/m
?
8Adam/lstm_284/lstm_cell_284/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_284/lstm_cell_284/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_284/lstm_cell_284/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_284/lstm_cell_284/recurrent_kernel/m
?
BAdam/lstm_284/lstm_cell_284/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_284/lstm_cell_284/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_284/lstm_cell_284/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_284/lstm_cell_284/bias/m
?
6Adam/lstm_284/lstm_cell_284/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_284/lstm_cell_284/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_94/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_94/kernel/v
?
*Adam/dense_94/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_94/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_94/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_94/bias/v
y
(Adam/dense_94/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_94/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_282/lstm_cell_282/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_282/lstm_cell_282/kernel/v
?
8Adam/lstm_282/lstm_cell_282/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_282/lstm_cell_282/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_282/lstm_cell_282/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_282/lstm_cell_282/recurrent_kernel/v
?
BAdam/lstm_282/lstm_cell_282/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_282/lstm_cell_282/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_282/lstm_cell_282/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_282/lstm_cell_282/bias/v
?
6Adam/lstm_282/lstm_cell_282/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_282/lstm_cell_282/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_283/lstm_cell_283/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_283/lstm_cell_283/kernel/v
?
8Adam/lstm_283/lstm_cell_283/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_283/lstm_cell_283/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_283/lstm_cell_283/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_283/lstm_cell_283/recurrent_kernel/v
?
BAdam/lstm_283/lstm_cell_283/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_283/lstm_cell_283/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_283/lstm_cell_283/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_283/lstm_cell_283/bias/v
?
6Adam/lstm_283/lstm_cell_283/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_283/lstm_cell_283/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_284/lstm_cell_284/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_284/lstm_cell_284/kernel/v
?
8Adam/lstm_284/lstm_cell_284/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_284/lstm_cell_284/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_284/lstm_cell_284/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_284/lstm_cell_284/recurrent_kernel/v
?
BAdam/lstm_284/lstm_cell_284/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_284/lstm_cell_284/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_284/lstm_cell_284/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_284/lstm_cell_284/bias/v
?
6Adam/lstm_284/lstm_cell_284/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_284/lstm_cell_284/bias/v*
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
VARIABLE_VALUEdense_94/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_94/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_282/lstm_cell_282/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_282/lstm_cell_282/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_282/lstm_cell_282/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_283/lstm_cell_283/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_283/lstm_cell_283/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_283/lstm_cell_283/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_284/lstm_cell_284/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_284/lstm_cell_284/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_284/lstm_cell_284/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_94/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_94/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_282/lstm_cell_282/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_282/lstm_cell_282/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_282/lstm_cell_282/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_283/lstm_cell_283/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_283/lstm_cell_283/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_283/lstm_cell_283/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_284/lstm_cell_284/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_284/lstm_cell_284/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_284/lstm_cell_284/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_94/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_94/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_282/lstm_cell_282/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_282/lstm_cell_282/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_282/lstm_cell_282/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_283/lstm_cell_283/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_283/lstm_cell_283/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_283/lstm_cell_283/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_284/lstm_cell_284/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_284/lstm_cell_284/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_284/lstm_cell_284/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_282_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_282_inputlstm_282/lstm_cell_282/kernel'lstm_282/lstm_cell_282/recurrent_kernellstm_282/lstm_cell_282/biaslstm_283/lstm_cell_283/kernel'lstm_283/lstm_cell_283/recurrent_kernellstm_283/lstm_cell_283/biaslstm_284/lstm_cell_284/kernel'lstm_284/lstm_cell_284/recurrent_kernellstm_284/lstm_cell_284/biasdense_94/kerneldense_94/bias*
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
%__inference_signature_wrapper_2337177
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_94/kernel/Read/ReadVariableOp!dense_94/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_282/lstm_cell_282/kernel/Read/ReadVariableOp;lstm_282/lstm_cell_282/recurrent_kernel/Read/ReadVariableOp/lstm_282/lstm_cell_282/bias/Read/ReadVariableOp1lstm_283/lstm_cell_283/kernel/Read/ReadVariableOp;lstm_283/lstm_cell_283/recurrent_kernel/Read/ReadVariableOp/lstm_283/lstm_cell_283/bias/Read/ReadVariableOp1lstm_284/lstm_cell_284/kernel/Read/ReadVariableOp;lstm_284/lstm_cell_284/recurrent_kernel/Read/ReadVariableOp/lstm_284/lstm_cell_284/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_94/kernel/m/Read/ReadVariableOp(Adam/dense_94/bias/m/Read/ReadVariableOp8Adam/lstm_282/lstm_cell_282/kernel/m/Read/ReadVariableOpBAdam/lstm_282/lstm_cell_282/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_282/lstm_cell_282/bias/m/Read/ReadVariableOp8Adam/lstm_283/lstm_cell_283/kernel/m/Read/ReadVariableOpBAdam/lstm_283/lstm_cell_283/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_283/lstm_cell_283/bias/m/Read/ReadVariableOp8Adam/lstm_284/lstm_cell_284/kernel/m/Read/ReadVariableOpBAdam/lstm_284/lstm_cell_284/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_284/lstm_cell_284/bias/m/Read/ReadVariableOp*Adam/dense_94/kernel/v/Read/ReadVariableOp(Adam/dense_94/bias/v/Read/ReadVariableOp8Adam/lstm_282/lstm_cell_282/kernel/v/Read/ReadVariableOpBAdam/lstm_282/lstm_cell_282/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_282/lstm_cell_282/bias/v/Read/ReadVariableOp8Adam/lstm_283/lstm_cell_283/kernel/v/Read/ReadVariableOpBAdam/lstm_283/lstm_cell_283/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_283/lstm_cell_283/bias/v/Read/ReadVariableOp8Adam/lstm_284/lstm_cell_284/kernel/v/Read/ReadVariableOpBAdam/lstm_284/lstm_cell_284/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_284/lstm_cell_284/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_2340389
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_94/kerneldense_94/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_282/lstm_cell_282/kernel'lstm_282/lstm_cell_282/recurrent_kernellstm_282/lstm_cell_282/biaslstm_283/lstm_cell_283/kernel'lstm_283/lstm_cell_283/recurrent_kernellstm_283/lstm_cell_283/biaslstm_284/lstm_cell_284/kernel'lstm_284/lstm_cell_284/recurrent_kernellstm_284/lstm_cell_284/biastotalcountAdam/dense_94/kernel/mAdam/dense_94/bias/m$Adam/lstm_282/lstm_cell_282/kernel/m.Adam/lstm_282/lstm_cell_282/recurrent_kernel/m"Adam/lstm_282/lstm_cell_282/bias/m$Adam/lstm_283/lstm_cell_283/kernel/m.Adam/lstm_283/lstm_cell_283/recurrent_kernel/m"Adam/lstm_283/lstm_cell_283/bias/m$Adam/lstm_284/lstm_cell_284/kernel/m.Adam/lstm_284/lstm_cell_284/recurrent_kernel/m"Adam/lstm_284/lstm_cell_284/bias/mAdam/dense_94/kernel/vAdam/dense_94/bias/v$Adam/lstm_282/lstm_cell_282/kernel/v.Adam/lstm_282/lstm_cell_282/recurrent_kernel/v"Adam/lstm_282/lstm_cell_282/bias/v$Adam/lstm_283/lstm_cell_283/kernel/v.Adam/lstm_283/lstm_cell_283/recurrent_kernel/v"Adam/lstm_283/lstm_cell_283/bias/v$Adam/lstm_284/lstm_cell_284/kernel/v.Adam/lstm_284/lstm_cell_284/recurrent_kernel/v"Adam/lstm_284/lstm_cell_284/bias/v*4
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
#__inference__traced_restore_2340519??+
?
?
while_cond_2336181
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2336181___redundant_placeholder05
1while_while_cond_2336181___redundant_placeholder15
1while_while_cond_2336181___redundant_placeholder25
1while_while_cond_2336181___redundant_placeholder3
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
while_cond_2336877
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2336877___redundant_placeholder05
1while_while_cond_2336877___redundant_placeholder15
1while_while_cond_2336877___redundant_placeholder25
1while_while_cond_2336877___redundant_placeholder3
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
while_cond_2338473
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2338473___redundant_placeholder05
1while_while_cond_2338473___redundant_placeholder15
1while_while_cond_2338473___redundant_placeholder25
1while_while_cond_2338473___redundant_placeholder3
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
J__inference_sequential_94_layer_call_and_return_conditional_losses_2337112
lstm_282_input#
lstm_282_2337085:	?#
lstm_282_2337087:	d?
lstm_282_2337089:	?#
lstm_283_2337092:	d?#
lstm_283_2337094:	2?
lstm_283_2337096:	?"
lstm_284_2337099:2("
lstm_284_2337101:
(
lstm_284_2337103:("
dense_94_2337106:

dense_94_2337108:
identity?? dense_94/StatefulPartitionedCall? lstm_282/StatefulPartitionedCall? lstm_283/StatefulPartitionedCall? lstm_284/StatefulPartitionedCall?
 lstm_282/StatefulPartitionedCallStatefulPartitionedCalllstm_282_inputlstm_282_2337085lstm_282_2337087lstm_282_2337089*
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
E__inference_lstm_282_layer_call_and_return_conditional_losses_2336116?
 lstm_283/StatefulPartitionedCallStatefulPartitionedCall)lstm_282/StatefulPartitionedCall:output:0lstm_283_2337092lstm_283_2337094lstm_283_2337096*
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
E__inference_lstm_283_layer_call_and_return_conditional_losses_2336266?
 lstm_284/StatefulPartitionedCallStatefulPartitionedCall)lstm_283/StatefulPartitionedCall:output:0lstm_284_2337099lstm_284_2337101lstm_284_2337103*
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
E__inference_lstm_284_layer_call_and_return_conditional_losses_2336416?
 dense_94/StatefulPartitionedCallStatefulPartitionedCall)lstm_284/StatefulPartitionedCall:output:0dense_94_2337106dense_94_2337108*
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
E__inference_dense_94_layer_call_and_return_conditional_losses_2336434x
IdentityIdentity)dense_94/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_94/StatefulPartitionedCall!^lstm_282/StatefulPartitionedCall!^lstm_283/StatefulPartitionedCall!^lstm_284/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_94/StatefulPartitionedCall dense_94/StatefulPartitionedCall2D
 lstm_282/StatefulPartitionedCall lstm_282/StatefulPartitionedCall2D
 lstm_283/StatefulPartitionedCall lstm_283/StatefulPartitionedCall2D
 lstm_284/StatefulPartitionedCall lstm_284/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_282_input
?J
?
E__inference_lstm_283_layer_call_and_return_conditional_losses_2336266

inputs?
,lstm_cell_385_matmul_readvariableop_resource:	d?A
.lstm_cell_385_matmul_1_readvariableop_resource:	2?<
-lstm_cell_385_biasadd_readvariableop_resource:	?
identity??$lstm_cell_385/BiasAdd/ReadVariableOp?#lstm_cell_385/MatMul/ReadVariableOp?%lstm_cell_385/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_385/MatMul/ReadVariableOpReadVariableOp,lstm_cell_385_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_385/MatMulMatMulstrided_slice_2:output:0+lstm_cell_385/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_385/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_385_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_385/MatMul_1MatMulzeros:output:0-lstm_cell_385/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_385/addAddV2lstm_cell_385/MatMul:product:0 lstm_cell_385/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_385/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_385_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_385/BiasAddBiasAddlstm_cell_385/add:z:0,lstm_cell_385/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_385/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_385/splitSplit&lstm_cell_385/split/split_dim:output:0lstm_cell_385/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_385/SigmoidSigmoidlstm_cell_385/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_385/Sigmoid_1Sigmoidlstm_cell_385/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_385/mulMullstm_cell_385/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_385/ReluRelulstm_cell_385/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_385/mul_1Mullstm_cell_385/Sigmoid:y:0 lstm_cell_385/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_385/add_1AddV2lstm_cell_385/mul:z:0lstm_cell_385/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_385/Sigmoid_2Sigmoidlstm_cell_385/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_385/Relu_1Relulstm_cell_385/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_385/mul_2Mullstm_cell_385/Sigmoid_2:y:0"lstm_cell_385/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_385_matmul_readvariableop_resource.lstm_cell_385_matmul_1_readvariableop_resource-lstm_cell_385_biasadd_readvariableop_resource*
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
while_body_2336182*
condR
while_cond_2336181*K
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
NoOpNoOp%^lstm_cell_385/BiasAdd/ReadVariableOp$^lstm_cell_385/MatMul/ReadVariableOp&^lstm_cell_385/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_385/BiasAdd/ReadVariableOp$lstm_cell_385/BiasAdd/ReadVariableOp2J
#lstm_cell_385/MatMul/ReadVariableOp#lstm_cell_385/MatMul/ReadVariableOp2N
%lstm_cell_385/MatMul_1/ReadVariableOp%lstm_cell_385/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_384_layer_call_fn_2339969

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
J__inference_lstm_cell_384_layer_call_and_return_conditional_losses_2334984o
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
E__inference_dense_94_layer_call_and_return_conditional_losses_2339952

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
while_cond_2335888
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2335888___redundant_placeholder05
1while_while_cond_2335888___redundant_placeholder15
1while_while_cond_2335888___redundant_placeholder25
1while_while_cond_2335888___redundant_placeholder3
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
E__inference_lstm_282_layer_call_and_return_conditional_losses_2336116

inputs?
,lstm_cell_384_matmul_readvariableop_resource:	?A
.lstm_cell_384_matmul_1_readvariableop_resource:	d?<
-lstm_cell_384_biasadd_readvariableop_resource:	?
identity??$lstm_cell_384/BiasAdd/ReadVariableOp?#lstm_cell_384/MatMul/ReadVariableOp?%lstm_cell_384/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_384/MatMul/ReadVariableOpReadVariableOp,lstm_cell_384_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_384/MatMulMatMulstrided_slice_2:output:0+lstm_cell_384/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_384/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_384_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_384/MatMul_1MatMulzeros:output:0-lstm_cell_384/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_384/addAddV2lstm_cell_384/MatMul:product:0 lstm_cell_384/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_384/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_384_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_384/BiasAddBiasAddlstm_cell_384/add:z:0,lstm_cell_384/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_384/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_384/splitSplit&lstm_cell_384/split/split_dim:output:0lstm_cell_384/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_384/SigmoidSigmoidlstm_cell_384/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_384/Sigmoid_1Sigmoidlstm_cell_384/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_384/mulMullstm_cell_384/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_384/ReluRelulstm_cell_384/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_384/mul_1Mullstm_cell_384/Sigmoid:y:0 lstm_cell_384/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_384/add_1AddV2lstm_cell_384/mul:z:0lstm_cell_384/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_384/Sigmoid_2Sigmoidlstm_cell_384/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_384/Relu_1Relulstm_cell_384/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_384/mul_2Mullstm_cell_384/Sigmoid_2:y:0"lstm_cell_384/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_384_matmul_readvariableop_resource.lstm_cell_384_matmul_1_readvariableop_resource-lstm_cell_384_biasadd_readvariableop_resource*
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
while_body_2336032*
condR
while_cond_2336031*K
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
NoOpNoOp%^lstm_cell_384/BiasAdd/ReadVariableOp$^lstm_cell_384/MatMul/ReadVariableOp&^lstm_cell_384/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_384/BiasAdd/ReadVariableOp$lstm_cell_384/BiasAdd/ReadVariableOp2J
#lstm_cell_384/MatMul/ReadVariableOp#lstm_cell_384/MatMul/ReadVariableOp2N
%lstm_cell_384/MatMul_1/ReadVariableOp%lstm_cell_384/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)sequential_94_lstm_283_while_cond_2334687J
Fsequential_94_lstm_283_while_sequential_94_lstm_283_while_loop_counterP
Lsequential_94_lstm_283_while_sequential_94_lstm_283_while_maximum_iterations,
(sequential_94_lstm_283_while_placeholder.
*sequential_94_lstm_283_while_placeholder_1.
*sequential_94_lstm_283_while_placeholder_2.
*sequential_94_lstm_283_while_placeholder_3L
Hsequential_94_lstm_283_while_less_sequential_94_lstm_283_strided_slice_1c
_sequential_94_lstm_283_while_sequential_94_lstm_283_while_cond_2334687___redundant_placeholder0c
_sequential_94_lstm_283_while_sequential_94_lstm_283_while_cond_2334687___redundant_placeholder1c
_sequential_94_lstm_283_while_sequential_94_lstm_283_while_cond_2334687___redundant_placeholder2c
_sequential_94_lstm_283_while_sequential_94_lstm_283_while_cond_2334687___redundant_placeholder3)
%sequential_94_lstm_283_while_identity
?
!sequential_94/lstm_283/while/LessLess(sequential_94_lstm_283_while_placeholderHsequential_94_lstm_283_while_less_sequential_94_lstm_283_strided_slice_1*
T0*
_output_shapes
: y
%sequential_94/lstm_283/while/IdentityIdentity%sequential_94/lstm_283/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_94_lstm_283_while_identity.sequential_94/lstm_283/while/Identity:output:0*(
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
*__inference_lstm_282_layer_call_fn_2338096
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
E__inference_lstm_282_layer_call_and_return_conditional_losses_2335067|
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
E__inference_lstm_283_layer_call_and_return_conditional_losses_2339174

inputs?
,lstm_cell_385_matmul_readvariableop_resource:	d?A
.lstm_cell_385_matmul_1_readvariableop_resource:	2?<
-lstm_cell_385_biasadd_readvariableop_resource:	?
identity??$lstm_cell_385/BiasAdd/ReadVariableOp?#lstm_cell_385/MatMul/ReadVariableOp?%lstm_cell_385/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_385/MatMul/ReadVariableOpReadVariableOp,lstm_cell_385_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_385/MatMulMatMulstrided_slice_2:output:0+lstm_cell_385/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_385/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_385_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_385/MatMul_1MatMulzeros:output:0-lstm_cell_385/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_385/addAddV2lstm_cell_385/MatMul:product:0 lstm_cell_385/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_385/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_385_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_385/BiasAddBiasAddlstm_cell_385/add:z:0,lstm_cell_385/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_385/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_385/splitSplit&lstm_cell_385/split/split_dim:output:0lstm_cell_385/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_385/SigmoidSigmoidlstm_cell_385/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_385/Sigmoid_1Sigmoidlstm_cell_385/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_385/mulMullstm_cell_385/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_385/ReluRelulstm_cell_385/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_385/mul_1Mullstm_cell_385/Sigmoid:y:0 lstm_cell_385/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_385/add_1AddV2lstm_cell_385/mul:z:0lstm_cell_385/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_385/Sigmoid_2Sigmoidlstm_cell_385/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_385/Relu_1Relulstm_cell_385/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_385/mul_2Mullstm_cell_385/Sigmoid_2:y:0"lstm_cell_385/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_385_matmul_readvariableop_resource.lstm_cell_385_matmul_1_readvariableop_resource-lstm_cell_385_biasadd_readvariableop_resource*
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
while_body_2339090*
condR
while_cond_2339089*K
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
NoOpNoOp%^lstm_cell_385/BiasAdd/ReadVariableOp$^lstm_cell_385/MatMul/ReadVariableOp&^lstm_cell_385/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_385/BiasAdd/ReadVariableOp$lstm_cell_385/BiasAdd/ReadVariableOp2J
#lstm_cell_385/MatMul/ReadVariableOp#lstm_cell_385/MatMul/ReadVariableOp2N
%lstm_cell_385/MatMul_1/ReadVariableOp%lstm_cell_385/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_2336547
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2336547___redundant_placeholder05
1while_while_cond_2336547___redundant_placeholder15
1while_while_cond_2336547___redundant_placeholder25
1while_while_cond_2336547___redundant_placeholder3
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
J__inference_sequential_94_layer_call_and_return_conditional_losses_2337658

inputsH
5lstm_282_lstm_cell_384_matmul_readvariableop_resource:	?J
7lstm_282_lstm_cell_384_matmul_1_readvariableop_resource:	d?E
6lstm_282_lstm_cell_384_biasadd_readvariableop_resource:	?H
5lstm_283_lstm_cell_385_matmul_readvariableop_resource:	d?J
7lstm_283_lstm_cell_385_matmul_1_readvariableop_resource:	2?E
6lstm_283_lstm_cell_385_biasadd_readvariableop_resource:	?G
5lstm_284_lstm_cell_386_matmul_readvariableop_resource:2(I
7lstm_284_lstm_cell_386_matmul_1_readvariableop_resource:
(D
6lstm_284_lstm_cell_386_biasadd_readvariableop_resource:(9
'dense_94_matmul_readvariableop_resource:
6
(dense_94_biasadd_readvariableop_resource:
identity??dense_94/BiasAdd/ReadVariableOp?dense_94/MatMul/ReadVariableOp?-lstm_282/lstm_cell_384/BiasAdd/ReadVariableOp?,lstm_282/lstm_cell_384/MatMul/ReadVariableOp?.lstm_282/lstm_cell_384/MatMul_1/ReadVariableOp?lstm_282/while?-lstm_283/lstm_cell_385/BiasAdd/ReadVariableOp?,lstm_283/lstm_cell_385/MatMul/ReadVariableOp?.lstm_283/lstm_cell_385/MatMul_1/ReadVariableOp?lstm_283/while?-lstm_284/lstm_cell_386/BiasAdd/ReadVariableOp?,lstm_284/lstm_cell_386/MatMul/ReadVariableOp?.lstm_284/lstm_cell_386/MatMul_1/ReadVariableOp?lstm_284/whileD
lstm_282/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_282/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_282/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_282/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_282/strided_sliceStridedSlicelstm_282/Shape:output:0%lstm_282/strided_slice/stack:output:0'lstm_282/strided_slice/stack_1:output:0'lstm_282/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_282/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_282/zeros/packedPacklstm_282/strided_slice:output:0 lstm_282/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_282/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_282/zerosFilllstm_282/zeros/packed:output:0lstm_282/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_282/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_282/zeros_1/packedPacklstm_282/strided_slice:output:0"lstm_282/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_282/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_282/zeros_1Fill lstm_282/zeros_1/packed:output:0lstm_282/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_282/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_282/transpose	Transposeinputs lstm_282/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_282/Shape_1Shapelstm_282/transpose:y:0*
T0*
_output_shapes
:h
lstm_282/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_282/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_282/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_282/strided_slice_1StridedSlicelstm_282/Shape_1:output:0'lstm_282/strided_slice_1/stack:output:0)lstm_282/strided_slice_1/stack_1:output:0)lstm_282/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_282/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_282/TensorArrayV2TensorListReserve-lstm_282/TensorArrayV2/element_shape:output:0!lstm_282/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_282/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_282/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_282/transpose:y:0Glstm_282/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_282/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_282/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_282/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_282/strided_slice_2StridedSlicelstm_282/transpose:y:0'lstm_282/strided_slice_2/stack:output:0)lstm_282/strided_slice_2/stack_1:output:0)lstm_282/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_282/lstm_cell_384/MatMul/ReadVariableOpReadVariableOp5lstm_282_lstm_cell_384_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_282/lstm_cell_384/MatMulMatMul!lstm_282/strided_slice_2:output:04lstm_282/lstm_cell_384/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_282/lstm_cell_384/MatMul_1/ReadVariableOpReadVariableOp7lstm_282_lstm_cell_384_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_282/lstm_cell_384/MatMul_1MatMullstm_282/zeros:output:06lstm_282/lstm_cell_384/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_282/lstm_cell_384/addAddV2'lstm_282/lstm_cell_384/MatMul:product:0)lstm_282/lstm_cell_384/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_282/lstm_cell_384/BiasAdd/ReadVariableOpReadVariableOp6lstm_282_lstm_cell_384_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_282/lstm_cell_384/BiasAddBiasAddlstm_282/lstm_cell_384/add:z:05lstm_282/lstm_cell_384/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_282/lstm_cell_384/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_282/lstm_cell_384/splitSplit/lstm_282/lstm_cell_384/split/split_dim:output:0'lstm_282/lstm_cell_384/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_282/lstm_cell_384/SigmoidSigmoid%lstm_282/lstm_cell_384/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_282/lstm_cell_384/Sigmoid_1Sigmoid%lstm_282/lstm_cell_384/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_282/lstm_cell_384/mulMul$lstm_282/lstm_cell_384/Sigmoid_1:y:0lstm_282/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_282/lstm_cell_384/ReluRelu%lstm_282/lstm_cell_384/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_282/lstm_cell_384/mul_1Mul"lstm_282/lstm_cell_384/Sigmoid:y:0)lstm_282/lstm_cell_384/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_282/lstm_cell_384/add_1AddV2lstm_282/lstm_cell_384/mul:z:0 lstm_282/lstm_cell_384/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_282/lstm_cell_384/Sigmoid_2Sigmoid%lstm_282/lstm_cell_384/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_282/lstm_cell_384/Relu_1Relu lstm_282/lstm_cell_384/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_282/lstm_cell_384/mul_2Mul$lstm_282/lstm_cell_384/Sigmoid_2:y:0+lstm_282/lstm_cell_384/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_282/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_282/TensorArrayV2_1TensorListReserve/lstm_282/TensorArrayV2_1/element_shape:output:0!lstm_282/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_282/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_282/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_282/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_282/whileWhile$lstm_282/while/loop_counter:output:0*lstm_282/while/maximum_iterations:output:0lstm_282/time:output:0!lstm_282/TensorArrayV2_1:handle:0lstm_282/zeros:output:0lstm_282/zeros_1:output:0!lstm_282/strided_slice_1:output:0@lstm_282/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_282_lstm_cell_384_matmul_readvariableop_resource7lstm_282_lstm_cell_384_matmul_1_readvariableop_resource6lstm_282_lstm_cell_384_biasadd_readvariableop_resource*
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
lstm_282_while_body_2337290*'
condR
lstm_282_while_cond_2337289*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_282/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_282/TensorArrayV2Stack/TensorListStackTensorListStacklstm_282/while:output:3Blstm_282/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_282/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_282/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_282/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_282/strided_slice_3StridedSlice4lstm_282/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_282/strided_slice_3/stack:output:0)lstm_282/strided_slice_3/stack_1:output:0)lstm_282/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_282/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_282/transpose_1	Transpose4lstm_282/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_282/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_282/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_283/ShapeShapelstm_282/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_283/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_283/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_283/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_283/strided_sliceStridedSlicelstm_283/Shape:output:0%lstm_283/strided_slice/stack:output:0'lstm_283/strided_slice/stack_1:output:0'lstm_283/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_283/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_283/zeros/packedPacklstm_283/strided_slice:output:0 lstm_283/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_283/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_283/zerosFilllstm_283/zeros/packed:output:0lstm_283/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_283/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_283/zeros_1/packedPacklstm_283/strided_slice:output:0"lstm_283/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_283/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_283/zeros_1Fill lstm_283/zeros_1/packed:output:0lstm_283/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_283/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_283/transpose	Transposelstm_282/transpose_1:y:0 lstm_283/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_283/Shape_1Shapelstm_283/transpose:y:0*
T0*
_output_shapes
:h
lstm_283/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_283/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_283/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_283/strided_slice_1StridedSlicelstm_283/Shape_1:output:0'lstm_283/strided_slice_1/stack:output:0)lstm_283/strided_slice_1/stack_1:output:0)lstm_283/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_283/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_283/TensorArrayV2TensorListReserve-lstm_283/TensorArrayV2/element_shape:output:0!lstm_283/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_283/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_283/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_283/transpose:y:0Glstm_283/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_283/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_283/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_283/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_283/strided_slice_2StridedSlicelstm_283/transpose:y:0'lstm_283/strided_slice_2/stack:output:0)lstm_283/strided_slice_2/stack_1:output:0)lstm_283/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_283/lstm_cell_385/MatMul/ReadVariableOpReadVariableOp5lstm_283_lstm_cell_385_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_283/lstm_cell_385/MatMulMatMul!lstm_283/strided_slice_2:output:04lstm_283/lstm_cell_385/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_283/lstm_cell_385/MatMul_1/ReadVariableOpReadVariableOp7lstm_283_lstm_cell_385_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_283/lstm_cell_385/MatMul_1MatMullstm_283/zeros:output:06lstm_283/lstm_cell_385/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_283/lstm_cell_385/addAddV2'lstm_283/lstm_cell_385/MatMul:product:0)lstm_283/lstm_cell_385/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_283/lstm_cell_385/BiasAdd/ReadVariableOpReadVariableOp6lstm_283_lstm_cell_385_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_283/lstm_cell_385/BiasAddBiasAddlstm_283/lstm_cell_385/add:z:05lstm_283/lstm_cell_385/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_283/lstm_cell_385/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_283/lstm_cell_385/splitSplit/lstm_283/lstm_cell_385/split/split_dim:output:0'lstm_283/lstm_cell_385/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_283/lstm_cell_385/SigmoidSigmoid%lstm_283/lstm_cell_385/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_283/lstm_cell_385/Sigmoid_1Sigmoid%lstm_283/lstm_cell_385/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_283/lstm_cell_385/mulMul$lstm_283/lstm_cell_385/Sigmoid_1:y:0lstm_283/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_283/lstm_cell_385/ReluRelu%lstm_283/lstm_cell_385/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_283/lstm_cell_385/mul_1Mul"lstm_283/lstm_cell_385/Sigmoid:y:0)lstm_283/lstm_cell_385/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_283/lstm_cell_385/add_1AddV2lstm_283/lstm_cell_385/mul:z:0 lstm_283/lstm_cell_385/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_283/lstm_cell_385/Sigmoid_2Sigmoid%lstm_283/lstm_cell_385/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_283/lstm_cell_385/Relu_1Relu lstm_283/lstm_cell_385/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_283/lstm_cell_385/mul_2Mul$lstm_283/lstm_cell_385/Sigmoid_2:y:0+lstm_283/lstm_cell_385/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_283/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_283/TensorArrayV2_1TensorListReserve/lstm_283/TensorArrayV2_1/element_shape:output:0!lstm_283/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_283/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_283/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_283/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_283/whileWhile$lstm_283/while/loop_counter:output:0*lstm_283/while/maximum_iterations:output:0lstm_283/time:output:0!lstm_283/TensorArrayV2_1:handle:0lstm_283/zeros:output:0lstm_283/zeros_1:output:0!lstm_283/strided_slice_1:output:0@lstm_283/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_283_lstm_cell_385_matmul_readvariableop_resource7lstm_283_lstm_cell_385_matmul_1_readvariableop_resource6lstm_283_lstm_cell_385_biasadd_readvariableop_resource*
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
lstm_283_while_body_2337429*'
condR
lstm_283_while_cond_2337428*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_283/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_283/TensorArrayV2Stack/TensorListStackTensorListStacklstm_283/while:output:3Blstm_283/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_283/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_283/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_283/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_283/strided_slice_3StridedSlice4lstm_283/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_283/strided_slice_3/stack:output:0)lstm_283/strided_slice_3/stack_1:output:0)lstm_283/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_283/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_283/transpose_1	Transpose4lstm_283/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_283/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_283/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_284/ShapeShapelstm_283/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_284/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_284/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_284/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_284/strided_sliceStridedSlicelstm_284/Shape:output:0%lstm_284/strided_slice/stack:output:0'lstm_284/strided_slice/stack_1:output:0'lstm_284/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_284/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_284/zeros/packedPacklstm_284/strided_slice:output:0 lstm_284/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_284/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_284/zerosFilllstm_284/zeros/packed:output:0lstm_284/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_284/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_284/zeros_1/packedPacklstm_284/strided_slice:output:0"lstm_284/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_284/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_284/zeros_1Fill lstm_284/zeros_1/packed:output:0lstm_284/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_284/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_284/transpose	Transposelstm_283/transpose_1:y:0 lstm_284/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_284/Shape_1Shapelstm_284/transpose:y:0*
T0*
_output_shapes
:h
lstm_284/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_284/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_284/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_284/strided_slice_1StridedSlicelstm_284/Shape_1:output:0'lstm_284/strided_slice_1/stack:output:0)lstm_284/strided_slice_1/stack_1:output:0)lstm_284/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_284/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_284/TensorArrayV2TensorListReserve-lstm_284/TensorArrayV2/element_shape:output:0!lstm_284/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_284/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_284/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_284/transpose:y:0Glstm_284/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_284/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_284/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_284/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_284/strided_slice_2StridedSlicelstm_284/transpose:y:0'lstm_284/strided_slice_2/stack:output:0)lstm_284/strided_slice_2/stack_1:output:0)lstm_284/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_284/lstm_cell_386/MatMul/ReadVariableOpReadVariableOp5lstm_284_lstm_cell_386_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_284/lstm_cell_386/MatMulMatMul!lstm_284/strided_slice_2:output:04lstm_284/lstm_cell_386/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_284/lstm_cell_386/MatMul_1/ReadVariableOpReadVariableOp7lstm_284_lstm_cell_386_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_284/lstm_cell_386/MatMul_1MatMullstm_284/zeros:output:06lstm_284/lstm_cell_386/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_284/lstm_cell_386/addAddV2'lstm_284/lstm_cell_386/MatMul:product:0)lstm_284/lstm_cell_386/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_284/lstm_cell_386/BiasAdd/ReadVariableOpReadVariableOp6lstm_284_lstm_cell_386_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_284/lstm_cell_386/BiasAddBiasAddlstm_284/lstm_cell_386/add:z:05lstm_284/lstm_cell_386/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_284/lstm_cell_386/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_284/lstm_cell_386/splitSplit/lstm_284/lstm_cell_386/split/split_dim:output:0'lstm_284/lstm_cell_386/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_284/lstm_cell_386/SigmoidSigmoid%lstm_284/lstm_cell_386/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_284/lstm_cell_386/Sigmoid_1Sigmoid%lstm_284/lstm_cell_386/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_284/lstm_cell_386/mulMul$lstm_284/lstm_cell_386/Sigmoid_1:y:0lstm_284/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_284/lstm_cell_386/ReluRelu%lstm_284/lstm_cell_386/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_284/lstm_cell_386/mul_1Mul"lstm_284/lstm_cell_386/Sigmoid:y:0)lstm_284/lstm_cell_386/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_284/lstm_cell_386/add_1AddV2lstm_284/lstm_cell_386/mul:z:0 lstm_284/lstm_cell_386/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_284/lstm_cell_386/Sigmoid_2Sigmoid%lstm_284/lstm_cell_386/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_284/lstm_cell_386/Relu_1Relu lstm_284/lstm_cell_386/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_284/lstm_cell_386/mul_2Mul$lstm_284/lstm_cell_386/Sigmoid_2:y:0+lstm_284/lstm_cell_386/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_284/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_284/TensorArrayV2_1TensorListReserve/lstm_284/TensorArrayV2_1/element_shape:output:0!lstm_284/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_284/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_284/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_284/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_284/whileWhile$lstm_284/while/loop_counter:output:0*lstm_284/while/maximum_iterations:output:0lstm_284/time:output:0!lstm_284/TensorArrayV2_1:handle:0lstm_284/zeros:output:0lstm_284/zeros_1:output:0!lstm_284/strided_slice_1:output:0@lstm_284/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_284_lstm_cell_386_matmul_readvariableop_resource7lstm_284_lstm_cell_386_matmul_1_readvariableop_resource6lstm_284_lstm_cell_386_biasadd_readvariableop_resource*
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
lstm_284_while_body_2337568*'
condR
lstm_284_while_cond_2337567*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_284/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_284/TensorArrayV2Stack/TensorListStackTensorListStacklstm_284/while:output:3Blstm_284/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_284/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_284/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_284/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_284/strided_slice_3StridedSlice4lstm_284/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_284/strided_slice_3/stack:output:0)lstm_284/strided_slice_3/stack_1:output:0)lstm_284/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_284/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_284/transpose_1	Transpose4lstm_284/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_284/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_284/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_94/MatMul/ReadVariableOpReadVariableOp'dense_94_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_94/MatMulMatMul!lstm_284/strided_slice_3:output:0&dense_94/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_94/BiasAdd/ReadVariableOpReadVariableOp(dense_94_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_94/BiasAddBiasAdddense_94/MatMul:product:0'dense_94/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_94/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_94/BiasAdd/ReadVariableOp^dense_94/MatMul/ReadVariableOp.^lstm_282/lstm_cell_384/BiasAdd/ReadVariableOp-^lstm_282/lstm_cell_384/MatMul/ReadVariableOp/^lstm_282/lstm_cell_384/MatMul_1/ReadVariableOp^lstm_282/while.^lstm_283/lstm_cell_385/BiasAdd/ReadVariableOp-^lstm_283/lstm_cell_385/MatMul/ReadVariableOp/^lstm_283/lstm_cell_385/MatMul_1/ReadVariableOp^lstm_283/while.^lstm_284/lstm_cell_386/BiasAdd/ReadVariableOp-^lstm_284/lstm_cell_386/MatMul/ReadVariableOp/^lstm_284/lstm_cell_386/MatMul_1/ReadVariableOp^lstm_284/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_94/BiasAdd/ReadVariableOpdense_94/BiasAdd/ReadVariableOp2@
dense_94/MatMul/ReadVariableOpdense_94/MatMul/ReadVariableOp2^
-lstm_282/lstm_cell_384/BiasAdd/ReadVariableOp-lstm_282/lstm_cell_384/BiasAdd/ReadVariableOp2\
,lstm_282/lstm_cell_384/MatMul/ReadVariableOp,lstm_282/lstm_cell_384/MatMul/ReadVariableOp2`
.lstm_282/lstm_cell_384/MatMul_1/ReadVariableOp.lstm_282/lstm_cell_384/MatMul_1/ReadVariableOp2 
lstm_282/whilelstm_282/while2^
-lstm_283/lstm_cell_385/BiasAdd/ReadVariableOp-lstm_283/lstm_cell_385/BiasAdd/ReadVariableOp2\
,lstm_283/lstm_cell_385/MatMul/ReadVariableOp,lstm_283/lstm_cell_385/MatMul/ReadVariableOp2`
.lstm_283/lstm_cell_385/MatMul_1/ReadVariableOp.lstm_283/lstm_cell_385/MatMul_1/ReadVariableOp2 
lstm_283/whilelstm_283/while2^
-lstm_284/lstm_cell_386/BiasAdd/ReadVariableOp-lstm_284/lstm_cell_386/BiasAdd/ReadVariableOp2\
,lstm_284/lstm_cell_386/MatMul/ReadVariableOp,lstm_284/lstm_cell_386/MatMul/ReadVariableOp2`
.lstm_284/lstm_cell_386/MatMul_1/ReadVariableOp.lstm_284/lstm_cell_386/MatMul_1/ReadVariableOp2 
lstm_284/whilelstm_284/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_2339420
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_386_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_386_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_386_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_386_matmul_readvariableop_resource:2(F
4while_lstm_cell_386_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_386_biasadd_readvariableop_resource:(??*while/lstm_cell_386/BiasAdd/ReadVariableOp?)while/lstm_cell_386/MatMul/ReadVariableOp?+while/lstm_cell_386/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_386/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_386_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_386/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_386/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_386/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_386_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_386/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_386/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_386/addAddV2$while/lstm_cell_386/MatMul:product:0&while/lstm_cell_386/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_386/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_386_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_386/BiasAddBiasAddwhile/lstm_cell_386/add:z:02while/lstm_cell_386/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_386/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_386/splitSplit,while/lstm_cell_386/split/split_dim:output:0$while/lstm_cell_386/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_386/SigmoidSigmoid"while/lstm_cell_386/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_386/Sigmoid_1Sigmoid"while/lstm_cell_386/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_386/mulMul!while/lstm_cell_386/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_386/ReluRelu"while/lstm_cell_386/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_386/mul_1Mulwhile/lstm_cell_386/Sigmoid:y:0&while/lstm_cell_386/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_386/add_1AddV2while/lstm_cell_386/mul:z:0while/lstm_cell_386/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_386/Sigmoid_2Sigmoid"while/lstm_cell_386/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_386/Relu_1Reluwhile/lstm_cell_386/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_386/mul_2Mul!while/lstm_cell_386/Sigmoid_2:y:0(while/lstm_cell_386/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_386/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_386/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_386/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_386/BiasAdd/ReadVariableOp*^while/lstm_cell_386/MatMul/ReadVariableOp,^while/lstm_cell_386/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_386_biasadd_readvariableop_resource5while_lstm_cell_386_biasadd_readvariableop_resource_0"n
4while_lstm_cell_386_matmul_1_readvariableop_resource6while_lstm_cell_386_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_386_matmul_readvariableop_resource4while_lstm_cell_386_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_386/BiasAdd/ReadVariableOp*while/lstm_cell_386/BiasAdd/ReadVariableOp2V
)while/lstm_cell_386/MatMul/ReadVariableOp)while/lstm_cell_386/MatMul/ReadVariableOp2Z
+while/lstm_cell_386/MatMul_1/ReadVariableOp+while/lstm_cell_386/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2339705
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2339705___redundant_placeholder05
1while_while_cond_2339705___redundant_placeholder15
1while_while_cond_2339705___redundant_placeholder25
1while_while_cond_2339705___redundant_placeholder3
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
%__inference_signature_wrapper_2337177
lstm_282_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_282_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_2334917o
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
_user_specified_namelstm_282_input
?
?
*__inference_lstm_284_layer_call_fn_2339350

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
E__inference_lstm_284_layer_call_and_return_conditional_losses_2336416o
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
while_cond_2336712
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2336712___redundant_placeholder05
1while_while_cond_2336712___redundant_placeholder15
1while_while_cond_2336712___redundant_placeholder25
1while_while_cond_2336712___redundant_placeholder3
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
E__inference_lstm_284_layer_call_and_return_conditional_losses_2339790

inputs>
,lstm_cell_386_matmul_readvariableop_resource:2(@
.lstm_cell_386_matmul_1_readvariableop_resource:
(;
-lstm_cell_386_biasadd_readvariableop_resource:(
identity??$lstm_cell_386/BiasAdd/ReadVariableOp?#lstm_cell_386/MatMul/ReadVariableOp?%lstm_cell_386/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_386/MatMul/ReadVariableOpReadVariableOp,lstm_cell_386_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_386/MatMulMatMulstrided_slice_2:output:0+lstm_cell_386/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_386/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_386_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_386/MatMul_1MatMulzeros:output:0-lstm_cell_386/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_386/addAddV2lstm_cell_386/MatMul:product:0 lstm_cell_386/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_386/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_386_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_386/BiasAddBiasAddlstm_cell_386/add:z:0,lstm_cell_386/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_386/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_386/splitSplit&lstm_cell_386/split/split_dim:output:0lstm_cell_386/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_386/SigmoidSigmoidlstm_cell_386/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_386/Sigmoid_1Sigmoidlstm_cell_386/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_386/mulMullstm_cell_386/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_386/ReluRelulstm_cell_386/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_386/mul_1Mullstm_cell_386/Sigmoid:y:0 lstm_cell_386/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_386/add_1AddV2lstm_cell_386/mul:z:0lstm_cell_386/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_386/Sigmoid_2Sigmoidlstm_cell_386/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_386/Relu_1Relulstm_cell_386/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_386/mul_2Mullstm_cell_386/Sigmoid_2:y:0"lstm_cell_386/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_386_matmul_readvariableop_resource.lstm_cell_386_matmul_1_readvariableop_resource-lstm_cell_386_biasadd_readvariableop_resource*
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
while_body_2339706*
condR
while_cond_2339705*K
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
NoOpNoOp%^lstm_cell_386/BiasAdd/ReadVariableOp$^lstm_cell_386/MatMul/ReadVariableOp&^lstm_cell_386/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_386/BiasAdd/ReadVariableOp$lstm_cell_386/BiasAdd/ReadVariableOp2J
#lstm_cell_386/MatMul/ReadVariableOp#lstm_cell_386/MatMul/ReadVariableOp2N
%lstm_cell_386/MatMul_1/ReadVariableOp%lstm_cell_386/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_2338330
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2338330___redundant_placeholder05
1while_while_cond_2338330___redundant_placeholder15
1while_while_cond_2338330___redundant_placeholder25
1while_while_cond_2338330___redundant_placeholder3
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
while_body_2338188
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_384_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_384_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_384_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_384_matmul_readvariableop_resource:	?G
4while_lstm_cell_384_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_384_biasadd_readvariableop_resource:	???*while/lstm_cell_384/BiasAdd/ReadVariableOp?)while/lstm_cell_384/MatMul/ReadVariableOp?+while/lstm_cell_384/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_384/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_384_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_384/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_384/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_384/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_384_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_384/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_384/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_384/addAddV2$while/lstm_cell_384/MatMul:product:0&while/lstm_cell_384/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_384/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_384_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_384/BiasAddBiasAddwhile/lstm_cell_384/add:z:02while/lstm_cell_384/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_384/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_384/splitSplit,while/lstm_cell_384/split/split_dim:output:0$while/lstm_cell_384/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_384/SigmoidSigmoid"while/lstm_cell_384/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_384/Sigmoid_1Sigmoid"while/lstm_cell_384/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_384/mulMul!while/lstm_cell_384/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_384/ReluRelu"while/lstm_cell_384/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_384/mul_1Mulwhile/lstm_cell_384/Sigmoid:y:0&while/lstm_cell_384/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_384/add_1AddV2while/lstm_cell_384/mul:z:0while/lstm_cell_384/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_384/Sigmoid_2Sigmoid"while/lstm_cell_384/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_384/Relu_1Reluwhile/lstm_cell_384/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_384/mul_2Mul!while/lstm_cell_384/Sigmoid_2:y:0(while/lstm_cell_384/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_384/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_384/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_384/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_384/BiasAdd/ReadVariableOp*^while/lstm_cell_384/MatMul/ReadVariableOp,^while/lstm_cell_384/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_384_biasadd_readvariableop_resource5while_lstm_cell_384_biasadd_readvariableop_resource_0"n
4while_lstm_cell_384_matmul_1_readvariableop_resource6while_lstm_cell_384_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_384_matmul_readvariableop_resource4while_lstm_cell_384_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_384/BiasAdd/ReadVariableOp*while/lstm_cell_384/BiasAdd/ReadVariableOp2V
)while/lstm_cell_384/MatMul/ReadVariableOp)while/lstm_cell_384/MatMul/ReadVariableOp2Z
+while/lstm_cell_384/MatMul_1/ReadVariableOp+while/lstm_cell_384/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2335697
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2335697___redundant_placeholder05
1while_while_cond_2335697___redundant_placeholder15
1while_while_cond_2335697___redundant_placeholder25
1while_while_cond_2335697___redundant_placeholder3
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
while_body_2338474
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_384_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_384_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_384_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_384_matmul_readvariableop_resource:	?G
4while_lstm_cell_384_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_384_biasadd_readvariableop_resource:	???*while/lstm_cell_384/BiasAdd/ReadVariableOp?)while/lstm_cell_384/MatMul/ReadVariableOp?+while/lstm_cell_384/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_384/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_384_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_384/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_384/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_384/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_384_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_384/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_384/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_384/addAddV2$while/lstm_cell_384/MatMul:product:0&while/lstm_cell_384/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_384/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_384_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_384/BiasAddBiasAddwhile/lstm_cell_384/add:z:02while/lstm_cell_384/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_384/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_384/splitSplit,while/lstm_cell_384/split/split_dim:output:0$while/lstm_cell_384/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_384/SigmoidSigmoid"while/lstm_cell_384/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_384/Sigmoid_1Sigmoid"while/lstm_cell_384/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_384/mulMul!while/lstm_cell_384/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_384/ReluRelu"while/lstm_cell_384/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_384/mul_1Mulwhile/lstm_cell_384/Sigmoid:y:0&while/lstm_cell_384/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_384/add_1AddV2while/lstm_cell_384/mul:z:0while/lstm_cell_384/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_384/Sigmoid_2Sigmoid"while/lstm_cell_384/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_384/Relu_1Reluwhile/lstm_cell_384/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_384/mul_2Mul!while/lstm_cell_384/Sigmoid_2:y:0(while/lstm_cell_384/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_384/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_384/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_384/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_384/BiasAdd/ReadVariableOp*^while/lstm_cell_384/MatMul/ReadVariableOp,^while/lstm_cell_384/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_384_biasadd_readvariableop_resource5while_lstm_cell_384_biasadd_readvariableop_resource_0"n
4while_lstm_cell_384_matmul_1_readvariableop_resource6while_lstm_cell_384_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_384_matmul_readvariableop_resource4while_lstm_cell_384_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_384/BiasAdd/ReadVariableOp*while/lstm_cell_384/BiasAdd/ReadVariableOp2V
)while/lstm_cell_384/MatMul/ReadVariableOp)while/lstm_cell_384/MatMul/ReadVariableOp2Z
+while/lstm_cell_384/MatMul_1/ReadVariableOp+while/lstm_cell_384/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_386_layer_call_fn_2340182

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
J__inference_lstm_cell_386_layer_call_and_return_conditional_losses_2335830o
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
?#
?
while_body_2335698
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_386_2335722_0:2(/
while_lstm_cell_386_2335724_0:
(+
while_lstm_cell_386_2335726_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_386_2335722:2(-
while_lstm_cell_386_2335724:
()
while_lstm_cell_386_2335726:(??+while/lstm_cell_386/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_386/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_386_2335722_0while_lstm_cell_386_2335724_0while_lstm_cell_386_2335726_0*
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
J__inference_lstm_cell_386_layer_call_and_return_conditional_losses_2335684?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_386/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_386/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_386/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_386/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_386_2335722while_lstm_cell_386_2335722_0"<
while_lstm_cell_386_2335724while_lstm_cell_386_2335724_0"<
while_lstm_cell_386_2335726while_lstm_cell_386_2335726_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_386/StatefulPartitionedCall+while/lstm_cell_386/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_2334997
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2334997___redundant_placeholder05
1while_while_cond_2334997___redundant_placeholder15
1while_while_cond_2334997___redundant_placeholder25
1while_while_cond_2334997___redundant_placeholder3
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
/__inference_sequential_94_layer_call_fn_2336466
lstm_282_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_282_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_94_layer_call_and_return_conditional_losses_2336441o
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
_user_specified_namelstm_282_input
?8
?
E__inference_lstm_283_layer_call_and_return_conditional_losses_2335608

inputs(
lstm_cell_385_2335526:	d?(
lstm_cell_385_2335528:	2?$
lstm_cell_385_2335530:	?
identity??%lstm_cell_385/StatefulPartitionedCall?while;
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
%lstm_cell_385/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_385_2335526lstm_cell_385_2335528lstm_cell_385_2335530*
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
J__inference_lstm_cell_385_layer_call_and_return_conditional_losses_2335480n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_385_2335526lstm_cell_385_2335528lstm_cell_385_2335530*
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
while_body_2335539*
condR
while_cond_2335538*K
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
NoOpNoOp&^lstm_cell_385/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_385/StatefulPartitionedCall%lstm_cell_385/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?	
?
E__inference_dense_94_layer_call_and_return_conditional_losses_2336434

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
?W
?
 __inference__traced_save_2340389
file_prefix.
*savev2_dense_94_kernel_read_readvariableop,
(savev2_dense_94_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_282_lstm_cell_282_kernel_read_readvariableopF
Bsavev2_lstm_282_lstm_cell_282_recurrent_kernel_read_readvariableop:
6savev2_lstm_282_lstm_cell_282_bias_read_readvariableop<
8savev2_lstm_283_lstm_cell_283_kernel_read_readvariableopF
Bsavev2_lstm_283_lstm_cell_283_recurrent_kernel_read_readvariableop:
6savev2_lstm_283_lstm_cell_283_bias_read_readvariableop<
8savev2_lstm_284_lstm_cell_284_kernel_read_readvariableopF
Bsavev2_lstm_284_lstm_cell_284_recurrent_kernel_read_readvariableop:
6savev2_lstm_284_lstm_cell_284_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_94_kernel_m_read_readvariableop3
/savev2_adam_dense_94_bias_m_read_readvariableopC
?savev2_adam_lstm_282_lstm_cell_282_kernel_m_read_readvariableopM
Isavev2_adam_lstm_282_lstm_cell_282_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_282_lstm_cell_282_bias_m_read_readvariableopC
?savev2_adam_lstm_283_lstm_cell_283_kernel_m_read_readvariableopM
Isavev2_adam_lstm_283_lstm_cell_283_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_283_lstm_cell_283_bias_m_read_readvariableopC
?savev2_adam_lstm_284_lstm_cell_284_kernel_m_read_readvariableopM
Isavev2_adam_lstm_284_lstm_cell_284_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_284_lstm_cell_284_bias_m_read_readvariableop5
1savev2_adam_dense_94_kernel_v_read_readvariableop3
/savev2_adam_dense_94_bias_v_read_readvariableopC
?savev2_adam_lstm_282_lstm_cell_282_kernel_v_read_readvariableopM
Isavev2_adam_lstm_282_lstm_cell_282_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_282_lstm_cell_282_bias_v_read_readvariableopC
?savev2_adam_lstm_283_lstm_cell_283_kernel_v_read_readvariableopM
Isavev2_adam_lstm_283_lstm_cell_283_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_283_lstm_cell_283_bias_v_read_readvariableopC
?savev2_adam_lstm_284_lstm_cell_284_kernel_v_read_readvariableopM
Isavev2_adam_lstm_284_lstm_cell_284_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_284_lstm_cell_284_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_94_kernel_read_readvariableop(savev2_dense_94_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_282_lstm_cell_282_kernel_read_readvariableopBsavev2_lstm_282_lstm_cell_282_recurrent_kernel_read_readvariableop6savev2_lstm_282_lstm_cell_282_bias_read_readvariableop8savev2_lstm_283_lstm_cell_283_kernel_read_readvariableopBsavev2_lstm_283_lstm_cell_283_recurrent_kernel_read_readvariableop6savev2_lstm_283_lstm_cell_283_bias_read_readvariableop8savev2_lstm_284_lstm_cell_284_kernel_read_readvariableopBsavev2_lstm_284_lstm_cell_284_recurrent_kernel_read_readvariableop6savev2_lstm_284_lstm_cell_284_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_94_kernel_m_read_readvariableop/savev2_adam_dense_94_bias_m_read_readvariableop?savev2_adam_lstm_282_lstm_cell_282_kernel_m_read_readvariableopIsavev2_adam_lstm_282_lstm_cell_282_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_282_lstm_cell_282_bias_m_read_readvariableop?savev2_adam_lstm_283_lstm_cell_283_kernel_m_read_readvariableopIsavev2_adam_lstm_283_lstm_cell_283_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_283_lstm_cell_283_bias_m_read_readvariableop?savev2_adam_lstm_284_lstm_cell_284_kernel_m_read_readvariableopIsavev2_adam_lstm_284_lstm_cell_284_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_284_lstm_cell_284_bias_m_read_readvariableop1savev2_adam_dense_94_kernel_v_read_readvariableop/savev2_adam_dense_94_bias_v_read_readvariableop?savev2_adam_lstm_282_lstm_cell_282_kernel_v_read_readvariableopIsavev2_adam_lstm_282_lstm_cell_282_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_282_lstm_cell_282_bias_v_read_readvariableop?savev2_adam_lstm_283_lstm_cell_283_kernel_v_read_readvariableopIsavev2_adam_lstm_283_lstm_cell_283_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_283_lstm_cell_283_bias_v_read_readvariableop?savev2_adam_lstm_284_lstm_cell_284_kernel_v_read_readvariableopIsavev2_adam_lstm_284_lstm_cell_284_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_284_lstm_cell_284_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?

?
/__inference_sequential_94_layer_call_fn_2337204

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
J__inference_sequential_94_layer_call_and_return_conditional_losses_2336441o
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
E__inference_lstm_282_layer_call_and_return_conditional_losses_2338272
inputs_0?
,lstm_cell_384_matmul_readvariableop_resource:	?A
.lstm_cell_384_matmul_1_readvariableop_resource:	d?<
-lstm_cell_384_biasadd_readvariableop_resource:	?
identity??$lstm_cell_384/BiasAdd/ReadVariableOp?#lstm_cell_384/MatMul/ReadVariableOp?%lstm_cell_384/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_384/MatMul/ReadVariableOpReadVariableOp,lstm_cell_384_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_384/MatMulMatMulstrided_slice_2:output:0+lstm_cell_384/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_384/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_384_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_384/MatMul_1MatMulzeros:output:0-lstm_cell_384/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_384/addAddV2lstm_cell_384/MatMul:product:0 lstm_cell_384/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_384/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_384_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_384/BiasAddBiasAddlstm_cell_384/add:z:0,lstm_cell_384/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_384/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_384/splitSplit&lstm_cell_384/split/split_dim:output:0lstm_cell_384/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_384/SigmoidSigmoidlstm_cell_384/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_384/Sigmoid_1Sigmoidlstm_cell_384/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_384/mulMullstm_cell_384/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_384/ReluRelulstm_cell_384/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_384/mul_1Mullstm_cell_384/Sigmoid:y:0 lstm_cell_384/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_384/add_1AddV2lstm_cell_384/mul:z:0lstm_cell_384/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_384/Sigmoid_2Sigmoidlstm_cell_384/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_384/Relu_1Relulstm_cell_384/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_384/mul_2Mullstm_cell_384/Sigmoid_2:y:0"lstm_cell_384/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_384_matmul_readvariableop_resource.lstm_cell_384_matmul_1_readvariableop_resource-lstm_cell_384_biasadd_readvariableop_resource*
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
while_body_2338188*
condR
while_cond_2338187*K
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
NoOpNoOp%^lstm_cell_384/BiasAdd/ReadVariableOp$^lstm_cell_384/MatMul/ReadVariableOp&^lstm_cell_384/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_384/BiasAdd/ReadVariableOp$lstm_cell_384/BiasAdd/ReadVariableOp2J
#lstm_cell_384/MatMul/ReadVariableOp#lstm_cell_384/MatMul/ReadVariableOp2N
%lstm_cell_384/MatMul_1/ReadVariableOp%lstm_cell_384/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_283_layer_call_and_return_conditional_losses_2339317

inputs?
,lstm_cell_385_matmul_readvariableop_resource:	d?A
.lstm_cell_385_matmul_1_readvariableop_resource:	2?<
-lstm_cell_385_biasadd_readvariableop_resource:	?
identity??$lstm_cell_385/BiasAdd/ReadVariableOp?#lstm_cell_385/MatMul/ReadVariableOp?%lstm_cell_385/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_385/MatMul/ReadVariableOpReadVariableOp,lstm_cell_385_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_385/MatMulMatMulstrided_slice_2:output:0+lstm_cell_385/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_385/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_385_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_385/MatMul_1MatMulzeros:output:0-lstm_cell_385/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_385/addAddV2lstm_cell_385/MatMul:product:0 lstm_cell_385/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_385/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_385_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_385/BiasAddBiasAddlstm_cell_385/add:z:0,lstm_cell_385/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_385/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_385/splitSplit&lstm_cell_385/split/split_dim:output:0lstm_cell_385/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_385/SigmoidSigmoidlstm_cell_385/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_385/Sigmoid_1Sigmoidlstm_cell_385/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_385/mulMullstm_cell_385/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_385/ReluRelulstm_cell_385/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_385/mul_1Mullstm_cell_385/Sigmoid:y:0 lstm_cell_385/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_385/add_1AddV2lstm_cell_385/mul:z:0lstm_cell_385/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_385/Sigmoid_2Sigmoidlstm_cell_385/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_385/Relu_1Relulstm_cell_385/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_385/mul_2Mullstm_cell_385/Sigmoid_2:y:0"lstm_cell_385/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_385_matmul_readvariableop_resource.lstm_cell_385_matmul_1_readvariableop_resource-lstm_cell_385_biasadd_readvariableop_resource*
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
while_body_2339233*
condR
while_cond_2339232*K
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
NoOpNoOp%^lstm_cell_385/BiasAdd/ReadVariableOp$^lstm_cell_385/MatMul/ReadVariableOp&^lstm_cell_385/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_385/BiasAdd/ReadVariableOp$lstm_cell_385/BiasAdd/ReadVariableOp2J
#lstm_cell_385/MatMul/ReadVariableOp#lstm_cell_385/MatMul/ReadVariableOp2N
%lstm_cell_385/MatMul_1/ReadVariableOp%lstm_cell_385/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_2339849
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_386_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_386_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_386_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_386_matmul_readvariableop_resource:2(F
4while_lstm_cell_386_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_386_biasadd_readvariableop_resource:(??*while/lstm_cell_386/BiasAdd/ReadVariableOp?)while/lstm_cell_386/MatMul/ReadVariableOp?+while/lstm_cell_386/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_386/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_386_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_386/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_386/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_386/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_386_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_386/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_386/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_386/addAddV2$while/lstm_cell_386/MatMul:product:0&while/lstm_cell_386/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_386/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_386_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_386/BiasAddBiasAddwhile/lstm_cell_386/add:z:02while/lstm_cell_386/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_386/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_386/splitSplit,while/lstm_cell_386/split/split_dim:output:0$while/lstm_cell_386/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_386/SigmoidSigmoid"while/lstm_cell_386/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_386/Sigmoid_1Sigmoid"while/lstm_cell_386/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_386/mulMul!while/lstm_cell_386/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_386/ReluRelu"while/lstm_cell_386/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_386/mul_1Mulwhile/lstm_cell_386/Sigmoid:y:0&while/lstm_cell_386/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_386/add_1AddV2while/lstm_cell_386/mul:z:0while/lstm_cell_386/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_386/Sigmoid_2Sigmoid"while/lstm_cell_386/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_386/Relu_1Reluwhile/lstm_cell_386/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_386/mul_2Mul!while/lstm_cell_386/Sigmoid_2:y:0(while/lstm_cell_386/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_386/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_386/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_386/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_386/BiasAdd/ReadVariableOp*^while/lstm_cell_386/MatMul/ReadVariableOp,^while/lstm_cell_386/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_386_biasadd_readvariableop_resource5while_lstm_cell_386_biasadd_readvariableop_resource_0"n
4while_lstm_cell_386_matmul_1_readvariableop_resource6while_lstm_cell_386_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_386_matmul_readvariableop_resource4while_lstm_cell_386_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_386/BiasAdd/ReadVariableOp*while/lstm_cell_386/BiasAdd/ReadVariableOp2V
)while/lstm_cell_386/MatMul/ReadVariableOp)while/lstm_cell_386/MatMul/ReadVariableOp2Z
+while/lstm_cell_386/MatMul_1/ReadVariableOp+while/lstm_cell_386/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_284_while_body_2337995.
*lstm_284_while_lstm_284_while_loop_counter4
0lstm_284_while_lstm_284_while_maximum_iterations
lstm_284_while_placeholder 
lstm_284_while_placeholder_1 
lstm_284_while_placeholder_2 
lstm_284_while_placeholder_3-
)lstm_284_while_lstm_284_strided_slice_1_0i
elstm_284_while_tensorarrayv2read_tensorlistgetitem_lstm_284_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_284_while_lstm_cell_386_matmul_readvariableop_resource_0:2(Q
?lstm_284_while_lstm_cell_386_matmul_1_readvariableop_resource_0:
(L
>lstm_284_while_lstm_cell_386_biasadd_readvariableop_resource_0:(
lstm_284_while_identity
lstm_284_while_identity_1
lstm_284_while_identity_2
lstm_284_while_identity_3
lstm_284_while_identity_4
lstm_284_while_identity_5+
'lstm_284_while_lstm_284_strided_slice_1g
clstm_284_while_tensorarrayv2read_tensorlistgetitem_lstm_284_tensorarrayunstack_tensorlistfromtensorM
;lstm_284_while_lstm_cell_386_matmul_readvariableop_resource:2(O
=lstm_284_while_lstm_cell_386_matmul_1_readvariableop_resource:
(J
<lstm_284_while_lstm_cell_386_biasadd_readvariableop_resource:(??3lstm_284/while/lstm_cell_386/BiasAdd/ReadVariableOp?2lstm_284/while/lstm_cell_386/MatMul/ReadVariableOp?4lstm_284/while/lstm_cell_386/MatMul_1/ReadVariableOp?
@lstm_284/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_284/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_284_while_tensorarrayv2read_tensorlistgetitem_lstm_284_tensorarrayunstack_tensorlistfromtensor_0lstm_284_while_placeholderIlstm_284/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_284/while/lstm_cell_386/MatMul/ReadVariableOpReadVariableOp=lstm_284_while_lstm_cell_386_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_284/while/lstm_cell_386/MatMulMatMul9lstm_284/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_284/while/lstm_cell_386/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_284/while/lstm_cell_386/MatMul_1/ReadVariableOpReadVariableOp?lstm_284_while_lstm_cell_386_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_284/while/lstm_cell_386/MatMul_1MatMullstm_284_while_placeholder_2<lstm_284/while/lstm_cell_386/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_284/while/lstm_cell_386/addAddV2-lstm_284/while/lstm_cell_386/MatMul:product:0/lstm_284/while/lstm_cell_386/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_284/while/lstm_cell_386/BiasAdd/ReadVariableOpReadVariableOp>lstm_284_while_lstm_cell_386_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_284/while/lstm_cell_386/BiasAddBiasAdd$lstm_284/while/lstm_cell_386/add:z:0;lstm_284/while/lstm_cell_386/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_284/while/lstm_cell_386/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_284/while/lstm_cell_386/splitSplit5lstm_284/while/lstm_cell_386/split/split_dim:output:0-lstm_284/while/lstm_cell_386/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_284/while/lstm_cell_386/SigmoidSigmoid+lstm_284/while/lstm_cell_386/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_284/while/lstm_cell_386/Sigmoid_1Sigmoid+lstm_284/while/lstm_cell_386/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_284/while/lstm_cell_386/mulMul*lstm_284/while/lstm_cell_386/Sigmoid_1:y:0lstm_284_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_284/while/lstm_cell_386/ReluRelu+lstm_284/while/lstm_cell_386/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_284/while/lstm_cell_386/mul_1Mul(lstm_284/while/lstm_cell_386/Sigmoid:y:0/lstm_284/while/lstm_cell_386/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_284/while/lstm_cell_386/add_1AddV2$lstm_284/while/lstm_cell_386/mul:z:0&lstm_284/while/lstm_cell_386/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_284/while/lstm_cell_386/Sigmoid_2Sigmoid+lstm_284/while/lstm_cell_386/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_284/while/lstm_cell_386/Relu_1Relu&lstm_284/while/lstm_cell_386/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_284/while/lstm_cell_386/mul_2Mul*lstm_284/while/lstm_cell_386/Sigmoid_2:y:01lstm_284/while/lstm_cell_386/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_284/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_284_while_placeholder_1lstm_284_while_placeholder&lstm_284/while/lstm_cell_386/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_284/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_284/while/addAddV2lstm_284_while_placeholderlstm_284/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_284/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_284/while/add_1AddV2*lstm_284_while_lstm_284_while_loop_counterlstm_284/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_284/while/IdentityIdentitylstm_284/while/add_1:z:0^lstm_284/while/NoOp*
T0*
_output_shapes
: ?
lstm_284/while/Identity_1Identity0lstm_284_while_lstm_284_while_maximum_iterations^lstm_284/while/NoOp*
T0*
_output_shapes
: t
lstm_284/while/Identity_2Identitylstm_284/while/add:z:0^lstm_284/while/NoOp*
T0*
_output_shapes
: ?
lstm_284/while/Identity_3IdentityClstm_284/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_284/while/NoOp*
T0*
_output_shapes
: ?
lstm_284/while/Identity_4Identity&lstm_284/while/lstm_cell_386/mul_2:z:0^lstm_284/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_284/while/Identity_5Identity&lstm_284/while/lstm_cell_386/add_1:z:0^lstm_284/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_284/while/NoOpNoOp4^lstm_284/while/lstm_cell_386/BiasAdd/ReadVariableOp3^lstm_284/while/lstm_cell_386/MatMul/ReadVariableOp5^lstm_284/while/lstm_cell_386/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_284_while_identity lstm_284/while/Identity:output:0"?
lstm_284_while_identity_1"lstm_284/while/Identity_1:output:0"?
lstm_284_while_identity_2"lstm_284/while/Identity_2:output:0"?
lstm_284_while_identity_3"lstm_284/while/Identity_3:output:0"?
lstm_284_while_identity_4"lstm_284/while/Identity_4:output:0"?
lstm_284_while_identity_5"lstm_284/while/Identity_5:output:0"T
'lstm_284_while_lstm_284_strided_slice_1)lstm_284_while_lstm_284_strided_slice_1_0"~
<lstm_284_while_lstm_cell_386_biasadd_readvariableop_resource>lstm_284_while_lstm_cell_386_biasadd_readvariableop_resource_0"?
=lstm_284_while_lstm_cell_386_matmul_1_readvariableop_resource?lstm_284_while_lstm_cell_386_matmul_1_readvariableop_resource_0"|
;lstm_284_while_lstm_cell_386_matmul_readvariableop_resource=lstm_284_while_lstm_cell_386_matmul_readvariableop_resource_0"?
clstm_284_while_tensorarrayv2read_tensorlistgetitem_lstm_284_tensorarrayunstack_tensorlistfromtensorelstm_284_while_tensorarrayv2read_tensorlistgetitem_lstm_284_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_284/while/lstm_cell_386/BiasAdd/ReadVariableOp3lstm_284/while/lstm_cell_386/BiasAdd/ReadVariableOp2h
2lstm_284/while/lstm_cell_386/MatMul/ReadVariableOp2lstm_284/while/lstm_cell_386/MatMul/ReadVariableOp2l
4lstm_284/while/lstm_cell_386/MatMul_1/ReadVariableOp4lstm_284/while/lstm_cell_386/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_283_layer_call_fn_2338723
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
E__inference_lstm_283_layer_call_and_return_conditional_losses_2335608|
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
J__inference_lstm_cell_385_layer_call_and_return_conditional_losses_2335334

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
while_cond_2335347
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2335347___redundant_placeholder05
1while_while_cond_2335347___redundant_placeholder15
1while_while_cond_2335347___redundant_placeholder25
1while_while_cond_2335347___redundant_placeholder3
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
E__inference_lstm_283_layer_call_and_return_conditional_losses_2336797

inputs?
,lstm_cell_385_matmul_readvariableop_resource:	d?A
.lstm_cell_385_matmul_1_readvariableop_resource:	2?<
-lstm_cell_385_biasadd_readvariableop_resource:	?
identity??$lstm_cell_385/BiasAdd/ReadVariableOp?#lstm_cell_385/MatMul/ReadVariableOp?%lstm_cell_385/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_385/MatMul/ReadVariableOpReadVariableOp,lstm_cell_385_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_385/MatMulMatMulstrided_slice_2:output:0+lstm_cell_385/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_385/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_385_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_385/MatMul_1MatMulzeros:output:0-lstm_cell_385/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_385/addAddV2lstm_cell_385/MatMul:product:0 lstm_cell_385/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_385/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_385_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_385/BiasAddBiasAddlstm_cell_385/add:z:0,lstm_cell_385/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_385/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_385/splitSplit&lstm_cell_385/split/split_dim:output:0lstm_cell_385/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_385/SigmoidSigmoidlstm_cell_385/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_385/Sigmoid_1Sigmoidlstm_cell_385/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_385/mulMullstm_cell_385/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_385/ReluRelulstm_cell_385/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_385/mul_1Mullstm_cell_385/Sigmoid:y:0 lstm_cell_385/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_385/add_1AddV2lstm_cell_385/mul:z:0lstm_cell_385/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_385/Sigmoid_2Sigmoidlstm_cell_385/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_385/Relu_1Relulstm_cell_385/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_385/mul_2Mullstm_cell_385/Sigmoid_2:y:0"lstm_cell_385/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_385_matmul_readvariableop_resource.lstm_cell_385_matmul_1_readvariableop_resource-lstm_cell_385_biasadd_readvariableop_resource*
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
while_body_2336713*
condR
while_cond_2336712*K
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
NoOpNoOp%^lstm_cell_385/BiasAdd/ReadVariableOp$^lstm_cell_385/MatMul/ReadVariableOp&^lstm_cell_385/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_385/BiasAdd/ReadVariableOp$lstm_cell_385/BiasAdd/ReadVariableOp2J
#lstm_cell_385/MatMul/ReadVariableOp#lstm_cell_385/MatMul/ReadVariableOp2N
%lstm_cell_385/MatMul_1/ReadVariableOp%lstm_cell_385/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_384_layer_call_and_return_conditional_losses_2340018

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
?
)sequential_94_lstm_282_while_cond_2334548J
Fsequential_94_lstm_282_while_sequential_94_lstm_282_while_loop_counterP
Lsequential_94_lstm_282_while_sequential_94_lstm_282_while_maximum_iterations,
(sequential_94_lstm_282_while_placeholder.
*sequential_94_lstm_282_while_placeholder_1.
*sequential_94_lstm_282_while_placeholder_2.
*sequential_94_lstm_282_while_placeholder_3L
Hsequential_94_lstm_282_while_less_sequential_94_lstm_282_strided_slice_1c
_sequential_94_lstm_282_while_sequential_94_lstm_282_while_cond_2334548___redundant_placeholder0c
_sequential_94_lstm_282_while_sequential_94_lstm_282_while_cond_2334548___redundant_placeholder1c
_sequential_94_lstm_282_while_sequential_94_lstm_282_while_cond_2334548___redundant_placeholder2c
_sequential_94_lstm_282_while_sequential_94_lstm_282_while_cond_2334548___redundant_placeholder3)
%sequential_94_lstm_282_while_identity
?
!sequential_94/lstm_282/while/LessLess(sequential_94_lstm_282_while_placeholderHsequential_94_lstm_282_while_less_sequential_94_lstm_282_strided_slice_1*
T0*
_output_shapes
: y
%sequential_94/lstm_282/while/IdentityIdentity%sequential_94/lstm_282/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_94_lstm_282_while_identity.sequential_94/lstm_282/while/Identity:output:0*(
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
E__inference_lstm_284_layer_call_and_return_conditional_losses_2335958

inputs'
lstm_cell_386_2335876:2('
lstm_cell_386_2335878:
(#
lstm_cell_386_2335880:(
identity??%lstm_cell_386/StatefulPartitionedCall?while;
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
%lstm_cell_386/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_386_2335876lstm_cell_386_2335878lstm_cell_386_2335880*
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
J__inference_lstm_cell_386_layer_call_and_return_conditional_losses_2335830n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_386_2335876lstm_cell_386_2335878lstm_cell_386_2335880*
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
while_body_2335889*
condR
while_cond_2335888*K
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
NoOpNoOp&^lstm_cell_386/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_386/StatefulPartitionedCall%lstm_cell_386/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?S
?
)sequential_94_lstm_282_while_body_2334549J
Fsequential_94_lstm_282_while_sequential_94_lstm_282_while_loop_counterP
Lsequential_94_lstm_282_while_sequential_94_lstm_282_while_maximum_iterations,
(sequential_94_lstm_282_while_placeholder.
*sequential_94_lstm_282_while_placeholder_1.
*sequential_94_lstm_282_while_placeholder_2.
*sequential_94_lstm_282_while_placeholder_3I
Esequential_94_lstm_282_while_sequential_94_lstm_282_strided_slice_1_0?
?sequential_94_lstm_282_while_tensorarrayv2read_tensorlistgetitem_sequential_94_lstm_282_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_94_lstm_282_while_lstm_cell_384_matmul_readvariableop_resource_0:	?`
Msequential_94_lstm_282_while_lstm_cell_384_matmul_1_readvariableop_resource_0:	d?[
Lsequential_94_lstm_282_while_lstm_cell_384_biasadd_readvariableop_resource_0:	?)
%sequential_94_lstm_282_while_identity+
'sequential_94_lstm_282_while_identity_1+
'sequential_94_lstm_282_while_identity_2+
'sequential_94_lstm_282_while_identity_3+
'sequential_94_lstm_282_while_identity_4+
'sequential_94_lstm_282_while_identity_5G
Csequential_94_lstm_282_while_sequential_94_lstm_282_strided_slice_1?
sequential_94_lstm_282_while_tensorarrayv2read_tensorlistgetitem_sequential_94_lstm_282_tensorarrayunstack_tensorlistfromtensor\
Isequential_94_lstm_282_while_lstm_cell_384_matmul_readvariableop_resource:	?^
Ksequential_94_lstm_282_while_lstm_cell_384_matmul_1_readvariableop_resource:	d?Y
Jsequential_94_lstm_282_while_lstm_cell_384_biasadd_readvariableop_resource:	???Asequential_94/lstm_282/while/lstm_cell_384/BiasAdd/ReadVariableOp?@sequential_94/lstm_282/while/lstm_cell_384/MatMul/ReadVariableOp?Bsequential_94/lstm_282/while/lstm_cell_384/MatMul_1/ReadVariableOp?
Nsequential_94/lstm_282/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
@sequential_94/lstm_282/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_94_lstm_282_while_tensorarrayv2read_tensorlistgetitem_sequential_94_lstm_282_tensorarrayunstack_tensorlistfromtensor_0(sequential_94_lstm_282_while_placeholderWsequential_94/lstm_282/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
@sequential_94/lstm_282/while/lstm_cell_384/MatMul/ReadVariableOpReadVariableOpKsequential_94_lstm_282_while_lstm_cell_384_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
1sequential_94/lstm_282/while/lstm_cell_384/MatMulMatMulGsequential_94/lstm_282/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_94/lstm_282/while/lstm_cell_384/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_94/lstm_282/while/lstm_cell_384/MatMul_1/ReadVariableOpReadVariableOpMsequential_94_lstm_282_while_lstm_cell_384_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
3sequential_94/lstm_282/while/lstm_cell_384/MatMul_1MatMul*sequential_94_lstm_282_while_placeholder_2Jsequential_94/lstm_282/while/lstm_cell_384/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_94/lstm_282/while/lstm_cell_384/addAddV2;sequential_94/lstm_282/while/lstm_cell_384/MatMul:product:0=sequential_94/lstm_282/while/lstm_cell_384/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_94/lstm_282/while/lstm_cell_384/BiasAdd/ReadVariableOpReadVariableOpLsequential_94_lstm_282_while_lstm_cell_384_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_94/lstm_282/while/lstm_cell_384/BiasAddBiasAdd2sequential_94/lstm_282/while/lstm_cell_384/add:z:0Isequential_94/lstm_282/while/lstm_cell_384/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_94/lstm_282/while/lstm_cell_384/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_94/lstm_282/while/lstm_cell_384/splitSplitCsequential_94/lstm_282/while/lstm_cell_384/split/split_dim:output:0;sequential_94/lstm_282/while/lstm_cell_384/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
2sequential_94/lstm_282/while/lstm_cell_384/SigmoidSigmoid9sequential_94/lstm_282/while/lstm_cell_384/split:output:0*
T0*'
_output_shapes
:?????????d?
4sequential_94/lstm_282/while/lstm_cell_384/Sigmoid_1Sigmoid9sequential_94/lstm_282/while/lstm_cell_384/split:output:1*
T0*'
_output_shapes
:?????????d?
.sequential_94/lstm_282/while/lstm_cell_384/mulMul8sequential_94/lstm_282/while/lstm_cell_384/Sigmoid_1:y:0*sequential_94_lstm_282_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
/sequential_94/lstm_282/while/lstm_cell_384/ReluRelu9sequential_94/lstm_282/while/lstm_cell_384/split:output:2*
T0*'
_output_shapes
:?????????d?
0sequential_94/lstm_282/while/lstm_cell_384/mul_1Mul6sequential_94/lstm_282/while/lstm_cell_384/Sigmoid:y:0=sequential_94/lstm_282/while/lstm_cell_384/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
0sequential_94/lstm_282/while/lstm_cell_384/add_1AddV22sequential_94/lstm_282/while/lstm_cell_384/mul:z:04sequential_94/lstm_282/while/lstm_cell_384/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
4sequential_94/lstm_282/while/lstm_cell_384/Sigmoid_2Sigmoid9sequential_94/lstm_282/while/lstm_cell_384/split:output:3*
T0*'
_output_shapes
:?????????d?
1sequential_94/lstm_282/while/lstm_cell_384/Relu_1Relu4sequential_94/lstm_282/while/lstm_cell_384/add_1:z:0*
T0*'
_output_shapes
:?????????d?
0sequential_94/lstm_282/while/lstm_cell_384/mul_2Mul8sequential_94/lstm_282/while/lstm_cell_384/Sigmoid_2:y:0?sequential_94/lstm_282/while/lstm_cell_384/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Asequential_94/lstm_282/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_94_lstm_282_while_placeholder_1(sequential_94_lstm_282_while_placeholder4sequential_94/lstm_282/while/lstm_cell_384/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_94/lstm_282/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_94/lstm_282/while/addAddV2(sequential_94_lstm_282_while_placeholder+sequential_94/lstm_282/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_94/lstm_282/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_94/lstm_282/while/add_1AddV2Fsequential_94_lstm_282_while_sequential_94_lstm_282_while_loop_counter-sequential_94/lstm_282/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_94/lstm_282/while/IdentityIdentity&sequential_94/lstm_282/while/add_1:z:0"^sequential_94/lstm_282/while/NoOp*
T0*
_output_shapes
: ?
'sequential_94/lstm_282/while/Identity_1IdentityLsequential_94_lstm_282_while_sequential_94_lstm_282_while_maximum_iterations"^sequential_94/lstm_282/while/NoOp*
T0*
_output_shapes
: ?
'sequential_94/lstm_282/while/Identity_2Identity$sequential_94/lstm_282/while/add:z:0"^sequential_94/lstm_282/while/NoOp*
T0*
_output_shapes
: ?
'sequential_94/lstm_282/while/Identity_3IdentityQsequential_94/lstm_282/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_94/lstm_282/while/NoOp*
T0*
_output_shapes
: ?
'sequential_94/lstm_282/while/Identity_4Identity4sequential_94/lstm_282/while/lstm_cell_384/mul_2:z:0"^sequential_94/lstm_282/while/NoOp*
T0*'
_output_shapes
:?????????d?
'sequential_94/lstm_282/while/Identity_5Identity4sequential_94/lstm_282/while/lstm_cell_384/add_1:z:0"^sequential_94/lstm_282/while/NoOp*
T0*'
_output_shapes
:?????????d?
!sequential_94/lstm_282/while/NoOpNoOpB^sequential_94/lstm_282/while/lstm_cell_384/BiasAdd/ReadVariableOpA^sequential_94/lstm_282/while/lstm_cell_384/MatMul/ReadVariableOpC^sequential_94/lstm_282/while/lstm_cell_384/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_94_lstm_282_while_identity.sequential_94/lstm_282/while/Identity:output:0"[
'sequential_94_lstm_282_while_identity_10sequential_94/lstm_282/while/Identity_1:output:0"[
'sequential_94_lstm_282_while_identity_20sequential_94/lstm_282/while/Identity_2:output:0"[
'sequential_94_lstm_282_while_identity_30sequential_94/lstm_282/while/Identity_3:output:0"[
'sequential_94_lstm_282_while_identity_40sequential_94/lstm_282/while/Identity_4:output:0"[
'sequential_94_lstm_282_while_identity_50sequential_94/lstm_282/while/Identity_5:output:0"?
Jsequential_94_lstm_282_while_lstm_cell_384_biasadd_readvariableop_resourceLsequential_94_lstm_282_while_lstm_cell_384_biasadd_readvariableop_resource_0"?
Ksequential_94_lstm_282_while_lstm_cell_384_matmul_1_readvariableop_resourceMsequential_94_lstm_282_while_lstm_cell_384_matmul_1_readvariableop_resource_0"?
Isequential_94_lstm_282_while_lstm_cell_384_matmul_readvariableop_resourceKsequential_94_lstm_282_while_lstm_cell_384_matmul_readvariableop_resource_0"?
Csequential_94_lstm_282_while_sequential_94_lstm_282_strided_slice_1Esequential_94_lstm_282_while_sequential_94_lstm_282_strided_slice_1_0"?
sequential_94_lstm_282_while_tensorarrayv2read_tensorlistgetitem_sequential_94_lstm_282_tensorarrayunstack_tensorlistfromtensor?sequential_94_lstm_282_while_tensorarrayv2read_tensorlistgetitem_sequential_94_lstm_282_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Asequential_94/lstm_282/while/lstm_cell_384/BiasAdd/ReadVariableOpAsequential_94/lstm_282/while/lstm_cell_384/BiasAdd/ReadVariableOp2?
@sequential_94/lstm_282/while/lstm_cell_384/MatMul/ReadVariableOp@sequential_94/lstm_282/while/lstm_cell_384/MatMul/ReadVariableOp2?
Bsequential_94/lstm_282/while/lstm_cell_384/MatMul_1/ReadVariableOpBsequential_94/lstm_282/while/lstm_cell_384/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_282_layer_call_and_return_conditional_losses_2335258

inputs(
lstm_cell_384_2335176:	?(
lstm_cell_384_2335178:	d?$
lstm_cell_384_2335180:	?
identity??%lstm_cell_384/StatefulPartitionedCall?while;
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
%lstm_cell_384/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_384_2335176lstm_cell_384_2335178lstm_cell_384_2335180*
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
J__inference_lstm_cell_384_layer_call_and_return_conditional_losses_2335130n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_384_2335176lstm_cell_384_2335178lstm_cell_384_2335180*
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
while_body_2335189*
condR
while_cond_2335188*K
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
NoOpNoOp&^lstm_cell_384/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_384/StatefulPartitionedCall%lstm_cell_384/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?C
?

lstm_283_while_body_2337856.
*lstm_283_while_lstm_283_while_loop_counter4
0lstm_283_while_lstm_283_while_maximum_iterations
lstm_283_while_placeholder 
lstm_283_while_placeholder_1 
lstm_283_while_placeholder_2 
lstm_283_while_placeholder_3-
)lstm_283_while_lstm_283_strided_slice_1_0i
elstm_283_while_tensorarrayv2read_tensorlistgetitem_lstm_283_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_283_while_lstm_cell_385_matmul_readvariableop_resource_0:	d?R
?lstm_283_while_lstm_cell_385_matmul_1_readvariableop_resource_0:	2?M
>lstm_283_while_lstm_cell_385_biasadd_readvariableop_resource_0:	?
lstm_283_while_identity
lstm_283_while_identity_1
lstm_283_while_identity_2
lstm_283_while_identity_3
lstm_283_while_identity_4
lstm_283_while_identity_5+
'lstm_283_while_lstm_283_strided_slice_1g
clstm_283_while_tensorarrayv2read_tensorlistgetitem_lstm_283_tensorarrayunstack_tensorlistfromtensorN
;lstm_283_while_lstm_cell_385_matmul_readvariableop_resource:	d?P
=lstm_283_while_lstm_cell_385_matmul_1_readvariableop_resource:	2?K
<lstm_283_while_lstm_cell_385_biasadd_readvariableop_resource:	???3lstm_283/while/lstm_cell_385/BiasAdd/ReadVariableOp?2lstm_283/while/lstm_cell_385/MatMul/ReadVariableOp?4lstm_283/while/lstm_cell_385/MatMul_1/ReadVariableOp?
@lstm_283/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_283/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_283_while_tensorarrayv2read_tensorlistgetitem_lstm_283_tensorarrayunstack_tensorlistfromtensor_0lstm_283_while_placeholderIlstm_283/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_283/while/lstm_cell_385/MatMul/ReadVariableOpReadVariableOp=lstm_283_while_lstm_cell_385_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_283/while/lstm_cell_385/MatMulMatMul9lstm_283/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_283/while/lstm_cell_385/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_283/while/lstm_cell_385/MatMul_1/ReadVariableOpReadVariableOp?lstm_283_while_lstm_cell_385_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_283/while/lstm_cell_385/MatMul_1MatMullstm_283_while_placeholder_2<lstm_283/while/lstm_cell_385/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_283/while/lstm_cell_385/addAddV2-lstm_283/while/lstm_cell_385/MatMul:product:0/lstm_283/while/lstm_cell_385/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_283/while/lstm_cell_385/BiasAdd/ReadVariableOpReadVariableOp>lstm_283_while_lstm_cell_385_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_283/while/lstm_cell_385/BiasAddBiasAdd$lstm_283/while/lstm_cell_385/add:z:0;lstm_283/while/lstm_cell_385/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_283/while/lstm_cell_385/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_283/while/lstm_cell_385/splitSplit5lstm_283/while/lstm_cell_385/split/split_dim:output:0-lstm_283/while/lstm_cell_385/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_283/while/lstm_cell_385/SigmoidSigmoid+lstm_283/while/lstm_cell_385/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_283/while/lstm_cell_385/Sigmoid_1Sigmoid+lstm_283/while/lstm_cell_385/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_283/while/lstm_cell_385/mulMul*lstm_283/while/lstm_cell_385/Sigmoid_1:y:0lstm_283_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_283/while/lstm_cell_385/ReluRelu+lstm_283/while/lstm_cell_385/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_283/while/lstm_cell_385/mul_1Mul(lstm_283/while/lstm_cell_385/Sigmoid:y:0/lstm_283/while/lstm_cell_385/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_283/while/lstm_cell_385/add_1AddV2$lstm_283/while/lstm_cell_385/mul:z:0&lstm_283/while/lstm_cell_385/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_283/while/lstm_cell_385/Sigmoid_2Sigmoid+lstm_283/while/lstm_cell_385/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_283/while/lstm_cell_385/Relu_1Relu&lstm_283/while/lstm_cell_385/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_283/while/lstm_cell_385/mul_2Mul*lstm_283/while/lstm_cell_385/Sigmoid_2:y:01lstm_283/while/lstm_cell_385/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_283/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_283_while_placeholder_1lstm_283_while_placeholder&lstm_283/while/lstm_cell_385/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_283/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_283/while/addAddV2lstm_283_while_placeholderlstm_283/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_283/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_283/while/add_1AddV2*lstm_283_while_lstm_283_while_loop_counterlstm_283/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_283/while/IdentityIdentitylstm_283/while/add_1:z:0^lstm_283/while/NoOp*
T0*
_output_shapes
: ?
lstm_283/while/Identity_1Identity0lstm_283_while_lstm_283_while_maximum_iterations^lstm_283/while/NoOp*
T0*
_output_shapes
: t
lstm_283/while/Identity_2Identitylstm_283/while/add:z:0^lstm_283/while/NoOp*
T0*
_output_shapes
: ?
lstm_283/while/Identity_3IdentityClstm_283/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_283/while/NoOp*
T0*
_output_shapes
: ?
lstm_283/while/Identity_4Identity&lstm_283/while/lstm_cell_385/mul_2:z:0^lstm_283/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_283/while/Identity_5Identity&lstm_283/while/lstm_cell_385/add_1:z:0^lstm_283/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_283/while/NoOpNoOp4^lstm_283/while/lstm_cell_385/BiasAdd/ReadVariableOp3^lstm_283/while/lstm_cell_385/MatMul/ReadVariableOp5^lstm_283/while/lstm_cell_385/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_283_while_identity lstm_283/while/Identity:output:0"?
lstm_283_while_identity_1"lstm_283/while/Identity_1:output:0"?
lstm_283_while_identity_2"lstm_283/while/Identity_2:output:0"?
lstm_283_while_identity_3"lstm_283/while/Identity_3:output:0"?
lstm_283_while_identity_4"lstm_283/while/Identity_4:output:0"?
lstm_283_while_identity_5"lstm_283/while/Identity_5:output:0"T
'lstm_283_while_lstm_283_strided_slice_1)lstm_283_while_lstm_283_strided_slice_1_0"~
<lstm_283_while_lstm_cell_385_biasadd_readvariableop_resource>lstm_283_while_lstm_cell_385_biasadd_readvariableop_resource_0"?
=lstm_283_while_lstm_cell_385_matmul_1_readvariableop_resource?lstm_283_while_lstm_cell_385_matmul_1_readvariableop_resource_0"|
;lstm_283_while_lstm_cell_385_matmul_readvariableop_resource=lstm_283_while_lstm_cell_385_matmul_readvariableop_resource_0"?
clstm_283_while_tensorarrayv2read_tensorlistgetitem_lstm_283_tensorarrayunstack_tensorlistfromtensorelstm_283_while_tensorarrayv2read_tensorlistgetitem_lstm_283_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_283/while/lstm_cell_385/BiasAdd/ReadVariableOp3lstm_283/while/lstm_cell_385/BiasAdd/ReadVariableOp2h
2lstm_283/while/lstm_cell_385/MatMul/ReadVariableOp2lstm_283/while/lstm_cell_385/MatMul/ReadVariableOp2l
4lstm_283/while/lstm_cell_385/MatMul_1/ReadVariableOp4lstm_283/while/lstm_cell_385/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_282_layer_call_and_return_conditional_losses_2338558

inputs?
,lstm_cell_384_matmul_readvariableop_resource:	?A
.lstm_cell_384_matmul_1_readvariableop_resource:	d?<
-lstm_cell_384_biasadd_readvariableop_resource:	?
identity??$lstm_cell_384/BiasAdd/ReadVariableOp?#lstm_cell_384/MatMul/ReadVariableOp?%lstm_cell_384/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_384/MatMul/ReadVariableOpReadVariableOp,lstm_cell_384_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_384/MatMulMatMulstrided_slice_2:output:0+lstm_cell_384/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_384/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_384_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_384/MatMul_1MatMulzeros:output:0-lstm_cell_384/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_384/addAddV2lstm_cell_384/MatMul:product:0 lstm_cell_384/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_384/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_384_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_384/BiasAddBiasAddlstm_cell_384/add:z:0,lstm_cell_384/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_384/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_384/splitSplit&lstm_cell_384/split/split_dim:output:0lstm_cell_384/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_384/SigmoidSigmoidlstm_cell_384/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_384/Sigmoid_1Sigmoidlstm_cell_384/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_384/mulMullstm_cell_384/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_384/ReluRelulstm_cell_384/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_384/mul_1Mullstm_cell_384/Sigmoid:y:0 lstm_cell_384/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_384/add_1AddV2lstm_cell_384/mul:z:0lstm_cell_384/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_384/Sigmoid_2Sigmoidlstm_cell_384/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_384/Relu_1Relulstm_cell_384/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_384/mul_2Mullstm_cell_384/Sigmoid_2:y:0"lstm_cell_384/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_384_matmul_readvariableop_resource.lstm_cell_384_matmul_1_readvariableop_resource-lstm_cell_384_biasadd_readvariableop_resource*
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
while_body_2338474*
condR
while_cond_2338473*K
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
NoOpNoOp%^lstm_cell_384/BiasAdd/ReadVariableOp$^lstm_cell_384/MatMul/ReadVariableOp&^lstm_cell_384/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_384/BiasAdd/ReadVariableOp$lstm_cell_384/BiasAdd/ReadVariableOp2J
#lstm_cell_384/MatMul/ReadVariableOp#lstm_cell_384/MatMul/ReadVariableOp2N
%lstm_cell_384/MatMul_1/ReadVariableOp%lstm_cell_384/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_2338947
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_385_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_385_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_385_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_385_matmul_readvariableop_resource:	d?G
4while_lstm_cell_385_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_385_biasadd_readvariableop_resource:	???*while/lstm_cell_385/BiasAdd/ReadVariableOp?)while/lstm_cell_385/MatMul/ReadVariableOp?+while/lstm_cell_385/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_385/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_385_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_385/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_385/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_385/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_385_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_385/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_385/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_385/addAddV2$while/lstm_cell_385/MatMul:product:0&while/lstm_cell_385/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_385/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_385_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_385/BiasAddBiasAddwhile/lstm_cell_385/add:z:02while/lstm_cell_385/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_385/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_385/splitSplit,while/lstm_cell_385/split/split_dim:output:0$while/lstm_cell_385/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_385/SigmoidSigmoid"while/lstm_cell_385/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_385/Sigmoid_1Sigmoid"while/lstm_cell_385/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_385/mulMul!while/lstm_cell_385/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_385/ReluRelu"while/lstm_cell_385/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_385/mul_1Mulwhile/lstm_cell_385/Sigmoid:y:0&while/lstm_cell_385/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_385/add_1AddV2while/lstm_cell_385/mul:z:0while/lstm_cell_385/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_385/Sigmoid_2Sigmoid"while/lstm_cell_385/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_385/Relu_1Reluwhile/lstm_cell_385/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_385/mul_2Mul!while/lstm_cell_385/Sigmoid_2:y:0(while/lstm_cell_385/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_385/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_385/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_385/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_385/BiasAdd/ReadVariableOp*^while/lstm_cell_385/MatMul/ReadVariableOp,^while/lstm_cell_385/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_385_biasadd_readvariableop_resource5while_lstm_cell_385_biasadd_readvariableop_resource_0"n
4while_lstm_cell_385_matmul_1_readvariableop_resource6while_lstm_cell_385_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_385_matmul_readvariableop_resource4while_lstm_cell_385_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_385/BiasAdd/ReadVariableOp*while/lstm_cell_385/BiasAdd/ReadVariableOp2V
)while/lstm_cell_385/MatMul/ReadVariableOp)while/lstm_cell_385/MatMul/ReadVariableOp2Z
+while/lstm_cell_385/MatMul_1/ReadVariableOp+while/lstm_cell_385/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_284_layer_call_and_return_conditional_losses_2336416

inputs>
,lstm_cell_386_matmul_readvariableop_resource:2(@
.lstm_cell_386_matmul_1_readvariableop_resource:
(;
-lstm_cell_386_biasadd_readvariableop_resource:(
identity??$lstm_cell_386/BiasAdd/ReadVariableOp?#lstm_cell_386/MatMul/ReadVariableOp?%lstm_cell_386/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_386/MatMul/ReadVariableOpReadVariableOp,lstm_cell_386_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_386/MatMulMatMulstrided_slice_2:output:0+lstm_cell_386/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_386/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_386_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_386/MatMul_1MatMulzeros:output:0-lstm_cell_386/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_386/addAddV2lstm_cell_386/MatMul:product:0 lstm_cell_386/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_386/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_386_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_386/BiasAddBiasAddlstm_cell_386/add:z:0,lstm_cell_386/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_386/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_386/splitSplit&lstm_cell_386/split/split_dim:output:0lstm_cell_386/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_386/SigmoidSigmoidlstm_cell_386/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_386/Sigmoid_1Sigmoidlstm_cell_386/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_386/mulMullstm_cell_386/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_386/ReluRelulstm_cell_386/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_386/mul_1Mullstm_cell_386/Sigmoid:y:0 lstm_cell_386/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_386/add_1AddV2lstm_cell_386/mul:z:0lstm_cell_386/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_386/Sigmoid_2Sigmoidlstm_cell_386/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_386/Relu_1Relulstm_cell_386/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_386/mul_2Mullstm_cell_386/Sigmoid_2:y:0"lstm_cell_386/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_386_matmul_readvariableop_resource.lstm_cell_386_matmul_1_readvariableop_resource-lstm_cell_386_biasadd_readvariableop_resource*
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
while_body_2336332*
condR
while_cond_2336331*K
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
NoOpNoOp%^lstm_cell_386/BiasAdd/ReadVariableOp$^lstm_cell_386/MatMul/ReadVariableOp&^lstm_cell_386/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_386/BiasAdd/ReadVariableOp$lstm_cell_386/BiasAdd/ReadVariableOp2J
#lstm_cell_386/MatMul/ReadVariableOp#lstm_cell_386/MatMul/ReadVariableOp2N
%lstm_cell_386/MatMul_1/ReadVariableOp%lstm_cell_386/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_385_layer_call_and_return_conditional_losses_2340116

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
*__inference_dense_94_layer_call_fn_2339942

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
E__inference_dense_94_layer_call_and_return_conditional_losses_2336434o
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
?8
?
while_body_2339563
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_386_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_386_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_386_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_386_matmul_readvariableop_resource:2(F
4while_lstm_cell_386_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_386_biasadd_readvariableop_resource:(??*while/lstm_cell_386/BiasAdd/ReadVariableOp?)while/lstm_cell_386/MatMul/ReadVariableOp?+while/lstm_cell_386/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_386/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_386_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_386/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_386/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_386/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_386_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_386/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_386/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_386/addAddV2$while/lstm_cell_386/MatMul:product:0&while/lstm_cell_386/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_386/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_386_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_386/BiasAddBiasAddwhile/lstm_cell_386/add:z:02while/lstm_cell_386/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_386/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_386/splitSplit,while/lstm_cell_386/split/split_dim:output:0$while/lstm_cell_386/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_386/SigmoidSigmoid"while/lstm_cell_386/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_386/Sigmoid_1Sigmoid"while/lstm_cell_386/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_386/mulMul!while/lstm_cell_386/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_386/ReluRelu"while/lstm_cell_386/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_386/mul_1Mulwhile/lstm_cell_386/Sigmoid:y:0&while/lstm_cell_386/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_386/add_1AddV2while/lstm_cell_386/mul:z:0while/lstm_cell_386/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_386/Sigmoid_2Sigmoid"while/lstm_cell_386/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_386/Relu_1Reluwhile/lstm_cell_386/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_386/mul_2Mul!while/lstm_cell_386/Sigmoid_2:y:0(while/lstm_cell_386/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_386/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_386/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_386/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_386/BiasAdd/ReadVariableOp*^while/lstm_cell_386/MatMul/ReadVariableOp,^while/lstm_cell_386/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_386_biasadd_readvariableop_resource5while_lstm_cell_386_biasadd_readvariableop_resource_0"n
4while_lstm_cell_386_matmul_1_readvariableop_resource6while_lstm_cell_386_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_386_matmul_readvariableop_resource4while_lstm_cell_386_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_386/BiasAdd/ReadVariableOp*while/lstm_cell_386/BiasAdd/ReadVariableOp2V
)while/lstm_cell_386/MatMul/ReadVariableOp)while/lstm_cell_386/MatMul/ReadVariableOp2Z
+while/lstm_cell_386/MatMul_1/ReadVariableOp+while/lstm_cell_386/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_284_while_body_2337568.
*lstm_284_while_lstm_284_while_loop_counter4
0lstm_284_while_lstm_284_while_maximum_iterations
lstm_284_while_placeholder 
lstm_284_while_placeholder_1 
lstm_284_while_placeholder_2 
lstm_284_while_placeholder_3-
)lstm_284_while_lstm_284_strided_slice_1_0i
elstm_284_while_tensorarrayv2read_tensorlistgetitem_lstm_284_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_284_while_lstm_cell_386_matmul_readvariableop_resource_0:2(Q
?lstm_284_while_lstm_cell_386_matmul_1_readvariableop_resource_0:
(L
>lstm_284_while_lstm_cell_386_biasadd_readvariableop_resource_0:(
lstm_284_while_identity
lstm_284_while_identity_1
lstm_284_while_identity_2
lstm_284_while_identity_3
lstm_284_while_identity_4
lstm_284_while_identity_5+
'lstm_284_while_lstm_284_strided_slice_1g
clstm_284_while_tensorarrayv2read_tensorlistgetitem_lstm_284_tensorarrayunstack_tensorlistfromtensorM
;lstm_284_while_lstm_cell_386_matmul_readvariableop_resource:2(O
=lstm_284_while_lstm_cell_386_matmul_1_readvariableop_resource:
(J
<lstm_284_while_lstm_cell_386_biasadd_readvariableop_resource:(??3lstm_284/while/lstm_cell_386/BiasAdd/ReadVariableOp?2lstm_284/while/lstm_cell_386/MatMul/ReadVariableOp?4lstm_284/while/lstm_cell_386/MatMul_1/ReadVariableOp?
@lstm_284/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_284/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_284_while_tensorarrayv2read_tensorlistgetitem_lstm_284_tensorarrayunstack_tensorlistfromtensor_0lstm_284_while_placeholderIlstm_284/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_284/while/lstm_cell_386/MatMul/ReadVariableOpReadVariableOp=lstm_284_while_lstm_cell_386_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_284/while/lstm_cell_386/MatMulMatMul9lstm_284/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_284/while/lstm_cell_386/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_284/while/lstm_cell_386/MatMul_1/ReadVariableOpReadVariableOp?lstm_284_while_lstm_cell_386_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_284/while/lstm_cell_386/MatMul_1MatMullstm_284_while_placeholder_2<lstm_284/while/lstm_cell_386/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_284/while/lstm_cell_386/addAddV2-lstm_284/while/lstm_cell_386/MatMul:product:0/lstm_284/while/lstm_cell_386/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_284/while/lstm_cell_386/BiasAdd/ReadVariableOpReadVariableOp>lstm_284_while_lstm_cell_386_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_284/while/lstm_cell_386/BiasAddBiasAdd$lstm_284/while/lstm_cell_386/add:z:0;lstm_284/while/lstm_cell_386/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_284/while/lstm_cell_386/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_284/while/lstm_cell_386/splitSplit5lstm_284/while/lstm_cell_386/split/split_dim:output:0-lstm_284/while/lstm_cell_386/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_284/while/lstm_cell_386/SigmoidSigmoid+lstm_284/while/lstm_cell_386/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_284/while/lstm_cell_386/Sigmoid_1Sigmoid+lstm_284/while/lstm_cell_386/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_284/while/lstm_cell_386/mulMul*lstm_284/while/lstm_cell_386/Sigmoid_1:y:0lstm_284_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_284/while/lstm_cell_386/ReluRelu+lstm_284/while/lstm_cell_386/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_284/while/lstm_cell_386/mul_1Mul(lstm_284/while/lstm_cell_386/Sigmoid:y:0/lstm_284/while/lstm_cell_386/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_284/while/lstm_cell_386/add_1AddV2$lstm_284/while/lstm_cell_386/mul:z:0&lstm_284/while/lstm_cell_386/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_284/while/lstm_cell_386/Sigmoid_2Sigmoid+lstm_284/while/lstm_cell_386/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_284/while/lstm_cell_386/Relu_1Relu&lstm_284/while/lstm_cell_386/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_284/while/lstm_cell_386/mul_2Mul*lstm_284/while/lstm_cell_386/Sigmoid_2:y:01lstm_284/while/lstm_cell_386/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_284/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_284_while_placeholder_1lstm_284_while_placeholder&lstm_284/while/lstm_cell_386/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_284/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_284/while/addAddV2lstm_284_while_placeholderlstm_284/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_284/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_284/while/add_1AddV2*lstm_284_while_lstm_284_while_loop_counterlstm_284/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_284/while/IdentityIdentitylstm_284/while/add_1:z:0^lstm_284/while/NoOp*
T0*
_output_shapes
: ?
lstm_284/while/Identity_1Identity0lstm_284_while_lstm_284_while_maximum_iterations^lstm_284/while/NoOp*
T0*
_output_shapes
: t
lstm_284/while/Identity_2Identitylstm_284/while/add:z:0^lstm_284/while/NoOp*
T0*
_output_shapes
: ?
lstm_284/while/Identity_3IdentityClstm_284/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_284/while/NoOp*
T0*
_output_shapes
: ?
lstm_284/while/Identity_4Identity&lstm_284/while/lstm_cell_386/mul_2:z:0^lstm_284/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_284/while/Identity_5Identity&lstm_284/while/lstm_cell_386/add_1:z:0^lstm_284/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_284/while/NoOpNoOp4^lstm_284/while/lstm_cell_386/BiasAdd/ReadVariableOp3^lstm_284/while/lstm_cell_386/MatMul/ReadVariableOp5^lstm_284/while/lstm_cell_386/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_284_while_identity lstm_284/while/Identity:output:0"?
lstm_284_while_identity_1"lstm_284/while/Identity_1:output:0"?
lstm_284_while_identity_2"lstm_284/while/Identity_2:output:0"?
lstm_284_while_identity_3"lstm_284/while/Identity_3:output:0"?
lstm_284_while_identity_4"lstm_284/while/Identity_4:output:0"?
lstm_284_while_identity_5"lstm_284/while/Identity_5:output:0"T
'lstm_284_while_lstm_284_strided_slice_1)lstm_284_while_lstm_284_strided_slice_1_0"~
<lstm_284_while_lstm_cell_386_biasadd_readvariableop_resource>lstm_284_while_lstm_cell_386_biasadd_readvariableop_resource_0"?
=lstm_284_while_lstm_cell_386_matmul_1_readvariableop_resource?lstm_284_while_lstm_cell_386_matmul_1_readvariableop_resource_0"|
;lstm_284_while_lstm_cell_386_matmul_readvariableop_resource=lstm_284_while_lstm_cell_386_matmul_readvariableop_resource_0"?
clstm_284_while_tensorarrayv2read_tensorlistgetitem_lstm_284_tensorarrayunstack_tensorlistfromtensorelstm_284_while_tensorarrayv2read_tensorlistgetitem_lstm_284_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_284/while/lstm_cell_386/BiasAdd/ReadVariableOp3lstm_284/while/lstm_cell_386/BiasAdd/ReadVariableOp2h
2lstm_284/while/lstm_cell_386/MatMul/ReadVariableOp2lstm_284/while/lstm_cell_386/MatMul/ReadVariableOp2l
4lstm_284/while/lstm_cell_386/MatMul_1/ReadVariableOp4lstm_284/while/lstm_cell_386/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_283_layer_call_and_return_conditional_losses_2335417

inputs(
lstm_cell_385_2335335:	d?(
lstm_cell_385_2335337:	2?$
lstm_cell_385_2335339:	?
identity??%lstm_cell_385/StatefulPartitionedCall?while;
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
%lstm_cell_385/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_385_2335335lstm_cell_385_2335337lstm_cell_385_2335339*
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
J__inference_lstm_cell_385_layer_call_and_return_conditional_losses_2335334n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_385_2335335lstm_cell_385_2335337lstm_cell_385_2335339*
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
while_body_2335348*
condR
while_cond_2335347*K
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
NoOpNoOp&^lstm_cell_385/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_385/StatefulPartitionedCall%lstm_cell_385/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_2336331
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2336331___redundant_placeholder05
1while_while_cond_2336331___redundant_placeholder15
1while_while_cond_2336331___redundant_placeholder25
1while_while_cond_2336331___redundant_placeholder3
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
while_cond_2339232
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2339232___redundant_placeholder05
1while_while_cond_2339232___redundant_placeholder15
1while_while_cond_2339232___redundant_placeholder25
1while_while_cond_2339232___redundant_placeholder3
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
/__inference_sequential_94_layer_call_fn_2337231

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
J__inference_sequential_94_layer_call_and_return_conditional_losses_2337030o
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
E__inference_lstm_283_layer_call_and_return_conditional_losses_2338888
inputs_0?
,lstm_cell_385_matmul_readvariableop_resource:	d?A
.lstm_cell_385_matmul_1_readvariableop_resource:	2?<
-lstm_cell_385_biasadd_readvariableop_resource:	?
identity??$lstm_cell_385/BiasAdd/ReadVariableOp?#lstm_cell_385/MatMul/ReadVariableOp?%lstm_cell_385/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_385/MatMul/ReadVariableOpReadVariableOp,lstm_cell_385_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_385/MatMulMatMulstrided_slice_2:output:0+lstm_cell_385/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_385/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_385_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_385/MatMul_1MatMulzeros:output:0-lstm_cell_385/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_385/addAddV2lstm_cell_385/MatMul:product:0 lstm_cell_385/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_385/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_385_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_385/BiasAddBiasAddlstm_cell_385/add:z:0,lstm_cell_385/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_385/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_385/splitSplit&lstm_cell_385/split/split_dim:output:0lstm_cell_385/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_385/SigmoidSigmoidlstm_cell_385/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_385/Sigmoid_1Sigmoidlstm_cell_385/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_385/mulMullstm_cell_385/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_385/ReluRelulstm_cell_385/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_385/mul_1Mullstm_cell_385/Sigmoid:y:0 lstm_cell_385/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_385/add_1AddV2lstm_cell_385/mul:z:0lstm_cell_385/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_385/Sigmoid_2Sigmoidlstm_cell_385/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_385/Relu_1Relulstm_cell_385/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_385/mul_2Mullstm_cell_385/Sigmoid_2:y:0"lstm_cell_385/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_385_matmul_readvariableop_resource.lstm_cell_385_matmul_1_readvariableop_resource-lstm_cell_385_biasadd_readvariableop_resource*
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
while_body_2338804*
condR
while_cond_2338803*K
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
NoOpNoOp%^lstm_cell_385/BiasAdd/ReadVariableOp$^lstm_cell_385/MatMul/ReadVariableOp&^lstm_cell_385/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_385/BiasAdd/ReadVariableOp$lstm_cell_385/BiasAdd/ReadVariableOp2J
#lstm_cell_385/MatMul/ReadVariableOp#lstm_cell_385/MatMul/ReadVariableOp2N
%lstm_cell_385/MatMul_1/ReadVariableOp%lstm_cell_385/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
E__inference_lstm_282_layer_call_and_return_conditional_losses_2335067

inputs(
lstm_cell_384_2334985:	?(
lstm_cell_384_2334987:	d?$
lstm_cell_384_2334989:	?
identity??%lstm_cell_384/StatefulPartitionedCall?while;
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
%lstm_cell_384/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_384_2334985lstm_cell_384_2334987lstm_cell_384_2334989*
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
J__inference_lstm_cell_384_layer_call_and_return_conditional_losses_2334984n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_384_2334985lstm_cell_384_2334987lstm_cell_384_2334989*
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
while_body_2334998*
condR
while_cond_2334997*K
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
NoOpNoOp&^lstm_cell_384/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_384/StatefulPartitionedCall%lstm_cell_384/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_385_layer_call_and_return_conditional_losses_2335480

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
?K
?
E__inference_lstm_284_layer_call_and_return_conditional_losses_2339504
inputs_0>
,lstm_cell_386_matmul_readvariableop_resource:2(@
.lstm_cell_386_matmul_1_readvariableop_resource:
(;
-lstm_cell_386_biasadd_readvariableop_resource:(
identity??$lstm_cell_386/BiasAdd/ReadVariableOp?#lstm_cell_386/MatMul/ReadVariableOp?%lstm_cell_386/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_386/MatMul/ReadVariableOpReadVariableOp,lstm_cell_386_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_386/MatMulMatMulstrided_slice_2:output:0+lstm_cell_386/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_386/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_386_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_386/MatMul_1MatMulzeros:output:0-lstm_cell_386/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_386/addAddV2lstm_cell_386/MatMul:product:0 lstm_cell_386/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_386/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_386_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_386/BiasAddBiasAddlstm_cell_386/add:z:0,lstm_cell_386/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_386/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_386/splitSplit&lstm_cell_386/split/split_dim:output:0lstm_cell_386/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_386/SigmoidSigmoidlstm_cell_386/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_386/Sigmoid_1Sigmoidlstm_cell_386/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_386/mulMullstm_cell_386/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_386/ReluRelulstm_cell_386/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_386/mul_1Mullstm_cell_386/Sigmoid:y:0 lstm_cell_386/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_386/add_1AddV2lstm_cell_386/mul:z:0lstm_cell_386/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_386/Sigmoid_2Sigmoidlstm_cell_386/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_386/Relu_1Relulstm_cell_386/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_386/mul_2Mullstm_cell_386/Sigmoid_2:y:0"lstm_cell_386/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_386_matmul_readvariableop_resource.lstm_cell_386_matmul_1_readvariableop_resource-lstm_cell_386_biasadd_readvariableop_resource*
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
while_body_2339420*
condR
while_cond_2339419*K
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
NoOpNoOp%^lstm_cell_386/BiasAdd/ReadVariableOp$^lstm_cell_386/MatMul/ReadVariableOp&^lstm_cell_386/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_386/BiasAdd/ReadVariableOp$lstm_cell_386/BiasAdd/ReadVariableOp2J
#lstm_cell_386/MatMul/ReadVariableOp#lstm_cell_386/MatMul/ReadVariableOp2N
%lstm_cell_386/MatMul_1/ReadVariableOp%lstm_cell_386/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_384_layer_call_and_return_conditional_losses_2335130

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

lstm_282_while_body_2337290.
*lstm_282_while_lstm_282_while_loop_counter4
0lstm_282_while_lstm_282_while_maximum_iterations
lstm_282_while_placeholder 
lstm_282_while_placeholder_1 
lstm_282_while_placeholder_2 
lstm_282_while_placeholder_3-
)lstm_282_while_lstm_282_strided_slice_1_0i
elstm_282_while_tensorarrayv2read_tensorlistgetitem_lstm_282_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_282_while_lstm_cell_384_matmul_readvariableop_resource_0:	?R
?lstm_282_while_lstm_cell_384_matmul_1_readvariableop_resource_0:	d?M
>lstm_282_while_lstm_cell_384_biasadd_readvariableop_resource_0:	?
lstm_282_while_identity
lstm_282_while_identity_1
lstm_282_while_identity_2
lstm_282_while_identity_3
lstm_282_while_identity_4
lstm_282_while_identity_5+
'lstm_282_while_lstm_282_strided_slice_1g
clstm_282_while_tensorarrayv2read_tensorlistgetitem_lstm_282_tensorarrayunstack_tensorlistfromtensorN
;lstm_282_while_lstm_cell_384_matmul_readvariableop_resource:	?P
=lstm_282_while_lstm_cell_384_matmul_1_readvariableop_resource:	d?K
<lstm_282_while_lstm_cell_384_biasadd_readvariableop_resource:	???3lstm_282/while/lstm_cell_384/BiasAdd/ReadVariableOp?2lstm_282/while/lstm_cell_384/MatMul/ReadVariableOp?4lstm_282/while/lstm_cell_384/MatMul_1/ReadVariableOp?
@lstm_282/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_282/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_282_while_tensorarrayv2read_tensorlistgetitem_lstm_282_tensorarrayunstack_tensorlistfromtensor_0lstm_282_while_placeholderIlstm_282/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_282/while/lstm_cell_384/MatMul/ReadVariableOpReadVariableOp=lstm_282_while_lstm_cell_384_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_282/while/lstm_cell_384/MatMulMatMul9lstm_282/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_282/while/lstm_cell_384/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_282/while/lstm_cell_384/MatMul_1/ReadVariableOpReadVariableOp?lstm_282_while_lstm_cell_384_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_282/while/lstm_cell_384/MatMul_1MatMullstm_282_while_placeholder_2<lstm_282/while/lstm_cell_384/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_282/while/lstm_cell_384/addAddV2-lstm_282/while/lstm_cell_384/MatMul:product:0/lstm_282/while/lstm_cell_384/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_282/while/lstm_cell_384/BiasAdd/ReadVariableOpReadVariableOp>lstm_282_while_lstm_cell_384_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_282/while/lstm_cell_384/BiasAddBiasAdd$lstm_282/while/lstm_cell_384/add:z:0;lstm_282/while/lstm_cell_384/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_282/while/lstm_cell_384/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_282/while/lstm_cell_384/splitSplit5lstm_282/while/lstm_cell_384/split/split_dim:output:0-lstm_282/while/lstm_cell_384/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_282/while/lstm_cell_384/SigmoidSigmoid+lstm_282/while/lstm_cell_384/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_282/while/lstm_cell_384/Sigmoid_1Sigmoid+lstm_282/while/lstm_cell_384/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_282/while/lstm_cell_384/mulMul*lstm_282/while/lstm_cell_384/Sigmoid_1:y:0lstm_282_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_282/while/lstm_cell_384/ReluRelu+lstm_282/while/lstm_cell_384/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_282/while/lstm_cell_384/mul_1Mul(lstm_282/while/lstm_cell_384/Sigmoid:y:0/lstm_282/while/lstm_cell_384/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_282/while/lstm_cell_384/add_1AddV2$lstm_282/while/lstm_cell_384/mul:z:0&lstm_282/while/lstm_cell_384/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_282/while/lstm_cell_384/Sigmoid_2Sigmoid+lstm_282/while/lstm_cell_384/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_282/while/lstm_cell_384/Relu_1Relu&lstm_282/while/lstm_cell_384/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_282/while/lstm_cell_384/mul_2Mul*lstm_282/while/lstm_cell_384/Sigmoid_2:y:01lstm_282/while/lstm_cell_384/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_282/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_282_while_placeholder_1lstm_282_while_placeholder&lstm_282/while/lstm_cell_384/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_282/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_282/while/addAddV2lstm_282_while_placeholderlstm_282/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_282/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_282/while/add_1AddV2*lstm_282_while_lstm_282_while_loop_counterlstm_282/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_282/while/IdentityIdentitylstm_282/while/add_1:z:0^lstm_282/while/NoOp*
T0*
_output_shapes
: ?
lstm_282/while/Identity_1Identity0lstm_282_while_lstm_282_while_maximum_iterations^lstm_282/while/NoOp*
T0*
_output_shapes
: t
lstm_282/while/Identity_2Identitylstm_282/while/add:z:0^lstm_282/while/NoOp*
T0*
_output_shapes
: ?
lstm_282/while/Identity_3IdentityClstm_282/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_282/while/NoOp*
T0*
_output_shapes
: ?
lstm_282/while/Identity_4Identity&lstm_282/while/lstm_cell_384/mul_2:z:0^lstm_282/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_282/while/Identity_5Identity&lstm_282/while/lstm_cell_384/add_1:z:0^lstm_282/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_282/while/NoOpNoOp4^lstm_282/while/lstm_cell_384/BiasAdd/ReadVariableOp3^lstm_282/while/lstm_cell_384/MatMul/ReadVariableOp5^lstm_282/while/lstm_cell_384/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_282_while_identity lstm_282/while/Identity:output:0"?
lstm_282_while_identity_1"lstm_282/while/Identity_1:output:0"?
lstm_282_while_identity_2"lstm_282/while/Identity_2:output:0"?
lstm_282_while_identity_3"lstm_282/while/Identity_3:output:0"?
lstm_282_while_identity_4"lstm_282/while/Identity_4:output:0"?
lstm_282_while_identity_5"lstm_282/while/Identity_5:output:0"T
'lstm_282_while_lstm_282_strided_slice_1)lstm_282_while_lstm_282_strided_slice_1_0"~
<lstm_282_while_lstm_cell_384_biasadd_readvariableop_resource>lstm_282_while_lstm_cell_384_biasadd_readvariableop_resource_0"?
=lstm_282_while_lstm_cell_384_matmul_1_readvariableop_resource?lstm_282_while_lstm_cell_384_matmul_1_readvariableop_resource_0"|
;lstm_282_while_lstm_cell_384_matmul_readvariableop_resource=lstm_282_while_lstm_cell_384_matmul_readvariableop_resource_0"?
clstm_282_while_tensorarrayv2read_tensorlistgetitem_lstm_282_tensorarrayunstack_tensorlistfromtensorelstm_282_while_tensorarrayv2read_tensorlistgetitem_lstm_282_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_282/while/lstm_cell_384/BiasAdd/ReadVariableOp3lstm_282/while/lstm_cell_384/BiasAdd/ReadVariableOp2h
2lstm_282/while/lstm_cell_384/MatMul/ReadVariableOp2lstm_282/while/lstm_cell_384/MatMul/ReadVariableOp2l
4lstm_282/while/lstm_cell_384/MatMul_1/ReadVariableOp4lstm_282/while/lstm_cell_384/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_284_layer_call_and_return_conditional_losses_2339647
inputs_0>
,lstm_cell_386_matmul_readvariableop_resource:2(@
.lstm_cell_386_matmul_1_readvariableop_resource:
(;
-lstm_cell_386_biasadd_readvariableop_resource:(
identity??$lstm_cell_386/BiasAdd/ReadVariableOp?#lstm_cell_386/MatMul/ReadVariableOp?%lstm_cell_386/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_386/MatMul/ReadVariableOpReadVariableOp,lstm_cell_386_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_386/MatMulMatMulstrided_slice_2:output:0+lstm_cell_386/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_386/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_386_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_386/MatMul_1MatMulzeros:output:0-lstm_cell_386/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_386/addAddV2lstm_cell_386/MatMul:product:0 lstm_cell_386/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_386/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_386_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_386/BiasAddBiasAddlstm_cell_386/add:z:0,lstm_cell_386/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_386/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_386/splitSplit&lstm_cell_386/split/split_dim:output:0lstm_cell_386/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_386/SigmoidSigmoidlstm_cell_386/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_386/Sigmoid_1Sigmoidlstm_cell_386/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_386/mulMullstm_cell_386/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_386/ReluRelulstm_cell_386/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_386/mul_1Mullstm_cell_386/Sigmoid:y:0 lstm_cell_386/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_386/add_1AddV2lstm_cell_386/mul:z:0lstm_cell_386/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_386/Sigmoid_2Sigmoidlstm_cell_386/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_386/Relu_1Relulstm_cell_386/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_386/mul_2Mullstm_cell_386/Sigmoid_2:y:0"lstm_cell_386/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_386_matmul_readvariableop_resource.lstm_cell_386_matmul_1_readvariableop_resource-lstm_cell_386_biasadd_readvariableop_resource*
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
while_body_2339563*
condR
while_cond_2339562*K
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
NoOpNoOp%^lstm_cell_386/BiasAdd/ReadVariableOp$^lstm_cell_386/MatMul/ReadVariableOp&^lstm_cell_386/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_386/BiasAdd/ReadVariableOp$lstm_cell_386/BiasAdd/ReadVariableOp2J
#lstm_cell_386/MatMul/ReadVariableOp#lstm_cell_386/MatMul/ReadVariableOp2N
%lstm_cell_386/MatMul_1/ReadVariableOp%lstm_cell_386/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?

?
/__inference_sequential_94_layer_call_fn_2337082
lstm_282_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_282_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_94_layer_call_and_return_conditional_losses_2337030o
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
_user_specified_namelstm_282_input
?
?
while_cond_2339419
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2339419___redundant_placeholder05
1while_while_cond_2339419___redundant_placeholder15
1while_while_cond_2339419___redundant_placeholder25
1while_while_cond_2339419___redundant_placeholder3
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
E__inference_lstm_284_layer_call_and_return_conditional_losses_2339933

inputs>
,lstm_cell_386_matmul_readvariableop_resource:2(@
.lstm_cell_386_matmul_1_readvariableop_resource:
(;
-lstm_cell_386_biasadd_readvariableop_resource:(
identity??$lstm_cell_386/BiasAdd/ReadVariableOp?#lstm_cell_386/MatMul/ReadVariableOp?%lstm_cell_386/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_386/MatMul/ReadVariableOpReadVariableOp,lstm_cell_386_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_386/MatMulMatMulstrided_slice_2:output:0+lstm_cell_386/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_386/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_386_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_386/MatMul_1MatMulzeros:output:0-lstm_cell_386/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_386/addAddV2lstm_cell_386/MatMul:product:0 lstm_cell_386/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_386/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_386_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_386/BiasAddBiasAddlstm_cell_386/add:z:0,lstm_cell_386/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_386/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_386/splitSplit&lstm_cell_386/split/split_dim:output:0lstm_cell_386/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_386/SigmoidSigmoidlstm_cell_386/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_386/Sigmoid_1Sigmoidlstm_cell_386/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_386/mulMullstm_cell_386/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_386/ReluRelulstm_cell_386/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_386/mul_1Mullstm_cell_386/Sigmoid:y:0 lstm_cell_386/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_386/add_1AddV2lstm_cell_386/mul:z:0lstm_cell_386/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_386/Sigmoid_2Sigmoidlstm_cell_386/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_386/Relu_1Relulstm_cell_386/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_386/mul_2Mullstm_cell_386/Sigmoid_2:y:0"lstm_cell_386/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_386_matmul_readvariableop_resource.lstm_cell_386_matmul_1_readvariableop_resource-lstm_cell_386_biasadd_readvariableop_resource*
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
while_body_2339849*
condR
while_cond_2339848*K
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
NoOpNoOp%^lstm_cell_386/BiasAdd/ReadVariableOp$^lstm_cell_386/MatMul/ReadVariableOp&^lstm_cell_386/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_386/BiasAdd/ReadVariableOp$lstm_cell_386/BiasAdd/ReadVariableOp2J
#lstm_cell_386/MatMul/ReadVariableOp#lstm_cell_386/MatMul/ReadVariableOp2N
%lstm_cell_386/MatMul_1/ReadVariableOp%lstm_cell_386/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_386_layer_call_and_return_conditional_losses_2340246

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
)sequential_94_lstm_284_while_body_2334827J
Fsequential_94_lstm_284_while_sequential_94_lstm_284_while_loop_counterP
Lsequential_94_lstm_284_while_sequential_94_lstm_284_while_maximum_iterations,
(sequential_94_lstm_284_while_placeholder.
*sequential_94_lstm_284_while_placeholder_1.
*sequential_94_lstm_284_while_placeholder_2.
*sequential_94_lstm_284_while_placeholder_3I
Esequential_94_lstm_284_while_sequential_94_lstm_284_strided_slice_1_0?
?sequential_94_lstm_284_while_tensorarrayv2read_tensorlistgetitem_sequential_94_lstm_284_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_94_lstm_284_while_lstm_cell_386_matmul_readvariableop_resource_0:2(_
Msequential_94_lstm_284_while_lstm_cell_386_matmul_1_readvariableop_resource_0:
(Z
Lsequential_94_lstm_284_while_lstm_cell_386_biasadd_readvariableop_resource_0:()
%sequential_94_lstm_284_while_identity+
'sequential_94_lstm_284_while_identity_1+
'sequential_94_lstm_284_while_identity_2+
'sequential_94_lstm_284_while_identity_3+
'sequential_94_lstm_284_while_identity_4+
'sequential_94_lstm_284_while_identity_5G
Csequential_94_lstm_284_while_sequential_94_lstm_284_strided_slice_1?
sequential_94_lstm_284_while_tensorarrayv2read_tensorlistgetitem_sequential_94_lstm_284_tensorarrayunstack_tensorlistfromtensor[
Isequential_94_lstm_284_while_lstm_cell_386_matmul_readvariableop_resource:2(]
Ksequential_94_lstm_284_while_lstm_cell_386_matmul_1_readvariableop_resource:
(X
Jsequential_94_lstm_284_while_lstm_cell_386_biasadd_readvariableop_resource:(??Asequential_94/lstm_284/while/lstm_cell_386/BiasAdd/ReadVariableOp?@sequential_94/lstm_284/while/lstm_cell_386/MatMul/ReadVariableOp?Bsequential_94/lstm_284/while/lstm_cell_386/MatMul_1/ReadVariableOp?
Nsequential_94/lstm_284/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
@sequential_94/lstm_284/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_94_lstm_284_while_tensorarrayv2read_tensorlistgetitem_sequential_94_lstm_284_tensorarrayunstack_tensorlistfromtensor_0(sequential_94_lstm_284_while_placeholderWsequential_94/lstm_284/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
@sequential_94/lstm_284/while/lstm_cell_386/MatMul/ReadVariableOpReadVariableOpKsequential_94_lstm_284_while_lstm_cell_386_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
1sequential_94/lstm_284/while/lstm_cell_386/MatMulMatMulGsequential_94/lstm_284/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_94/lstm_284/while/lstm_cell_386/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Bsequential_94/lstm_284/while/lstm_cell_386/MatMul_1/ReadVariableOpReadVariableOpMsequential_94_lstm_284_while_lstm_cell_386_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
3sequential_94/lstm_284/while/lstm_cell_386/MatMul_1MatMul*sequential_94_lstm_284_while_placeholder_2Jsequential_94/lstm_284/while/lstm_cell_386/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.sequential_94/lstm_284/while/lstm_cell_386/addAddV2;sequential_94/lstm_284/while/lstm_cell_386/MatMul:product:0=sequential_94/lstm_284/while/lstm_cell_386/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Asequential_94/lstm_284/while/lstm_cell_386/BiasAdd/ReadVariableOpReadVariableOpLsequential_94_lstm_284_while_lstm_cell_386_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
2sequential_94/lstm_284/while/lstm_cell_386/BiasAddBiasAdd2sequential_94/lstm_284/while/lstm_cell_386/add:z:0Isequential_94/lstm_284/while/lstm_cell_386/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(|
:sequential_94/lstm_284/while/lstm_cell_386/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_94/lstm_284/while/lstm_cell_386/splitSplitCsequential_94/lstm_284/while/lstm_cell_386/split/split_dim:output:0;sequential_94/lstm_284/while/lstm_cell_386/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
2sequential_94/lstm_284/while/lstm_cell_386/SigmoidSigmoid9sequential_94/lstm_284/while/lstm_cell_386/split:output:0*
T0*'
_output_shapes
:?????????
?
4sequential_94/lstm_284/while/lstm_cell_386/Sigmoid_1Sigmoid9sequential_94/lstm_284/while/lstm_cell_386/split:output:1*
T0*'
_output_shapes
:?????????
?
.sequential_94/lstm_284/while/lstm_cell_386/mulMul8sequential_94/lstm_284/while/lstm_cell_386/Sigmoid_1:y:0*sequential_94_lstm_284_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
/sequential_94/lstm_284/while/lstm_cell_386/ReluRelu9sequential_94/lstm_284/while/lstm_cell_386/split:output:2*
T0*'
_output_shapes
:?????????
?
0sequential_94/lstm_284/while/lstm_cell_386/mul_1Mul6sequential_94/lstm_284/while/lstm_cell_386/Sigmoid:y:0=sequential_94/lstm_284/while/lstm_cell_386/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
0sequential_94/lstm_284/while/lstm_cell_386/add_1AddV22sequential_94/lstm_284/while/lstm_cell_386/mul:z:04sequential_94/lstm_284/while/lstm_cell_386/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
4sequential_94/lstm_284/while/lstm_cell_386/Sigmoid_2Sigmoid9sequential_94/lstm_284/while/lstm_cell_386/split:output:3*
T0*'
_output_shapes
:?????????
?
1sequential_94/lstm_284/while/lstm_cell_386/Relu_1Relu4sequential_94/lstm_284/while/lstm_cell_386/add_1:z:0*
T0*'
_output_shapes
:?????????
?
0sequential_94/lstm_284/while/lstm_cell_386/mul_2Mul8sequential_94/lstm_284/while/lstm_cell_386/Sigmoid_2:y:0?sequential_94/lstm_284/while/lstm_cell_386/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Asequential_94/lstm_284/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_94_lstm_284_while_placeholder_1(sequential_94_lstm_284_while_placeholder4sequential_94/lstm_284/while/lstm_cell_386/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_94/lstm_284/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_94/lstm_284/while/addAddV2(sequential_94_lstm_284_while_placeholder+sequential_94/lstm_284/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_94/lstm_284/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_94/lstm_284/while/add_1AddV2Fsequential_94_lstm_284_while_sequential_94_lstm_284_while_loop_counter-sequential_94/lstm_284/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_94/lstm_284/while/IdentityIdentity&sequential_94/lstm_284/while/add_1:z:0"^sequential_94/lstm_284/while/NoOp*
T0*
_output_shapes
: ?
'sequential_94/lstm_284/while/Identity_1IdentityLsequential_94_lstm_284_while_sequential_94_lstm_284_while_maximum_iterations"^sequential_94/lstm_284/while/NoOp*
T0*
_output_shapes
: ?
'sequential_94/lstm_284/while/Identity_2Identity$sequential_94/lstm_284/while/add:z:0"^sequential_94/lstm_284/while/NoOp*
T0*
_output_shapes
: ?
'sequential_94/lstm_284/while/Identity_3IdentityQsequential_94/lstm_284/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_94/lstm_284/while/NoOp*
T0*
_output_shapes
: ?
'sequential_94/lstm_284/while/Identity_4Identity4sequential_94/lstm_284/while/lstm_cell_386/mul_2:z:0"^sequential_94/lstm_284/while/NoOp*
T0*'
_output_shapes
:?????????
?
'sequential_94/lstm_284/while/Identity_5Identity4sequential_94/lstm_284/while/lstm_cell_386/add_1:z:0"^sequential_94/lstm_284/while/NoOp*
T0*'
_output_shapes
:?????????
?
!sequential_94/lstm_284/while/NoOpNoOpB^sequential_94/lstm_284/while/lstm_cell_386/BiasAdd/ReadVariableOpA^sequential_94/lstm_284/while/lstm_cell_386/MatMul/ReadVariableOpC^sequential_94/lstm_284/while/lstm_cell_386/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_94_lstm_284_while_identity.sequential_94/lstm_284/while/Identity:output:0"[
'sequential_94_lstm_284_while_identity_10sequential_94/lstm_284/while/Identity_1:output:0"[
'sequential_94_lstm_284_while_identity_20sequential_94/lstm_284/while/Identity_2:output:0"[
'sequential_94_lstm_284_while_identity_30sequential_94/lstm_284/while/Identity_3:output:0"[
'sequential_94_lstm_284_while_identity_40sequential_94/lstm_284/while/Identity_4:output:0"[
'sequential_94_lstm_284_while_identity_50sequential_94/lstm_284/while/Identity_5:output:0"?
Jsequential_94_lstm_284_while_lstm_cell_386_biasadd_readvariableop_resourceLsequential_94_lstm_284_while_lstm_cell_386_biasadd_readvariableop_resource_0"?
Ksequential_94_lstm_284_while_lstm_cell_386_matmul_1_readvariableop_resourceMsequential_94_lstm_284_while_lstm_cell_386_matmul_1_readvariableop_resource_0"?
Isequential_94_lstm_284_while_lstm_cell_386_matmul_readvariableop_resourceKsequential_94_lstm_284_while_lstm_cell_386_matmul_readvariableop_resource_0"?
Csequential_94_lstm_284_while_sequential_94_lstm_284_strided_slice_1Esequential_94_lstm_284_while_sequential_94_lstm_284_strided_slice_1_0"?
sequential_94_lstm_284_while_tensorarrayv2read_tensorlistgetitem_sequential_94_lstm_284_tensorarrayunstack_tensorlistfromtensor?sequential_94_lstm_284_while_tensorarrayv2read_tensorlistgetitem_sequential_94_lstm_284_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Asequential_94/lstm_284/while/lstm_cell_386/BiasAdd/ReadVariableOpAsequential_94/lstm_284/while/lstm_cell_386/BiasAdd/ReadVariableOp2?
@sequential_94/lstm_284/while/lstm_cell_386/MatMul/ReadVariableOp@sequential_94/lstm_284/while/lstm_cell_386/MatMul/ReadVariableOp2?
Bsequential_94/lstm_284/while/lstm_cell_386/MatMul_1/ReadVariableOpBsequential_94/lstm_284/while/lstm_cell_386/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
??
?
"__inference__wrapped_model_2334917
lstm_282_inputV
Csequential_94_lstm_282_lstm_cell_384_matmul_readvariableop_resource:	?X
Esequential_94_lstm_282_lstm_cell_384_matmul_1_readvariableop_resource:	d?S
Dsequential_94_lstm_282_lstm_cell_384_biasadd_readvariableop_resource:	?V
Csequential_94_lstm_283_lstm_cell_385_matmul_readvariableop_resource:	d?X
Esequential_94_lstm_283_lstm_cell_385_matmul_1_readvariableop_resource:	2?S
Dsequential_94_lstm_283_lstm_cell_385_biasadd_readvariableop_resource:	?U
Csequential_94_lstm_284_lstm_cell_386_matmul_readvariableop_resource:2(W
Esequential_94_lstm_284_lstm_cell_386_matmul_1_readvariableop_resource:
(R
Dsequential_94_lstm_284_lstm_cell_386_biasadd_readvariableop_resource:(G
5sequential_94_dense_94_matmul_readvariableop_resource:
D
6sequential_94_dense_94_biasadd_readvariableop_resource:
identity??-sequential_94/dense_94/BiasAdd/ReadVariableOp?,sequential_94/dense_94/MatMul/ReadVariableOp?;sequential_94/lstm_282/lstm_cell_384/BiasAdd/ReadVariableOp?:sequential_94/lstm_282/lstm_cell_384/MatMul/ReadVariableOp?<sequential_94/lstm_282/lstm_cell_384/MatMul_1/ReadVariableOp?sequential_94/lstm_282/while?;sequential_94/lstm_283/lstm_cell_385/BiasAdd/ReadVariableOp?:sequential_94/lstm_283/lstm_cell_385/MatMul/ReadVariableOp?<sequential_94/lstm_283/lstm_cell_385/MatMul_1/ReadVariableOp?sequential_94/lstm_283/while?;sequential_94/lstm_284/lstm_cell_386/BiasAdd/ReadVariableOp?:sequential_94/lstm_284/lstm_cell_386/MatMul/ReadVariableOp?<sequential_94/lstm_284/lstm_cell_386/MatMul_1/ReadVariableOp?sequential_94/lstm_284/whileZ
sequential_94/lstm_282/ShapeShapelstm_282_input*
T0*
_output_shapes
:t
*sequential_94/lstm_282/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_94/lstm_282/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_94/lstm_282/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_94/lstm_282/strided_sliceStridedSlice%sequential_94/lstm_282/Shape:output:03sequential_94/lstm_282/strided_slice/stack:output:05sequential_94/lstm_282/strided_slice/stack_1:output:05sequential_94/lstm_282/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_94/lstm_282/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
#sequential_94/lstm_282/zeros/packedPack-sequential_94/lstm_282/strided_slice:output:0.sequential_94/lstm_282/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_94/lstm_282/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_94/lstm_282/zerosFill,sequential_94/lstm_282/zeros/packed:output:0+sequential_94/lstm_282/zeros/Const:output:0*
T0*'
_output_shapes
:?????????di
'sequential_94/lstm_282/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
%sequential_94/lstm_282/zeros_1/packedPack-sequential_94/lstm_282/strided_slice:output:00sequential_94/lstm_282/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_94/lstm_282/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_94/lstm_282/zeros_1Fill.sequential_94/lstm_282/zeros_1/packed:output:0-sequential_94/lstm_282/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dz
%sequential_94/lstm_282/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_94/lstm_282/transpose	Transposelstm_282_input.sequential_94/lstm_282/transpose/perm:output:0*
T0*+
_output_shapes
:?????????r
sequential_94/lstm_282/Shape_1Shape$sequential_94/lstm_282/transpose:y:0*
T0*
_output_shapes
:v
,sequential_94/lstm_282/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_94/lstm_282/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_94/lstm_282/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_94/lstm_282/strided_slice_1StridedSlice'sequential_94/lstm_282/Shape_1:output:05sequential_94/lstm_282/strided_slice_1/stack:output:07sequential_94/lstm_282/strided_slice_1/stack_1:output:07sequential_94/lstm_282/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_94/lstm_282/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_94/lstm_282/TensorArrayV2TensorListReserve;sequential_94/lstm_282/TensorArrayV2/element_shape:output:0/sequential_94/lstm_282/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_94/lstm_282/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
>sequential_94/lstm_282/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_94/lstm_282/transpose:y:0Usequential_94/lstm_282/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_94/lstm_282/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_94/lstm_282/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_94/lstm_282/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_94/lstm_282/strided_slice_2StridedSlice$sequential_94/lstm_282/transpose:y:05sequential_94/lstm_282/strided_slice_2/stack:output:07sequential_94/lstm_282/strided_slice_2/stack_1:output:07sequential_94/lstm_282/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
:sequential_94/lstm_282/lstm_cell_384/MatMul/ReadVariableOpReadVariableOpCsequential_94_lstm_282_lstm_cell_384_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
+sequential_94/lstm_282/lstm_cell_384/MatMulMatMul/sequential_94/lstm_282/strided_slice_2:output:0Bsequential_94/lstm_282/lstm_cell_384/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_94/lstm_282/lstm_cell_384/MatMul_1/ReadVariableOpReadVariableOpEsequential_94_lstm_282_lstm_cell_384_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
-sequential_94/lstm_282/lstm_cell_384/MatMul_1MatMul%sequential_94/lstm_282/zeros:output:0Dsequential_94/lstm_282/lstm_cell_384/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_94/lstm_282/lstm_cell_384/addAddV25sequential_94/lstm_282/lstm_cell_384/MatMul:product:07sequential_94/lstm_282/lstm_cell_384/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_94/lstm_282/lstm_cell_384/BiasAdd/ReadVariableOpReadVariableOpDsequential_94_lstm_282_lstm_cell_384_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_94/lstm_282/lstm_cell_384/BiasAddBiasAdd,sequential_94/lstm_282/lstm_cell_384/add:z:0Csequential_94/lstm_282/lstm_cell_384/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_94/lstm_282/lstm_cell_384/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_94/lstm_282/lstm_cell_384/splitSplit=sequential_94/lstm_282/lstm_cell_384/split/split_dim:output:05sequential_94/lstm_282/lstm_cell_384/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
,sequential_94/lstm_282/lstm_cell_384/SigmoidSigmoid3sequential_94/lstm_282/lstm_cell_384/split:output:0*
T0*'
_output_shapes
:?????????d?
.sequential_94/lstm_282/lstm_cell_384/Sigmoid_1Sigmoid3sequential_94/lstm_282/lstm_cell_384/split:output:1*
T0*'
_output_shapes
:?????????d?
(sequential_94/lstm_282/lstm_cell_384/mulMul2sequential_94/lstm_282/lstm_cell_384/Sigmoid_1:y:0'sequential_94/lstm_282/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
)sequential_94/lstm_282/lstm_cell_384/ReluRelu3sequential_94/lstm_282/lstm_cell_384/split:output:2*
T0*'
_output_shapes
:?????????d?
*sequential_94/lstm_282/lstm_cell_384/mul_1Mul0sequential_94/lstm_282/lstm_cell_384/Sigmoid:y:07sequential_94/lstm_282/lstm_cell_384/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
*sequential_94/lstm_282/lstm_cell_384/add_1AddV2,sequential_94/lstm_282/lstm_cell_384/mul:z:0.sequential_94/lstm_282/lstm_cell_384/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
.sequential_94/lstm_282/lstm_cell_384/Sigmoid_2Sigmoid3sequential_94/lstm_282/lstm_cell_384/split:output:3*
T0*'
_output_shapes
:?????????d?
+sequential_94/lstm_282/lstm_cell_384/Relu_1Relu.sequential_94/lstm_282/lstm_cell_384/add_1:z:0*
T0*'
_output_shapes
:?????????d?
*sequential_94/lstm_282/lstm_cell_384/mul_2Mul2sequential_94/lstm_282/lstm_cell_384/Sigmoid_2:y:09sequential_94/lstm_282/lstm_cell_384/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
4sequential_94/lstm_282/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
&sequential_94/lstm_282/TensorArrayV2_1TensorListReserve=sequential_94/lstm_282/TensorArrayV2_1/element_shape:output:0/sequential_94/lstm_282/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_94/lstm_282/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_94/lstm_282/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_94/lstm_282/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_94/lstm_282/whileWhile2sequential_94/lstm_282/while/loop_counter:output:08sequential_94/lstm_282/while/maximum_iterations:output:0$sequential_94/lstm_282/time:output:0/sequential_94/lstm_282/TensorArrayV2_1:handle:0%sequential_94/lstm_282/zeros:output:0'sequential_94/lstm_282/zeros_1:output:0/sequential_94/lstm_282/strided_slice_1:output:0Nsequential_94/lstm_282/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_94_lstm_282_lstm_cell_384_matmul_readvariableop_resourceEsequential_94_lstm_282_lstm_cell_384_matmul_1_readvariableop_resourceDsequential_94_lstm_282_lstm_cell_384_biasadd_readvariableop_resource*
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
)sequential_94_lstm_282_while_body_2334549*5
cond-R+
)sequential_94_lstm_282_while_cond_2334548*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Gsequential_94/lstm_282/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
9sequential_94/lstm_282/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_94/lstm_282/while:output:3Psequential_94/lstm_282/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0
,sequential_94/lstm_282/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_94/lstm_282/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_94/lstm_282/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_94/lstm_282/strided_slice_3StridedSliceBsequential_94/lstm_282/TensorArrayV2Stack/TensorListStack:tensor:05sequential_94/lstm_282/strided_slice_3/stack:output:07sequential_94/lstm_282/strided_slice_3/stack_1:output:07sequential_94/lstm_282/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask|
'sequential_94/lstm_282/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_94/lstm_282/transpose_1	TransposeBsequential_94/lstm_282/TensorArrayV2Stack/TensorListStack:tensor:00sequential_94/lstm_282/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_94/lstm_282/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_94/lstm_283/ShapeShape&sequential_94/lstm_282/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_94/lstm_283/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_94/lstm_283/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_94/lstm_283/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_94/lstm_283/strided_sliceStridedSlice%sequential_94/lstm_283/Shape:output:03sequential_94/lstm_283/strided_slice/stack:output:05sequential_94/lstm_283/strided_slice/stack_1:output:05sequential_94/lstm_283/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_94/lstm_283/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
#sequential_94/lstm_283/zeros/packedPack-sequential_94/lstm_283/strided_slice:output:0.sequential_94/lstm_283/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_94/lstm_283/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_94/lstm_283/zerosFill,sequential_94/lstm_283/zeros/packed:output:0+sequential_94/lstm_283/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2i
'sequential_94/lstm_283/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
%sequential_94/lstm_283/zeros_1/packedPack-sequential_94/lstm_283/strided_slice:output:00sequential_94/lstm_283/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_94/lstm_283/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_94/lstm_283/zeros_1Fill.sequential_94/lstm_283/zeros_1/packed:output:0-sequential_94/lstm_283/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2z
%sequential_94/lstm_283/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_94/lstm_283/transpose	Transpose&sequential_94/lstm_282/transpose_1:y:0.sequential_94/lstm_283/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_94/lstm_283/Shape_1Shape$sequential_94/lstm_283/transpose:y:0*
T0*
_output_shapes
:v
,sequential_94/lstm_283/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_94/lstm_283/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_94/lstm_283/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_94/lstm_283/strided_slice_1StridedSlice'sequential_94/lstm_283/Shape_1:output:05sequential_94/lstm_283/strided_slice_1/stack:output:07sequential_94/lstm_283/strided_slice_1/stack_1:output:07sequential_94/lstm_283/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_94/lstm_283/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_94/lstm_283/TensorArrayV2TensorListReserve;sequential_94/lstm_283/TensorArrayV2/element_shape:output:0/sequential_94/lstm_283/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_94/lstm_283/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
>sequential_94/lstm_283/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_94/lstm_283/transpose:y:0Usequential_94/lstm_283/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_94/lstm_283/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_94/lstm_283/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_94/lstm_283/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_94/lstm_283/strided_slice_2StridedSlice$sequential_94/lstm_283/transpose:y:05sequential_94/lstm_283/strided_slice_2/stack:output:07sequential_94/lstm_283/strided_slice_2/stack_1:output:07sequential_94/lstm_283/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
:sequential_94/lstm_283/lstm_cell_385/MatMul/ReadVariableOpReadVariableOpCsequential_94_lstm_283_lstm_cell_385_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
+sequential_94/lstm_283/lstm_cell_385/MatMulMatMul/sequential_94/lstm_283/strided_slice_2:output:0Bsequential_94/lstm_283/lstm_cell_385/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_94/lstm_283/lstm_cell_385/MatMul_1/ReadVariableOpReadVariableOpEsequential_94_lstm_283_lstm_cell_385_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
-sequential_94/lstm_283/lstm_cell_385/MatMul_1MatMul%sequential_94/lstm_283/zeros:output:0Dsequential_94/lstm_283/lstm_cell_385/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_94/lstm_283/lstm_cell_385/addAddV25sequential_94/lstm_283/lstm_cell_385/MatMul:product:07sequential_94/lstm_283/lstm_cell_385/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_94/lstm_283/lstm_cell_385/BiasAdd/ReadVariableOpReadVariableOpDsequential_94_lstm_283_lstm_cell_385_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_94/lstm_283/lstm_cell_385/BiasAddBiasAdd,sequential_94/lstm_283/lstm_cell_385/add:z:0Csequential_94/lstm_283/lstm_cell_385/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_94/lstm_283/lstm_cell_385/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_94/lstm_283/lstm_cell_385/splitSplit=sequential_94/lstm_283/lstm_cell_385/split/split_dim:output:05sequential_94/lstm_283/lstm_cell_385/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
,sequential_94/lstm_283/lstm_cell_385/SigmoidSigmoid3sequential_94/lstm_283/lstm_cell_385/split:output:0*
T0*'
_output_shapes
:?????????2?
.sequential_94/lstm_283/lstm_cell_385/Sigmoid_1Sigmoid3sequential_94/lstm_283/lstm_cell_385/split:output:1*
T0*'
_output_shapes
:?????????2?
(sequential_94/lstm_283/lstm_cell_385/mulMul2sequential_94/lstm_283/lstm_cell_385/Sigmoid_1:y:0'sequential_94/lstm_283/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
)sequential_94/lstm_283/lstm_cell_385/ReluRelu3sequential_94/lstm_283/lstm_cell_385/split:output:2*
T0*'
_output_shapes
:?????????2?
*sequential_94/lstm_283/lstm_cell_385/mul_1Mul0sequential_94/lstm_283/lstm_cell_385/Sigmoid:y:07sequential_94/lstm_283/lstm_cell_385/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
*sequential_94/lstm_283/lstm_cell_385/add_1AddV2,sequential_94/lstm_283/lstm_cell_385/mul:z:0.sequential_94/lstm_283/lstm_cell_385/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
.sequential_94/lstm_283/lstm_cell_385/Sigmoid_2Sigmoid3sequential_94/lstm_283/lstm_cell_385/split:output:3*
T0*'
_output_shapes
:?????????2?
+sequential_94/lstm_283/lstm_cell_385/Relu_1Relu.sequential_94/lstm_283/lstm_cell_385/add_1:z:0*
T0*'
_output_shapes
:?????????2?
*sequential_94/lstm_283/lstm_cell_385/mul_2Mul2sequential_94/lstm_283/lstm_cell_385/Sigmoid_2:y:09sequential_94/lstm_283/lstm_cell_385/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
4sequential_94/lstm_283/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
&sequential_94/lstm_283/TensorArrayV2_1TensorListReserve=sequential_94/lstm_283/TensorArrayV2_1/element_shape:output:0/sequential_94/lstm_283/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_94/lstm_283/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_94/lstm_283/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_94/lstm_283/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_94/lstm_283/whileWhile2sequential_94/lstm_283/while/loop_counter:output:08sequential_94/lstm_283/while/maximum_iterations:output:0$sequential_94/lstm_283/time:output:0/sequential_94/lstm_283/TensorArrayV2_1:handle:0%sequential_94/lstm_283/zeros:output:0'sequential_94/lstm_283/zeros_1:output:0/sequential_94/lstm_283/strided_slice_1:output:0Nsequential_94/lstm_283/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_94_lstm_283_lstm_cell_385_matmul_readvariableop_resourceEsequential_94_lstm_283_lstm_cell_385_matmul_1_readvariableop_resourceDsequential_94_lstm_283_lstm_cell_385_biasadd_readvariableop_resource*
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
)sequential_94_lstm_283_while_body_2334688*5
cond-R+
)sequential_94_lstm_283_while_cond_2334687*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Gsequential_94/lstm_283/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
9sequential_94/lstm_283/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_94/lstm_283/while:output:3Psequential_94/lstm_283/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0
,sequential_94/lstm_283/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_94/lstm_283/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_94/lstm_283/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_94/lstm_283/strided_slice_3StridedSliceBsequential_94/lstm_283/TensorArrayV2Stack/TensorListStack:tensor:05sequential_94/lstm_283/strided_slice_3/stack:output:07sequential_94/lstm_283/strided_slice_3/stack_1:output:07sequential_94/lstm_283/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask|
'sequential_94/lstm_283/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_94/lstm_283/transpose_1	TransposeBsequential_94/lstm_283/TensorArrayV2Stack/TensorListStack:tensor:00sequential_94/lstm_283/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_94/lstm_283/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_94/lstm_284/ShapeShape&sequential_94/lstm_283/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_94/lstm_284/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_94/lstm_284/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_94/lstm_284/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_94/lstm_284/strided_sliceStridedSlice%sequential_94/lstm_284/Shape:output:03sequential_94/lstm_284/strided_slice/stack:output:05sequential_94/lstm_284/strided_slice/stack_1:output:05sequential_94/lstm_284/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_94/lstm_284/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
#sequential_94/lstm_284/zeros/packedPack-sequential_94/lstm_284/strided_slice:output:0.sequential_94/lstm_284/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_94/lstm_284/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_94/lstm_284/zerosFill,sequential_94/lstm_284/zeros/packed:output:0+sequential_94/lstm_284/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
i
'sequential_94/lstm_284/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
%sequential_94/lstm_284/zeros_1/packedPack-sequential_94/lstm_284/strided_slice:output:00sequential_94/lstm_284/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_94/lstm_284/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_94/lstm_284/zeros_1Fill.sequential_94/lstm_284/zeros_1/packed:output:0-sequential_94/lstm_284/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
z
%sequential_94/lstm_284/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_94/lstm_284/transpose	Transpose&sequential_94/lstm_283/transpose_1:y:0.sequential_94/lstm_284/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_94/lstm_284/Shape_1Shape$sequential_94/lstm_284/transpose:y:0*
T0*
_output_shapes
:v
,sequential_94/lstm_284/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_94/lstm_284/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_94/lstm_284/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_94/lstm_284/strided_slice_1StridedSlice'sequential_94/lstm_284/Shape_1:output:05sequential_94/lstm_284/strided_slice_1/stack:output:07sequential_94/lstm_284/strided_slice_1/stack_1:output:07sequential_94/lstm_284/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_94/lstm_284/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_94/lstm_284/TensorArrayV2TensorListReserve;sequential_94/lstm_284/TensorArrayV2/element_shape:output:0/sequential_94/lstm_284/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_94/lstm_284/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
>sequential_94/lstm_284/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_94/lstm_284/transpose:y:0Usequential_94/lstm_284/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_94/lstm_284/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_94/lstm_284/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_94/lstm_284/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_94/lstm_284/strided_slice_2StridedSlice$sequential_94/lstm_284/transpose:y:05sequential_94/lstm_284/strided_slice_2/stack:output:07sequential_94/lstm_284/strided_slice_2/stack_1:output:07sequential_94/lstm_284/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
:sequential_94/lstm_284/lstm_cell_386/MatMul/ReadVariableOpReadVariableOpCsequential_94_lstm_284_lstm_cell_386_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
+sequential_94/lstm_284/lstm_cell_386/MatMulMatMul/sequential_94/lstm_284/strided_slice_2:output:0Bsequential_94/lstm_284/lstm_cell_386/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
<sequential_94/lstm_284/lstm_cell_386/MatMul_1/ReadVariableOpReadVariableOpEsequential_94_lstm_284_lstm_cell_386_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
-sequential_94/lstm_284/lstm_cell_386/MatMul_1MatMul%sequential_94/lstm_284/zeros:output:0Dsequential_94/lstm_284/lstm_cell_386/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
(sequential_94/lstm_284/lstm_cell_386/addAddV25sequential_94/lstm_284/lstm_cell_386/MatMul:product:07sequential_94/lstm_284/lstm_cell_386/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
;sequential_94/lstm_284/lstm_cell_386/BiasAdd/ReadVariableOpReadVariableOpDsequential_94_lstm_284_lstm_cell_386_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
,sequential_94/lstm_284/lstm_cell_386/BiasAddBiasAdd,sequential_94/lstm_284/lstm_cell_386/add:z:0Csequential_94/lstm_284/lstm_cell_386/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(v
4sequential_94/lstm_284/lstm_cell_386/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_94/lstm_284/lstm_cell_386/splitSplit=sequential_94/lstm_284/lstm_cell_386/split/split_dim:output:05sequential_94/lstm_284/lstm_cell_386/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
,sequential_94/lstm_284/lstm_cell_386/SigmoidSigmoid3sequential_94/lstm_284/lstm_cell_386/split:output:0*
T0*'
_output_shapes
:?????????
?
.sequential_94/lstm_284/lstm_cell_386/Sigmoid_1Sigmoid3sequential_94/lstm_284/lstm_cell_386/split:output:1*
T0*'
_output_shapes
:?????????
?
(sequential_94/lstm_284/lstm_cell_386/mulMul2sequential_94/lstm_284/lstm_cell_386/Sigmoid_1:y:0'sequential_94/lstm_284/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
)sequential_94/lstm_284/lstm_cell_386/ReluRelu3sequential_94/lstm_284/lstm_cell_386/split:output:2*
T0*'
_output_shapes
:?????????
?
*sequential_94/lstm_284/lstm_cell_386/mul_1Mul0sequential_94/lstm_284/lstm_cell_386/Sigmoid:y:07sequential_94/lstm_284/lstm_cell_386/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
*sequential_94/lstm_284/lstm_cell_386/add_1AddV2,sequential_94/lstm_284/lstm_cell_386/mul:z:0.sequential_94/lstm_284/lstm_cell_386/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
.sequential_94/lstm_284/lstm_cell_386/Sigmoid_2Sigmoid3sequential_94/lstm_284/lstm_cell_386/split:output:3*
T0*'
_output_shapes
:?????????
?
+sequential_94/lstm_284/lstm_cell_386/Relu_1Relu.sequential_94/lstm_284/lstm_cell_386/add_1:z:0*
T0*'
_output_shapes
:?????????
?
*sequential_94/lstm_284/lstm_cell_386/mul_2Mul2sequential_94/lstm_284/lstm_cell_386/Sigmoid_2:y:09sequential_94/lstm_284/lstm_cell_386/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
4sequential_94/lstm_284/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
&sequential_94/lstm_284/TensorArrayV2_1TensorListReserve=sequential_94/lstm_284/TensorArrayV2_1/element_shape:output:0/sequential_94/lstm_284/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_94/lstm_284/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_94/lstm_284/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_94/lstm_284/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_94/lstm_284/whileWhile2sequential_94/lstm_284/while/loop_counter:output:08sequential_94/lstm_284/while/maximum_iterations:output:0$sequential_94/lstm_284/time:output:0/sequential_94/lstm_284/TensorArrayV2_1:handle:0%sequential_94/lstm_284/zeros:output:0'sequential_94/lstm_284/zeros_1:output:0/sequential_94/lstm_284/strided_slice_1:output:0Nsequential_94/lstm_284/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_94_lstm_284_lstm_cell_386_matmul_readvariableop_resourceEsequential_94_lstm_284_lstm_cell_386_matmul_1_readvariableop_resourceDsequential_94_lstm_284_lstm_cell_386_biasadd_readvariableop_resource*
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
)sequential_94_lstm_284_while_body_2334827*5
cond-R+
)sequential_94_lstm_284_while_cond_2334826*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Gsequential_94/lstm_284/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
9sequential_94/lstm_284/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_94/lstm_284/while:output:3Psequential_94/lstm_284/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0
,sequential_94/lstm_284/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_94/lstm_284/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_94/lstm_284/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_94/lstm_284/strided_slice_3StridedSliceBsequential_94/lstm_284/TensorArrayV2Stack/TensorListStack:tensor:05sequential_94/lstm_284/strided_slice_3/stack:output:07sequential_94/lstm_284/strided_slice_3/stack_1:output:07sequential_94/lstm_284/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask|
'sequential_94/lstm_284/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_94/lstm_284/transpose_1	TransposeBsequential_94/lstm_284/TensorArrayV2Stack/TensorListStack:tensor:00sequential_94/lstm_284/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
r
sequential_94/lstm_284/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_94/dense_94/MatMul/ReadVariableOpReadVariableOp5sequential_94_dense_94_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_94/dense_94/MatMulMatMul/sequential_94/lstm_284/strided_slice_3:output:04sequential_94/dense_94/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_94/dense_94/BiasAdd/ReadVariableOpReadVariableOp6sequential_94_dense_94_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_94/dense_94/BiasAddBiasAdd'sequential_94/dense_94/MatMul:product:05sequential_94/dense_94/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_94/dense_94/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_94/dense_94/BiasAdd/ReadVariableOp-^sequential_94/dense_94/MatMul/ReadVariableOp<^sequential_94/lstm_282/lstm_cell_384/BiasAdd/ReadVariableOp;^sequential_94/lstm_282/lstm_cell_384/MatMul/ReadVariableOp=^sequential_94/lstm_282/lstm_cell_384/MatMul_1/ReadVariableOp^sequential_94/lstm_282/while<^sequential_94/lstm_283/lstm_cell_385/BiasAdd/ReadVariableOp;^sequential_94/lstm_283/lstm_cell_385/MatMul/ReadVariableOp=^sequential_94/lstm_283/lstm_cell_385/MatMul_1/ReadVariableOp^sequential_94/lstm_283/while<^sequential_94/lstm_284/lstm_cell_386/BiasAdd/ReadVariableOp;^sequential_94/lstm_284/lstm_cell_386/MatMul/ReadVariableOp=^sequential_94/lstm_284/lstm_cell_386/MatMul_1/ReadVariableOp^sequential_94/lstm_284/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2^
-sequential_94/dense_94/BiasAdd/ReadVariableOp-sequential_94/dense_94/BiasAdd/ReadVariableOp2\
,sequential_94/dense_94/MatMul/ReadVariableOp,sequential_94/dense_94/MatMul/ReadVariableOp2z
;sequential_94/lstm_282/lstm_cell_384/BiasAdd/ReadVariableOp;sequential_94/lstm_282/lstm_cell_384/BiasAdd/ReadVariableOp2x
:sequential_94/lstm_282/lstm_cell_384/MatMul/ReadVariableOp:sequential_94/lstm_282/lstm_cell_384/MatMul/ReadVariableOp2|
<sequential_94/lstm_282/lstm_cell_384/MatMul_1/ReadVariableOp<sequential_94/lstm_282/lstm_cell_384/MatMul_1/ReadVariableOp2<
sequential_94/lstm_282/whilesequential_94/lstm_282/while2z
;sequential_94/lstm_283/lstm_cell_385/BiasAdd/ReadVariableOp;sequential_94/lstm_283/lstm_cell_385/BiasAdd/ReadVariableOp2x
:sequential_94/lstm_283/lstm_cell_385/MatMul/ReadVariableOp:sequential_94/lstm_283/lstm_cell_385/MatMul/ReadVariableOp2|
<sequential_94/lstm_283/lstm_cell_385/MatMul_1/ReadVariableOp<sequential_94/lstm_283/lstm_cell_385/MatMul_1/ReadVariableOp2<
sequential_94/lstm_283/whilesequential_94/lstm_283/while2z
;sequential_94/lstm_284/lstm_cell_386/BiasAdd/ReadVariableOp;sequential_94/lstm_284/lstm_cell_386/BiasAdd/ReadVariableOp2x
:sequential_94/lstm_284/lstm_cell_386/MatMul/ReadVariableOp:sequential_94/lstm_284/lstm_cell_386/MatMul/ReadVariableOp2|
<sequential_94/lstm_284/lstm_cell_386/MatMul_1/ReadVariableOp<sequential_94/lstm_284/lstm_cell_386/MatMul_1/ReadVariableOp2<
sequential_94/lstm_284/whilesequential_94/lstm_284/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_282_input
?#
?
while_body_2334998
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_384_2335022_0:	?0
while_lstm_cell_384_2335024_0:	d?,
while_lstm_cell_384_2335026_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_384_2335022:	?.
while_lstm_cell_384_2335024:	d?*
while_lstm_cell_384_2335026:	???+while/lstm_cell_384/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_384/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_384_2335022_0while_lstm_cell_384_2335024_0while_lstm_cell_384_2335026_0*
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
J__inference_lstm_cell_384_layer_call_and_return_conditional_losses_2334984?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_384/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_384/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_384/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_384/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_384_2335022while_lstm_cell_384_2335022_0"<
while_lstm_cell_384_2335024while_lstm_cell_384_2335024_0"<
while_lstm_cell_384_2335026while_lstm_cell_384_2335026_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_384/StatefulPartitionedCall+while/lstm_cell_384/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_2335188
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2335188___redundant_placeholder05
1while_while_cond_2335188___redundant_placeholder15
1while_while_cond_2335188___redundant_placeholder25
1while_while_cond_2335188___redundant_placeholder3
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
while_body_2339233
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_385_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_385_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_385_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_385_matmul_readvariableop_resource:	d?G
4while_lstm_cell_385_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_385_biasadd_readvariableop_resource:	???*while/lstm_cell_385/BiasAdd/ReadVariableOp?)while/lstm_cell_385/MatMul/ReadVariableOp?+while/lstm_cell_385/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_385/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_385_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_385/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_385/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_385/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_385_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_385/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_385/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_385/addAddV2$while/lstm_cell_385/MatMul:product:0&while/lstm_cell_385/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_385/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_385_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_385/BiasAddBiasAddwhile/lstm_cell_385/add:z:02while/lstm_cell_385/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_385/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_385/splitSplit,while/lstm_cell_385/split/split_dim:output:0$while/lstm_cell_385/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_385/SigmoidSigmoid"while/lstm_cell_385/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_385/Sigmoid_1Sigmoid"while/lstm_cell_385/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_385/mulMul!while/lstm_cell_385/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_385/ReluRelu"while/lstm_cell_385/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_385/mul_1Mulwhile/lstm_cell_385/Sigmoid:y:0&while/lstm_cell_385/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_385/add_1AddV2while/lstm_cell_385/mul:z:0while/lstm_cell_385/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_385/Sigmoid_2Sigmoid"while/lstm_cell_385/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_385/Relu_1Reluwhile/lstm_cell_385/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_385/mul_2Mul!while/lstm_cell_385/Sigmoid_2:y:0(while/lstm_cell_385/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_385/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_385/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_385/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_385/BiasAdd/ReadVariableOp*^while/lstm_cell_385/MatMul/ReadVariableOp,^while/lstm_cell_385/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_385_biasadd_readvariableop_resource5while_lstm_cell_385_biasadd_readvariableop_resource_0"n
4while_lstm_cell_385_matmul_1_readvariableop_resource6while_lstm_cell_385_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_385_matmul_readvariableop_resource4while_lstm_cell_385_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_385/BiasAdd/ReadVariableOp*while/lstm_cell_385/BiasAdd/ReadVariableOp2V
)while/lstm_cell_385/MatMul/ReadVariableOp)while/lstm_cell_385/MatMul/ReadVariableOp2Z
+while/lstm_cell_385/MatMul_1/ReadVariableOp+while/lstm_cell_385/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_384_layer_call_fn_2339986

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
J__inference_lstm_cell_384_layer_call_and_return_conditional_losses_2335130o
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
while_body_2335348
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_385_2335372_0:	d?0
while_lstm_cell_385_2335374_0:	2?,
while_lstm_cell_385_2335376_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_385_2335372:	d?.
while_lstm_cell_385_2335374:	2?*
while_lstm_cell_385_2335376:	???+while/lstm_cell_385/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_385/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_385_2335372_0while_lstm_cell_385_2335374_0while_lstm_cell_385_2335376_0*
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
J__inference_lstm_cell_385_layer_call_and_return_conditional_losses_2335334?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_385/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_385/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_385/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_385/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_385_2335372while_lstm_cell_385_2335372_0"<
while_lstm_cell_385_2335374while_lstm_cell_385_2335374_0"<
while_lstm_cell_385_2335376while_lstm_cell_385_2335376_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_385/StatefulPartitionedCall+while/lstm_cell_385/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_2339562
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2339562___redundant_placeholder05
1while_while_cond_2339562___redundant_placeholder15
1while_while_cond_2339562___redundant_placeholder25
1while_while_cond_2339562___redundant_placeholder3
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
while_body_2339090
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_385_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_385_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_385_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_385_matmul_readvariableop_resource:	d?G
4while_lstm_cell_385_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_385_biasadd_readvariableop_resource:	???*while/lstm_cell_385/BiasAdd/ReadVariableOp?)while/lstm_cell_385/MatMul/ReadVariableOp?+while/lstm_cell_385/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_385/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_385_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_385/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_385/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_385/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_385_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_385/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_385/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_385/addAddV2$while/lstm_cell_385/MatMul:product:0&while/lstm_cell_385/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_385/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_385_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_385/BiasAddBiasAddwhile/lstm_cell_385/add:z:02while/lstm_cell_385/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_385/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_385/splitSplit,while/lstm_cell_385/split/split_dim:output:0$while/lstm_cell_385/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_385/SigmoidSigmoid"while/lstm_cell_385/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_385/Sigmoid_1Sigmoid"while/lstm_cell_385/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_385/mulMul!while/lstm_cell_385/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_385/ReluRelu"while/lstm_cell_385/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_385/mul_1Mulwhile/lstm_cell_385/Sigmoid:y:0&while/lstm_cell_385/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_385/add_1AddV2while/lstm_cell_385/mul:z:0while/lstm_cell_385/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_385/Sigmoid_2Sigmoid"while/lstm_cell_385/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_385/Relu_1Reluwhile/lstm_cell_385/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_385/mul_2Mul!while/lstm_cell_385/Sigmoid_2:y:0(while/lstm_cell_385/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_385/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_385/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_385/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_385/BiasAdd/ReadVariableOp*^while/lstm_cell_385/MatMul/ReadVariableOp,^while/lstm_cell_385/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_385_biasadd_readvariableop_resource5while_lstm_cell_385_biasadd_readvariableop_resource_0"n
4while_lstm_cell_385_matmul_1_readvariableop_resource6while_lstm_cell_385_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_385_matmul_readvariableop_resource4while_lstm_cell_385_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_385/BiasAdd/ReadVariableOp*while/lstm_cell_385/BiasAdd/ReadVariableOp2V
)while/lstm_cell_385/MatMul/ReadVariableOp)while/lstm_cell_385/MatMul/ReadVariableOp2Z
+while/lstm_cell_385/MatMul_1/ReadVariableOp+while/lstm_cell_385/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_94_layer_call_and_return_conditional_losses_2337142
lstm_282_input#
lstm_282_2337115:	?#
lstm_282_2337117:	d?
lstm_282_2337119:	?#
lstm_283_2337122:	d?#
lstm_283_2337124:	2?
lstm_283_2337126:	?"
lstm_284_2337129:2("
lstm_284_2337131:
(
lstm_284_2337133:("
dense_94_2337136:

dense_94_2337138:
identity?? dense_94/StatefulPartitionedCall? lstm_282/StatefulPartitionedCall? lstm_283/StatefulPartitionedCall? lstm_284/StatefulPartitionedCall?
 lstm_282/StatefulPartitionedCallStatefulPartitionedCalllstm_282_inputlstm_282_2337115lstm_282_2337117lstm_282_2337119*
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
E__inference_lstm_282_layer_call_and_return_conditional_losses_2336962?
 lstm_283/StatefulPartitionedCallStatefulPartitionedCall)lstm_282/StatefulPartitionedCall:output:0lstm_283_2337122lstm_283_2337124lstm_283_2337126*
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
E__inference_lstm_283_layer_call_and_return_conditional_losses_2336797?
 lstm_284/StatefulPartitionedCallStatefulPartitionedCall)lstm_283/StatefulPartitionedCall:output:0lstm_284_2337129lstm_284_2337131lstm_284_2337133*
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
E__inference_lstm_284_layer_call_and_return_conditional_losses_2336632?
 dense_94/StatefulPartitionedCallStatefulPartitionedCall)lstm_284/StatefulPartitionedCall:output:0dense_94_2337136dense_94_2337138*
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
E__inference_dense_94_layer_call_and_return_conditional_losses_2336434x
IdentityIdentity)dense_94/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_94/StatefulPartitionedCall!^lstm_282/StatefulPartitionedCall!^lstm_283/StatefulPartitionedCall!^lstm_284/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_94/StatefulPartitionedCall dense_94/StatefulPartitionedCall2D
 lstm_282/StatefulPartitionedCall lstm_282/StatefulPartitionedCall2D
 lstm_283/StatefulPartitionedCall lstm_283/StatefulPartitionedCall2D
 lstm_284/StatefulPartitionedCall lstm_284/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_282_input
?
?
*__inference_lstm_283_layer_call_fn_2338712
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
E__inference_lstm_283_layer_call_and_return_conditional_losses_2335417|
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
?K
?
E__inference_lstm_283_layer_call_and_return_conditional_losses_2339031
inputs_0?
,lstm_cell_385_matmul_readvariableop_resource:	d?A
.lstm_cell_385_matmul_1_readvariableop_resource:	2?<
-lstm_cell_385_biasadd_readvariableop_resource:	?
identity??$lstm_cell_385/BiasAdd/ReadVariableOp?#lstm_cell_385/MatMul/ReadVariableOp?%lstm_cell_385/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_385/MatMul/ReadVariableOpReadVariableOp,lstm_cell_385_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_385/MatMulMatMulstrided_slice_2:output:0+lstm_cell_385/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_385/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_385_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_385/MatMul_1MatMulzeros:output:0-lstm_cell_385/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_385/addAddV2lstm_cell_385/MatMul:product:0 lstm_cell_385/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_385/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_385_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_385/BiasAddBiasAddlstm_cell_385/add:z:0,lstm_cell_385/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_385/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_385/splitSplit&lstm_cell_385/split/split_dim:output:0lstm_cell_385/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_385/SigmoidSigmoidlstm_cell_385/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_385/Sigmoid_1Sigmoidlstm_cell_385/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_385/mulMullstm_cell_385/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_385/ReluRelulstm_cell_385/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_385/mul_1Mullstm_cell_385/Sigmoid:y:0 lstm_cell_385/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_385/add_1AddV2lstm_cell_385/mul:z:0lstm_cell_385/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_385/Sigmoid_2Sigmoidlstm_cell_385/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_385/Relu_1Relulstm_cell_385/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_385/mul_2Mullstm_cell_385/Sigmoid_2:y:0"lstm_cell_385/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_385_matmul_readvariableop_resource.lstm_cell_385_matmul_1_readvariableop_resource-lstm_cell_385_biasadd_readvariableop_resource*
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
while_body_2338947*
condR
while_cond_2338946*K
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
NoOpNoOp%^lstm_cell_385/BiasAdd/ReadVariableOp$^lstm_cell_385/MatMul/ReadVariableOp&^lstm_cell_385/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_385/BiasAdd/ReadVariableOp$lstm_cell_385/BiasAdd/ReadVariableOp2J
#lstm_cell_385/MatMul/ReadVariableOp#lstm_cell_385/MatMul/ReadVariableOp2N
%lstm_cell_385/MatMul_1/ReadVariableOp%lstm_cell_385/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_2339089
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2339089___redundant_placeholder05
1while_while_cond_2339089___redundant_placeholder15
1while_while_cond_2339089___redundant_placeholder25
1while_while_cond_2339089___redundant_placeholder3
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
?
)sequential_94_lstm_284_while_cond_2334826J
Fsequential_94_lstm_284_while_sequential_94_lstm_284_while_loop_counterP
Lsequential_94_lstm_284_while_sequential_94_lstm_284_while_maximum_iterations,
(sequential_94_lstm_284_while_placeholder.
*sequential_94_lstm_284_while_placeholder_1.
*sequential_94_lstm_284_while_placeholder_2.
*sequential_94_lstm_284_while_placeholder_3L
Hsequential_94_lstm_284_while_less_sequential_94_lstm_284_strided_slice_1c
_sequential_94_lstm_284_while_sequential_94_lstm_284_while_cond_2334826___redundant_placeholder0c
_sequential_94_lstm_284_while_sequential_94_lstm_284_while_cond_2334826___redundant_placeholder1c
_sequential_94_lstm_284_while_sequential_94_lstm_284_while_cond_2334826___redundant_placeholder2c
_sequential_94_lstm_284_while_sequential_94_lstm_284_while_cond_2334826___redundant_placeholder3)
%sequential_94_lstm_284_while_identity
?
!sequential_94/lstm_284/while/LessLess(sequential_94_lstm_284_while_placeholderHsequential_94_lstm_284_while_less_sequential_94_lstm_284_strided_slice_1*
T0*
_output_shapes
: y
%sequential_94/lstm_284/while/IdentityIdentity%sequential_94/lstm_284/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_94_lstm_284_while_identity.sequential_94/lstm_284/while/Identity:output:0*(
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

lstm_282_while_body_2337717.
*lstm_282_while_lstm_282_while_loop_counter4
0lstm_282_while_lstm_282_while_maximum_iterations
lstm_282_while_placeholder 
lstm_282_while_placeholder_1 
lstm_282_while_placeholder_2 
lstm_282_while_placeholder_3-
)lstm_282_while_lstm_282_strided_slice_1_0i
elstm_282_while_tensorarrayv2read_tensorlistgetitem_lstm_282_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_282_while_lstm_cell_384_matmul_readvariableop_resource_0:	?R
?lstm_282_while_lstm_cell_384_matmul_1_readvariableop_resource_0:	d?M
>lstm_282_while_lstm_cell_384_biasadd_readvariableop_resource_0:	?
lstm_282_while_identity
lstm_282_while_identity_1
lstm_282_while_identity_2
lstm_282_while_identity_3
lstm_282_while_identity_4
lstm_282_while_identity_5+
'lstm_282_while_lstm_282_strided_slice_1g
clstm_282_while_tensorarrayv2read_tensorlistgetitem_lstm_282_tensorarrayunstack_tensorlistfromtensorN
;lstm_282_while_lstm_cell_384_matmul_readvariableop_resource:	?P
=lstm_282_while_lstm_cell_384_matmul_1_readvariableop_resource:	d?K
<lstm_282_while_lstm_cell_384_biasadd_readvariableop_resource:	???3lstm_282/while/lstm_cell_384/BiasAdd/ReadVariableOp?2lstm_282/while/lstm_cell_384/MatMul/ReadVariableOp?4lstm_282/while/lstm_cell_384/MatMul_1/ReadVariableOp?
@lstm_282/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_282/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_282_while_tensorarrayv2read_tensorlistgetitem_lstm_282_tensorarrayunstack_tensorlistfromtensor_0lstm_282_while_placeholderIlstm_282/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_282/while/lstm_cell_384/MatMul/ReadVariableOpReadVariableOp=lstm_282_while_lstm_cell_384_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_282/while/lstm_cell_384/MatMulMatMul9lstm_282/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_282/while/lstm_cell_384/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_282/while/lstm_cell_384/MatMul_1/ReadVariableOpReadVariableOp?lstm_282_while_lstm_cell_384_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_282/while/lstm_cell_384/MatMul_1MatMullstm_282_while_placeholder_2<lstm_282/while/lstm_cell_384/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_282/while/lstm_cell_384/addAddV2-lstm_282/while/lstm_cell_384/MatMul:product:0/lstm_282/while/lstm_cell_384/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_282/while/lstm_cell_384/BiasAdd/ReadVariableOpReadVariableOp>lstm_282_while_lstm_cell_384_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_282/while/lstm_cell_384/BiasAddBiasAdd$lstm_282/while/lstm_cell_384/add:z:0;lstm_282/while/lstm_cell_384/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_282/while/lstm_cell_384/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_282/while/lstm_cell_384/splitSplit5lstm_282/while/lstm_cell_384/split/split_dim:output:0-lstm_282/while/lstm_cell_384/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_282/while/lstm_cell_384/SigmoidSigmoid+lstm_282/while/lstm_cell_384/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_282/while/lstm_cell_384/Sigmoid_1Sigmoid+lstm_282/while/lstm_cell_384/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_282/while/lstm_cell_384/mulMul*lstm_282/while/lstm_cell_384/Sigmoid_1:y:0lstm_282_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_282/while/lstm_cell_384/ReluRelu+lstm_282/while/lstm_cell_384/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_282/while/lstm_cell_384/mul_1Mul(lstm_282/while/lstm_cell_384/Sigmoid:y:0/lstm_282/while/lstm_cell_384/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_282/while/lstm_cell_384/add_1AddV2$lstm_282/while/lstm_cell_384/mul:z:0&lstm_282/while/lstm_cell_384/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_282/while/lstm_cell_384/Sigmoid_2Sigmoid+lstm_282/while/lstm_cell_384/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_282/while/lstm_cell_384/Relu_1Relu&lstm_282/while/lstm_cell_384/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_282/while/lstm_cell_384/mul_2Mul*lstm_282/while/lstm_cell_384/Sigmoid_2:y:01lstm_282/while/lstm_cell_384/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_282/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_282_while_placeholder_1lstm_282_while_placeholder&lstm_282/while/lstm_cell_384/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_282/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_282/while/addAddV2lstm_282_while_placeholderlstm_282/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_282/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_282/while/add_1AddV2*lstm_282_while_lstm_282_while_loop_counterlstm_282/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_282/while/IdentityIdentitylstm_282/while/add_1:z:0^lstm_282/while/NoOp*
T0*
_output_shapes
: ?
lstm_282/while/Identity_1Identity0lstm_282_while_lstm_282_while_maximum_iterations^lstm_282/while/NoOp*
T0*
_output_shapes
: t
lstm_282/while/Identity_2Identitylstm_282/while/add:z:0^lstm_282/while/NoOp*
T0*
_output_shapes
: ?
lstm_282/while/Identity_3IdentityClstm_282/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_282/while/NoOp*
T0*
_output_shapes
: ?
lstm_282/while/Identity_4Identity&lstm_282/while/lstm_cell_384/mul_2:z:0^lstm_282/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_282/while/Identity_5Identity&lstm_282/while/lstm_cell_384/add_1:z:0^lstm_282/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_282/while/NoOpNoOp4^lstm_282/while/lstm_cell_384/BiasAdd/ReadVariableOp3^lstm_282/while/lstm_cell_384/MatMul/ReadVariableOp5^lstm_282/while/lstm_cell_384/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_282_while_identity lstm_282/while/Identity:output:0"?
lstm_282_while_identity_1"lstm_282/while/Identity_1:output:0"?
lstm_282_while_identity_2"lstm_282/while/Identity_2:output:0"?
lstm_282_while_identity_3"lstm_282/while/Identity_3:output:0"?
lstm_282_while_identity_4"lstm_282/while/Identity_4:output:0"?
lstm_282_while_identity_5"lstm_282/while/Identity_5:output:0"T
'lstm_282_while_lstm_282_strided_slice_1)lstm_282_while_lstm_282_strided_slice_1_0"~
<lstm_282_while_lstm_cell_384_biasadd_readvariableop_resource>lstm_282_while_lstm_cell_384_biasadd_readvariableop_resource_0"?
=lstm_282_while_lstm_cell_384_matmul_1_readvariableop_resource?lstm_282_while_lstm_cell_384_matmul_1_readvariableop_resource_0"|
;lstm_282_while_lstm_cell_384_matmul_readvariableop_resource=lstm_282_while_lstm_cell_384_matmul_readvariableop_resource_0"?
clstm_282_while_tensorarrayv2read_tensorlistgetitem_lstm_282_tensorarrayunstack_tensorlistfromtensorelstm_282_while_tensorarrayv2read_tensorlistgetitem_lstm_282_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_282/while/lstm_cell_384/BiasAdd/ReadVariableOp3lstm_282/while/lstm_cell_384/BiasAdd/ReadVariableOp2h
2lstm_282/while/lstm_cell_384/MatMul/ReadVariableOp2lstm_282/while/lstm_cell_384/MatMul/ReadVariableOp2l
4lstm_282/while/lstm_cell_384/MatMul_1/ReadVariableOp4lstm_282/while/lstm_cell_384/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2335538
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2335538___redundant_placeholder05
1while_while_cond_2335538___redundant_placeholder15
1while_while_cond_2335538___redundant_placeholder25
1while_while_cond_2335538___redundant_placeholder3
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
while_cond_2339848
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2339848___redundant_placeholder05
1while_while_cond_2339848___redundant_placeholder15
1while_while_cond_2339848___redundant_placeholder25
1while_while_cond_2339848___redundant_placeholder3
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
lstm_283_while_cond_2337428.
*lstm_283_while_lstm_283_while_loop_counter4
0lstm_283_while_lstm_283_while_maximum_iterations
lstm_283_while_placeholder 
lstm_283_while_placeholder_1 
lstm_283_while_placeholder_2 
lstm_283_while_placeholder_30
,lstm_283_while_less_lstm_283_strided_slice_1G
Clstm_283_while_lstm_283_while_cond_2337428___redundant_placeholder0G
Clstm_283_while_lstm_283_while_cond_2337428___redundant_placeholder1G
Clstm_283_while_lstm_283_while_cond_2337428___redundant_placeholder2G
Clstm_283_while_lstm_283_while_cond_2337428___redundant_placeholder3
lstm_283_while_identity
?
lstm_283/while/LessLesslstm_283_while_placeholder,lstm_283_while_less_lstm_283_strided_slice_1*
T0*
_output_shapes
: ]
lstm_283/while/IdentityIdentitylstm_283/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_283_while_identity lstm_283/while/Identity:output:0*(
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
?
#__inference__traced_restore_2340519
file_prefix2
 assignvariableop_dense_94_kernel:
.
 assignvariableop_1_dense_94_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_282_lstm_cell_282_kernel:	?M
:assignvariableop_8_lstm_282_lstm_cell_282_recurrent_kernel:	d?=
.assignvariableop_9_lstm_282_lstm_cell_282_bias:	?D
1assignvariableop_10_lstm_283_lstm_cell_283_kernel:	d?N
;assignvariableop_11_lstm_283_lstm_cell_283_recurrent_kernel:	2?>
/assignvariableop_12_lstm_283_lstm_cell_283_bias:	?C
1assignvariableop_13_lstm_284_lstm_cell_284_kernel:2(M
;assignvariableop_14_lstm_284_lstm_cell_284_recurrent_kernel:
(=
/assignvariableop_15_lstm_284_lstm_cell_284_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_94_kernel_m:
6
(assignvariableop_19_adam_dense_94_bias_m:K
8assignvariableop_20_adam_lstm_282_lstm_cell_282_kernel_m:	?U
Bassignvariableop_21_adam_lstm_282_lstm_cell_282_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_282_lstm_cell_282_bias_m:	?K
8assignvariableop_23_adam_lstm_283_lstm_cell_283_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_283_lstm_cell_283_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_283_lstm_cell_283_bias_m:	?J
8assignvariableop_26_adam_lstm_284_lstm_cell_284_kernel_m:2(T
Bassignvariableop_27_adam_lstm_284_lstm_cell_284_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_284_lstm_cell_284_bias_m:(<
*assignvariableop_29_adam_dense_94_kernel_v:
6
(assignvariableop_30_adam_dense_94_bias_v:K
8assignvariableop_31_adam_lstm_282_lstm_cell_282_kernel_v:	?U
Bassignvariableop_32_adam_lstm_282_lstm_cell_282_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_282_lstm_cell_282_bias_v:	?K
8assignvariableop_34_adam_lstm_283_lstm_cell_283_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_283_lstm_cell_283_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_283_lstm_cell_283_bias_v:	?J
8assignvariableop_37_adam_lstm_284_lstm_cell_284_kernel_v:2(T
Bassignvariableop_38_adam_lstm_284_lstm_cell_284_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_284_lstm_cell_284_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_94_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_94_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_282_lstm_cell_282_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_282_lstm_cell_282_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_282_lstm_cell_282_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_283_lstm_cell_283_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_283_lstm_cell_283_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_283_lstm_cell_283_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_284_lstm_cell_284_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_284_lstm_cell_284_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_284_lstm_cell_284_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_94_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_94_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_282_lstm_cell_282_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_282_lstm_cell_282_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_282_lstm_cell_282_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_283_lstm_cell_283_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_283_lstm_cell_283_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_283_lstm_cell_283_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_284_lstm_cell_284_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_284_lstm_cell_284_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_284_lstm_cell_284_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_94_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_94_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_282_lstm_cell_282_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_282_lstm_cell_282_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_282_lstm_cell_282_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_283_lstm_cell_283_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_283_lstm_cell_283_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_283_lstm_cell_283_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_284_lstm_cell_284_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_284_lstm_cell_284_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_284_lstm_cell_284_bias_vIdentity_39:output:0"/device:CPU:0*
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

?
lstm_283_while_cond_2337855.
*lstm_283_while_lstm_283_while_loop_counter4
0lstm_283_while_lstm_283_while_maximum_iterations
lstm_283_while_placeholder 
lstm_283_while_placeholder_1 
lstm_283_while_placeholder_2 
lstm_283_while_placeholder_30
,lstm_283_while_less_lstm_283_strided_slice_1G
Clstm_283_while_lstm_283_while_cond_2337855___redundant_placeholder0G
Clstm_283_while_lstm_283_while_cond_2337855___redundant_placeholder1G
Clstm_283_while_lstm_283_while_cond_2337855___redundant_placeholder2G
Clstm_283_while_lstm_283_while_cond_2337855___redundant_placeholder3
lstm_283_while_identity
?
lstm_283/while/LessLesslstm_283_while_placeholder,lstm_283_while_less_lstm_283_strided_slice_1*
T0*
_output_shapes
: ]
lstm_283/while/IdentityIdentitylstm_283/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_283_while_identity lstm_283/while/Identity:output:0*(
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
lstm_282_while_cond_2337716.
*lstm_282_while_lstm_282_while_loop_counter4
0lstm_282_while_lstm_282_while_maximum_iterations
lstm_282_while_placeholder 
lstm_282_while_placeholder_1 
lstm_282_while_placeholder_2 
lstm_282_while_placeholder_30
,lstm_282_while_less_lstm_282_strided_slice_1G
Clstm_282_while_lstm_282_while_cond_2337716___redundant_placeholder0G
Clstm_282_while_lstm_282_while_cond_2337716___redundant_placeholder1G
Clstm_282_while_lstm_282_while_cond_2337716___redundant_placeholder2G
Clstm_282_while_lstm_282_while_cond_2337716___redundant_placeholder3
lstm_282_while_identity
?
lstm_282/while/LessLesslstm_282_while_placeholder,lstm_282_while_less_lstm_282_strided_slice_1*
T0*
_output_shapes
: ]
lstm_282/while/IdentityIdentitylstm_282/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_282_while_identity lstm_282/while/Identity:output:0*(
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
while_body_2335539
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_385_2335563_0:	d?0
while_lstm_cell_385_2335565_0:	2?,
while_lstm_cell_385_2335567_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_385_2335563:	d?.
while_lstm_cell_385_2335565:	2?*
while_lstm_cell_385_2335567:	???+while/lstm_cell_385/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_385/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_385_2335563_0while_lstm_cell_385_2335565_0while_lstm_cell_385_2335567_0*
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
J__inference_lstm_cell_385_layer_call_and_return_conditional_losses_2335480?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_385/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_385/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_385/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_385/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_385_2335563while_lstm_cell_385_2335563_0"<
while_lstm_cell_385_2335565while_lstm_cell_385_2335565_0"<
while_lstm_cell_385_2335567while_lstm_cell_385_2335567_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_385/StatefulPartitionedCall+while/lstm_cell_385/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_282_layer_call_fn_2338118

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
E__inference_lstm_282_layer_call_and_return_conditional_losses_2336116s
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
?
?
*__inference_lstm_284_layer_call_fn_2339361

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
E__inference_lstm_284_layer_call_and_return_conditional_losses_2336632o
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
while_cond_2338187
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2338187___redundant_placeholder05
1while_while_cond_2338187___redundant_placeholder15
1while_while_cond_2338187___redundant_placeholder25
1while_while_cond_2338187___redundant_placeholder3
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
E__inference_lstm_282_layer_call_and_return_conditional_losses_2336962

inputs?
,lstm_cell_384_matmul_readvariableop_resource:	?A
.lstm_cell_384_matmul_1_readvariableop_resource:	d?<
-lstm_cell_384_biasadd_readvariableop_resource:	?
identity??$lstm_cell_384/BiasAdd/ReadVariableOp?#lstm_cell_384/MatMul/ReadVariableOp?%lstm_cell_384/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_384/MatMul/ReadVariableOpReadVariableOp,lstm_cell_384_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_384/MatMulMatMulstrided_slice_2:output:0+lstm_cell_384/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_384/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_384_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_384/MatMul_1MatMulzeros:output:0-lstm_cell_384/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_384/addAddV2lstm_cell_384/MatMul:product:0 lstm_cell_384/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_384/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_384_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_384/BiasAddBiasAddlstm_cell_384/add:z:0,lstm_cell_384/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_384/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_384/splitSplit&lstm_cell_384/split/split_dim:output:0lstm_cell_384/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_384/SigmoidSigmoidlstm_cell_384/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_384/Sigmoid_1Sigmoidlstm_cell_384/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_384/mulMullstm_cell_384/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_384/ReluRelulstm_cell_384/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_384/mul_1Mullstm_cell_384/Sigmoid:y:0 lstm_cell_384/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_384/add_1AddV2lstm_cell_384/mul:z:0lstm_cell_384/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_384/Sigmoid_2Sigmoidlstm_cell_384/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_384/Relu_1Relulstm_cell_384/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_384/mul_2Mullstm_cell_384/Sigmoid_2:y:0"lstm_cell_384/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_384_matmul_readvariableop_resource.lstm_cell_384_matmul_1_readvariableop_resource-lstm_cell_384_biasadd_readvariableop_resource*
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
while_body_2336878*
condR
while_cond_2336877*K
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
NoOpNoOp%^lstm_cell_384/BiasAdd/ReadVariableOp$^lstm_cell_384/MatMul/ReadVariableOp&^lstm_cell_384/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_384/BiasAdd/ReadVariableOp$lstm_cell_384/BiasAdd/ReadVariableOp2J
#lstm_cell_384/MatMul/ReadVariableOp#lstm_cell_384/MatMul/ReadVariableOp2N
%lstm_cell_384/MatMul_1/ReadVariableOp%lstm_cell_384/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_282_layer_call_and_return_conditional_losses_2338415
inputs_0?
,lstm_cell_384_matmul_readvariableop_resource:	?A
.lstm_cell_384_matmul_1_readvariableop_resource:	d?<
-lstm_cell_384_biasadd_readvariableop_resource:	?
identity??$lstm_cell_384/BiasAdd/ReadVariableOp?#lstm_cell_384/MatMul/ReadVariableOp?%lstm_cell_384/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_384/MatMul/ReadVariableOpReadVariableOp,lstm_cell_384_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_384/MatMulMatMulstrided_slice_2:output:0+lstm_cell_384/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_384/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_384_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_384/MatMul_1MatMulzeros:output:0-lstm_cell_384/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_384/addAddV2lstm_cell_384/MatMul:product:0 lstm_cell_384/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_384/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_384_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_384/BiasAddBiasAddlstm_cell_384/add:z:0,lstm_cell_384/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_384/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_384/splitSplit&lstm_cell_384/split/split_dim:output:0lstm_cell_384/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_384/SigmoidSigmoidlstm_cell_384/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_384/Sigmoid_1Sigmoidlstm_cell_384/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_384/mulMullstm_cell_384/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_384/ReluRelulstm_cell_384/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_384/mul_1Mullstm_cell_384/Sigmoid:y:0 lstm_cell_384/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_384/add_1AddV2lstm_cell_384/mul:z:0lstm_cell_384/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_384/Sigmoid_2Sigmoidlstm_cell_384/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_384/Relu_1Relulstm_cell_384/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_384/mul_2Mullstm_cell_384/Sigmoid_2:y:0"lstm_cell_384/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_384_matmul_readvariableop_resource.lstm_cell_384_matmul_1_readvariableop_resource-lstm_cell_384_biasadd_readvariableop_resource*
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
while_body_2338331*
condR
while_cond_2338330*K
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
NoOpNoOp%^lstm_cell_384/BiasAdd/ReadVariableOp$^lstm_cell_384/MatMul/ReadVariableOp&^lstm_cell_384/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_384/BiasAdd/ReadVariableOp$lstm_cell_384/BiasAdd/ReadVariableOp2J
#lstm_cell_384/MatMul/ReadVariableOp#lstm_cell_384/MatMul/ReadVariableOp2N
%lstm_cell_384/MatMul_1/ReadVariableOp%lstm_cell_384/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_2339706
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_386_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_386_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_386_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_386_matmul_readvariableop_resource:2(F
4while_lstm_cell_386_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_386_biasadd_readvariableop_resource:(??*while/lstm_cell_386/BiasAdd/ReadVariableOp?)while/lstm_cell_386/MatMul/ReadVariableOp?+while/lstm_cell_386/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_386/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_386_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_386/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_386/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_386/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_386_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_386/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_386/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_386/addAddV2$while/lstm_cell_386/MatMul:product:0&while/lstm_cell_386/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_386/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_386_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_386/BiasAddBiasAddwhile/lstm_cell_386/add:z:02while/lstm_cell_386/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_386/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_386/splitSplit,while/lstm_cell_386/split/split_dim:output:0$while/lstm_cell_386/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_386/SigmoidSigmoid"while/lstm_cell_386/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_386/Sigmoid_1Sigmoid"while/lstm_cell_386/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_386/mulMul!while/lstm_cell_386/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_386/ReluRelu"while/lstm_cell_386/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_386/mul_1Mulwhile/lstm_cell_386/Sigmoid:y:0&while/lstm_cell_386/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_386/add_1AddV2while/lstm_cell_386/mul:z:0while/lstm_cell_386/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_386/Sigmoid_2Sigmoid"while/lstm_cell_386/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_386/Relu_1Reluwhile/lstm_cell_386/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_386/mul_2Mul!while/lstm_cell_386/Sigmoid_2:y:0(while/lstm_cell_386/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_386/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_386/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_386/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_386/BiasAdd/ReadVariableOp*^while/lstm_cell_386/MatMul/ReadVariableOp,^while/lstm_cell_386/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_386_biasadd_readvariableop_resource5while_lstm_cell_386_biasadd_readvariableop_resource_0"n
4while_lstm_cell_386_matmul_1_readvariableop_resource6while_lstm_cell_386_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_386_matmul_readvariableop_resource4while_lstm_cell_386_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_386/BiasAdd/ReadVariableOp*while/lstm_cell_386/BiasAdd/ReadVariableOp2V
)while/lstm_cell_386/MatMul/ReadVariableOp)while/lstm_cell_386/MatMul/ReadVariableOp2Z
+while/lstm_cell_386/MatMul_1/ReadVariableOp+while/lstm_cell_386/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_386_layer_call_and_return_conditional_losses_2340214

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
while_cond_2336031
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2336031___redundant_placeholder05
1while_while_cond_2336031___redundant_placeholder15
1while_while_cond_2336031___redundant_placeholder25
1while_while_cond_2336031___redundant_placeholder3
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
while_body_2336332
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_386_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_386_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_386_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_386_matmul_readvariableop_resource:2(F
4while_lstm_cell_386_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_386_biasadd_readvariableop_resource:(??*while/lstm_cell_386/BiasAdd/ReadVariableOp?)while/lstm_cell_386/MatMul/ReadVariableOp?+while/lstm_cell_386/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_386/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_386_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_386/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_386/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_386/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_386_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_386/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_386/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_386/addAddV2$while/lstm_cell_386/MatMul:product:0&while/lstm_cell_386/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_386/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_386_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_386/BiasAddBiasAddwhile/lstm_cell_386/add:z:02while/lstm_cell_386/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_386/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_386/splitSplit,while/lstm_cell_386/split/split_dim:output:0$while/lstm_cell_386/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_386/SigmoidSigmoid"while/lstm_cell_386/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_386/Sigmoid_1Sigmoid"while/lstm_cell_386/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_386/mulMul!while/lstm_cell_386/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_386/ReluRelu"while/lstm_cell_386/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_386/mul_1Mulwhile/lstm_cell_386/Sigmoid:y:0&while/lstm_cell_386/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_386/add_1AddV2while/lstm_cell_386/mul:z:0while/lstm_cell_386/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_386/Sigmoid_2Sigmoid"while/lstm_cell_386/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_386/Relu_1Reluwhile/lstm_cell_386/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_386/mul_2Mul!while/lstm_cell_386/Sigmoid_2:y:0(while/lstm_cell_386/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_386/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_386/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_386/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_386/BiasAdd/ReadVariableOp*^while/lstm_cell_386/MatMul/ReadVariableOp,^while/lstm_cell_386/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_386_biasadd_readvariableop_resource5while_lstm_cell_386_biasadd_readvariableop_resource_0"n
4while_lstm_cell_386_matmul_1_readvariableop_resource6while_lstm_cell_386_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_386_matmul_readvariableop_resource4while_lstm_cell_386_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_386/BiasAdd/ReadVariableOp*while/lstm_cell_386/BiasAdd/ReadVariableOp2V
)while/lstm_cell_386/MatMul/ReadVariableOp)while/lstm_cell_386/MatMul/ReadVariableOp2Z
+while/lstm_cell_386/MatMul_1/ReadVariableOp+while/lstm_cell_386/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_284_while_cond_2337994.
*lstm_284_while_lstm_284_while_loop_counter4
0lstm_284_while_lstm_284_while_maximum_iterations
lstm_284_while_placeholder 
lstm_284_while_placeholder_1 
lstm_284_while_placeholder_2 
lstm_284_while_placeholder_30
,lstm_284_while_less_lstm_284_strided_slice_1G
Clstm_284_while_lstm_284_while_cond_2337994___redundant_placeholder0G
Clstm_284_while_lstm_284_while_cond_2337994___redundant_placeholder1G
Clstm_284_while_lstm_284_while_cond_2337994___redundant_placeholder2G
Clstm_284_while_lstm_284_while_cond_2337994___redundant_placeholder3
lstm_284_while_identity
?
lstm_284/while/LessLesslstm_284_while_placeholder,lstm_284_while_less_lstm_284_strided_slice_1*
T0*
_output_shapes
: ]
lstm_284/while/IdentityIdentitylstm_284/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_284_while_identity lstm_284/while/Identity:output:0*(
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
/__inference_lstm_cell_386_layer_call_fn_2340165

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
J__inference_lstm_cell_386_layer_call_and_return_conditional_losses_2335684o
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
*__inference_lstm_284_layer_call_fn_2339339
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
E__inference_lstm_284_layer_call_and_return_conditional_losses_2335958o
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

?
lstm_282_while_cond_2337289.
*lstm_282_while_lstm_282_while_loop_counter4
0lstm_282_while_lstm_282_while_maximum_iterations
lstm_282_while_placeholder 
lstm_282_while_placeholder_1 
lstm_282_while_placeholder_2 
lstm_282_while_placeholder_30
,lstm_282_while_less_lstm_282_strided_slice_1G
Clstm_282_while_lstm_282_while_cond_2337289___redundant_placeholder0G
Clstm_282_while_lstm_282_while_cond_2337289___redundant_placeholder1G
Clstm_282_while_lstm_282_while_cond_2337289___redundant_placeholder2G
Clstm_282_while_lstm_282_while_cond_2337289___redundant_placeholder3
lstm_282_while_identity
?
lstm_282/while/LessLesslstm_282_while_placeholder,lstm_282_while_less_lstm_282_strided_slice_1*
T0*
_output_shapes
: ]
lstm_282/while/IdentityIdentitylstm_282/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_282_while_identity lstm_282/while/Identity:output:0*(
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
while_body_2338804
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_385_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_385_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_385_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_385_matmul_readvariableop_resource:	d?G
4while_lstm_cell_385_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_385_biasadd_readvariableop_resource:	???*while/lstm_cell_385/BiasAdd/ReadVariableOp?)while/lstm_cell_385/MatMul/ReadVariableOp?+while/lstm_cell_385/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_385/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_385_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_385/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_385/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_385/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_385_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_385/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_385/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_385/addAddV2$while/lstm_cell_385/MatMul:product:0&while/lstm_cell_385/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_385/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_385_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_385/BiasAddBiasAddwhile/lstm_cell_385/add:z:02while/lstm_cell_385/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_385/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_385/splitSplit,while/lstm_cell_385/split/split_dim:output:0$while/lstm_cell_385/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_385/SigmoidSigmoid"while/lstm_cell_385/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_385/Sigmoid_1Sigmoid"while/lstm_cell_385/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_385/mulMul!while/lstm_cell_385/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_385/ReluRelu"while/lstm_cell_385/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_385/mul_1Mulwhile/lstm_cell_385/Sigmoid:y:0&while/lstm_cell_385/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_385/add_1AddV2while/lstm_cell_385/mul:z:0while/lstm_cell_385/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_385/Sigmoid_2Sigmoid"while/lstm_cell_385/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_385/Relu_1Reluwhile/lstm_cell_385/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_385/mul_2Mul!while/lstm_cell_385/Sigmoid_2:y:0(while/lstm_cell_385/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_385/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_385/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_385/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_385/BiasAdd/ReadVariableOp*^while/lstm_cell_385/MatMul/ReadVariableOp,^while/lstm_cell_385/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_385_biasadd_readvariableop_resource5while_lstm_cell_385_biasadd_readvariableop_resource_0"n
4while_lstm_cell_385_matmul_1_readvariableop_resource6while_lstm_cell_385_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_385_matmul_readvariableop_resource4while_lstm_cell_385_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_385/BiasAdd/ReadVariableOp*while/lstm_cell_385/BiasAdd/ReadVariableOp2V
)while/lstm_cell_385/MatMul/ReadVariableOp)while/lstm_cell_385/MatMul/ReadVariableOp2Z
+while/lstm_cell_385/MatMul_1/ReadVariableOp+while/lstm_cell_385/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_284_layer_call_and_return_conditional_losses_2336632

inputs>
,lstm_cell_386_matmul_readvariableop_resource:2(@
.lstm_cell_386_matmul_1_readvariableop_resource:
(;
-lstm_cell_386_biasadd_readvariableop_resource:(
identity??$lstm_cell_386/BiasAdd/ReadVariableOp?#lstm_cell_386/MatMul/ReadVariableOp?%lstm_cell_386/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_386/MatMul/ReadVariableOpReadVariableOp,lstm_cell_386_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_386/MatMulMatMulstrided_slice_2:output:0+lstm_cell_386/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_386/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_386_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_386/MatMul_1MatMulzeros:output:0-lstm_cell_386/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_386/addAddV2lstm_cell_386/MatMul:product:0 lstm_cell_386/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_386/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_386_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_386/BiasAddBiasAddlstm_cell_386/add:z:0,lstm_cell_386/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_386/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_386/splitSplit&lstm_cell_386/split/split_dim:output:0lstm_cell_386/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_386/SigmoidSigmoidlstm_cell_386/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_386/Sigmoid_1Sigmoidlstm_cell_386/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_386/mulMullstm_cell_386/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_386/ReluRelulstm_cell_386/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_386/mul_1Mullstm_cell_386/Sigmoid:y:0 lstm_cell_386/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_386/add_1AddV2lstm_cell_386/mul:z:0lstm_cell_386/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_386/Sigmoid_2Sigmoidlstm_cell_386/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_386/Relu_1Relulstm_cell_386/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_386/mul_2Mullstm_cell_386/Sigmoid_2:y:0"lstm_cell_386/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_386_matmul_readvariableop_resource.lstm_cell_386_matmul_1_readvariableop_resource-lstm_cell_386_biasadd_readvariableop_resource*
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
while_body_2336548*
condR
while_cond_2336547*K
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
NoOpNoOp%^lstm_cell_386/BiasAdd/ReadVariableOp$^lstm_cell_386/MatMul/ReadVariableOp&^lstm_cell_386/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_386/BiasAdd/ReadVariableOp$lstm_cell_386/BiasAdd/ReadVariableOp2J
#lstm_cell_386/MatMul/ReadVariableOp#lstm_cell_386/MatMul/ReadVariableOp2N
%lstm_cell_386/MatMul_1/ReadVariableOp%lstm_cell_386/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_2336548
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_386_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_386_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_386_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_386_matmul_readvariableop_resource:2(F
4while_lstm_cell_386_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_386_biasadd_readvariableop_resource:(??*while/lstm_cell_386/BiasAdd/ReadVariableOp?)while/lstm_cell_386/MatMul/ReadVariableOp?+while/lstm_cell_386/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_386/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_386_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_386/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_386/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_386/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_386_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_386/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_386/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_386/addAddV2$while/lstm_cell_386/MatMul:product:0&while/lstm_cell_386/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_386/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_386_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_386/BiasAddBiasAddwhile/lstm_cell_386/add:z:02while/lstm_cell_386/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_386/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_386/splitSplit,while/lstm_cell_386/split/split_dim:output:0$while/lstm_cell_386/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_386/SigmoidSigmoid"while/lstm_cell_386/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_386/Sigmoid_1Sigmoid"while/lstm_cell_386/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_386/mulMul!while/lstm_cell_386/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_386/ReluRelu"while/lstm_cell_386/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_386/mul_1Mulwhile/lstm_cell_386/Sigmoid:y:0&while/lstm_cell_386/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_386/add_1AddV2while/lstm_cell_386/mul:z:0while/lstm_cell_386/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_386/Sigmoid_2Sigmoid"while/lstm_cell_386/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_386/Relu_1Reluwhile/lstm_cell_386/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_386/mul_2Mul!while/lstm_cell_386/Sigmoid_2:y:0(while/lstm_cell_386/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_386/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_386/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_386/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_386/BiasAdd/ReadVariableOp*^while/lstm_cell_386/MatMul/ReadVariableOp,^while/lstm_cell_386/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_386_biasadd_readvariableop_resource5while_lstm_cell_386_biasadd_readvariableop_resource_0"n
4while_lstm_cell_386_matmul_1_readvariableop_resource6while_lstm_cell_386_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_386_matmul_readvariableop_resource4while_lstm_cell_386_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_386/BiasAdd/ReadVariableOp*while/lstm_cell_386/BiasAdd/ReadVariableOp2V
)while/lstm_cell_386/MatMul/ReadVariableOp)while/lstm_cell_386/MatMul/ReadVariableOp2Z
+while/lstm_cell_386/MatMul_1/ReadVariableOp+while/lstm_cell_386/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_94_layer_call_and_return_conditional_losses_2337030

inputs#
lstm_282_2337003:	?#
lstm_282_2337005:	d?
lstm_282_2337007:	?#
lstm_283_2337010:	d?#
lstm_283_2337012:	2?
lstm_283_2337014:	?"
lstm_284_2337017:2("
lstm_284_2337019:
(
lstm_284_2337021:("
dense_94_2337024:

dense_94_2337026:
identity?? dense_94/StatefulPartitionedCall? lstm_282/StatefulPartitionedCall? lstm_283/StatefulPartitionedCall? lstm_284/StatefulPartitionedCall?
 lstm_282/StatefulPartitionedCallStatefulPartitionedCallinputslstm_282_2337003lstm_282_2337005lstm_282_2337007*
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
E__inference_lstm_282_layer_call_and_return_conditional_losses_2336962?
 lstm_283/StatefulPartitionedCallStatefulPartitionedCall)lstm_282/StatefulPartitionedCall:output:0lstm_283_2337010lstm_283_2337012lstm_283_2337014*
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
E__inference_lstm_283_layer_call_and_return_conditional_losses_2336797?
 lstm_284/StatefulPartitionedCallStatefulPartitionedCall)lstm_283/StatefulPartitionedCall:output:0lstm_284_2337017lstm_284_2337019lstm_284_2337021*
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
E__inference_lstm_284_layer_call_and_return_conditional_losses_2336632?
 dense_94/StatefulPartitionedCallStatefulPartitionedCall)lstm_284/StatefulPartitionedCall:output:0dense_94_2337024dense_94_2337026*
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
E__inference_dense_94_layer_call_and_return_conditional_losses_2336434x
IdentityIdentity)dense_94/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_94/StatefulPartitionedCall!^lstm_282/StatefulPartitionedCall!^lstm_283/StatefulPartitionedCall!^lstm_284/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_94/StatefulPartitionedCall dense_94/StatefulPartitionedCall2D
 lstm_282/StatefulPartitionedCall lstm_282/StatefulPartitionedCall2D
 lstm_283/StatefulPartitionedCall lstm_283/StatefulPartitionedCall2D
 lstm_284/StatefulPartitionedCall lstm_284/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_2335189
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_384_2335213_0:	?0
while_lstm_cell_384_2335215_0:	d?,
while_lstm_cell_384_2335217_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_384_2335213:	?.
while_lstm_cell_384_2335215:	d?*
while_lstm_cell_384_2335217:	???+while/lstm_cell_384/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_384/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_384_2335213_0while_lstm_cell_384_2335215_0while_lstm_cell_384_2335217_0*
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
J__inference_lstm_cell_384_layer_call_and_return_conditional_losses_2335130?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_384/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_384/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_384/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_384/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_384_2335213while_lstm_cell_384_2335213_0"<
while_lstm_cell_384_2335215while_lstm_cell_384_2335215_0"<
while_lstm_cell_384_2335217while_lstm_cell_384_2335217_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_384/StatefulPartitionedCall+while/lstm_cell_384/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_386_layer_call_and_return_conditional_losses_2335684

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
/__inference_lstm_cell_385_layer_call_fn_2340067

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
J__inference_lstm_cell_385_layer_call_and_return_conditional_losses_2335334o
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
?
*__inference_lstm_282_layer_call_fn_2338107
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
E__inference_lstm_282_layer_call_and_return_conditional_losses_2335258|
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
?#
?
while_body_2335889
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_386_2335913_0:2(/
while_lstm_cell_386_2335915_0:
(+
while_lstm_cell_386_2335917_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_386_2335913:2(-
while_lstm_cell_386_2335915:
()
while_lstm_cell_386_2335917:(??+while/lstm_cell_386/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_386/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_386_2335913_0while_lstm_cell_386_2335915_0while_lstm_cell_386_2335917_0*
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
J__inference_lstm_cell_386_layer_call_and_return_conditional_losses_2335830?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_386/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_386/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_386/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_386/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_386_2335913while_lstm_cell_386_2335913_0"<
while_lstm_cell_386_2335915while_lstm_cell_386_2335915_0"<
while_lstm_cell_386_2335917while_lstm_cell_386_2335917_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_386/StatefulPartitionedCall+while/lstm_cell_386/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_385_layer_call_fn_2340084

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
J__inference_lstm_cell_385_layer_call_and_return_conditional_losses_2335480o
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
while_cond_2338946
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2338946___redundant_placeholder05
1while_while_cond_2338946___redundant_placeholder15
1while_while_cond_2338946___redundant_placeholder25
1while_while_cond_2338946___redundant_placeholder3
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

lstm_283_while_body_2337429.
*lstm_283_while_lstm_283_while_loop_counter4
0lstm_283_while_lstm_283_while_maximum_iterations
lstm_283_while_placeholder 
lstm_283_while_placeholder_1 
lstm_283_while_placeholder_2 
lstm_283_while_placeholder_3-
)lstm_283_while_lstm_283_strided_slice_1_0i
elstm_283_while_tensorarrayv2read_tensorlistgetitem_lstm_283_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_283_while_lstm_cell_385_matmul_readvariableop_resource_0:	d?R
?lstm_283_while_lstm_cell_385_matmul_1_readvariableop_resource_0:	2?M
>lstm_283_while_lstm_cell_385_biasadd_readvariableop_resource_0:	?
lstm_283_while_identity
lstm_283_while_identity_1
lstm_283_while_identity_2
lstm_283_while_identity_3
lstm_283_while_identity_4
lstm_283_while_identity_5+
'lstm_283_while_lstm_283_strided_slice_1g
clstm_283_while_tensorarrayv2read_tensorlistgetitem_lstm_283_tensorarrayunstack_tensorlistfromtensorN
;lstm_283_while_lstm_cell_385_matmul_readvariableop_resource:	d?P
=lstm_283_while_lstm_cell_385_matmul_1_readvariableop_resource:	2?K
<lstm_283_while_lstm_cell_385_biasadd_readvariableop_resource:	???3lstm_283/while/lstm_cell_385/BiasAdd/ReadVariableOp?2lstm_283/while/lstm_cell_385/MatMul/ReadVariableOp?4lstm_283/while/lstm_cell_385/MatMul_1/ReadVariableOp?
@lstm_283/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_283/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_283_while_tensorarrayv2read_tensorlistgetitem_lstm_283_tensorarrayunstack_tensorlistfromtensor_0lstm_283_while_placeholderIlstm_283/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_283/while/lstm_cell_385/MatMul/ReadVariableOpReadVariableOp=lstm_283_while_lstm_cell_385_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_283/while/lstm_cell_385/MatMulMatMul9lstm_283/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_283/while/lstm_cell_385/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_283/while/lstm_cell_385/MatMul_1/ReadVariableOpReadVariableOp?lstm_283_while_lstm_cell_385_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_283/while/lstm_cell_385/MatMul_1MatMullstm_283_while_placeholder_2<lstm_283/while/lstm_cell_385/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_283/while/lstm_cell_385/addAddV2-lstm_283/while/lstm_cell_385/MatMul:product:0/lstm_283/while/lstm_cell_385/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_283/while/lstm_cell_385/BiasAdd/ReadVariableOpReadVariableOp>lstm_283_while_lstm_cell_385_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_283/while/lstm_cell_385/BiasAddBiasAdd$lstm_283/while/lstm_cell_385/add:z:0;lstm_283/while/lstm_cell_385/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_283/while/lstm_cell_385/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_283/while/lstm_cell_385/splitSplit5lstm_283/while/lstm_cell_385/split/split_dim:output:0-lstm_283/while/lstm_cell_385/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_283/while/lstm_cell_385/SigmoidSigmoid+lstm_283/while/lstm_cell_385/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_283/while/lstm_cell_385/Sigmoid_1Sigmoid+lstm_283/while/lstm_cell_385/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_283/while/lstm_cell_385/mulMul*lstm_283/while/lstm_cell_385/Sigmoid_1:y:0lstm_283_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_283/while/lstm_cell_385/ReluRelu+lstm_283/while/lstm_cell_385/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_283/while/lstm_cell_385/mul_1Mul(lstm_283/while/lstm_cell_385/Sigmoid:y:0/lstm_283/while/lstm_cell_385/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_283/while/lstm_cell_385/add_1AddV2$lstm_283/while/lstm_cell_385/mul:z:0&lstm_283/while/lstm_cell_385/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_283/while/lstm_cell_385/Sigmoid_2Sigmoid+lstm_283/while/lstm_cell_385/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_283/while/lstm_cell_385/Relu_1Relu&lstm_283/while/lstm_cell_385/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_283/while/lstm_cell_385/mul_2Mul*lstm_283/while/lstm_cell_385/Sigmoid_2:y:01lstm_283/while/lstm_cell_385/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_283/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_283_while_placeholder_1lstm_283_while_placeholder&lstm_283/while/lstm_cell_385/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_283/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_283/while/addAddV2lstm_283_while_placeholderlstm_283/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_283/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_283/while/add_1AddV2*lstm_283_while_lstm_283_while_loop_counterlstm_283/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_283/while/IdentityIdentitylstm_283/while/add_1:z:0^lstm_283/while/NoOp*
T0*
_output_shapes
: ?
lstm_283/while/Identity_1Identity0lstm_283_while_lstm_283_while_maximum_iterations^lstm_283/while/NoOp*
T0*
_output_shapes
: t
lstm_283/while/Identity_2Identitylstm_283/while/add:z:0^lstm_283/while/NoOp*
T0*
_output_shapes
: ?
lstm_283/while/Identity_3IdentityClstm_283/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_283/while/NoOp*
T0*
_output_shapes
: ?
lstm_283/while/Identity_4Identity&lstm_283/while/lstm_cell_385/mul_2:z:0^lstm_283/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_283/while/Identity_5Identity&lstm_283/while/lstm_cell_385/add_1:z:0^lstm_283/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_283/while/NoOpNoOp4^lstm_283/while/lstm_cell_385/BiasAdd/ReadVariableOp3^lstm_283/while/lstm_cell_385/MatMul/ReadVariableOp5^lstm_283/while/lstm_cell_385/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_283_while_identity lstm_283/while/Identity:output:0"?
lstm_283_while_identity_1"lstm_283/while/Identity_1:output:0"?
lstm_283_while_identity_2"lstm_283/while/Identity_2:output:0"?
lstm_283_while_identity_3"lstm_283/while/Identity_3:output:0"?
lstm_283_while_identity_4"lstm_283/while/Identity_4:output:0"?
lstm_283_while_identity_5"lstm_283/while/Identity_5:output:0"T
'lstm_283_while_lstm_283_strided_slice_1)lstm_283_while_lstm_283_strided_slice_1_0"~
<lstm_283_while_lstm_cell_385_biasadd_readvariableop_resource>lstm_283_while_lstm_cell_385_biasadd_readvariableop_resource_0"?
=lstm_283_while_lstm_cell_385_matmul_1_readvariableop_resource?lstm_283_while_lstm_cell_385_matmul_1_readvariableop_resource_0"|
;lstm_283_while_lstm_cell_385_matmul_readvariableop_resource=lstm_283_while_lstm_cell_385_matmul_readvariableop_resource_0"?
clstm_283_while_tensorarrayv2read_tensorlistgetitem_lstm_283_tensorarrayunstack_tensorlistfromtensorelstm_283_while_tensorarrayv2read_tensorlistgetitem_lstm_283_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_283/while/lstm_cell_385/BiasAdd/ReadVariableOp3lstm_283/while/lstm_cell_385/BiasAdd/ReadVariableOp2h
2lstm_283/while/lstm_cell_385/MatMul/ReadVariableOp2lstm_283/while/lstm_cell_385/MatMul/ReadVariableOp2l
4lstm_283/while/lstm_cell_385/MatMul_1/ReadVariableOp4lstm_283/while/lstm_cell_385/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2336032
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_384_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_384_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_384_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_384_matmul_readvariableop_resource:	?G
4while_lstm_cell_384_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_384_biasadd_readvariableop_resource:	???*while/lstm_cell_384/BiasAdd/ReadVariableOp?)while/lstm_cell_384/MatMul/ReadVariableOp?+while/lstm_cell_384/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_384/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_384_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_384/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_384/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_384/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_384_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_384/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_384/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_384/addAddV2$while/lstm_cell_384/MatMul:product:0&while/lstm_cell_384/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_384/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_384_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_384/BiasAddBiasAddwhile/lstm_cell_384/add:z:02while/lstm_cell_384/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_384/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_384/splitSplit,while/lstm_cell_384/split/split_dim:output:0$while/lstm_cell_384/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_384/SigmoidSigmoid"while/lstm_cell_384/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_384/Sigmoid_1Sigmoid"while/lstm_cell_384/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_384/mulMul!while/lstm_cell_384/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_384/ReluRelu"while/lstm_cell_384/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_384/mul_1Mulwhile/lstm_cell_384/Sigmoid:y:0&while/lstm_cell_384/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_384/add_1AddV2while/lstm_cell_384/mul:z:0while/lstm_cell_384/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_384/Sigmoid_2Sigmoid"while/lstm_cell_384/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_384/Relu_1Reluwhile/lstm_cell_384/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_384/mul_2Mul!while/lstm_cell_384/Sigmoid_2:y:0(while/lstm_cell_384/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_384/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_384/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_384/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_384/BiasAdd/ReadVariableOp*^while/lstm_cell_384/MatMul/ReadVariableOp,^while/lstm_cell_384/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_384_biasadd_readvariableop_resource5while_lstm_cell_384_biasadd_readvariableop_resource_0"n
4while_lstm_cell_384_matmul_1_readvariableop_resource6while_lstm_cell_384_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_384_matmul_readvariableop_resource4while_lstm_cell_384_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_384/BiasAdd/ReadVariableOp*while/lstm_cell_384/BiasAdd/ReadVariableOp2V
)while/lstm_cell_384/MatMul/ReadVariableOp)while/lstm_cell_384/MatMul/ReadVariableOp2Z
+while/lstm_cell_384/MatMul_1/ReadVariableOp+while/lstm_cell_384/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_282_layer_call_fn_2338129

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
E__inference_lstm_282_layer_call_and_return_conditional_losses_2336962s
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
?
while_body_2338617
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_384_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_384_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_384_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_384_matmul_readvariableop_resource:	?G
4while_lstm_cell_384_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_384_biasadd_readvariableop_resource:	???*while/lstm_cell_384/BiasAdd/ReadVariableOp?)while/lstm_cell_384/MatMul/ReadVariableOp?+while/lstm_cell_384/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_384/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_384_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_384/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_384/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_384/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_384_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_384/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_384/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_384/addAddV2$while/lstm_cell_384/MatMul:product:0&while/lstm_cell_384/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_384/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_384_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_384/BiasAddBiasAddwhile/lstm_cell_384/add:z:02while/lstm_cell_384/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_384/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_384/splitSplit,while/lstm_cell_384/split/split_dim:output:0$while/lstm_cell_384/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_384/SigmoidSigmoid"while/lstm_cell_384/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_384/Sigmoid_1Sigmoid"while/lstm_cell_384/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_384/mulMul!while/lstm_cell_384/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_384/ReluRelu"while/lstm_cell_384/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_384/mul_1Mulwhile/lstm_cell_384/Sigmoid:y:0&while/lstm_cell_384/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_384/add_1AddV2while/lstm_cell_384/mul:z:0while/lstm_cell_384/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_384/Sigmoid_2Sigmoid"while/lstm_cell_384/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_384/Relu_1Reluwhile/lstm_cell_384/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_384/mul_2Mul!while/lstm_cell_384/Sigmoid_2:y:0(while/lstm_cell_384/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_384/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_384/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_384/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_384/BiasAdd/ReadVariableOp*^while/lstm_cell_384/MatMul/ReadVariableOp,^while/lstm_cell_384/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_384_biasadd_readvariableop_resource5while_lstm_cell_384_biasadd_readvariableop_resource_0"n
4while_lstm_cell_384_matmul_1_readvariableop_resource6while_lstm_cell_384_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_384_matmul_readvariableop_resource4while_lstm_cell_384_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_384/BiasAdd/ReadVariableOp*while/lstm_cell_384/BiasAdd/ReadVariableOp2V
)while/lstm_cell_384/MatMul/ReadVariableOp)while/lstm_cell_384/MatMul/ReadVariableOp2Z
+while/lstm_cell_384/MatMul_1/ReadVariableOp+while/lstm_cell_384/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
??
?
J__inference_sequential_94_layer_call_and_return_conditional_losses_2338085

inputsH
5lstm_282_lstm_cell_384_matmul_readvariableop_resource:	?J
7lstm_282_lstm_cell_384_matmul_1_readvariableop_resource:	d?E
6lstm_282_lstm_cell_384_biasadd_readvariableop_resource:	?H
5lstm_283_lstm_cell_385_matmul_readvariableop_resource:	d?J
7lstm_283_lstm_cell_385_matmul_1_readvariableop_resource:	2?E
6lstm_283_lstm_cell_385_biasadd_readvariableop_resource:	?G
5lstm_284_lstm_cell_386_matmul_readvariableop_resource:2(I
7lstm_284_lstm_cell_386_matmul_1_readvariableop_resource:
(D
6lstm_284_lstm_cell_386_biasadd_readvariableop_resource:(9
'dense_94_matmul_readvariableop_resource:
6
(dense_94_biasadd_readvariableop_resource:
identity??dense_94/BiasAdd/ReadVariableOp?dense_94/MatMul/ReadVariableOp?-lstm_282/lstm_cell_384/BiasAdd/ReadVariableOp?,lstm_282/lstm_cell_384/MatMul/ReadVariableOp?.lstm_282/lstm_cell_384/MatMul_1/ReadVariableOp?lstm_282/while?-lstm_283/lstm_cell_385/BiasAdd/ReadVariableOp?,lstm_283/lstm_cell_385/MatMul/ReadVariableOp?.lstm_283/lstm_cell_385/MatMul_1/ReadVariableOp?lstm_283/while?-lstm_284/lstm_cell_386/BiasAdd/ReadVariableOp?,lstm_284/lstm_cell_386/MatMul/ReadVariableOp?.lstm_284/lstm_cell_386/MatMul_1/ReadVariableOp?lstm_284/whileD
lstm_282/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_282/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_282/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_282/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_282/strided_sliceStridedSlicelstm_282/Shape:output:0%lstm_282/strided_slice/stack:output:0'lstm_282/strided_slice/stack_1:output:0'lstm_282/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_282/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_282/zeros/packedPacklstm_282/strided_slice:output:0 lstm_282/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_282/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_282/zerosFilllstm_282/zeros/packed:output:0lstm_282/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_282/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_282/zeros_1/packedPacklstm_282/strided_slice:output:0"lstm_282/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_282/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_282/zeros_1Fill lstm_282/zeros_1/packed:output:0lstm_282/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_282/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_282/transpose	Transposeinputs lstm_282/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_282/Shape_1Shapelstm_282/transpose:y:0*
T0*
_output_shapes
:h
lstm_282/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_282/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_282/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_282/strided_slice_1StridedSlicelstm_282/Shape_1:output:0'lstm_282/strided_slice_1/stack:output:0)lstm_282/strided_slice_1/stack_1:output:0)lstm_282/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_282/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_282/TensorArrayV2TensorListReserve-lstm_282/TensorArrayV2/element_shape:output:0!lstm_282/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_282/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_282/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_282/transpose:y:0Glstm_282/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_282/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_282/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_282/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_282/strided_slice_2StridedSlicelstm_282/transpose:y:0'lstm_282/strided_slice_2/stack:output:0)lstm_282/strided_slice_2/stack_1:output:0)lstm_282/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_282/lstm_cell_384/MatMul/ReadVariableOpReadVariableOp5lstm_282_lstm_cell_384_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_282/lstm_cell_384/MatMulMatMul!lstm_282/strided_slice_2:output:04lstm_282/lstm_cell_384/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_282/lstm_cell_384/MatMul_1/ReadVariableOpReadVariableOp7lstm_282_lstm_cell_384_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_282/lstm_cell_384/MatMul_1MatMullstm_282/zeros:output:06lstm_282/lstm_cell_384/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_282/lstm_cell_384/addAddV2'lstm_282/lstm_cell_384/MatMul:product:0)lstm_282/lstm_cell_384/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_282/lstm_cell_384/BiasAdd/ReadVariableOpReadVariableOp6lstm_282_lstm_cell_384_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_282/lstm_cell_384/BiasAddBiasAddlstm_282/lstm_cell_384/add:z:05lstm_282/lstm_cell_384/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_282/lstm_cell_384/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_282/lstm_cell_384/splitSplit/lstm_282/lstm_cell_384/split/split_dim:output:0'lstm_282/lstm_cell_384/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_282/lstm_cell_384/SigmoidSigmoid%lstm_282/lstm_cell_384/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_282/lstm_cell_384/Sigmoid_1Sigmoid%lstm_282/lstm_cell_384/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_282/lstm_cell_384/mulMul$lstm_282/lstm_cell_384/Sigmoid_1:y:0lstm_282/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_282/lstm_cell_384/ReluRelu%lstm_282/lstm_cell_384/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_282/lstm_cell_384/mul_1Mul"lstm_282/lstm_cell_384/Sigmoid:y:0)lstm_282/lstm_cell_384/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_282/lstm_cell_384/add_1AddV2lstm_282/lstm_cell_384/mul:z:0 lstm_282/lstm_cell_384/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_282/lstm_cell_384/Sigmoid_2Sigmoid%lstm_282/lstm_cell_384/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_282/lstm_cell_384/Relu_1Relu lstm_282/lstm_cell_384/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_282/lstm_cell_384/mul_2Mul$lstm_282/lstm_cell_384/Sigmoid_2:y:0+lstm_282/lstm_cell_384/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_282/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_282/TensorArrayV2_1TensorListReserve/lstm_282/TensorArrayV2_1/element_shape:output:0!lstm_282/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_282/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_282/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_282/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_282/whileWhile$lstm_282/while/loop_counter:output:0*lstm_282/while/maximum_iterations:output:0lstm_282/time:output:0!lstm_282/TensorArrayV2_1:handle:0lstm_282/zeros:output:0lstm_282/zeros_1:output:0!lstm_282/strided_slice_1:output:0@lstm_282/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_282_lstm_cell_384_matmul_readvariableop_resource7lstm_282_lstm_cell_384_matmul_1_readvariableop_resource6lstm_282_lstm_cell_384_biasadd_readvariableop_resource*
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
lstm_282_while_body_2337717*'
condR
lstm_282_while_cond_2337716*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_282/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_282/TensorArrayV2Stack/TensorListStackTensorListStacklstm_282/while:output:3Blstm_282/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_282/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_282/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_282/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_282/strided_slice_3StridedSlice4lstm_282/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_282/strided_slice_3/stack:output:0)lstm_282/strided_slice_3/stack_1:output:0)lstm_282/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_282/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_282/transpose_1	Transpose4lstm_282/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_282/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_282/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_283/ShapeShapelstm_282/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_283/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_283/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_283/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_283/strided_sliceStridedSlicelstm_283/Shape:output:0%lstm_283/strided_slice/stack:output:0'lstm_283/strided_slice/stack_1:output:0'lstm_283/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_283/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_283/zeros/packedPacklstm_283/strided_slice:output:0 lstm_283/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_283/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_283/zerosFilllstm_283/zeros/packed:output:0lstm_283/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_283/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_283/zeros_1/packedPacklstm_283/strided_slice:output:0"lstm_283/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_283/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_283/zeros_1Fill lstm_283/zeros_1/packed:output:0lstm_283/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_283/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_283/transpose	Transposelstm_282/transpose_1:y:0 lstm_283/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_283/Shape_1Shapelstm_283/transpose:y:0*
T0*
_output_shapes
:h
lstm_283/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_283/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_283/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_283/strided_slice_1StridedSlicelstm_283/Shape_1:output:0'lstm_283/strided_slice_1/stack:output:0)lstm_283/strided_slice_1/stack_1:output:0)lstm_283/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_283/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_283/TensorArrayV2TensorListReserve-lstm_283/TensorArrayV2/element_shape:output:0!lstm_283/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_283/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_283/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_283/transpose:y:0Glstm_283/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_283/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_283/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_283/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_283/strided_slice_2StridedSlicelstm_283/transpose:y:0'lstm_283/strided_slice_2/stack:output:0)lstm_283/strided_slice_2/stack_1:output:0)lstm_283/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_283/lstm_cell_385/MatMul/ReadVariableOpReadVariableOp5lstm_283_lstm_cell_385_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_283/lstm_cell_385/MatMulMatMul!lstm_283/strided_slice_2:output:04lstm_283/lstm_cell_385/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_283/lstm_cell_385/MatMul_1/ReadVariableOpReadVariableOp7lstm_283_lstm_cell_385_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_283/lstm_cell_385/MatMul_1MatMullstm_283/zeros:output:06lstm_283/lstm_cell_385/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_283/lstm_cell_385/addAddV2'lstm_283/lstm_cell_385/MatMul:product:0)lstm_283/lstm_cell_385/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_283/lstm_cell_385/BiasAdd/ReadVariableOpReadVariableOp6lstm_283_lstm_cell_385_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_283/lstm_cell_385/BiasAddBiasAddlstm_283/lstm_cell_385/add:z:05lstm_283/lstm_cell_385/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_283/lstm_cell_385/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_283/lstm_cell_385/splitSplit/lstm_283/lstm_cell_385/split/split_dim:output:0'lstm_283/lstm_cell_385/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_283/lstm_cell_385/SigmoidSigmoid%lstm_283/lstm_cell_385/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_283/lstm_cell_385/Sigmoid_1Sigmoid%lstm_283/lstm_cell_385/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_283/lstm_cell_385/mulMul$lstm_283/lstm_cell_385/Sigmoid_1:y:0lstm_283/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_283/lstm_cell_385/ReluRelu%lstm_283/lstm_cell_385/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_283/lstm_cell_385/mul_1Mul"lstm_283/lstm_cell_385/Sigmoid:y:0)lstm_283/lstm_cell_385/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_283/lstm_cell_385/add_1AddV2lstm_283/lstm_cell_385/mul:z:0 lstm_283/lstm_cell_385/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_283/lstm_cell_385/Sigmoid_2Sigmoid%lstm_283/lstm_cell_385/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_283/lstm_cell_385/Relu_1Relu lstm_283/lstm_cell_385/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_283/lstm_cell_385/mul_2Mul$lstm_283/lstm_cell_385/Sigmoid_2:y:0+lstm_283/lstm_cell_385/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_283/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_283/TensorArrayV2_1TensorListReserve/lstm_283/TensorArrayV2_1/element_shape:output:0!lstm_283/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_283/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_283/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_283/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_283/whileWhile$lstm_283/while/loop_counter:output:0*lstm_283/while/maximum_iterations:output:0lstm_283/time:output:0!lstm_283/TensorArrayV2_1:handle:0lstm_283/zeros:output:0lstm_283/zeros_1:output:0!lstm_283/strided_slice_1:output:0@lstm_283/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_283_lstm_cell_385_matmul_readvariableop_resource7lstm_283_lstm_cell_385_matmul_1_readvariableop_resource6lstm_283_lstm_cell_385_biasadd_readvariableop_resource*
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
lstm_283_while_body_2337856*'
condR
lstm_283_while_cond_2337855*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_283/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_283/TensorArrayV2Stack/TensorListStackTensorListStacklstm_283/while:output:3Blstm_283/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_283/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_283/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_283/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_283/strided_slice_3StridedSlice4lstm_283/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_283/strided_slice_3/stack:output:0)lstm_283/strided_slice_3/stack_1:output:0)lstm_283/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_283/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_283/transpose_1	Transpose4lstm_283/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_283/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_283/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_284/ShapeShapelstm_283/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_284/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_284/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_284/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_284/strided_sliceStridedSlicelstm_284/Shape:output:0%lstm_284/strided_slice/stack:output:0'lstm_284/strided_slice/stack_1:output:0'lstm_284/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_284/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_284/zeros/packedPacklstm_284/strided_slice:output:0 lstm_284/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_284/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_284/zerosFilllstm_284/zeros/packed:output:0lstm_284/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_284/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_284/zeros_1/packedPacklstm_284/strided_slice:output:0"lstm_284/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_284/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_284/zeros_1Fill lstm_284/zeros_1/packed:output:0lstm_284/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_284/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_284/transpose	Transposelstm_283/transpose_1:y:0 lstm_284/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_284/Shape_1Shapelstm_284/transpose:y:0*
T0*
_output_shapes
:h
lstm_284/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_284/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_284/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_284/strided_slice_1StridedSlicelstm_284/Shape_1:output:0'lstm_284/strided_slice_1/stack:output:0)lstm_284/strided_slice_1/stack_1:output:0)lstm_284/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_284/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_284/TensorArrayV2TensorListReserve-lstm_284/TensorArrayV2/element_shape:output:0!lstm_284/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_284/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_284/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_284/transpose:y:0Glstm_284/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_284/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_284/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_284/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_284/strided_slice_2StridedSlicelstm_284/transpose:y:0'lstm_284/strided_slice_2/stack:output:0)lstm_284/strided_slice_2/stack_1:output:0)lstm_284/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_284/lstm_cell_386/MatMul/ReadVariableOpReadVariableOp5lstm_284_lstm_cell_386_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_284/lstm_cell_386/MatMulMatMul!lstm_284/strided_slice_2:output:04lstm_284/lstm_cell_386/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_284/lstm_cell_386/MatMul_1/ReadVariableOpReadVariableOp7lstm_284_lstm_cell_386_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_284/lstm_cell_386/MatMul_1MatMullstm_284/zeros:output:06lstm_284/lstm_cell_386/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_284/lstm_cell_386/addAddV2'lstm_284/lstm_cell_386/MatMul:product:0)lstm_284/lstm_cell_386/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_284/lstm_cell_386/BiasAdd/ReadVariableOpReadVariableOp6lstm_284_lstm_cell_386_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_284/lstm_cell_386/BiasAddBiasAddlstm_284/lstm_cell_386/add:z:05lstm_284/lstm_cell_386/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_284/lstm_cell_386/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_284/lstm_cell_386/splitSplit/lstm_284/lstm_cell_386/split/split_dim:output:0'lstm_284/lstm_cell_386/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_284/lstm_cell_386/SigmoidSigmoid%lstm_284/lstm_cell_386/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_284/lstm_cell_386/Sigmoid_1Sigmoid%lstm_284/lstm_cell_386/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_284/lstm_cell_386/mulMul$lstm_284/lstm_cell_386/Sigmoid_1:y:0lstm_284/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_284/lstm_cell_386/ReluRelu%lstm_284/lstm_cell_386/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_284/lstm_cell_386/mul_1Mul"lstm_284/lstm_cell_386/Sigmoid:y:0)lstm_284/lstm_cell_386/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_284/lstm_cell_386/add_1AddV2lstm_284/lstm_cell_386/mul:z:0 lstm_284/lstm_cell_386/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_284/lstm_cell_386/Sigmoid_2Sigmoid%lstm_284/lstm_cell_386/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_284/lstm_cell_386/Relu_1Relu lstm_284/lstm_cell_386/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_284/lstm_cell_386/mul_2Mul$lstm_284/lstm_cell_386/Sigmoid_2:y:0+lstm_284/lstm_cell_386/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_284/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_284/TensorArrayV2_1TensorListReserve/lstm_284/TensorArrayV2_1/element_shape:output:0!lstm_284/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_284/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_284/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_284/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_284/whileWhile$lstm_284/while/loop_counter:output:0*lstm_284/while/maximum_iterations:output:0lstm_284/time:output:0!lstm_284/TensorArrayV2_1:handle:0lstm_284/zeros:output:0lstm_284/zeros_1:output:0!lstm_284/strided_slice_1:output:0@lstm_284/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_284_lstm_cell_386_matmul_readvariableop_resource7lstm_284_lstm_cell_386_matmul_1_readvariableop_resource6lstm_284_lstm_cell_386_biasadd_readvariableop_resource*
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
lstm_284_while_body_2337995*'
condR
lstm_284_while_cond_2337994*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_284/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_284/TensorArrayV2Stack/TensorListStackTensorListStacklstm_284/while:output:3Blstm_284/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_284/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_284/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_284/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_284/strided_slice_3StridedSlice4lstm_284/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_284/strided_slice_3/stack:output:0)lstm_284/strided_slice_3/stack_1:output:0)lstm_284/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_284/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_284/transpose_1	Transpose4lstm_284/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_284/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_284/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_94/MatMul/ReadVariableOpReadVariableOp'dense_94_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_94/MatMulMatMul!lstm_284/strided_slice_3:output:0&dense_94/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_94/BiasAdd/ReadVariableOpReadVariableOp(dense_94_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_94/BiasAddBiasAdddense_94/MatMul:product:0'dense_94/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_94/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_94/BiasAdd/ReadVariableOp^dense_94/MatMul/ReadVariableOp.^lstm_282/lstm_cell_384/BiasAdd/ReadVariableOp-^lstm_282/lstm_cell_384/MatMul/ReadVariableOp/^lstm_282/lstm_cell_384/MatMul_1/ReadVariableOp^lstm_282/while.^lstm_283/lstm_cell_385/BiasAdd/ReadVariableOp-^lstm_283/lstm_cell_385/MatMul/ReadVariableOp/^lstm_283/lstm_cell_385/MatMul_1/ReadVariableOp^lstm_283/while.^lstm_284/lstm_cell_386/BiasAdd/ReadVariableOp-^lstm_284/lstm_cell_386/MatMul/ReadVariableOp/^lstm_284/lstm_cell_386/MatMul_1/ReadVariableOp^lstm_284/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_94/BiasAdd/ReadVariableOpdense_94/BiasAdd/ReadVariableOp2@
dense_94/MatMul/ReadVariableOpdense_94/MatMul/ReadVariableOp2^
-lstm_282/lstm_cell_384/BiasAdd/ReadVariableOp-lstm_282/lstm_cell_384/BiasAdd/ReadVariableOp2\
,lstm_282/lstm_cell_384/MatMul/ReadVariableOp,lstm_282/lstm_cell_384/MatMul/ReadVariableOp2`
.lstm_282/lstm_cell_384/MatMul_1/ReadVariableOp.lstm_282/lstm_cell_384/MatMul_1/ReadVariableOp2 
lstm_282/whilelstm_282/while2^
-lstm_283/lstm_cell_385/BiasAdd/ReadVariableOp-lstm_283/lstm_cell_385/BiasAdd/ReadVariableOp2\
,lstm_283/lstm_cell_385/MatMul/ReadVariableOp,lstm_283/lstm_cell_385/MatMul/ReadVariableOp2`
.lstm_283/lstm_cell_385/MatMul_1/ReadVariableOp.lstm_283/lstm_cell_385/MatMul_1/ReadVariableOp2 
lstm_283/whilelstm_283/while2^
-lstm_284/lstm_cell_386/BiasAdd/ReadVariableOp-lstm_284/lstm_cell_386/BiasAdd/ReadVariableOp2\
,lstm_284/lstm_cell_386/MatMul/ReadVariableOp,lstm_284/lstm_cell_386/MatMul/ReadVariableOp2`
.lstm_284/lstm_cell_386/MatMul_1/ReadVariableOp.lstm_284/lstm_cell_386/MatMul_1/ReadVariableOp2 
lstm_284/whilelstm_284/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_2336182
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_385_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_385_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_385_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_385_matmul_readvariableop_resource:	d?G
4while_lstm_cell_385_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_385_biasadd_readvariableop_resource:	???*while/lstm_cell_385/BiasAdd/ReadVariableOp?)while/lstm_cell_385/MatMul/ReadVariableOp?+while/lstm_cell_385/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_385/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_385_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_385/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_385/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_385/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_385_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_385/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_385/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_385/addAddV2$while/lstm_cell_385/MatMul:product:0&while/lstm_cell_385/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_385/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_385_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_385/BiasAddBiasAddwhile/lstm_cell_385/add:z:02while/lstm_cell_385/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_385/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_385/splitSplit,while/lstm_cell_385/split/split_dim:output:0$while/lstm_cell_385/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_385/SigmoidSigmoid"while/lstm_cell_385/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_385/Sigmoid_1Sigmoid"while/lstm_cell_385/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_385/mulMul!while/lstm_cell_385/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_385/ReluRelu"while/lstm_cell_385/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_385/mul_1Mulwhile/lstm_cell_385/Sigmoid:y:0&while/lstm_cell_385/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_385/add_1AddV2while/lstm_cell_385/mul:z:0while/lstm_cell_385/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_385/Sigmoid_2Sigmoid"while/lstm_cell_385/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_385/Relu_1Reluwhile/lstm_cell_385/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_385/mul_2Mul!while/lstm_cell_385/Sigmoid_2:y:0(while/lstm_cell_385/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_385/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_385/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_385/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_385/BiasAdd/ReadVariableOp*^while/lstm_cell_385/MatMul/ReadVariableOp,^while/lstm_cell_385/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_385_biasadd_readvariableop_resource5while_lstm_cell_385_biasadd_readvariableop_resource_0"n
4while_lstm_cell_385_matmul_1_readvariableop_resource6while_lstm_cell_385_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_385_matmul_readvariableop_resource4while_lstm_cell_385_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_385/BiasAdd/ReadVariableOp*while/lstm_cell_385/BiasAdd/ReadVariableOp2V
)while/lstm_cell_385/MatMul/ReadVariableOp)while/lstm_cell_385/MatMul/ReadVariableOp2Z
+while/lstm_cell_385/MatMul_1/ReadVariableOp+while/lstm_cell_385/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_386_layer_call_and_return_conditional_losses_2335830

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
*__inference_lstm_283_layer_call_fn_2338734

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
E__inference_lstm_283_layer_call_and_return_conditional_losses_2336266s
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
J__inference_lstm_cell_384_layer_call_and_return_conditional_losses_2340050

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
while_cond_2338616
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2338616___redundant_placeholder05
1while_while_cond_2338616___redundant_placeholder15
1while_while_cond_2338616___redundant_placeholder25
1while_while_cond_2338616___redundant_placeholder3
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
while_body_2336713
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_385_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_385_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_385_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_385_matmul_readvariableop_resource:	d?G
4while_lstm_cell_385_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_385_biasadd_readvariableop_resource:	???*while/lstm_cell_385/BiasAdd/ReadVariableOp?)while/lstm_cell_385/MatMul/ReadVariableOp?+while/lstm_cell_385/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_385/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_385_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_385/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_385/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_385/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_385_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_385/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_385/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_385/addAddV2$while/lstm_cell_385/MatMul:product:0&while/lstm_cell_385/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_385/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_385_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_385/BiasAddBiasAddwhile/lstm_cell_385/add:z:02while/lstm_cell_385/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_385/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_385/splitSplit,while/lstm_cell_385/split/split_dim:output:0$while/lstm_cell_385/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_385/SigmoidSigmoid"while/lstm_cell_385/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_385/Sigmoid_1Sigmoid"while/lstm_cell_385/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_385/mulMul!while/lstm_cell_385/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_385/ReluRelu"while/lstm_cell_385/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_385/mul_1Mulwhile/lstm_cell_385/Sigmoid:y:0&while/lstm_cell_385/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_385/add_1AddV2while/lstm_cell_385/mul:z:0while/lstm_cell_385/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_385/Sigmoid_2Sigmoid"while/lstm_cell_385/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_385/Relu_1Reluwhile/lstm_cell_385/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_385/mul_2Mul!while/lstm_cell_385/Sigmoid_2:y:0(while/lstm_cell_385/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_385/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_385/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_385/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_385/BiasAdd/ReadVariableOp*^while/lstm_cell_385/MatMul/ReadVariableOp,^while/lstm_cell_385/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_385_biasadd_readvariableop_resource5while_lstm_cell_385_biasadd_readvariableop_resource_0"n
4while_lstm_cell_385_matmul_1_readvariableop_resource6while_lstm_cell_385_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_385_matmul_readvariableop_resource4while_lstm_cell_385_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_385/BiasAdd/ReadVariableOp*while/lstm_cell_385/BiasAdd/ReadVariableOp2V
)while/lstm_cell_385/MatMul/ReadVariableOp)while/lstm_cell_385/MatMul/ReadVariableOp2Z
+while/lstm_cell_385/MatMul_1/ReadVariableOp+while/lstm_cell_385/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_384_layer_call_and_return_conditional_losses_2334984

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
?
?
J__inference_sequential_94_layer_call_and_return_conditional_losses_2336441

inputs#
lstm_282_2336117:	?#
lstm_282_2336119:	d?
lstm_282_2336121:	?#
lstm_283_2336267:	d?#
lstm_283_2336269:	2?
lstm_283_2336271:	?"
lstm_284_2336417:2("
lstm_284_2336419:
(
lstm_284_2336421:("
dense_94_2336435:

dense_94_2336437:
identity?? dense_94/StatefulPartitionedCall? lstm_282/StatefulPartitionedCall? lstm_283/StatefulPartitionedCall? lstm_284/StatefulPartitionedCall?
 lstm_282/StatefulPartitionedCallStatefulPartitionedCallinputslstm_282_2336117lstm_282_2336119lstm_282_2336121*
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
E__inference_lstm_282_layer_call_and_return_conditional_losses_2336116?
 lstm_283/StatefulPartitionedCallStatefulPartitionedCall)lstm_282/StatefulPartitionedCall:output:0lstm_283_2336267lstm_283_2336269lstm_283_2336271*
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
E__inference_lstm_283_layer_call_and_return_conditional_losses_2336266?
 lstm_284/StatefulPartitionedCallStatefulPartitionedCall)lstm_283/StatefulPartitionedCall:output:0lstm_284_2336417lstm_284_2336419lstm_284_2336421*
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
E__inference_lstm_284_layer_call_and_return_conditional_losses_2336416?
 dense_94/StatefulPartitionedCallStatefulPartitionedCall)lstm_284/StatefulPartitionedCall:output:0dense_94_2336435dense_94_2336437*
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
E__inference_dense_94_layer_call_and_return_conditional_losses_2336434x
IdentityIdentity)dense_94/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_94/StatefulPartitionedCall!^lstm_282/StatefulPartitionedCall!^lstm_283/StatefulPartitionedCall!^lstm_284/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_94/StatefulPartitionedCall dense_94/StatefulPartitionedCall2D
 lstm_282/StatefulPartitionedCall lstm_282/StatefulPartitionedCall2D
 lstm_283/StatefulPartitionedCall lstm_283/StatefulPartitionedCall2D
 lstm_284/StatefulPartitionedCall lstm_284/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_2338331
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_384_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_384_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_384_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_384_matmul_readvariableop_resource:	?G
4while_lstm_cell_384_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_384_biasadd_readvariableop_resource:	???*while/lstm_cell_384/BiasAdd/ReadVariableOp?)while/lstm_cell_384/MatMul/ReadVariableOp?+while/lstm_cell_384/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_384/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_384_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_384/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_384/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_384/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_384_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_384/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_384/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_384/addAddV2$while/lstm_cell_384/MatMul:product:0&while/lstm_cell_384/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_384/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_384_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_384/BiasAddBiasAddwhile/lstm_cell_384/add:z:02while/lstm_cell_384/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_384/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_384/splitSplit,while/lstm_cell_384/split/split_dim:output:0$while/lstm_cell_384/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_384/SigmoidSigmoid"while/lstm_cell_384/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_384/Sigmoid_1Sigmoid"while/lstm_cell_384/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_384/mulMul!while/lstm_cell_384/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_384/ReluRelu"while/lstm_cell_384/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_384/mul_1Mulwhile/lstm_cell_384/Sigmoid:y:0&while/lstm_cell_384/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_384/add_1AddV2while/lstm_cell_384/mul:z:0while/lstm_cell_384/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_384/Sigmoid_2Sigmoid"while/lstm_cell_384/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_384/Relu_1Reluwhile/lstm_cell_384/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_384/mul_2Mul!while/lstm_cell_384/Sigmoid_2:y:0(while/lstm_cell_384/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_384/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_384/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_384/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_384/BiasAdd/ReadVariableOp*^while/lstm_cell_384/MatMul/ReadVariableOp,^while/lstm_cell_384/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_384_biasadd_readvariableop_resource5while_lstm_cell_384_biasadd_readvariableop_resource_0"n
4while_lstm_cell_384_matmul_1_readvariableop_resource6while_lstm_cell_384_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_384_matmul_readvariableop_resource4while_lstm_cell_384_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_384/BiasAdd/ReadVariableOp*while/lstm_cell_384/BiasAdd/ReadVariableOp2V
)while/lstm_cell_384/MatMul/ReadVariableOp)while/lstm_cell_384/MatMul/ReadVariableOp2Z
+while/lstm_cell_384/MatMul_1/ReadVariableOp+while/lstm_cell_384/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_283_layer_call_fn_2338745

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
E__inference_lstm_283_layer_call_and_return_conditional_losses_2336797s
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
lstm_284_while_cond_2337567.
*lstm_284_while_lstm_284_while_loop_counter4
0lstm_284_while_lstm_284_while_maximum_iterations
lstm_284_while_placeholder 
lstm_284_while_placeholder_1 
lstm_284_while_placeholder_2 
lstm_284_while_placeholder_30
,lstm_284_while_less_lstm_284_strided_slice_1G
Clstm_284_while_lstm_284_while_cond_2337567___redundant_placeholder0G
Clstm_284_while_lstm_284_while_cond_2337567___redundant_placeholder1G
Clstm_284_while_lstm_284_while_cond_2337567___redundant_placeholder2G
Clstm_284_while_lstm_284_while_cond_2337567___redundant_placeholder3
lstm_284_while_identity
?
lstm_284/while/LessLesslstm_284_while_placeholder,lstm_284_while_less_lstm_284_strided_slice_1*
T0*
_output_shapes
: ]
lstm_284/while/IdentityIdentitylstm_284/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_284_while_identity lstm_284/while/Identity:output:0*(
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
E__inference_lstm_284_layer_call_and_return_conditional_losses_2335767

inputs'
lstm_cell_386_2335685:2('
lstm_cell_386_2335687:
(#
lstm_cell_386_2335689:(
identity??%lstm_cell_386/StatefulPartitionedCall?while;
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
%lstm_cell_386/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_386_2335685lstm_cell_386_2335687lstm_cell_386_2335689*
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
J__inference_lstm_cell_386_layer_call_and_return_conditional_losses_2335684n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_386_2335685lstm_cell_386_2335687lstm_cell_386_2335689*
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
while_body_2335698*
condR
while_cond_2335697*K
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
NoOpNoOp&^lstm_cell_386/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_386/StatefulPartitionedCall%lstm_cell_386/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_282_layer_call_and_return_conditional_losses_2338701

inputs?
,lstm_cell_384_matmul_readvariableop_resource:	?A
.lstm_cell_384_matmul_1_readvariableop_resource:	d?<
-lstm_cell_384_biasadd_readvariableop_resource:	?
identity??$lstm_cell_384/BiasAdd/ReadVariableOp?#lstm_cell_384/MatMul/ReadVariableOp?%lstm_cell_384/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_384/MatMul/ReadVariableOpReadVariableOp,lstm_cell_384_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_384/MatMulMatMulstrided_slice_2:output:0+lstm_cell_384/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_384/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_384_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_384/MatMul_1MatMulzeros:output:0-lstm_cell_384/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_384/addAddV2lstm_cell_384/MatMul:product:0 lstm_cell_384/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_384/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_384_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_384/BiasAddBiasAddlstm_cell_384/add:z:0,lstm_cell_384/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_384/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_384/splitSplit&lstm_cell_384/split/split_dim:output:0lstm_cell_384/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_384/SigmoidSigmoidlstm_cell_384/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_384/Sigmoid_1Sigmoidlstm_cell_384/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_384/mulMullstm_cell_384/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_384/ReluRelulstm_cell_384/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_384/mul_1Mullstm_cell_384/Sigmoid:y:0 lstm_cell_384/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_384/add_1AddV2lstm_cell_384/mul:z:0lstm_cell_384/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_384/Sigmoid_2Sigmoidlstm_cell_384/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_384/Relu_1Relulstm_cell_384/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_384/mul_2Mullstm_cell_384/Sigmoid_2:y:0"lstm_cell_384/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_384_matmul_readvariableop_resource.lstm_cell_384_matmul_1_readvariableop_resource-lstm_cell_384_biasadd_readvariableop_resource*
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
while_body_2338617*
condR
while_cond_2338616*K
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
NoOpNoOp%^lstm_cell_384/BiasAdd/ReadVariableOp$^lstm_cell_384/MatMul/ReadVariableOp&^lstm_cell_384/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_384/BiasAdd/ReadVariableOp$lstm_cell_384/BiasAdd/ReadVariableOp2J
#lstm_cell_384/MatMul/ReadVariableOp#lstm_cell_384/MatMul/ReadVariableOp2N
%lstm_cell_384/MatMul_1/ReadVariableOp%lstm_cell_384/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_284_layer_call_fn_2339328
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
E__inference_lstm_284_layer_call_and_return_conditional_losses_2335767o
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
while_cond_2338803
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2338803___redundant_placeholder05
1while_while_cond_2338803___redundant_placeholder15
1while_while_cond_2338803___redundant_placeholder25
1while_while_cond_2338803___redundant_placeholder3
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
)sequential_94_lstm_283_while_body_2334688J
Fsequential_94_lstm_283_while_sequential_94_lstm_283_while_loop_counterP
Lsequential_94_lstm_283_while_sequential_94_lstm_283_while_maximum_iterations,
(sequential_94_lstm_283_while_placeholder.
*sequential_94_lstm_283_while_placeholder_1.
*sequential_94_lstm_283_while_placeholder_2.
*sequential_94_lstm_283_while_placeholder_3I
Esequential_94_lstm_283_while_sequential_94_lstm_283_strided_slice_1_0?
?sequential_94_lstm_283_while_tensorarrayv2read_tensorlistgetitem_sequential_94_lstm_283_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_94_lstm_283_while_lstm_cell_385_matmul_readvariableop_resource_0:	d?`
Msequential_94_lstm_283_while_lstm_cell_385_matmul_1_readvariableop_resource_0:	2?[
Lsequential_94_lstm_283_while_lstm_cell_385_biasadd_readvariableop_resource_0:	?)
%sequential_94_lstm_283_while_identity+
'sequential_94_lstm_283_while_identity_1+
'sequential_94_lstm_283_while_identity_2+
'sequential_94_lstm_283_while_identity_3+
'sequential_94_lstm_283_while_identity_4+
'sequential_94_lstm_283_while_identity_5G
Csequential_94_lstm_283_while_sequential_94_lstm_283_strided_slice_1?
sequential_94_lstm_283_while_tensorarrayv2read_tensorlistgetitem_sequential_94_lstm_283_tensorarrayunstack_tensorlistfromtensor\
Isequential_94_lstm_283_while_lstm_cell_385_matmul_readvariableop_resource:	d?^
Ksequential_94_lstm_283_while_lstm_cell_385_matmul_1_readvariableop_resource:	2?Y
Jsequential_94_lstm_283_while_lstm_cell_385_biasadd_readvariableop_resource:	???Asequential_94/lstm_283/while/lstm_cell_385/BiasAdd/ReadVariableOp?@sequential_94/lstm_283/while/lstm_cell_385/MatMul/ReadVariableOp?Bsequential_94/lstm_283/while/lstm_cell_385/MatMul_1/ReadVariableOp?
Nsequential_94/lstm_283/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
@sequential_94/lstm_283/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_94_lstm_283_while_tensorarrayv2read_tensorlistgetitem_sequential_94_lstm_283_tensorarrayunstack_tensorlistfromtensor_0(sequential_94_lstm_283_while_placeholderWsequential_94/lstm_283/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
@sequential_94/lstm_283/while/lstm_cell_385/MatMul/ReadVariableOpReadVariableOpKsequential_94_lstm_283_while_lstm_cell_385_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
1sequential_94/lstm_283/while/lstm_cell_385/MatMulMatMulGsequential_94/lstm_283/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_94/lstm_283/while/lstm_cell_385/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_94/lstm_283/while/lstm_cell_385/MatMul_1/ReadVariableOpReadVariableOpMsequential_94_lstm_283_while_lstm_cell_385_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
3sequential_94/lstm_283/while/lstm_cell_385/MatMul_1MatMul*sequential_94_lstm_283_while_placeholder_2Jsequential_94/lstm_283/while/lstm_cell_385/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_94/lstm_283/while/lstm_cell_385/addAddV2;sequential_94/lstm_283/while/lstm_cell_385/MatMul:product:0=sequential_94/lstm_283/while/lstm_cell_385/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_94/lstm_283/while/lstm_cell_385/BiasAdd/ReadVariableOpReadVariableOpLsequential_94_lstm_283_while_lstm_cell_385_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_94/lstm_283/while/lstm_cell_385/BiasAddBiasAdd2sequential_94/lstm_283/while/lstm_cell_385/add:z:0Isequential_94/lstm_283/while/lstm_cell_385/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_94/lstm_283/while/lstm_cell_385/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_94/lstm_283/while/lstm_cell_385/splitSplitCsequential_94/lstm_283/while/lstm_cell_385/split/split_dim:output:0;sequential_94/lstm_283/while/lstm_cell_385/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
2sequential_94/lstm_283/while/lstm_cell_385/SigmoidSigmoid9sequential_94/lstm_283/while/lstm_cell_385/split:output:0*
T0*'
_output_shapes
:?????????2?
4sequential_94/lstm_283/while/lstm_cell_385/Sigmoid_1Sigmoid9sequential_94/lstm_283/while/lstm_cell_385/split:output:1*
T0*'
_output_shapes
:?????????2?
.sequential_94/lstm_283/while/lstm_cell_385/mulMul8sequential_94/lstm_283/while/lstm_cell_385/Sigmoid_1:y:0*sequential_94_lstm_283_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
/sequential_94/lstm_283/while/lstm_cell_385/ReluRelu9sequential_94/lstm_283/while/lstm_cell_385/split:output:2*
T0*'
_output_shapes
:?????????2?
0sequential_94/lstm_283/while/lstm_cell_385/mul_1Mul6sequential_94/lstm_283/while/lstm_cell_385/Sigmoid:y:0=sequential_94/lstm_283/while/lstm_cell_385/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
0sequential_94/lstm_283/while/lstm_cell_385/add_1AddV22sequential_94/lstm_283/while/lstm_cell_385/mul:z:04sequential_94/lstm_283/while/lstm_cell_385/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
4sequential_94/lstm_283/while/lstm_cell_385/Sigmoid_2Sigmoid9sequential_94/lstm_283/while/lstm_cell_385/split:output:3*
T0*'
_output_shapes
:?????????2?
1sequential_94/lstm_283/while/lstm_cell_385/Relu_1Relu4sequential_94/lstm_283/while/lstm_cell_385/add_1:z:0*
T0*'
_output_shapes
:?????????2?
0sequential_94/lstm_283/while/lstm_cell_385/mul_2Mul8sequential_94/lstm_283/while/lstm_cell_385/Sigmoid_2:y:0?sequential_94/lstm_283/while/lstm_cell_385/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Asequential_94/lstm_283/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_94_lstm_283_while_placeholder_1(sequential_94_lstm_283_while_placeholder4sequential_94/lstm_283/while/lstm_cell_385/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_94/lstm_283/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_94/lstm_283/while/addAddV2(sequential_94_lstm_283_while_placeholder+sequential_94/lstm_283/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_94/lstm_283/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_94/lstm_283/while/add_1AddV2Fsequential_94_lstm_283_while_sequential_94_lstm_283_while_loop_counter-sequential_94/lstm_283/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_94/lstm_283/while/IdentityIdentity&sequential_94/lstm_283/while/add_1:z:0"^sequential_94/lstm_283/while/NoOp*
T0*
_output_shapes
: ?
'sequential_94/lstm_283/while/Identity_1IdentityLsequential_94_lstm_283_while_sequential_94_lstm_283_while_maximum_iterations"^sequential_94/lstm_283/while/NoOp*
T0*
_output_shapes
: ?
'sequential_94/lstm_283/while/Identity_2Identity$sequential_94/lstm_283/while/add:z:0"^sequential_94/lstm_283/while/NoOp*
T0*
_output_shapes
: ?
'sequential_94/lstm_283/while/Identity_3IdentityQsequential_94/lstm_283/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_94/lstm_283/while/NoOp*
T0*
_output_shapes
: ?
'sequential_94/lstm_283/while/Identity_4Identity4sequential_94/lstm_283/while/lstm_cell_385/mul_2:z:0"^sequential_94/lstm_283/while/NoOp*
T0*'
_output_shapes
:?????????2?
'sequential_94/lstm_283/while/Identity_5Identity4sequential_94/lstm_283/while/lstm_cell_385/add_1:z:0"^sequential_94/lstm_283/while/NoOp*
T0*'
_output_shapes
:?????????2?
!sequential_94/lstm_283/while/NoOpNoOpB^sequential_94/lstm_283/while/lstm_cell_385/BiasAdd/ReadVariableOpA^sequential_94/lstm_283/while/lstm_cell_385/MatMul/ReadVariableOpC^sequential_94/lstm_283/while/lstm_cell_385/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_94_lstm_283_while_identity.sequential_94/lstm_283/while/Identity:output:0"[
'sequential_94_lstm_283_while_identity_10sequential_94/lstm_283/while/Identity_1:output:0"[
'sequential_94_lstm_283_while_identity_20sequential_94/lstm_283/while/Identity_2:output:0"[
'sequential_94_lstm_283_while_identity_30sequential_94/lstm_283/while/Identity_3:output:0"[
'sequential_94_lstm_283_while_identity_40sequential_94/lstm_283/while/Identity_4:output:0"[
'sequential_94_lstm_283_while_identity_50sequential_94/lstm_283/while/Identity_5:output:0"?
Jsequential_94_lstm_283_while_lstm_cell_385_biasadd_readvariableop_resourceLsequential_94_lstm_283_while_lstm_cell_385_biasadd_readvariableop_resource_0"?
Ksequential_94_lstm_283_while_lstm_cell_385_matmul_1_readvariableop_resourceMsequential_94_lstm_283_while_lstm_cell_385_matmul_1_readvariableop_resource_0"?
Isequential_94_lstm_283_while_lstm_cell_385_matmul_readvariableop_resourceKsequential_94_lstm_283_while_lstm_cell_385_matmul_readvariableop_resource_0"?
Csequential_94_lstm_283_while_sequential_94_lstm_283_strided_slice_1Esequential_94_lstm_283_while_sequential_94_lstm_283_strided_slice_1_0"?
sequential_94_lstm_283_while_tensorarrayv2read_tensorlistgetitem_sequential_94_lstm_283_tensorarrayunstack_tensorlistfromtensor?sequential_94_lstm_283_while_tensorarrayv2read_tensorlistgetitem_sequential_94_lstm_283_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Asequential_94/lstm_283/while/lstm_cell_385/BiasAdd/ReadVariableOpAsequential_94/lstm_283/while/lstm_cell_385/BiasAdd/ReadVariableOp2?
@sequential_94/lstm_283/while/lstm_cell_385/MatMul/ReadVariableOp@sequential_94/lstm_283/while/lstm_cell_385/MatMul/ReadVariableOp2?
Bsequential_94/lstm_283/while/lstm_cell_385/MatMul_1/ReadVariableOpBsequential_94/lstm_283/while/lstm_cell_385/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2336878
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_384_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_384_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_384_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_384_matmul_readvariableop_resource:	?G
4while_lstm_cell_384_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_384_biasadd_readvariableop_resource:	???*while/lstm_cell_384/BiasAdd/ReadVariableOp?)while/lstm_cell_384/MatMul/ReadVariableOp?+while/lstm_cell_384/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_384/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_384_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_384/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_384/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_384/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_384_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_384/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_384/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_384/addAddV2$while/lstm_cell_384/MatMul:product:0&while/lstm_cell_384/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_384/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_384_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_384/BiasAddBiasAddwhile/lstm_cell_384/add:z:02while/lstm_cell_384/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_384/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_384/splitSplit,while/lstm_cell_384/split/split_dim:output:0$while/lstm_cell_384/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_384/SigmoidSigmoid"while/lstm_cell_384/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_384/Sigmoid_1Sigmoid"while/lstm_cell_384/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_384/mulMul!while/lstm_cell_384/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_384/ReluRelu"while/lstm_cell_384/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_384/mul_1Mulwhile/lstm_cell_384/Sigmoid:y:0&while/lstm_cell_384/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_384/add_1AddV2while/lstm_cell_384/mul:z:0while/lstm_cell_384/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_384/Sigmoid_2Sigmoid"while/lstm_cell_384/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_384/Relu_1Reluwhile/lstm_cell_384/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_384/mul_2Mul!while/lstm_cell_384/Sigmoid_2:y:0(while/lstm_cell_384/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_384/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_384/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_384/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_384/BiasAdd/ReadVariableOp*^while/lstm_cell_384/MatMul/ReadVariableOp,^while/lstm_cell_384/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_384_biasadd_readvariableop_resource5while_lstm_cell_384_biasadd_readvariableop_resource_0"n
4while_lstm_cell_384_matmul_1_readvariableop_resource6while_lstm_cell_384_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_384_matmul_readvariableop_resource4while_lstm_cell_384_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_384/BiasAdd/ReadVariableOp*while/lstm_cell_384/BiasAdd/ReadVariableOp2V
)while/lstm_cell_384/MatMul/ReadVariableOp)while/lstm_cell_384/MatMul/ReadVariableOp2Z
+while/lstm_cell_384/MatMul_1/ReadVariableOp+while/lstm_cell_384/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_385_layer_call_and_return_conditional_losses_2340148

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
M
lstm_282_input;
 serving_default_lstm_282_input:0?????????<
dense_940
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
2dense_94/kernel
:2dense_94/bias
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
0:.	?2lstm_282/lstm_cell_282/kernel
::8	d?2'lstm_282/lstm_cell_282/recurrent_kernel
*:(?2lstm_282/lstm_cell_282/bias
0:.	d?2lstm_283/lstm_cell_283/kernel
::8	2?2'lstm_283/lstm_cell_283/recurrent_kernel
*:(?2lstm_283/lstm_cell_283/bias
/:-2(2lstm_284/lstm_cell_284/kernel
9:7
(2'lstm_284/lstm_cell_284/recurrent_kernel
):'(2lstm_284/lstm_cell_284/bias
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
2Adam/dense_94/kernel/m
 :2Adam/dense_94/bias/m
5:3	?2$Adam/lstm_282/lstm_cell_282/kernel/m
?:=	d?2.Adam/lstm_282/lstm_cell_282/recurrent_kernel/m
/:-?2"Adam/lstm_282/lstm_cell_282/bias/m
5:3	d?2$Adam/lstm_283/lstm_cell_283/kernel/m
?:=	2?2.Adam/lstm_283/lstm_cell_283/recurrent_kernel/m
/:-?2"Adam/lstm_283/lstm_cell_283/bias/m
4:22(2$Adam/lstm_284/lstm_cell_284/kernel/m
>:<
(2.Adam/lstm_284/lstm_cell_284/recurrent_kernel/m
.:,(2"Adam/lstm_284/lstm_cell_284/bias/m
&:$
2Adam/dense_94/kernel/v
 :2Adam/dense_94/bias/v
5:3	?2$Adam/lstm_282/lstm_cell_282/kernel/v
?:=	d?2.Adam/lstm_282/lstm_cell_282/recurrent_kernel/v
/:-?2"Adam/lstm_282/lstm_cell_282/bias/v
5:3	d?2$Adam/lstm_283/lstm_cell_283/kernel/v
?:=	2?2.Adam/lstm_283/lstm_cell_283/recurrent_kernel/v
/:-?2"Adam/lstm_283/lstm_cell_283/bias/v
4:22(2$Adam/lstm_284/lstm_cell_284/kernel/v
>:<
(2.Adam/lstm_284/lstm_cell_284/recurrent_kernel/v
.:,(2"Adam/lstm_284/lstm_cell_284/bias/v
?2?
/__inference_sequential_94_layer_call_fn_2336466
/__inference_sequential_94_layer_call_fn_2337204
/__inference_sequential_94_layer_call_fn_2337231
/__inference_sequential_94_layer_call_fn_2337082?
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
J__inference_sequential_94_layer_call_and_return_conditional_losses_2337658
J__inference_sequential_94_layer_call_and_return_conditional_losses_2338085
J__inference_sequential_94_layer_call_and_return_conditional_losses_2337112
J__inference_sequential_94_layer_call_and_return_conditional_losses_2337142?
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
"__inference__wrapped_model_2334917lstm_282_input"?
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
*__inference_lstm_282_layer_call_fn_2338096
*__inference_lstm_282_layer_call_fn_2338107
*__inference_lstm_282_layer_call_fn_2338118
*__inference_lstm_282_layer_call_fn_2338129?
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
E__inference_lstm_282_layer_call_and_return_conditional_losses_2338272
E__inference_lstm_282_layer_call_and_return_conditional_losses_2338415
E__inference_lstm_282_layer_call_and_return_conditional_losses_2338558
E__inference_lstm_282_layer_call_and_return_conditional_losses_2338701?
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
*__inference_lstm_283_layer_call_fn_2338712
*__inference_lstm_283_layer_call_fn_2338723
*__inference_lstm_283_layer_call_fn_2338734
*__inference_lstm_283_layer_call_fn_2338745?
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
E__inference_lstm_283_layer_call_and_return_conditional_losses_2338888
E__inference_lstm_283_layer_call_and_return_conditional_losses_2339031
E__inference_lstm_283_layer_call_and_return_conditional_losses_2339174
E__inference_lstm_283_layer_call_and_return_conditional_losses_2339317?
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
*__inference_lstm_284_layer_call_fn_2339328
*__inference_lstm_284_layer_call_fn_2339339
*__inference_lstm_284_layer_call_fn_2339350
*__inference_lstm_284_layer_call_fn_2339361?
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
E__inference_lstm_284_layer_call_and_return_conditional_losses_2339504
E__inference_lstm_284_layer_call_and_return_conditional_losses_2339647
E__inference_lstm_284_layer_call_and_return_conditional_losses_2339790
E__inference_lstm_284_layer_call_and_return_conditional_losses_2339933?
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
*__inference_dense_94_layer_call_fn_2339942?
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
E__inference_dense_94_layer_call_and_return_conditional_losses_2339952?
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
%__inference_signature_wrapper_2337177lstm_282_input"?
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
/__inference_lstm_cell_384_layer_call_fn_2339969
/__inference_lstm_cell_384_layer_call_fn_2339986?
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
J__inference_lstm_cell_384_layer_call_and_return_conditional_losses_2340018
J__inference_lstm_cell_384_layer_call_and_return_conditional_losses_2340050?
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
/__inference_lstm_cell_385_layer_call_fn_2340067
/__inference_lstm_cell_385_layer_call_fn_2340084?
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
J__inference_lstm_cell_385_layer_call_and_return_conditional_losses_2340116
J__inference_lstm_cell_385_layer_call_and_return_conditional_losses_2340148?
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
/__inference_lstm_cell_386_layer_call_fn_2340165
/__inference_lstm_cell_386_layer_call_fn_2340182?
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
J__inference_lstm_cell_386_layer_call_and_return_conditional_losses_2340214
J__inference_lstm_cell_386_layer_call_and_return_conditional_losses_2340246?
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
"__inference__wrapped_model_2334917-./012345!";?8
1?.
,?)
lstm_282_input?????????
? "3?0
.
dense_94"?
dense_94??????????
E__inference_dense_94_layer_call_and_return_conditional_losses_2339952\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_94_layer_call_fn_2339942O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_282_layer_call_and_return_conditional_losses_2338272?-./O?L
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
E__inference_lstm_282_layer_call_and_return_conditional_losses_2338415?-./O?L
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
E__inference_lstm_282_layer_call_and_return_conditional_losses_2338558q-./??<
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
E__inference_lstm_282_layer_call_and_return_conditional_losses_2338701q-./??<
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
*__inference_lstm_282_layer_call_fn_2338096}-./O?L
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
*__inference_lstm_282_layer_call_fn_2338107}-./O?L
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
*__inference_lstm_282_layer_call_fn_2338118d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_282_layer_call_fn_2338129d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_283_layer_call_and_return_conditional_losses_2338888?012O?L
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
E__inference_lstm_283_layer_call_and_return_conditional_losses_2339031?012O?L
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
E__inference_lstm_283_layer_call_and_return_conditional_losses_2339174q012??<
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
E__inference_lstm_283_layer_call_and_return_conditional_losses_2339317q012??<
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
*__inference_lstm_283_layer_call_fn_2338712}012O?L
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
*__inference_lstm_283_layer_call_fn_2338723}012O?L
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
*__inference_lstm_283_layer_call_fn_2338734d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_283_layer_call_fn_2338745d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_284_layer_call_and_return_conditional_losses_2339504}345O?L
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
E__inference_lstm_284_layer_call_and_return_conditional_losses_2339647}345O?L
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
E__inference_lstm_284_layer_call_and_return_conditional_losses_2339790m345??<
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
E__inference_lstm_284_layer_call_and_return_conditional_losses_2339933m345??<
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
*__inference_lstm_284_layer_call_fn_2339328p345O?L
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
*__inference_lstm_284_layer_call_fn_2339339p345O?L
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
*__inference_lstm_284_layer_call_fn_2339350`345??<
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
*__inference_lstm_284_layer_call_fn_2339361`345??<
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
J__inference_lstm_cell_384_layer_call_and_return_conditional_losses_2340018?-./??}
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
J__inference_lstm_cell_384_layer_call_and_return_conditional_losses_2340050?-./??}
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
/__inference_lstm_cell_384_layer_call_fn_2339969?-./??}
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
/__inference_lstm_cell_384_layer_call_fn_2339986?-./??}
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
J__inference_lstm_cell_385_layer_call_and_return_conditional_losses_2340116?012??}
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
J__inference_lstm_cell_385_layer_call_and_return_conditional_losses_2340148?012??}
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
/__inference_lstm_cell_385_layer_call_fn_2340067?012??}
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
/__inference_lstm_cell_385_layer_call_fn_2340084?012??}
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
J__inference_lstm_cell_386_layer_call_and_return_conditional_losses_2340214?345??}
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
J__inference_lstm_cell_386_layer_call_and_return_conditional_losses_2340246?345??}
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
/__inference_lstm_cell_386_layer_call_fn_2340165?345??}
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
/__inference_lstm_cell_386_layer_call_fn_2340182?345??}
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
J__inference_sequential_94_layer_call_and_return_conditional_losses_2337112y-./012345!"C?@
9?6
,?)
lstm_282_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_94_layer_call_and_return_conditional_losses_2337142y-./012345!"C?@
9?6
,?)
lstm_282_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_94_layer_call_and_return_conditional_losses_2337658q-./012345!";?8
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
J__inference_sequential_94_layer_call_and_return_conditional_losses_2338085q-./012345!";?8
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
/__inference_sequential_94_layer_call_fn_2336466l-./012345!"C?@
9?6
,?)
lstm_282_input?????????
p 

 
? "???????????
/__inference_sequential_94_layer_call_fn_2337082l-./012345!"C?@
9?6
,?)
lstm_282_input?????????
p

 
? "???????????
/__inference_sequential_94_layer_call_fn_2337204d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_94_layer_call_fn_2337231d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_2337177?-./012345!"M?J
? 
C?@
>
lstm_282_input,?)
lstm_282_input?????????"3?0
.
dense_94"?
dense_94?????????