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
dense_76/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_76/kernel
s
#dense_76/kernel/Read/ReadVariableOpReadVariableOpdense_76/kernel*
_output_shapes

:
*
dtype0
r
dense_76/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_76/bias
k
!dense_76/bias/Read/ReadVariableOpReadVariableOpdense_76/bias*
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
lstm_228/lstm_cell_228/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_228/lstm_cell_228/kernel
?
1lstm_228/lstm_cell_228/kernel/Read/ReadVariableOpReadVariableOplstm_228/lstm_cell_228/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_228/lstm_cell_228/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_228/lstm_cell_228/recurrent_kernel
?
;lstm_228/lstm_cell_228/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_228/lstm_cell_228/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_228/lstm_cell_228/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_228/lstm_cell_228/bias
?
/lstm_228/lstm_cell_228/bias/Read/ReadVariableOpReadVariableOplstm_228/lstm_cell_228/bias*
_output_shapes	
:?*
dtype0
?
lstm_229/lstm_cell_229/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_229/lstm_cell_229/kernel
?
1lstm_229/lstm_cell_229/kernel/Read/ReadVariableOpReadVariableOplstm_229/lstm_cell_229/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_229/lstm_cell_229/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_229/lstm_cell_229/recurrent_kernel
?
;lstm_229/lstm_cell_229/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_229/lstm_cell_229/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_229/lstm_cell_229/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_229/lstm_cell_229/bias
?
/lstm_229/lstm_cell_229/bias/Read/ReadVariableOpReadVariableOplstm_229/lstm_cell_229/bias*
_output_shapes	
:?*
dtype0
?
lstm_230/lstm_cell_230/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_230/lstm_cell_230/kernel
?
1lstm_230/lstm_cell_230/kernel/Read/ReadVariableOpReadVariableOplstm_230/lstm_cell_230/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_230/lstm_cell_230/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_230/lstm_cell_230/recurrent_kernel
?
;lstm_230/lstm_cell_230/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_230/lstm_cell_230/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_230/lstm_cell_230/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_230/lstm_cell_230/bias
?
/lstm_230/lstm_cell_230/bias/Read/ReadVariableOpReadVariableOplstm_230/lstm_cell_230/bias*
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
Adam/dense_76/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_76/kernel/m
?
*Adam/dense_76/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_76/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_76/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_76/bias/m
y
(Adam/dense_76/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_76/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_228/lstm_cell_228/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_228/lstm_cell_228/kernel/m
?
8Adam/lstm_228/lstm_cell_228/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_228/lstm_cell_228/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_228/lstm_cell_228/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_228/lstm_cell_228/recurrent_kernel/m
?
BAdam/lstm_228/lstm_cell_228/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_228/lstm_cell_228/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_228/lstm_cell_228/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_228/lstm_cell_228/bias/m
?
6Adam/lstm_228/lstm_cell_228/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_228/lstm_cell_228/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_229/lstm_cell_229/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_229/lstm_cell_229/kernel/m
?
8Adam/lstm_229/lstm_cell_229/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_229/lstm_cell_229/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_229/lstm_cell_229/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_229/lstm_cell_229/recurrent_kernel/m
?
BAdam/lstm_229/lstm_cell_229/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_229/lstm_cell_229/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_229/lstm_cell_229/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_229/lstm_cell_229/bias/m
?
6Adam/lstm_229/lstm_cell_229/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_229/lstm_cell_229/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_230/lstm_cell_230/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_230/lstm_cell_230/kernel/m
?
8Adam/lstm_230/lstm_cell_230/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_230/lstm_cell_230/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_230/lstm_cell_230/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_230/lstm_cell_230/recurrent_kernel/m
?
BAdam/lstm_230/lstm_cell_230/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_230/lstm_cell_230/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_230/lstm_cell_230/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_230/lstm_cell_230/bias/m
?
6Adam/lstm_230/lstm_cell_230/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_230/lstm_cell_230/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_76/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_76/kernel/v
?
*Adam/dense_76/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_76/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_76/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_76/bias/v
y
(Adam/dense_76/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_76/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_228/lstm_cell_228/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_228/lstm_cell_228/kernel/v
?
8Adam/lstm_228/lstm_cell_228/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_228/lstm_cell_228/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_228/lstm_cell_228/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_228/lstm_cell_228/recurrent_kernel/v
?
BAdam/lstm_228/lstm_cell_228/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_228/lstm_cell_228/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_228/lstm_cell_228/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_228/lstm_cell_228/bias/v
?
6Adam/lstm_228/lstm_cell_228/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_228/lstm_cell_228/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_229/lstm_cell_229/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_229/lstm_cell_229/kernel/v
?
8Adam/lstm_229/lstm_cell_229/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_229/lstm_cell_229/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_229/lstm_cell_229/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_229/lstm_cell_229/recurrent_kernel/v
?
BAdam/lstm_229/lstm_cell_229/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_229/lstm_cell_229/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_229/lstm_cell_229/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_229/lstm_cell_229/bias/v
?
6Adam/lstm_229/lstm_cell_229/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_229/lstm_cell_229/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_230/lstm_cell_230/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_230/lstm_cell_230/kernel/v
?
8Adam/lstm_230/lstm_cell_230/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_230/lstm_cell_230/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_230/lstm_cell_230/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_230/lstm_cell_230/recurrent_kernel/v
?
BAdam/lstm_230/lstm_cell_230/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_230/lstm_cell_230/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_230/lstm_cell_230/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_230/lstm_cell_230/bias/v
?
6Adam/lstm_230/lstm_cell_230/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_230/lstm_cell_230/bias/v*
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
VARIABLE_VALUEdense_76/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_76/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_228/lstm_cell_228/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_228/lstm_cell_228/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_228/lstm_cell_228/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_229/lstm_cell_229/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_229/lstm_cell_229/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_229/lstm_cell_229/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_230/lstm_cell_230/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_230/lstm_cell_230/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_230/lstm_cell_230/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_76/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_76/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_228/lstm_cell_228/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_228/lstm_cell_228/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_228/lstm_cell_228/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_229/lstm_cell_229/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_229/lstm_cell_229/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_229/lstm_cell_229/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_230/lstm_cell_230/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_230/lstm_cell_230/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_230/lstm_cell_230/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_76/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_76/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_228/lstm_cell_228/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_228/lstm_cell_228/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_228/lstm_cell_228/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_229/lstm_cell_229/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_229/lstm_cell_229/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_229/lstm_cell_229/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_230/lstm_cell_230/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_230/lstm_cell_230/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_230/lstm_cell_230/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_228_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_228_inputlstm_228/lstm_cell_228/kernel'lstm_228/lstm_cell_228/recurrent_kernellstm_228/lstm_cell_228/biaslstm_229/lstm_cell_229/kernel'lstm_229/lstm_cell_229/recurrent_kernellstm_229/lstm_cell_229/biaslstm_230/lstm_cell_230/kernel'lstm_230/lstm_cell_230/recurrent_kernellstm_230/lstm_cell_230/biasdense_76/kerneldense_76/bias*
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
%__inference_signature_wrapper_2228717
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_76/kernel/Read/ReadVariableOp!dense_76/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_228/lstm_cell_228/kernel/Read/ReadVariableOp;lstm_228/lstm_cell_228/recurrent_kernel/Read/ReadVariableOp/lstm_228/lstm_cell_228/bias/Read/ReadVariableOp1lstm_229/lstm_cell_229/kernel/Read/ReadVariableOp;lstm_229/lstm_cell_229/recurrent_kernel/Read/ReadVariableOp/lstm_229/lstm_cell_229/bias/Read/ReadVariableOp1lstm_230/lstm_cell_230/kernel/Read/ReadVariableOp;lstm_230/lstm_cell_230/recurrent_kernel/Read/ReadVariableOp/lstm_230/lstm_cell_230/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_76/kernel/m/Read/ReadVariableOp(Adam/dense_76/bias/m/Read/ReadVariableOp8Adam/lstm_228/lstm_cell_228/kernel/m/Read/ReadVariableOpBAdam/lstm_228/lstm_cell_228/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_228/lstm_cell_228/bias/m/Read/ReadVariableOp8Adam/lstm_229/lstm_cell_229/kernel/m/Read/ReadVariableOpBAdam/lstm_229/lstm_cell_229/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_229/lstm_cell_229/bias/m/Read/ReadVariableOp8Adam/lstm_230/lstm_cell_230/kernel/m/Read/ReadVariableOpBAdam/lstm_230/lstm_cell_230/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_230/lstm_cell_230/bias/m/Read/ReadVariableOp*Adam/dense_76/kernel/v/Read/ReadVariableOp(Adam/dense_76/bias/v/Read/ReadVariableOp8Adam/lstm_228/lstm_cell_228/kernel/v/Read/ReadVariableOpBAdam/lstm_228/lstm_cell_228/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_228/lstm_cell_228/bias/v/Read/ReadVariableOp8Adam/lstm_229/lstm_cell_229/kernel/v/Read/ReadVariableOpBAdam/lstm_229/lstm_cell_229/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_229/lstm_cell_229/bias/v/Read/ReadVariableOp8Adam/lstm_230/lstm_cell_230/kernel/v/Read/ReadVariableOpBAdam/lstm_230/lstm_cell_230/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_230/lstm_cell_230/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_2231929
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_76/kerneldense_76/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_228/lstm_cell_228/kernel'lstm_228/lstm_cell_228/recurrent_kernellstm_228/lstm_cell_228/biaslstm_229/lstm_cell_229/kernel'lstm_229/lstm_cell_229/recurrent_kernellstm_229/lstm_cell_229/biaslstm_230/lstm_cell_230/kernel'lstm_230/lstm_cell_230/recurrent_kernellstm_230/lstm_cell_230/biastotalcountAdam/dense_76/kernel/mAdam/dense_76/bias/m$Adam/lstm_228/lstm_cell_228/kernel/m.Adam/lstm_228/lstm_cell_228/recurrent_kernel/m"Adam/lstm_228/lstm_cell_228/bias/m$Adam/lstm_229/lstm_cell_229/kernel/m.Adam/lstm_229/lstm_cell_229/recurrent_kernel/m"Adam/lstm_229/lstm_cell_229/bias/m$Adam/lstm_230/lstm_cell_230/kernel/m.Adam/lstm_230/lstm_cell_230/recurrent_kernel/m"Adam/lstm_230/lstm_cell_230/bias/mAdam/dense_76/kernel/vAdam/dense_76/bias/v$Adam/lstm_228/lstm_cell_228/kernel/v.Adam/lstm_228/lstm_cell_228/recurrent_kernel/v"Adam/lstm_228/lstm_cell_228/bias/v$Adam/lstm_229/lstm_cell_229/kernel/v.Adam/lstm_229/lstm_cell_229/recurrent_kernel/v"Adam/lstm_229/lstm_cell_229/bias/v$Adam/lstm_230/lstm_cell_230/kernel/v.Adam/lstm_230/lstm_cell_230/recurrent_kernel/v"Adam/lstm_230/lstm_cell_230/bias/v*4
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
#__inference__traced_restore_2232059??+
?C
?

lstm_228_while_body_2228830.
*lstm_228_while_lstm_228_while_loop_counter4
0lstm_228_while_lstm_228_while_maximum_iterations
lstm_228_while_placeholder 
lstm_228_while_placeholder_1 
lstm_228_while_placeholder_2 
lstm_228_while_placeholder_3-
)lstm_228_while_lstm_228_strided_slice_1_0i
elstm_228_while_tensorarrayv2read_tensorlistgetitem_lstm_228_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_228_while_lstm_cell_366_matmul_readvariableop_resource_0:	?R
?lstm_228_while_lstm_cell_366_matmul_1_readvariableop_resource_0:	d?M
>lstm_228_while_lstm_cell_366_biasadd_readvariableop_resource_0:	?
lstm_228_while_identity
lstm_228_while_identity_1
lstm_228_while_identity_2
lstm_228_while_identity_3
lstm_228_while_identity_4
lstm_228_while_identity_5+
'lstm_228_while_lstm_228_strided_slice_1g
clstm_228_while_tensorarrayv2read_tensorlistgetitem_lstm_228_tensorarrayunstack_tensorlistfromtensorN
;lstm_228_while_lstm_cell_366_matmul_readvariableop_resource:	?P
=lstm_228_while_lstm_cell_366_matmul_1_readvariableop_resource:	d?K
<lstm_228_while_lstm_cell_366_biasadd_readvariableop_resource:	???3lstm_228/while/lstm_cell_366/BiasAdd/ReadVariableOp?2lstm_228/while/lstm_cell_366/MatMul/ReadVariableOp?4lstm_228/while/lstm_cell_366/MatMul_1/ReadVariableOp?
@lstm_228/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_228/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_228_while_tensorarrayv2read_tensorlistgetitem_lstm_228_tensorarrayunstack_tensorlistfromtensor_0lstm_228_while_placeholderIlstm_228/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_228/while/lstm_cell_366/MatMul/ReadVariableOpReadVariableOp=lstm_228_while_lstm_cell_366_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_228/while/lstm_cell_366/MatMulMatMul9lstm_228/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_228/while/lstm_cell_366/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_228/while/lstm_cell_366/MatMul_1/ReadVariableOpReadVariableOp?lstm_228_while_lstm_cell_366_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_228/while/lstm_cell_366/MatMul_1MatMullstm_228_while_placeholder_2<lstm_228/while/lstm_cell_366/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_228/while/lstm_cell_366/addAddV2-lstm_228/while/lstm_cell_366/MatMul:product:0/lstm_228/while/lstm_cell_366/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_228/while/lstm_cell_366/BiasAdd/ReadVariableOpReadVariableOp>lstm_228_while_lstm_cell_366_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_228/while/lstm_cell_366/BiasAddBiasAdd$lstm_228/while/lstm_cell_366/add:z:0;lstm_228/while/lstm_cell_366/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_228/while/lstm_cell_366/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_228/while/lstm_cell_366/splitSplit5lstm_228/while/lstm_cell_366/split/split_dim:output:0-lstm_228/while/lstm_cell_366/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_228/while/lstm_cell_366/SigmoidSigmoid+lstm_228/while/lstm_cell_366/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_228/while/lstm_cell_366/Sigmoid_1Sigmoid+lstm_228/while/lstm_cell_366/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_228/while/lstm_cell_366/mulMul*lstm_228/while/lstm_cell_366/Sigmoid_1:y:0lstm_228_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_228/while/lstm_cell_366/ReluRelu+lstm_228/while/lstm_cell_366/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_228/while/lstm_cell_366/mul_1Mul(lstm_228/while/lstm_cell_366/Sigmoid:y:0/lstm_228/while/lstm_cell_366/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_228/while/lstm_cell_366/add_1AddV2$lstm_228/while/lstm_cell_366/mul:z:0&lstm_228/while/lstm_cell_366/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_228/while/lstm_cell_366/Sigmoid_2Sigmoid+lstm_228/while/lstm_cell_366/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_228/while/lstm_cell_366/Relu_1Relu&lstm_228/while/lstm_cell_366/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_228/while/lstm_cell_366/mul_2Mul*lstm_228/while/lstm_cell_366/Sigmoid_2:y:01lstm_228/while/lstm_cell_366/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_228/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_228_while_placeholder_1lstm_228_while_placeholder&lstm_228/while/lstm_cell_366/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_228/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_228/while/addAddV2lstm_228_while_placeholderlstm_228/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_228/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_228/while/add_1AddV2*lstm_228_while_lstm_228_while_loop_counterlstm_228/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_228/while/IdentityIdentitylstm_228/while/add_1:z:0^lstm_228/while/NoOp*
T0*
_output_shapes
: ?
lstm_228/while/Identity_1Identity0lstm_228_while_lstm_228_while_maximum_iterations^lstm_228/while/NoOp*
T0*
_output_shapes
: t
lstm_228/while/Identity_2Identitylstm_228/while/add:z:0^lstm_228/while/NoOp*
T0*
_output_shapes
: ?
lstm_228/while/Identity_3IdentityClstm_228/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_228/while/NoOp*
T0*
_output_shapes
: ?
lstm_228/while/Identity_4Identity&lstm_228/while/lstm_cell_366/mul_2:z:0^lstm_228/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_228/while/Identity_5Identity&lstm_228/while/lstm_cell_366/add_1:z:0^lstm_228/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_228/while/NoOpNoOp4^lstm_228/while/lstm_cell_366/BiasAdd/ReadVariableOp3^lstm_228/while/lstm_cell_366/MatMul/ReadVariableOp5^lstm_228/while/lstm_cell_366/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_228_while_identity lstm_228/while/Identity:output:0"?
lstm_228_while_identity_1"lstm_228/while/Identity_1:output:0"?
lstm_228_while_identity_2"lstm_228/while/Identity_2:output:0"?
lstm_228_while_identity_3"lstm_228/while/Identity_3:output:0"?
lstm_228_while_identity_4"lstm_228/while/Identity_4:output:0"?
lstm_228_while_identity_5"lstm_228/while/Identity_5:output:0"T
'lstm_228_while_lstm_228_strided_slice_1)lstm_228_while_lstm_228_strided_slice_1_0"~
<lstm_228_while_lstm_cell_366_biasadd_readvariableop_resource>lstm_228_while_lstm_cell_366_biasadd_readvariableop_resource_0"?
=lstm_228_while_lstm_cell_366_matmul_1_readvariableop_resource?lstm_228_while_lstm_cell_366_matmul_1_readvariableop_resource_0"|
;lstm_228_while_lstm_cell_366_matmul_readvariableop_resource=lstm_228_while_lstm_cell_366_matmul_readvariableop_resource_0"?
clstm_228_while_tensorarrayv2read_tensorlistgetitem_lstm_228_tensorarrayunstack_tensorlistfromtensorelstm_228_while_tensorarrayv2read_tensorlistgetitem_lstm_228_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_228/while/lstm_cell_366/BiasAdd/ReadVariableOp3lstm_228/while/lstm_cell_366/BiasAdd/ReadVariableOp2h
2lstm_228/while/lstm_cell_366/MatMul/ReadVariableOp2lstm_228/while/lstm_cell_366/MatMul/ReadVariableOp2l
4lstm_228/while/lstm_cell_366/MatMul_1/ReadVariableOp4lstm_228/while/lstm_cell_366/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2228253
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_367_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_367_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_367_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_367_matmul_readvariableop_resource:	d?G
4while_lstm_cell_367_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_367_biasadd_readvariableop_resource:	???*while/lstm_cell_367/BiasAdd/ReadVariableOp?)while/lstm_cell_367/MatMul/ReadVariableOp?+while/lstm_cell_367/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_367/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_367_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_367/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_367/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_367/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_367_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_367/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_367/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_367/addAddV2$while/lstm_cell_367/MatMul:product:0&while/lstm_cell_367/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_367/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_367_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_367/BiasAddBiasAddwhile/lstm_cell_367/add:z:02while/lstm_cell_367/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_367/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_367/splitSplit,while/lstm_cell_367/split/split_dim:output:0$while/lstm_cell_367/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_367/SigmoidSigmoid"while/lstm_cell_367/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_367/Sigmoid_1Sigmoid"while/lstm_cell_367/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_367/mulMul!while/lstm_cell_367/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_367/ReluRelu"while/lstm_cell_367/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_367/mul_1Mulwhile/lstm_cell_367/Sigmoid:y:0&while/lstm_cell_367/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_367/add_1AddV2while/lstm_cell_367/mul:z:0while/lstm_cell_367/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_367/Sigmoid_2Sigmoid"while/lstm_cell_367/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_367/Relu_1Reluwhile/lstm_cell_367/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_367/mul_2Mul!while/lstm_cell_367/Sigmoid_2:y:0(while/lstm_cell_367/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_367/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_367/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_367/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_367/BiasAdd/ReadVariableOp*^while/lstm_cell_367/MatMul/ReadVariableOp,^while/lstm_cell_367/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_367_biasadd_readvariableop_resource5while_lstm_cell_367_biasadd_readvariableop_resource_0"n
4while_lstm_cell_367_matmul_1_readvariableop_resource6while_lstm_cell_367_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_367_matmul_readvariableop_resource4while_lstm_cell_367_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_367/BiasAdd/ReadVariableOp*while/lstm_cell_367/BiasAdd/ReadVariableOp2V
)while/lstm_cell_367/MatMul/ReadVariableOp)while/lstm_cell_367/MatMul/ReadVariableOp2Z
+while/lstm_cell_367/MatMul_1/ReadVariableOp+while/lstm_cell_367/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2231388
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2231388___redundant_placeholder05
1while_while_cond_2231388___redundant_placeholder15
1while_while_cond_2231388___redundant_placeholder25
1while_while_cond_2231388___redundant_placeholder3
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
while_body_2226729
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_366_2226753_0:	?0
while_lstm_cell_366_2226755_0:	d?,
while_lstm_cell_366_2226757_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_366_2226753:	?.
while_lstm_cell_366_2226755:	d?*
while_lstm_cell_366_2226757:	???+while/lstm_cell_366/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_366/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_366_2226753_0while_lstm_cell_366_2226755_0while_lstm_cell_366_2226757_0*
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
J__inference_lstm_cell_366_layer_call_and_return_conditional_losses_2226670?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_366/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_366/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_366/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_366/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_366_2226753while_lstm_cell_366_2226753_0"<
while_lstm_cell_366_2226755while_lstm_cell_366_2226755_0"<
while_lstm_cell_366_2226757while_lstm_cell_366_2226757_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_366/StatefulPartitionedCall+while/lstm_cell_366/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_2228417
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2228417___redundant_placeholder05
1while_while_cond_2228417___redundant_placeholder15
1while_while_cond_2228417___redundant_placeholder25
1while_while_cond_2228417___redundant_placeholder3
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
while_body_2229871
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_366_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_366_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_366_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_366_matmul_readvariableop_resource:	?G
4while_lstm_cell_366_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_366_biasadd_readvariableop_resource:	???*while/lstm_cell_366/BiasAdd/ReadVariableOp?)while/lstm_cell_366/MatMul/ReadVariableOp?+while/lstm_cell_366/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_366/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_366_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_366/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_366/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_366/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_366_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_366/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_366/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_366/addAddV2$while/lstm_cell_366/MatMul:product:0&while/lstm_cell_366/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_366/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_366_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_366/BiasAddBiasAddwhile/lstm_cell_366/add:z:02while/lstm_cell_366/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_366/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_366/splitSplit,while/lstm_cell_366/split/split_dim:output:0$while/lstm_cell_366/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_366/SigmoidSigmoid"while/lstm_cell_366/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_366/Sigmoid_1Sigmoid"while/lstm_cell_366/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_366/mulMul!while/lstm_cell_366/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_366/ReluRelu"while/lstm_cell_366/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_366/mul_1Mulwhile/lstm_cell_366/Sigmoid:y:0&while/lstm_cell_366/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_366/add_1AddV2while/lstm_cell_366/mul:z:0while/lstm_cell_366/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_366/Sigmoid_2Sigmoid"while/lstm_cell_366/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_366/Relu_1Reluwhile/lstm_cell_366/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_366/mul_2Mul!while/lstm_cell_366/Sigmoid_2:y:0(while/lstm_cell_366/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_366/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_366/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_366/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_366/BiasAdd/ReadVariableOp*^while/lstm_cell_366/MatMul/ReadVariableOp,^while/lstm_cell_366/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_366_biasadd_readvariableop_resource5while_lstm_cell_366_biasadd_readvariableop_resource_0"n
4while_lstm_cell_366_matmul_1_readvariableop_resource6while_lstm_cell_366_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_366_matmul_readvariableop_resource4while_lstm_cell_366_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_366/BiasAdd/ReadVariableOp*while/lstm_cell_366/BiasAdd/ReadVariableOp2V
)while/lstm_cell_366/MatMul/ReadVariableOp)while/lstm_cell_366/MatMul/ReadVariableOp2Z
+while/lstm_cell_366/MatMul_1/ReadVariableOp+while/lstm_cell_366/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_76_layer_call_and_return_conditional_losses_2227981

inputs#
lstm_228_2227657:	?#
lstm_228_2227659:	d?
lstm_228_2227661:	?#
lstm_229_2227807:	d?#
lstm_229_2227809:	2?
lstm_229_2227811:	?"
lstm_230_2227957:2("
lstm_230_2227959:
(
lstm_230_2227961:("
dense_76_2227975:

dense_76_2227977:
identity?? dense_76/StatefulPartitionedCall? lstm_228/StatefulPartitionedCall? lstm_229/StatefulPartitionedCall? lstm_230/StatefulPartitionedCall?
 lstm_228/StatefulPartitionedCallStatefulPartitionedCallinputslstm_228_2227657lstm_228_2227659lstm_228_2227661*
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
E__inference_lstm_228_layer_call_and_return_conditional_losses_2227656?
 lstm_229/StatefulPartitionedCallStatefulPartitionedCall)lstm_228/StatefulPartitionedCall:output:0lstm_229_2227807lstm_229_2227809lstm_229_2227811*
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
E__inference_lstm_229_layer_call_and_return_conditional_losses_2227806?
 lstm_230/StatefulPartitionedCallStatefulPartitionedCall)lstm_229/StatefulPartitionedCall:output:0lstm_230_2227957lstm_230_2227959lstm_230_2227961*
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
E__inference_lstm_230_layer_call_and_return_conditional_losses_2227956?
 dense_76/StatefulPartitionedCallStatefulPartitionedCall)lstm_230/StatefulPartitionedCall:output:0dense_76_2227975dense_76_2227977*
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
E__inference_dense_76_layer_call_and_return_conditional_losses_2227974x
IdentityIdentity)dense_76/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_76/StatefulPartitionedCall!^lstm_228/StatefulPartitionedCall!^lstm_229/StatefulPartitionedCall!^lstm_230/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_76/StatefulPartitionedCall dense_76/StatefulPartitionedCall2D
 lstm_228/StatefulPartitionedCall lstm_228/StatefulPartitionedCall2D
 lstm_229/StatefulPartitionedCall lstm_229/StatefulPartitionedCall2D
 lstm_230/StatefulPartitionedCall lstm_230/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_228_layer_call_and_return_conditional_losses_2230098

inputs?
,lstm_cell_366_matmul_readvariableop_resource:	?A
.lstm_cell_366_matmul_1_readvariableop_resource:	d?<
-lstm_cell_366_biasadd_readvariableop_resource:	?
identity??$lstm_cell_366/BiasAdd/ReadVariableOp?#lstm_cell_366/MatMul/ReadVariableOp?%lstm_cell_366/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_366/MatMul/ReadVariableOpReadVariableOp,lstm_cell_366_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_366/MatMulMatMulstrided_slice_2:output:0+lstm_cell_366/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_366/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_366_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_366/MatMul_1MatMulzeros:output:0-lstm_cell_366/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_366/addAddV2lstm_cell_366/MatMul:product:0 lstm_cell_366/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_366/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_366_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_366/BiasAddBiasAddlstm_cell_366/add:z:0,lstm_cell_366/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_366/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_366/splitSplit&lstm_cell_366/split/split_dim:output:0lstm_cell_366/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_366/SigmoidSigmoidlstm_cell_366/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_366/Sigmoid_1Sigmoidlstm_cell_366/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_366/mulMullstm_cell_366/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_366/ReluRelulstm_cell_366/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_366/mul_1Mullstm_cell_366/Sigmoid:y:0 lstm_cell_366/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_366/add_1AddV2lstm_cell_366/mul:z:0lstm_cell_366/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_366/Sigmoid_2Sigmoidlstm_cell_366/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_366/Relu_1Relulstm_cell_366/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_366/mul_2Mullstm_cell_366/Sigmoid_2:y:0"lstm_cell_366/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_366_matmul_readvariableop_resource.lstm_cell_366_matmul_1_readvariableop_resource-lstm_cell_366_biasadd_readvariableop_resource*
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
while_body_2230014*
condR
while_cond_2230013*K
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
NoOpNoOp%^lstm_cell_366/BiasAdd/ReadVariableOp$^lstm_cell_366/MatMul/ReadVariableOp&^lstm_cell_366/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_366/BiasAdd/ReadVariableOp$lstm_cell_366/BiasAdd/ReadVariableOp2J
#lstm_cell_366/MatMul/ReadVariableOp#lstm_cell_366/MatMul/ReadVariableOp2N
%lstm_cell_366/MatMul_1/ReadVariableOp%lstm_cell_366/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_230_layer_call_and_return_conditional_losses_2231330

inputs>
,lstm_cell_368_matmul_readvariableop_resource:2(@
.lstm_cell_368_matmul_1_readvariableop_resource:
(;
-lstm_cell_368_biasadd_readvariableop_resource:(
identity??$lstm_cell_368/BiasAdd/ReadVariableOp?#lstm_cell_368/MatMul/ReadVariableOp?%lstm_cell_368/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_368/MatMul/ReadVariableOpReadVariableOp,lstm_cell_368_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_368/MatMulMatMulstrided_slice_2:output:0+lstm_cell_368/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_368/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_368_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_368/MatMul_1MatMulzeros:output:0-lstm_cell_368/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_368/addAddV2lstm_cell_368/MatMul:product:0 lstm_cell_368/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_368/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_368_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_368/BiasAddBiasAddlstm_cell_368/add:z:0,lstm_cell_368/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_368/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_368/splitSplit&lstm_cell_368/split/split_dim:output:0lstm_cell_368/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_368/SigmoidSigmoidlstm_cell_368/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_368/Sigmoid_1Sigmoidlstm_cell_368/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_368/mulMullstm_cell_368/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_368/ReluRelulstm_cell_368/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_368/mul_1Mullstm_cell_368/Sigmoid:y:0 lstm_cell_368/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_368/add_1AddV2lstm_cell_368/mul:z:0lstm_cell_368/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_368/Sigmoid_2Sigmoidlstm_cell_368/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_368/Relu_1Relulstm_cell_368/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_368/mul_2Mullstm_cell_368/Sigmoid_2:y:0"lstm_cell_368/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_368_matmul_readvariableop_resource.lstm_cell_368_matmul_1_readvariableop_resource-lstm_cell_368_biasadd_readvariableop_resource*
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
while_body_2231246*
condR
while_cond_2231245*K
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
NoOpNoOp%^lstm_cell_368/BiasAdd/ReadVariableOp$^lstm_cell_368/MatMul/ReadVariableOp&^lstm_cell_368/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_368/BiasAdd/ReadVariableOp$lstm_cell_368/BiasAdd/ReadVariableOp2J
#lstm_cell_368/MatMul/ReadVariableOp#lstm_cell_368/MatMul/ReadVariableOp2N
%lstm_cell_368/MatMul_1/ReadVariableOp%lstm_cell_368/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_2230344
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_367_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_367_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_367_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_367_matmul_readvariableop_resource:	d?G
4while_lstm_cell_367_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_367_biasadd_readvariableop_resource:	???*while/lstm_cell_367/BiasAdd/ReadVariableOp?)while/lstm_cell_367/MatMul/ReadVariableOp?+while/lstm_cell_367/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_367/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_367_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_367/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_367/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_367/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_367_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_367/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_367/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_367/addAddV2$while/lstm_cell_367/MatMul:product:0&while/lstm_cell_367/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_367/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_367_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_367/BiasAddBiasAddwhile/lstm_cell_367/add:z:02while/lstm_cell_367/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_367/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_367/splitSplit,while/lstm_cell_367/split/split_dim:output:0$while/lstm_cell_367/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_367/SigmoidSigmoid"while/lstm_cell_367/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_367/Sigmoid_1Sigmoid"while/lstm_cell_367/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_367/mulMul!while/lstm_cell_367/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_367/ReluRelu"while/lstm_cell_367/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_367/mul_1Mulwhile/lstm_cell_367/Sigmoid:y:0&while/lstm_cell_367/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_367/add_1AddV2while/lstm_cell_367/mul:z:0while/lstm_cell_367/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_367/Sigmoid_2Sigmoid"while/lstm_cell_367/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_367/Relu_1Reluwhile/lstm_cell_367/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_367/mul_2Mul!while/lstm_cell_367/Sigmoid_2:y:0(while/lstm_cell_367/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_367/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_367/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_367/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_367/BiasAdd/ReadVariableOp*^while/lstm_cell_367/MatMul/ReadVariableOp,^while/lstm_cell_367/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_367_biasadd_readvariableop_resource5while_lstm_cell_367_biasadd_readvariableop_resource_0"n
4while_lstm_cell_367_matmul_1_readvariableop_resource6while_lstm_cell_367_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_367_matmul_readvariableop_resource4while_lstm_cell_367_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_367/BiasAdd/ReadVariableOp*while/lstm_cell_367/BiasAdd/ReadVariableOp2V
)while/lstm_cell_367/MatMul/ReadVariableOp)while/lstm_cell_367/MatMul/ReadVariableOp2Z
+while/lstm_cell_367/MatMul_1/ReadVariableOp+while/lstm_cell_367/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_230_layer_call_fn_2230890

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
E__inference_lstm_230_layer_call_and_return_conditional_losses_2227956o
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
?
?
J__inference_lstm_cell_367_layer_call_and_return_conditional_losses_2231656

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
while_cond_2227571
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2227571___redundant_placeholder05
1while_while_cond_2227571___redundant_placeholder15
1while_while_cond_2227571___redundant_placeholder25
1while_while_cond_2227571___redundant_placeholder3
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
while_body_2230014
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_366_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_366_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_366_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_366_matmul_readvariableop_resource:	?G
4while_lstm_cell_366_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_366_biasadd_readvariableop_resource:	???*while/lstm_cell_366/BiasAdd/ReadVariableOp?)while/lstm_cell_366/MatMul/ReadVariableOp?+while/lstm_cell_366/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_366/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_366_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_366/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_366/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_366/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_366_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_366/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_366/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_366/addAddV2$while/lstm_cell_366/MatMul:product:0&while/lstm_cell_366/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_366/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_366_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_366/BiasAddBiasAddwhile/lstm_cell_366/add:z:02while/lstm_cell_366/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_366/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_366/splitSplit,while/lstm_cell_366/split/split_dim:output:0$while/lstm_cell_366/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_366/SigmoidSigmoid"while/lstm_cell_366/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_366/Sigmoid_1Sigmoid"while/lstm_cell_366/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_366/mulMul!while/lstm_cell_366/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_366/ReluRelu"while/lstm_cell_366/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_366/mul_1Mulwhile/lstm_cell_366/Sigmoid:y:0&while/lstm_cell_366/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_366/add_1AddV2while/lstm_cell_366/mul:z:0while/lstm_cell_366/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_366/Sigmoid_2Sigmoid"while/lstm_cell_366/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_366/Relu_1Reluwhile/lstm_cell_366/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_366/mul_2Mul!while/lstm_cell_366/Sigmoid_2:y:0(while/lstm_cell_366/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_366/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_366/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_366/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_366/BiasAdd/ReadVariableOp*^while/lstm_cell_366/MatMul/ReadVariableOp,^while/lstm_cell_366/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_366_biasadd_readvariableop_resource5while_lstm_cell_366_biasadd_readvariableop_resource_0"n
4while_lstm_cell_366_matmul_1_readvariableop_resource6while_lstm_cell_366_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_366_matmul_readvariableop_resource4while_lstm_cell_366_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_366/BiasAdd/ReadVariableOp*while/lstm_cell_366/BiasAdd/ReadVariableOp2V
)while/lstm_cell_366/MatMul/ReadVariableOp)while/lstm_cell_366/MatMul/ReadVariableOp2Z
+while/lstm_cell_366/MatMul_1/ReadVariableOp+while/lstm_cell_366/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_sequential_76_layer_call_fn_2228006
lstm_228_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_228_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_76_layer_call_and_return_conditional_losses_2227981o
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
_user_specified_namelstm_228_input
?
?
*__inference_lstm_229_layer_call_fn_2230274

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
E__inference_lstm_229_layer_call_and_return_conditional_losses_2227806s
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
?
)sequential_76_lstm_230_while_cond_2226366J
Fsequential_76_lstm_230_while_sequential_76_lstm_230_while_loop_counterP
Lsequential_76_lstm_230_while_sequential_76_lstm_230_while_maximum_iterations,
(sequential_76_lstm_230_while_placeholder.
*sequential_76_lstm_230_while_placeholder_1.
*sequential_76_lstm_230_while_placeholder_2.
*sequential_76_lstm_230_while_placeholder_3L
Hsequential_76_lstm_230_while_less_sequential_76_lstm_230_strided_slice_1c
_sequential_76_lstm_230_while_sequential_76_lstm_230_while_cond_2226366___redundant_placeholder0c
_sequential_76_lstm_230_while_sequential_76_lstm_230_while_cond_2226366___redundant_placeholder1c
_sequential_76_lstm_230_while_sequential_76_lstm_230_while_cond_2226366___redundant_placeholder2c
_sequential_76_lstm_230_while_sequential_76_lstm_230_while_cond_2226366___redundant_placeholder3)
%sequential_76_lstm_230_while_identity
?
!sequential_76/lstm_230/while/LessLess(sequential_76_lstm_230_while_placeholderHsequential_76_lstm_230_while_less_sequential_76_lstm_230_strided_slice_1*
T0*
_output_shapes
: y
%sequential_76/lstm_230/while/IdentityIdentity%sequential_76/lstm_230/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_76_lstm_230_while_identity.sequential_76/lstm_230/while/Identity:output:0*(
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
while_cond_2226537
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2226537___redundant_placeholder05
1while_while_cond_2226537___redundant_placeholder15
1while_while_cond_2226537___redundant_placeholder25
1while_while_cond_2226537___redundant_placeholder3
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
while_cond_2230959
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2230959___redundant_placeholder05
1while_while_cond_2230959___redundant_placeholder15
1while_while_cond_2230959___redundant_placeholder25
1while_while_cond_2230959___redundant_placeholder3
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
*__inference_lstm_229_layer_call_fn_2230252
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
E__inference_lstm_229_layer_call_and_return_conditional_losses_2226957|
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
?8
?
while_body_2229728
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_366_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_366_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_366_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_366_matmul_readvariableop_resource:	?G
4while_lstm_cell_366_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_366_biasadd_readvariableop_resource:	???*while/lstm_cell_366/BiasAdd/ReadVariableOp?)while/lstm_cell_366/MatMul/ReadVariableOp?+while/lstm_cell_366/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_366/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_366_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_366/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_366/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_366/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_366_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_366/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_366/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_366/addAddV2$while/lstm_cell_366/MatMul:product:0&while/lstm_cell_366/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_366/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_366_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_366/BiasAddBiasAddwhile/lstm_cell_366/add:z:02while/lstm_cell_366/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_366/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_366/splitSplit,while/lstm_cell_366/split/split_dim:output:0$while/lstm_cell_366/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_366/SigmoidSigmoid"while/lstm_cell_366/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_366/Sigmoid_1Sigmoid"while/lstm_cell_366/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_366/mulMul!while/lstm_cell_366/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_366/ReluRelu"while/lstm_cell_366/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_366/mul_1Mulwhile/lstm_cell_366/Sigmoid:y:0&while/lstm_cell_366/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_366/add_1AddV2while/lstm_cell_366/mul:z:0while/lstm_cell_366/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_366/Sigmoid_2Sigmoid"while/lstm_cell_366/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_366/Relu_1Reluwhile/lstm_cell_366/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_366/mul_2Mul!while/lstm_cell_366/Sigmoid_2:y:0(while/lstm_cell_366/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_366/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_366/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_366/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_366/BiasAdd/ReadVariableOp*^while/lstm_cell_366/MatMul/ReadVariableOp,^while/lstm_cell_366/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_366_biasadd_readvariableop_resource5while_lstm_cell_366_biasadd_readvariableop_resource_0"n
4while_lstm_cell_366_matmul_1_readvariableop_resource6while_lstm_cell_366_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_366_matmul_readvariableop_resource4while_lstm_cell_366_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_366/BiasAdd/ReadVariableOp*while/lstm_cell_366/BiasAdd/ReadVariableOp2V
)while/lstm_cell_366/MatMul/ReadVariableOp)while/lstm_cell_366/MatMul/ReadVariableOp2Z
+while/lstm_cell_366/MatMul_1/ReadVariableOp+while/lstm_cell_366/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_368_layer_call_and_return_conditional_losses_2231754

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
)sequential_76_lstm_230_while_body_2226367J
Fsequential_76_lstm_230_while_sequential_76_lstm_230_while_loop_counterP
Lsequential_76_lstm_230_while_sequential_76_lstm_230_while_maximum_iterations,
(sequential_76_lstm_230_while_placeholder.
*sequential_76_lstm_230_while_placeholder_1.
*sequential_76_lstm_230_while_placeholder_2.
*sequential_76_lstm_230_while_placeholder_3I
Esequential_76_lstm_230_while_sequential_76_lstm_230_strided_slice_1_0?
?sequential_76_lstm_230_while_tensorarrayv2read_tensorlistgetitem_sequential_76_lstm_230_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_76_lstm_230_while_lstm_cell_368_matmul_readvariableop_resource_0:2(_
Msequential_76_lstm_230_while_lstm_cell_368_matmul_1_readvariableop_resource_0:
(Z
Lsequential_76_lstm_230_while_lstm_cell_368_biasadd_readvariableop_resource_0:()
%sequential_76_lstm_230_while_identity+
'sequential_76_lstm_230_while_identity_1+
'sequential_76_lstm_230_while_identity_2+
'sequential_76_lstm_230_while_identity_3+
'sequential_76_lstm_230_while_identity_4+
'sequential_76_lstm_230_while_identity_5G
Csequential_76_lstm_230_while_sequential_76_lstm_230_strided_slice_1?
sequential_76_lstm_230_while_tensorarrayv2read_tensorlistgetitem_sequential_76_lstm_230_tensorarrayunstack_tensorlistfromtensor[
Isequential_76_lstm_230_while_lstm_cell_368_matmul_readvariableop_resource:2(]
Ksequential_76_lstm_230_while_lstm_cell_368_matmul_1_readvariableop_resource:
(X
Jsequential_76_lstm_230_while_lstm_cell_368_biasadd_readvariableop_resource:(??Asequential_76/lstm_230/while/lstm_cell_368/BiasAdd/ReadVariableOp?@sequential_76/lstm_230/while/lstm_cell_368/MatMul/ReadVariableOp?Bsequential_76/lstm_230/while/lstm_cell_368/MatMul_1/ReadVariableOp?
Nsequential_76/lstm_230/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
@sequential_76/lstm_230/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_76_lstm_230_while_tensorarrayv2read_tensorlistgetitem_sequential_76_lstm_230_tensorarrayunstack_tensorlistfromtensor_0(sequential_76_lstm_230_while_placeholderWsequential_76/lstm_230/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
@sequential_76/lstm_230/while/lstm_cell_368/MatMul/ReadVariableOpReadVariableOpKsequential_76_lstm_230_while_lstm_cell_368_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
1sequential_76/lstm_230/while/lstm_cell_368/MatMulMatMulGsequential_76/lstm_230/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_76/lstm_230/while/lstm_cell_368/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Bsequential_76/lstm_230/while/lstm_cell_368/MatMul_1/ReadVariableOpReadVariableOpMsequential_76_lstm_230_while_lstm_cell_368_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
3sequential_76/lstm_230/while/lstm_cell_368/MatMul_1MatMul*sequential_76_lstm_230_while_placeholder_2Jsequential_76/lstm_230/while/lstm_cell_368/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.sequential_76/lstm_230/while/lstm_cell_368/addAddV2;sequential_76/lstm_230/while/lstm_cell_368/MatMul:product:0=sequential_76/lstm_230/while/lstm_cell_368/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Asequential_76/lstm_230/while/lstm_cell_368/BiasAdd/ReadVariableOpReadVariableOpLsequential_76_lstm_230_while_lstm_cell_368_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
2sequential_76/lstm_230/while/lstm_cell_368/BiasAddBiasAdd2sequential_76/lstm_230/while/lstm_cell_368/add:z:0Isequential_76/lstm_230/while/lstm_cell_368/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(|
:sequential_76/lstm_230/while/lstm_cell_368/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_76/lstm_230/while/lstm_cell_368/splitSplitCsequential_76/lstm_230/while/lstm_cell_368/split/split_dim:output:0;sequential_76/lstm_230/while/lstm_cell_368/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
2sequential_76/lstm_230/while/lstm_cell_368/SigmoidSigmoid9sequential_76/lstm_230/while/lstm_cell_368/split:output:0*
T0*'
_output_shapes
:?????????
?
4sequential_76/lstm_230/while/lstm_cell_368/Sigmoid_1Sigmoid9sequential_76/lstm_230/while/lstm_cell_368/split:output:1*
T0*'
_output_shapes
:?????????
?
.sequential_76/lstm_230/while/lstm_cell_368/mulMul8sequential_76/lstm_230/while/lstm_cell_368/Sigmoid_1:y:0*sequential_76_lstm_230_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
/sequential_76/lstm_230/while/lstm_cell_368/ReluRelu9sequential_76/lstm_230/while/lstm_cell_368/split:output:2*
T0*'
_output_shapes
:?????????
?
0sequential_76/lstm_230/while/lstm_cell_368/mul_1Mul6sequential_76/lstm_230/while/lstm_cell_368/Sigmoid:y:0=sequential_76/lstm_230/while/lstm_cell_368/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
0sequential_76/lstm_230/while/lstm_cell_368/add_1AddV22sequential_76/lstm_230/while/lstm_cell_368/mul:z:04sequential_76/lstm_230/while/lstm_cell_368/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
4sequential_76/lstm_230/while/lstm_cell_368/Sigmoid_2Sigmoid9sequential_76/lstm_230/while/lstm_cell_368/split:output:3*
T0*'
_output_shapes
:?????????
?
1sequential_76/lstm_230/while/lstm_cell_368/Relu_1Relu4sequential_76/lstm_230/while/lstm_cell_368/add_1:z:0*
T0*'
_output_shapes
:?????????
?
0sequential_76/lstm_230/while/lstm_cell_368/mul_2Mul8sequential_76/lstm_230/while/lstm_cell_368/Sigmoid_2:y:0?sequential_76/lstm_230/while/lstm_cell_368/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Asequential_76/lstm_230/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_76_lstm_230_while_placeholder_1(sequential_76_lstm_230_while_placeholder4sequential_76/lstm_230/while/lstm_cell_368/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_76/lstm_230/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_76/lstm_230/while/addAddV2(sequential_76_lstm_230_while_placeholder+sequential_76/lstm_230/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_76/lstm_230/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_76/lstm_230/while/add_1AddV2Fsequential_76_lstm_230_while_sequential_76_lstm_230_while_loop_counter-sequential_76/lstm_230/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_76/lstm_230/while/IdentityIdentity&sequential_76/lstm_230/while/add_1:z:0"^sequential_76/lstm_230/while/NoOp*
T0*
_output_shapes
: ?
'sequential_76/lstm_230/while/Identity_1IdentityLsequential_76_lstm_230_while_sequential_76_lstm_230_while_maximum_iterations"^sequential_76/lstm_230/while/NoOp*
T0*
_output_shapes
: ?
'sequential_76/lstm_230/while/Identity_2Identity$sequential_76/lstm_230/while/add:z:0"^sequential_76/lstm_230/while/NoOp*
T0*
_output_shapes
: ?
'sequential_76/lstm_230/while/Identity_3IdentityQsequential_76/lstm_230/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_76/lstm_230/while/NoOp*
T0*
_output_shapes
: ?
'sequential_76/lstm_230/while/Identity_4Identity4sequential_76/lstm_230/while/lstm_cell_368/mul_2:z:0"^sequential_76/lstm_230/while/NoOp*
T0*'
_output_shapes
:?????????
?
'sequential_76/lstm_230/while/Identity_5Identity4sequential_76/lstm_230/while/lstm_cell_368/add_1:z:0"^sequential_76/lstm_230/while/NoOp*
T0*'
_output_shapes
:?????????
?
!sequential_76/lstm_230/while/NoOpNoOpB^sequential_76/lstm_230/while/lstm_cell_368/BiasAdd/ReadVariableOpA^sequential_76/lstm_230/while/lstm_cell_368/MatMul/ReadVariableOpC^sequential_76/lstm_230/while/lstm_cell_368/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_76_lstm_230_while_identity.sequential_76/lstm_230/while/Identity:output:0"[
'sequential_76_lstm_230_while_identity_10sequential_76/lstm_230/while/Identity_1:output:0"[
'sequential_76_lstm_230_while_identity_20sequential_76/lstm_230/while/Identity_2:output:0"[
'sequential_76_lstm_230_while_identity_30sequential_76/lstm_230/while/Identity_3:output:0"[
'sequential_76_lstm_230_while_identity_40sequential_76/lstm_230/while/Identity_4:output:0"[
'sequential_76_lstm_230_while_identity_50sequential_76/lstm_230/while/Identity_5:output:0"?
Jsequential_76_lstm_230_while_lstm_cell_368_biasadd_readvariableop_resourceLsequential_76_lstm_230_while_lstm_cell_368_biasadd_readvariableop_resource_0"?
Ksequential_76_lstm_230_while_lstm_cell_368_matmul_1_readvariableop_resourceMsequential_76_lstm_230_while_lstm_cell_368_matmul_1_readvariableop_resource_0"?
Isequential_76_lstm_230_while_lstm_cell_368_matmul_readvariableop_resourceKsequential_76_lstm_230_while_lstm_cell_368_matmul_readvariableop_resource_0"?
Csequential_76_lstm_230_while_sequential_76_lstm_230_strided_slice_1Esequential_76_lstm_230_while_sequential_76_lstm_230_strided_slice_1_0"?
sequential_76_lstm_230_while_tensorarrayv2read_tensorlistgetitem_sequential_76_lstm_230_tensorarrayunstack_tensorlistfromtensor?sequential_76_lstm_230_while_tensorarrayv2read_tensorlistgetitem_sequential_76_lstm_230_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Asequential_76/lstm_230/while/lstm_cell_368/BiasAdd/ReadVariableOpAsequential_76/lstm_230/while/lstm_cell_368/BiasAdd/ReadVariableOp2?
@sequential_76/lstm_230/while/lstm_cell_368/MatMul/ReadVariableOp@sequential_76/lstm_230/while/lstm_cell_368/MatMul/ReadVariableOp2?
Bsequential_76/lstm_230/while/lstm_cell_368/MatMul_1/ReadVariableOpBsequential_76/lstm_230/while/lstm_cell_368/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2227722
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_367_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_367_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_367_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_367_matmul_readvariableop_resource:	d?G
4while_lstm_cell_367_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_367_biasadd_readvariableop_resource:	???*while/lstm_cell_367/BiasAdd/ReadVariableOp?)while/lstm_cell_367/MatMul/ReadVariableOp?+while/lstm_cell_367/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_367/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_367_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_367/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_367/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_367/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_367_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_367/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_367/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_367/addAddV2$while/lstm_cell_367/MatMul:product:0&while/lstm_cell_367/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_367/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_367_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_367/BiasAddBiasAddwhile/lstm_cell_367/add:z:02while/lstm_cell_367/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_367/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_367/splitSplit,while/lstm_cell_367/split/split_dim:output:0$while/lstm_cell_367/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_367/SigmoidSigmoid"while/lstm_cell_367/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_367/Sigmoid_1Sigmoid"while/lstm_cell_367/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_367/mulMul!while/lstm_cell_367/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_367/ReluRelu"while/lstm_cell_367/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_367/mul_1Mulwhile/lstm_cell_367/Sigmoid:y:0&while/lstm_cell_367/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_367/add_1AddV2while/lstm_cell_367/mul:z:0while/lstm_cell_367/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_367/Sigmoid_2Sigmoid"while/lstm_cell_367/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_367/Relu_1Reluwhile/lstm_cell_367/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_367/mul_2Mul!while/lstm_cell_367/Sigmoid_2:y:0(while/lstm_cell_367/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_367/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_367/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_367/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_367/BiasAdd/ReadVariableOp*^while/lstm_cell_367/MatMul/ReadVariableOp,^while/lstm_cell_367/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_367_biasadd_readvariableop_resource5while_lstm_cell_367_biasadd_readvariableop_resource_0"n
4while_lstm_cell_367_matmul_1_readvariableop_resource6while_lstm_cell_367_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_367_matmul_readvariableop_resource4while_lstm_cell_367_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_367/BiasAdd/ReadVariableOp*while/lstm_cell_367/BiasAdd/ReadVariableOp2V
)while/lstm_cell_367/MatMul/ReadVariableOp)while/lstm_cell_367/MatMul/ReadVariableOp2Z
+while/lstm_cell_367/MatMul_1/ReadVariableOp+while/lstm_cell_367/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
??
?
J__inference_sequential_76_layer_call_and_return_conditional_losses_2229198

inputsH
5lstm_228_lstm_cell_366_matmul_readvariableop_resource:	?J
7lstm_228_lstm_cell_366_matmul_1_readvariableop_resource:	d?E
6lstm_228_lstm_cell_366_biasadd_readvariableop_resource:	?H
5lstm_229_lstm_cell_367_matmul_readvariableop_resource:	d?J
7lstm_229_lstm_cell_367_matmul_1_readvariableop_resource:	2?E
6lstm_229_lstm_cell_367_biasadd_readvariableop_resource:	?G
5lstm_230_lstm_cell_368_matmul_readvariableop_resource:2(I
7lstm_230_lstm_cell_368_matmul_1_readvariableop_resource:
(D
6lstm_230_lstm_cell_368_biasadd_readvariableop_resource:(9
'dense_76_matmul_readvariableop_resource:
6
(dense_76_biasadd_readvariableop_resource:
identity??dense_76/BiasAdd/ReadVariableOp?dense_76/MatMul/ReadVariableOp?-lstm_228/lstm_cell_366/BiasAdd/ReadVariableOp?,lstm_228/lstm_cell_366/MatMul/ReadVariableOp?.lstm_228/lstm_cell_366/MatMul_1/ReadVariableOp?lstm_228/while?-lstm_229/lstm_cell_367/BiasAdd/ReadVariableOp?,lstm_229/lstm_cell_367/MatMul/ReadVariableOp?.lstm_229/lstm_cell_367/MatMul_1/ReadVariableOp?lstm_229/while?-lstm_230/lstm_cell_368/BiasAdd/ReadVariableOp?,lstm_230/lstm_cell_368/MatMul/ReadVariableOp?.lstm_230/lstm_cell_368/MatMul_1/ReadVariableOp?lstm_230/whileD
lstm_228/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_228/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_228/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_228/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_228/strided_sliceStridedSlicelstm_228/Shape:output:0%lstm_228/strided_slice/stack:output:0'lstm_228/strided_slice/stack_1:output:0'lstm_228/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_228/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_228/zeros/packedPacklstm_228/strided_slice:output:0 lstm_228/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_228/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_228/zerosFilllstm_228/zeros/packed:output:0lstm_228/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_228/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_228/zeros_1/packedPacklstm_228/strided_slice:output:0"lstm_228/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_228/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_228/zeros_1Fill lstm_228/zeros_1/packed:output:0lstm_228/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_228/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_228/transpose	Transposeinputs lstm_228/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_228/Shape_1Shapelstm_228/transpose:y:0*
T0*
_output_shapes
:h
lstm_228/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_228/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_228/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_228/strided_slice_1StridedSlicelstm_228/Shape_1:output:0'lstm_228/strided_slice_1/stack:output:0)lstm_228/strided_slice_1/stack_1:output:0)lstm_228/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_228/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_228/TensorArrayV2TensorListReserve-lstm_228/TensorArrayV2/element_shape:output:0!lstm_228/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_228/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_228/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_228/transpose:y:0Glstm_228/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_228/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_228/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_228/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_228/strided_slice_2StridedSlicelstm_228/transpose:y:0'lstm_228/strided_slice_2/stack:output:0)lstm_228/strided_slice_2/stack_1:output:0)lstm_228/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_228/lstm_cell_366/MatMul/ReadVariableOpReadVariableOp5lstm_228_lstm_cell_366_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_228/lstm_cell_366/MatMulMatMul!lstm_228/strided_slice_2:output:04lstm_228/lstm_cell_366/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_228/lstm_cell_366/MatMul_1/ReadVariableOpReadVariableOp7lstm_228_lstm_cell_366_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_228/lstm_cell_366/MatMul_1MatMullstm_228/zeros:output:06lstm_228/lstm_cell_366/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_228/lstm_cell_366/addAddV2'lstm_228/lstm_cell_366/MatMul:product:0)lstm_228/lstm_cell_366/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_228/lstm_cell_366/BiasAdd/ReadVariableOpReadVariableOp6lstm_228_lstm_cell_366_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_228/lstm_cell_366/BiasAddBiasAddlstm_228/lstm_cell_366/add:z:05lstm_228/lstm_cell_366/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_228/lstm_cell_366/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_228/lstm_cell_366/splitSplit/lstm_228/lstm_cell_366/split/split_dim:output:0'lstm_228/lstm_cell_366/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_228/lstm_cell_366/SigmoidSigmoid%lstm_228/lstm_cell_366/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_228/lstm_cell_366/Sigmoid_1Sigmoid%lstm_228/lstm_cell_366/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_228/lstm_cell_366/mulMul$lstm_228/lstm_cell_366/Sigmoid_1:y:0lstm_228/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_228/lstm_cell_366/ReluRelu%lstm_228/lstm_cell_366/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_228/lstm_cell_366/mul_1Mul"lstm_228/lstm_cell_366/Sigmoid:y:0)lstm_228/lstm_cell_366/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_228/lstm_cell_366/add_1AddV2lstm_228/lstm_cell_366/mul:z:0 lstm_228/lstm_cell_366/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_228/lstm_cell_366/Sigmoid_2Sigmoid%lstm_228/lstm_cell_366/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_228/lstm_cell_366/Relu_1Relu lstm_228/lstm_cell_366/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_228/lstm_cell_366/mul_2Mul$lstm_228/lstm_cell_366/Sigmoid_2:y:0+lstm_228/lstm_cell_366/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_228/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_228/TensorArrayV2_1TensorListReserve/lstm_228/TensorArrayV2_1/element_shape:output:0!lstm_228/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_228/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_228/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_228/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_228/whileWhile$lstm_228/while/loop_counter:output:0*lstm_228/while/maximum_iterations:output:0lstm_228/time:output:0!lstm_228/TensorArrayV2_1:handle:0lstm_228/zeros:output:0lstm_228/zeros_1:output:0!lstm_228/strided_slice_1:output:0@lstm_228/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_228_lstm_cell_366_matmul_readvariableop_resource7lstm_228_lstm_cell_366_matmul_1_readvariableop_resource6lstm_228_lstm_cell_366_biasadd_readvariableop_resource*
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
lstm_228_while_body_2228830*'
condR
lstm_228_while_cond_2228829*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_228/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_228/TensorArrayV2Stack/TensorListStackTensorListStacklstm_228/while:output:3Blstm_228/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_228/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_228/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_228/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_228/strided_slice_3StridedSlice4lstm_228/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_228/strided_slice_3/stack:output:0)lstm_228/strided_slice_3/stack_1:output:0)lstm_228/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_228/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_228/transpose_1	Transpose4lstm_228/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_228/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_228/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_229/ShapeShapelstm_228/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_229/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_229/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_229/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_229/strided_sliceStridedSlicelstm_229/Shape:output:0%lstm_229/strided_slice/stack:output:0'lstm_229/strided_slice/stack_1:output:0'lstm_229/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_229/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_229/zeros/packedPacklstm_229/strided_slice:output:0 lstm_229/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_229/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_229/zerosFilllstm_229/zeros/packed:output:0lstm_229/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_229/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_229/zeros_1/packedPacklstm_229/strided_slice:output:0"lstm_229/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_229/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_229/zeros_1Fill lstm_229/zeros_1/packed:output:0lstm_229/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_229/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_229/transpose	Transposelstm_228/transpose_1:y:0 lstm_229/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_229/Shape_1Shapelstm_229/transpose:y:0*
T0*
_output_shapes
:h
lstm_229/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_229/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_229/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_229/strided_slice_1StridedSlicelstm_229/Shape_1:output:0'lstm_229/strided_slice_1/stack:output:0)lstm_229/strided_slice_1/stack_1:output:0)lstm_229/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_229/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_229/TensorArrayV2TensorListReserve-lstm_229/TensorArrayV2/element_shape:output:0!lstm_229/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_229/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_229/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_229/transpose:y:0Glstm_229/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_229/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_229/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_229/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_229/strided_slice_2StridedSlicelstm_229/transpose:y:0'lstm_229/strided_slice_2/stack:output:0)lstm_229/strided_slice_2/stack_1:output:0)lstm_229/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_229/lstm_cell_367/MatMul/ReadVariableOpReadVariableOp5lstm_229_lstm_cell_367_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_229/lstm_cell_367/MatMulMatMul!lstm_229/strided_slice_2:output:04lstm_229/lstm_cell_367/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_229/lstm_cell_367/MatMul_1/ReadVariableOpReadVariableOp7lstm_229_lstm_cell_367_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_229/lstm_cell_367/MatMul_1MatMullstm_229/zeros:output:06lstm_229/lstm_cell_367/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_229/lstm_cell_367/addAddV2'lstm_229/lstm_cell_367/MatMul:product:0)lstm_229/lstm_cell_367/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_229/lstm_cell_367/BiasAdd/ReadVariableOpReadVariableOp6lstm_229_lstm_cell_367_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_229/lstm_cell_367/BiasAddBiasAddlstm_229/lstm_cell_367/add:z:05lstm_229/lstm_cell_367/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_229/lstm_cell_367/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_229/lstm_cell_367/splitSplit/lstm_229/lstm_cell_367/split/split_dim:output:0'lstm_229/lstm_cell_367/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_229/lstm_cell_367/SigmoidSigmoid%lstm_229/lstm_cell_367/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_229/lstm_cell_367/Sigmoid_1Sigmoid%lstm_229/lstm_cell_367/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_229/lstm_cell_367/mulMul$lstm_229/lstm_cell_367/Sigmoid_1:y:0lstm_229/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_229/lstm_cell_367/ReluRelu%lstm_229/lstm_cell_367/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_229/lstm_cell_367/mul_1Mul"lstm_229/lstm_cell_367/Sigmoid:y:0)lstm_229/lstm_cell_367/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_229/lstm_cell_367/add_1AddV2lstm_229/lstm_cell_367/mul:z:0 lstm_229/lstm_cell_367/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_229/lstm_cell_367/Sigmoid_2Sigmoid%lstm_229/lstm_cell_367/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_229/lstm_cell_367/Relu_1Relu lstm_229/lstm_cell_367/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_229/lstm_cell_367/mul_2Mul$lstm_229/lstm_cell_367/Sigmoid_2:y:0+lstm_229/lstm_cell_367/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_229/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_229/TensorArrayV2_1TensorListReserve/lstm_229/TensorArrayV2_1/element_shape:output:0!lstm_229/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_229/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_229/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_229/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_229/whileWhile$lstm_229/while/loop_counter:output:0*lstm_229/while/maximum_iterations:output:0lstm_229/time:output:0!lstm_229/TensorArrayV2_1:handle:0lstm_229/zeros:output:0lstm_229/zeros_1:output:0!lstm_229/strided_slice_1:output:0@lstm_229/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_229_lstm_cell_367_matmul_readvariableop_resource7lstm_229_lstm_cell_367_matmul_1_readvariableop_resource6lstm_229_lstm_cell_367_biasadd_readvariableop_resource*
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
lstm_229_while_body_2228969*'
condR
lstm_229_while_cond_2228968*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_229/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_229/TensorArrayV2Stack/TensorListStackTensorListStacklstm_229/while:output:3Blstm_229/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_229/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_229/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_229/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_229/strided_slice_3StridedSlice4lstm_229/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_229/strided_slice_3/stack:output:0)lstm_229/strided_slice_3/stack_1:output:0)lstm_229/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_229/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_229/transpose_1	Transpose4lstm_229/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_229/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_229/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_230/ShapeShapelstm_229/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_230/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_230/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_230/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_230/strided_sliceStridedSlicelstm_230/Shape:output:0%lstm_230/strided_slice/stack:output:0'lstm_230/strided_slice/stack_1:output:0'lstm_230/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_230/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_230/zeros/packedPacklstm_230/strided_slice:output:0 lstm_230/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_230/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_230/zerosFilllstm_230/zeros/packed:output:0lstm_230/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_230/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_230/zeros_1/packedPacklstm_230/strided_slice:output:0"lstm_230/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_230/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_230/zeros_1Fill lstm_230/zeros_1/packed:output:0lstm_230/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_230/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_230/transpose	Transposelstm_229/transpose_1:y:0 lstm_230/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_230/Shape_1Shapelstm_230/transpose:y:0*
T0*
_output_shapes
:h
lstm_230/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_230/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_230/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_230/strided_slice_1StridedSlicelstm_230/Shape_1:output:0'lstm_230/strided_slice_1/stack:output:0)lstm_230/strided_slice_1/stack_1:output:0)lstm_230/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_230/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_230/TensorArrayV2TensorListReserve-lstm_230/TensorArrayV2/element_shape:output:0!lstm_230/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_230/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_230/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_230/transpose:y:0Glstm_230/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_230/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_230/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_230/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_230/strided_slice_2StridedSlicelstm_230/transpose:y:0'lstm_230/strided_slice_2/stack:output:0)lstm_230/strided_slice_2/stack_1:output:0)lstm_230/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_230/lstm_cell_368/MatMul/ReadVariableOpReadVariableOp5lstm_230_lstm_cell_368_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_230/lstm_cell_368/MatMulMatMul!lstm_230/strided_slice_2:output:04lstm_230/lstm_cell_368/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_230/lstm_cell_368/MatMul_1/ReadVariableOpReadVariableOp7lstm_230_lstm_cell_368_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_230/lstm_cell_368/MatMul_1MatMullstm_230/zeros:output:06lstm_230/lstm_cell_368/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_230/lstm_cell_368/addAddV2'lstm_230/lstm_cell_368/MatMul:product:0)lstm_230/lstm_cell_368/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_230/lstm_cell_368/BiasAdd/ReadVariableOpReadVariableOp6lstm_230_lstm_cell_368_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_230/lstm_cell_368/BiasAddBiasAddlstm_230/lstm_cell_368/add:z:05lstm_230/lstm_cell_368/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_230/lstm_cell_368/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_230/lstm_cell_368/splitSplit/lstm_230/lstm_cell_368/split/split_dim:output:0'lstm_230/lstm_cell_368/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_230/lstm_cell_368/SigmoidSigmoid%lstm_230/lstm_cell_368/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_230/lstm_cell_368/Sigmoid_1Sigmoid%lstm_230/lstm_cell_368/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_230/lstm_cell_368/mulMul$lstm_230/lstm_cell_368/Sigmoid_1:y:0lstm_230/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_230/lstm_cell_368/ReluRelu%lstm_230/lstm_cell_368/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_230/lstm_cell_368/mul_1Mul"lstm_230/lstm_cell_368/Sigmoid:y:0)lstm_230/lstm_cell_368/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_230/lstm_cell_368/add_1AddV2lstm_230/lstm_cell_368/mul:z:0 lstm_230/lstm_cell_368/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_230/lstm_cell_368/Sigmoid_2Sigmoid%lstm_230/lstm_cell_368/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_230/lstm_cell_368/Relu_1Relu lstm_230/lstm_cell_368/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_230/lstm_cell_368/mul_2Mul$lstm_230/lstm_cell_368/Sigmoid_2:y:0+lstm_230/lstm_cell_368/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_230/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_230/TensorArrayV2_1TensorListReserve/lstm_230/TensorArrayV2_1/element_shape:output:0!lstm_230/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_230/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_230/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_230/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_230/whileWhile$lstm_230/while/loop_counter:output:0*lstm_230/while/maximum_iterations:output:0lstm_230/time:output:0!lstm_230/TensorArrayV2_1:handle:0lstm_230/zeros:output:0lstm_230/zeros_1:output:0!lstm_230/strided_slice_1:output:0@lstm_230/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_230_lstm_cell_368_matmul_readvariableop_resource7lstm_230_lstm_cell_368_matmul_1_readvariableop_resource6lstm_230_lstm_cell_368_biasadd_readvariableop_resource*
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
lstm_230_while_body_2229108*'
condR
lstm_230_while_cond_2229107*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_230/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_230/TensorArrayV2Stack/TensorListStackTensorListStacklstm_230/while:output:3Blstm_230/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_230/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_230/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_230/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_230/strided_slice_3StridedSlice4lstm_230/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_230/strided_slice_3/stack:output:0)lstm_230/strided_slice_3/stack_1:output:0)lstm_230/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_230/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_230/transpose_1	Transpose4lstm_230/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_230/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_230/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_76/MatMul/ReadVariableOpReadVariableOp'dense_76_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_76/MatMulMatMul!lstm_230/strided_slice_3:output:0&dense_76/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_76/BiasAdd/ReadVariableOpReadVariableOp(dense_76_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_76/BiasAddBiasAdddense_76/MatMul:product:0'dense_76/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_76/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_76/BiasAdd/ReadVariableOp^dense_76/MatMul/ReadVariableOp.^lstm_228/lstm_cell_366/BiasAdd/ReadVariableOp-^lstm_228/lstm_cell_366/MatMul/ReadVariableOp/^lstm_228/lstm_cell_366/MatMul_1/ReadVariableOp^lstm_228/while.^lstm_229/lstm_cell_367/BiasAdd/ReadVariableOp-^lstm_229/lstm_cell_367/MatMul/ReadVariableOp/^lstm_229/lstm_cell_367/MatMul_1/ReadVariableOp^lstm_229/while.^lstm_230/lstm_cell_368/BiasAdd/ReadVariableOp-^lstm_230/lstm_cell_368/MatMul/ReadVariableOp/^lstm_230/lstm_cell_368/MatMul_1/ReadVariableOp^lstm_230/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_76/BiasAdd/ReadVariableOpdense_76/BiasAdd/ReadVariableOp2@
dense_76/MatMul/ReadVariableOpdense_76/MatMul/ReadVariableOp2^
-lstm_228/lstm_cell_366/BiasAdd/ReadVariableOp-lstm_228/lstm_cell_366/BiasAdd/ReadVariableOp2\
,lstm_228/lstm_cell_366/MatMul/ReadVariableOp,lstm_228/lstm_cell_366/MatMul/ReadVariableOp2`
.lstm_228/lstm_cell_366/MatMul_1/ReadVariableOp.lstm_228/lstm_cell_366/MatMul_1/ReadVariableOp2 
lstm_228/whilelstm_228/while2^
-lstm_229/lstm_cell_367/BiasAdd/ReadVariableOp-lstm_229/lstm_cell_367/BiasAdd/ReadVariableOp2\
,lstm_229/lstm_cell_367/MatMul/ReadVariableOp,lstm_229/lstm_cell_367/MatMul/ReadVariableOp2`
.lstm_229/lstm_cell_367/MatMul_1/ReadVariableOp.lstm_229/lstm_cell_367/MatMul_1/ReadVariableOp2 
lstm_229/whilelstm_229/while2^
-lstm_230/lstm_cell_368/BiasAdd/ReadVariableOp-lstm_230/lstm_cell_368/BiasAdd/ReadVariableOp2\
,lstm_230/lstm_cell_368/MatMul/ReadVariableOp,lstm_230/lstm_cell_368/MatMul/ReadVariableOp2`
.lstm_230/lstm_cell_368/MatMul_1/ReadVariableOp.lstm_230/lstm_cell_368/MatMul_1/ReadVariableOp2 
lstm_230/whilelstm_230/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_228_layer_call_and_return_conditional_losses_2226798

inputs(
lstm_cell_366_2226716:	?(
lstm_cell_366_2226718:	d?$
lstm_cell_366_2226720:	?
identity??%lstm_cell_366/StatefulPartitionedCall?while;
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
%lstm_cell_366/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_366_2226716lstm_cell_366_2226718lstm_cell_366_2226720*
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
J__inference_lstm_cell_366_layer_call_and_return_conditional_losses_2226670n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_366_2226716lstm_cell_366_2226718lstm_cell_366_2226720*
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
while_body_2226729*
condR
while_cond_2226728*K
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
NoOpNoOp&^lstm_cell_366/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_366/StatefulPartitionedCall%lstm_cell_366/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_366_layer_call_and_return_conditional_losses_2231558

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
J__inference_lstm_cell_367_layer_call_and_return_conditional_losses_2231688

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
?#
?
while_body_2227079
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_367_2227103_0:	d?0
while_lstm_cell_367_2227105_0:	2?,
while_lstm_cell_367_2227107_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_367_2227103:	d?.
while_lstm_cell_367_2227105:	2?*
while_lstm_cell_367_2227107:	???+while/lstm_cell_367/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_367/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_367_2227103_0while_lstm_cell_367_2227105_0while_lstm_cell_367_2227107_0*
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
J__inference_lstm_cell_367_layer_call_and_return_conditional_losses_2227020?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_367/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_367/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_367/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_367/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_367_2227103while_lstm_cell_367_2227103_0"<
while_lstm_cell_367_2227105while_lstm_cell_367_2227105_0"<
while_lstm_cell_367_2227107while_lstm_cell_367_2227107_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_367/StatefulPartitionedCall+while/lstm_cell_367/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_367_layer_call_fn_2231624

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
J__inference_lstm_cell_367_layer_call_and_return_conditional_losses_2227020o
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
*__inference_lstm_228_layer_call_fn_2229669

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
E__inference_lstm_228_layer_call_and_return_conditional_losses_2228502s
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
E__inference_lstm_228_layer_call_and_return_conditional_losses_2229955
inputs_0?
,lstm_cell_366_matmul_readvariableop_resource:	?A
.lstm_cell_366_matmul_1_readvariableop_resource:	d?<
-lstm_cell_366_biasadd_readvariableop_resource:	?
identity??$lstm_cell_366/BiasAdd/ReadVariableOp?#lstm_cell_366/MatMul/ReadVariableOp?%lstm_cell_366/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_366/MatMul/ReadVariableOpReadVariableOp,lstm_cell_366_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_366/MatMulMatMulstrided_slice_2:output:0+lstm_cell_366/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_366/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_366_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_366/MatMul_1MatMulzeros:output:0-lstm_cell_366/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_366/addAddV2lstm_cell_366/MatMul:product:0 lstm_cell_366/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_366/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_366_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_366/BiasAddBiasAddlstm_cell_366/add:z:0,lstm_cell_366/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_366/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_366/splitSplit&lstm_cell_366/split/split_dim:output:0lstm_cell_366/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_366/SigmoidSigmoidlstm_cell_366/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_366/Sigmoid_1Sigmoidlstm_cell_366/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_366/mulMullstm_cell_366/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_366/ReluRelulstm_cell_366/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_366/mul_1Mullstm_cell_366/Sigmoid:y:0 lstm_cell_366/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_366/add_1AddV2lstm_cell_366/mul:z:0lstm_cell_366/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_366/Sigmoid_2Sigmoidlstm_cell_366/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_366/Relu_1Relulstm_cell_366/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_366/mul_2Mullstm_cell_366/Sigmoid_2:y:0"lstm_cell_366/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_366_matmul_readvariableop_resource.lstm_cell_366_matmul_1_readvariableop_resource-lstm_cell_366_biasadd_readvariableop_resource*
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
while_body_2229871*
condR
while_cond_2229870*K
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
NoOpNoOp%^lstm_cell_366/BiasAdd/ReadVariableOp$^lstm_cell_366/MatMul/ReadVariableOp&^lstm_cell_366/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_366/BiasAdd/ReadVariableOp$lstm_cell_366/BiasAdd/ReadVariableOp2J
#lstm_cell_366/MatMul/ReadVariableOp#lstm_cell_366/MatMul/ReadVariableOp2N
%lstm_cell_366/MatMul_1/ReadVariableOp%lstm_cell_366/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_2227721
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2227721___redundant_placeholder05
1while_while_cond_2227721___redundant_placeholder15
1while_while_cond_2227721___redundant_placeholder25
1while_while_cond_2227721___redundant_placeholder3
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
*__inference_lstm_228_layer_call_fn_2229658

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
E__inference_lstm_228_layer_call_and_return_conditional_losses_2227656s
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
?S
?
)sequential_76_lstm_228_while_body_2226089J
Fsequential_76_lstm_228_while_sequential_76_lstm_228_while_loop_counterP
Lsequential_76_lstm_228_while_sequential_76_lstm_228_while_maximum_iterations,
(sequential_76_lstm_228_while_placeholder.
*sequential_76_lstm_228_while_placeholder_1.
*sequential_76_lstm_228_while_placeholder_2.
*sequential_76_lstm_228_while_placeholder_3I
Esequential_76_lstm_228_while_sequential_76_lstm_228_strided_slice_1_0?
?sequential_76_lstm_228_while_tensorarrayv2read_tensorlistgetitem_sequential_76_lstm_228_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_76_lstm_228_while_lstm_cell_366_matmul_readvariableop_resource_0:	?`
Msequential_76_lstm_228_while_lstm_cell_366_matmul_1_readvariableop_resource_0:	d?[
Lsequential_76_lstm_228_while_lstm_cell_366_biasadd_readvariableop_resource_0:	?)
%sequential_76_lstm_228_while_identity+
'sequential_76_lstm_228_while_identity_1+
'sequential_76_lstm_228_while_identity_2+
'sequential_76_lstm_228_while_identity_3+
'sequential_76_lstm_228_while_identity_4+
'sequential_76_lstm_228_while_identity_5G
Csequential_76_lstm_228_while_sequential_76_lstm_228_strided_slice_1?
sequential_76_lstm_228_while_tensorarrayv2read_tensorlistgetitem_sequential_76_lstm_228_tensorarrayunstack_tensorlistfromtensor\
Isequential_76_lstm_228_while_lstm_cell_366_matmul_readvariableop_resource:	?^
Ksequential_76_lstm_228_while_lstm_cell_366_matmul_1_readvariableop_resource:	d?Y
Jsequential_76_lstm_228_while_lstm_cell_366_biasadd_readvariableop_resource:	???Asequential_76/lstm_228/while/lstm_cell_366/BiasAdd/ReadVariableOp?@sequential_76/lstm_228/while/lstm_cell_366/MatMul/ReadVariableOp?Bsequential_76/lstm_228/while/lstm_cell_366/MatMul_1/ReadVariableOp?
Nsequential_76/lstm_228/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
@sequential_76/lstm_228/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_76_lstm_228_while_tensorarrayv2read_tensorlistgetitem_sequential_76_lstm_228_tensorarrayunstack_tensorlistfromtensor_0(sequential_76_lstm_228_while_placeholderWsequential_76/lstm_228/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
@sequential_76/lstm_228/while/lstm_cell_366/MatMul/ReadVariableOpReadVariableOpKsequential_76_lstm_228_while_lstm_cell_366_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
1sequential_76/lstm_228/while/lstm_cell_366/MatMulMatMulGsequential_76/lstm_228/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_76/lstm_228/while/lstm_cell_366/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_76/lstm_228/while/lstm_cell_366/MatMul_1/ReadVariableOpReadVariableOpMsequential_76_lstm_228_while_lstm_cell_366_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
3sequential_76/lstm_228/while/lstm_cell_366/MatMul_1MatMul*sequential_76_lstm_228_while_placeholder_2Jsequential_76/lstm_228/while/lstm_cell_366/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_76/lstm_228/while/lstm_cell_366/addAddV2;sequential_76/lstm_228/while/lstm_cell_366/MatMul:product:0=sequential_76/lstm_228/while/lstm_cell_366/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_76/lstm_228/while/lstm_cell_366/BiasAdd/ReadVariableOpReadVariableOpLsequential_76_lstm_228_while_lstm_cell_366_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_76/lstm_228/while/lstm_cell_366/BiasAddBiasAdd2sequential_76/lstm_228/while/lstm_cell_366/add:z:0Isequential_76/lstm_228/while/lstm_cell_366/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_76/lstm_228/while/lstm_cell_366/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_76/lstm_228/while/lstm_cell_366/splitSplitCsequential_76/lstm_228/while/lstm_cell_366/split/split_dim:output:0;sequential_76/lstm_228/while/lstm_cell_366/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
2sequential_76/lstm_228/while/lstm_cell_366/SigmoidSigmoid9sequential_76/lstm_228/while/lstm_cell_366/split:output:0*
T0*'
_output_shapes
:?????????d?
4sequential_76/lstm_228/while/lstm_cell_366/Sigmoid_1Sigmoid9sequential_76/lstm_228/while/lstm_cell_366/split:output:1*
T0*'
_output_shapes
:?????????d?
.sequential_76/lstm_228/while/lstm_cell_366/mulMul8sequential_76/lstm_228/while/lstm_cell_366/Sigmoid_1:y:0*sequential_76_lstm_228_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
/sequential_76/lstm_228/while/lstm_cell_366/ReluRelu9sequential_76/lstm_228/while/lstm_cell_366/split:output:2*
T0*'
_output_shapes
:?????????d?
0sequential_76/lstm_228/while/lstm_cell_366/mul_1Mul6sequential_76/lstm_228/while/lstm_cell_366/Sigmoid:y:0=sequential_76/lstm_228/while/lstm_cell_366/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
0sequential_76/lstm_228/while/lstm_cell_366/add_1AddV22sequential_76/lstm_228/while/lstm_cell_366/mul:z:04sequential_76/lstm_228/while/lstm_cell_366/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
4sequential_76/lstm_228/while/lstm_cell_366/Sigmoid_2Sigmoid9sequential_76/lstm_228/while/lstm_cell_366/split:output:3*
T0*'
_output_shapes
:?????????d?
1sequential_76/lstm_228/while/lstm_cell_366/Relu_1Relu4sequential_76/lstm_228/while/lstm_cell_366/add_1:z:0*
T0*'
_output_shapes
:?????????d?
0sequential_76/lstm_228/while/lstm_cell_366/mul_2Mul8sequential_76/lstm_228/while/lstm_cell_366/Sigmoid_2:y:0?sequential_76/lstm_228/while/lstm_cell_366/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Asequential_76/lstm_228/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_76_lstm_228_while_placeholder_1(sequential_76_lstm_228_while_placeholder4sequential_76/lstm_228/while/lstm_cell_366/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_76/lstm_228/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_76/lstm_228/while/addAddV2(sequential_76_lstm_228_while_placeholder+sequential_76/lstm_228/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_76/lstm_228/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_76/lstm_228/while/add_1AddV2Fsequential_76_lstm_228_while_sequential_76_lstm_228_while_loop_counter-sequential_76/lstm_228/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_76/lstm_228/while/IdentityIdentity&sequential_76/lstm_228/while/add_1:z:0"^sequential_76/lstm_228/while/NoOp*
T0*
_output_shapes
: ?
'sequential_76/lstm_228/while/Identity_1IdentityLsequential_76_lstm_228_while_sequential_76_lstm_228_while_maximum_iterations"^sequential_76/lstm_228/while/NoOp*
T0*
_output_shapes
: ?
'sequential_76/lstm_228/while/Identity_2Identity$sequential_76/lstm_228/while/add:z:0"^sequential_76/lstm_228/while/NoOp*
T0*
_output_shapes
: ?
'sequential_76/lstm_228/while/Identity_3IdentityQsequential_76/lstm_228/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_76/lstm_228/while/NoOp*
T0*
_output_shapes
: ?
'sequential_76/lstm_228/while/Identity_4Identity4sequential_76/lstm_228/while/lstm_cell_366/mul_2:z:0"^sequential_76/lstm_228/while/NoOp*
T0*'
_output_shapes
:?????????d?
'sequential_76/lstm_228/while/Identity_5Identity4sequential_76/lstm_228/while/lstm_cell_366/add_1:z:0"^sequential_76/lstm_228/while/NoOp*
T0*'
_output_shapes
:?????????d?
!sequential_76/lstm_228/while/NoOpNoOpB^sequential_76/lstm_228/while/lstm_cell_366/BiasAdd/ReadVariableOpA^sequential_76/lstm_228/while/lstm_cell_366/MatMul/ReadVariableOpC^sequential_76/lstm_228/while/lstm_cell_366/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_76_lstm_228_while_identity.sequential_76/lstm_228/while/Identity:output:0"[
'sequential_76_lstm_228_while_identity_10sequential_76/lstm_228/while/Identity_1:output:0"[
'sequential_76_lstm_228_while_identity_20sequential_76/lstm_228/while/Identity_2:output:0"[
'sequential_76_lstm_228_while_identity_30sequential_76/lstm_228/while/Identity_3:output:0"[
'sequential_76_lstm_228_while_identity_40sequential_76/lstm_228/while/Identity_4:output:0"[
'sequential_76_lstm_228_while_identity_50sequential_76/lstm_228/while/Identity_5:output:0"?
Jsequential_76_lstm_228_while_lstm_cell_366_biasadd_readvariableop_resourceLsequential_76_lstm_228_while_lstm_cell_366_biasadd_readvariableop_resource_0"?
Ksequential_76_lstm_228_while_lstm_cell_366_matmul_1_readvariableop_resourceMsequential_76_lstm_228_while_lstm_cell_366_matmul_1_readvariableop_resource_0"?
Isequential_76_lstm_228_while_lstm_cell_366_matmul_readvariableop_resourceKsequential_76_lstm_228_while_lstm_cell_366_matmul_readvariableop_resource_0"?
Csequential_76_lstm_228_while_sequential_76_lstm_228_strided_slice_1Esequential_76_lstm_228_while_sequential_76_lstm_228_strided_slice_1_0"?
sequential_76_lstm_228_while_tensorarrayv2read_tensorlistgetitem_sequential_76_lstm_228_tensorarrayunstack_tensorlistfromtensor?sequential_76_lstm_228_while_tensorarrayv2read_tensorlistgetitem_sequential_76_lstm_228_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Asequential_76/lstm_228/while/lstm_cell_366/BiasAdd/ReadVariableOpAsequential_76/lstm_228/while/lstm_cell_366/BiasAdd/ReadVariableOp2?
@sequential_76/lstm_228/while/lstm_cell_366/MatMul/ReadVariableOp@sequential_76/lstm_228/while/lstm_cell_366/MatMul/ReadVariableOp2?
Bsequential_76/lstm_228/while/lstm_cell_366/MatMul_1/ReadVariableOpBsequential_76/lstm_228/while/lstm_cell_366/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_76_layer_call_and_return_conditional_losses_2228652
lstm_228_input#
lstm_228_2228625:	?#
lstm_228_2228627:	d?
lstm_228_2228629:	?#
lstm_229_2228632:	d?#
lstm_229_2228634:	2?
lstm_229_2228636:	?"
lstm_230_2228639:2("
lstm_230_2228641:
(
lstm_230_2228643:("
dense_76_2228646:

dense_76_2228648:
identity?? dense_76/StatefulPartitionedCall? lstm_228/StatefulPartitionedCall? lstm_229/StatefulPartitionedCall? lstm_230/StatefulPartitionedCall?
 lstm_228/StatefulPartitionedCallStatefulPartitionedCalllstm_228_inputlstm_228_2228625lstm_228_2228627lstm_228_2228629*
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
E__inference_lstm_228_layer_call_and_return_conditional_losses_2227656?
 lstm_229/StatefulPartitionedCallStatefulPartitionedCall)lstm_228/StatefulPartitionedCall:output:0lstm_229_2228632lstm_229_2228634lstm_229_2228636*
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
E__inference_lstm_229_layer_call_and_return_conditional_losses_2227806?
 lstm_230/StatefulPartitionedCallStatefulPartitionedCall)lstm_229/StatefulPartitionedCall:output:0lstm_230_2228639lstm_230_2228641lstm_230_2228643*
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
E__inference_lstm_230_layer_call_and_return_conditional_losses_2227956?
 dense_76/StatefulPartitionedCallStatefulPartitionedCall)lstm_230/StatefulPartitionedCall:output:0dense_76_2228646dense_76_2228648*
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
E__inference_dense_76_layer_call_and_return_conditional_losses_2227974x
IdentityIdentity)dense_76/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_76/StatefulPartitionedCall!^lstm_228/StatefulPartitionedCall!^lstm_229/StatefulPartitionedCall!^lstm_230/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_76/StatefulPartitionedCall dense_76/StatefulPartitionedCall2D
 lstm_228/StatefulPartitionedCall lstm_228/StatefulPartitionedCall2D
 lstm_229/StatefulPartitionedCall lstm_229/StatefulPartitionedCall2D
 lstm_230/StatefulPartitionedCall lstm_230/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_228_input
?
?
J__inference_sequential_76_layer_call_and_return_conditional_losses_2228570

inputs#
lstm_228_2228543:	?#
lstm_228_2228545:	d?
lstm_228_2228547:	?#
lstm_229_2228550:	d?#
lstm_229_2228552:	2?
lstm_229_2228554:	?"
lstm_230_2228557:2("
lstm_230_2228559:
(
lstm_230_2228561:("
dense_76_2228564:

dense_76_2228566:
identity?? dense_76/StatefulPartitionedCall? lstm_228/StatefulPartitionedCall? lstm_229/StatefulPartitionedCall? lstm_230/StatefulPartitionedCall?
 lstm_228/StatefulPartitionedCallStatefulPartitionedCallinputslstm_228_2228543lstm_228_2228545lstm_228_2228547*
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
E__inference_lstm_228_layer_call_and_return_conditional_losses_2228502?
 lstm_229/StatefulPartitionedCallStatefulPartitionedCall)lstm_228/StatefulPartitionedCall:output:0lstm_229_2228550lstm_229_2228552lstm_229_2228554*
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
E__inference_lstm_229_layer_call_and_return_conditional_losses_2228337?
 lstm_230/StatefulPartitionedCallStatefulPartitionedCall)lstm_229/StatefulPartitionedCall:output:0lstm_230_2228557lstm_230_2228559lstm_230_2228561*
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
E__inference_lstm_230_layer_call_and_return_conditional_losses_2228172?
 dense_76/StatefulPartitionedCallStatefulPartitionedCall)lstm_230/StatefulPartitionedCall:output:0dense_76_2228564dense_76_2228566*
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
E__inference_dense_76_layer_call_and_return_conditional_losses_2227974x
IdentityIdentity)dense_76/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_76/StatefulPartitionedCall!^lstm_228/StatefulPartitionedCall!^lstm_229/StatefulPartitionedCall!^lstm_230/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_76/StatefulPartitionedCall dense_76/StatefulPartitionedCall2D
 lstm_228/StatefulPartitionedCall lstm_228/StatefulPartitionedCall2D
 lstm_229/StatefulPartitionedCall lstm_229/StatefulPartitionedCall2D
 lstm_230/StatefulPartitionedCall lstm_230/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_dense_76_layer_call_fn_2231482

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
E__inference_dense_76_layer_call_and_return_conditional_losses_2227974o
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
?
E__inference_lstm_229_layer_call_and_return_conditional_losses_2227148

inputs(
lstm_cell_367_2227066:	d?(
lstm_cell_367_2227068:	2?$
lstm_cell_367_2227070:	?
identity??%lstm_cell_367/StatefulPartitionedCall?while;
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
%lstm_cell_367/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_367_2227066lstm_cell_367_2227068lstm_cell_367_2227070*
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
J__inference_lstm_cell_367_layer_call_and_return_conditional_losses_2227020n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_367_2227066lstm_cell_367_2227068lstm_cell_367_2227070*
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
while_body_2227079*
condR
while_cond_2227078*K
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
NoOpNoOp&^lstm_cell_367/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_367/StatefulPartitionedCall%lstm_cell_367/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_366_layer_call_and_return_conditional_losses_2226524

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
E__inference_lstm_228_layer_call_and_return_conditional_losses_2226607

inputs(
lstm_cell_366_2226525:	?(
lstm_cell_366_2226527:	d?$
lstm_cell_366_2226529:	?
identity??%lstm_cell_366/StatefulPartitionedCall?while;
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
%lstm_cell_366/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_366_2226525lstm_cell_366_2226527lstm_cell_366_2226529*
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
J__inference_lstm_cell_366_layer_call_and_return_conditional_losses_2226524n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_366_2226525lstm_cell_366_2226527lstm_cell_366_2226529*
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
while_body_2226538*
condR
while_cond_2226537*K
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
NoOpNoOp&^lstm_cell_366/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_366/StatefulPartitionedCall%lstm_cell_366/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?

?
lstm_230_while_cond_2229107.
*lstm_230_while_lstm_230_while_loop_counter4
0lstm_230_while_lstm_230_while_maximum_iterations
lstm_230_while_placeholder 
lstm_230_while_placeholder_1 
lstm_230_while_placeholder_2 
lstm_230_while_placeholder_30
,lstm_230_while_less_lstm_230_strided_slice_1G
Clstm_230_while_lstm_230_while_cond_2229107___redundant_placeholder0G
Clstm_230_while_lstm_230_while_cond_2229107___redundant_placeholder1G
Clstm_230_while_lstm_230_while_cond_2229107___redundant_placeholder2G
Clstm_230_while_lstm_230_while_cond_2229107___redundant_placeholder3
lstm_230_while_identity
?
lstm_230/while/LessLesslstm_230_while_placeholder,lstm_230_while_less_lstm_230_strided_slice_1*
T0*
_output_shapes
: ]
lstm_230/while/IdentityIdentitylstm_230/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_230_while_identity lstm_230/while/Identity:output:0*(
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
lstm_229_while_cond_2228968.
*lstm_229_while_lstm_229_while_loop_counter4
0lstm_229_while_lstm_229_while_maximum_iterations
lstm_229_while_placeholder 
lstm_229_while_placeholder_1 
lstm_229_while_placeholder_2 
lstm_229_while_placeholder_30
,lstm_229_while_less_lstm_229_strided_slice_1G
Clstm_229_while_lstm_229_while_cond_2228968___redundant_placeholder0G
Clstm_229_while_lstm_229_while_cond_2228968___redundant_placeholder1G
Clstm_229_while_lstm_229_while_cond_2228968___redundant_placeholder2G
Clstm_229_while_lstm_229_while_cond_2228968___redundant_placeholder3
lstm_229_while_identity
?
lstm_229/while/LessLesslstm_229_while_placeholder,lstm_229_while_less_lstm_229_strided_slice_1*
T0*
_output_shapes
: ]
lstm_229/while/IdentityIdentitylstm_229/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_229_while_identity lstm_229/while/Identity:output:0*(
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
while_body_2230157
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_366_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_366_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_366_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_366_matmul_readvariableop_resource:	?G
4while_lstm_cell_366_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_366_biasadd_readvariableop_resource:	???*while/lstm_cell_366/BiasAdd/ReadVariableOp?)while/lstm_cell_366/MatMul/ReadVariableOp?+while/lstm_cell_366/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_366/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_366_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_366/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_366/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_366/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_366_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_366/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_366/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_366/addAddV2$while/lstm_cell_366/MatMul:product:0&while/lstm_cell_366/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_366/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_366_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_366/BiasAddBiasAddwhile/lstm_cell_366/add:z:02while/lstm_cell_366/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_366/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_366/splitSplit,while/lstm_cell_366/split/split_dim:output:0$while/lstm_cell_366/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_366/SigmoidSigmoid"while/lstm_cell_366/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_366/Sigmoid_1Sigmoid"while/lstm_cell_366/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_366/mulMul!while/lstm_cell_366/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_366/ReluRelu"while/lstm_cell_366/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_366/mul_1Mulwhile/lstm_cell_366/Sigmoid:y:0&while/lstm_cell_366/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_366/add_1AddV2while/lstm_cell_366/mul:z:0while/lstm_cell_366/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_366/Sigmoid_2Sigmoid"while/lstm_cell_366/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_366/Relu_1Reluwhile/lstm_cell_366/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_366/mul_2Mul!while/lstm_cell_366/Sigmoid_2:y:0(while/lstm_cell_366/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_366/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_366/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_366/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_366/BiasAdd/ReadVariableOp*^while/lstm_cell_366/MatMul/ReadVariableOp,^while/lstm_cell_366/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_366_biasadd_readvariableop_resource5while_lstm_cell_366_biasadd_readvariableop_resource_0"n
4while_lstm_cell_366_matmul_1_readvariableop_resource6while_lstm_cell_366_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_366_matmul_readvariableop_resource4while_lstm_cell_366_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_366/BiasAdd/ReadVariableOp*while/lstm_cell_366/BiasAdd/ReadVariableOp2V
)while/lstm_cell_366/MatMul/ReadVariableOp)while/lstm_cell_366/MatMul/ReadVariableOp2Z
+while/lstm_cell_366/MatMul_1/ReadVariableOp+while/lstm_cell_366/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_229_while_body_2229396.
*lstm_229_while_lstm_229_while_loop_counter4
0lstm_229_while_lstm_229_while_maximum_iterations
lstm_229_while_placeholder 
lstm_229_while_placeholder_1 
lstm_229_while_placeholder_2 
lstm_229_while_placeholder_3-
)lstm_229_while_lstm_229_strided_slice_1_0i
elstm_229_while_tensorarrayv2read_tensorlistgetitem_lstm_229_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_229_while_lstm_cell_367_matmul_readvariableop_resource_0:	d?R
?lstm_229_while_lstm_cell_367_matmul_1_readvariableop_resource_0:	2?M
>lstm_229_while_lstm_cell_367_biasadd_readvariableop_resource_0:	?
lstm_229_while_identity
lstm_229_while_identity_1
lstm_229_while_identity_2
lstm_229_while_identity_3
lstm_229_while_identity_4
lstm_229_while_identity_5+
'lstm_229_while_lstm_229_strided_slice_1g
clstm_229_while_tensorarrayv2read_tensorlistgetitem_lstm_229_tensorarrayunstack_tensorlistfromtensorN
;lstm_229_while_lstm_cell_367_matmul_readvariableop_resource:	d?P
=lstm_229_while_lstm_cell_367_matmul_1_readvariableop_resource:	2?K
<lstm_229_while_lstm_cell_367_biasadd_readvariableop_resource:	???3lstm_229/while/lstm_cell_367/BiasAdd/ReadVariableOp?2lstm_229/while/lstm_cell_367/MatMul/ReadVariableOp?4lstm_229/while/lstm_cell_367/MatMul_1/ReadVariableOp?
@lstm_229/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_229/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_229_while_tensorarrayv2read_tensorlistgetitem_lstm_229_tensorarrayunstack_tensorlistfromtensor_0lstm_229_while_placeholderIlstm_229/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_229/while/lstm_cell_367/MatMul/ReadVariableOpReadVariableOp=lstm_229_while_lstm_cell_367_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_229/while/lstm_cell_367/MatMulMatMul9lstm_229/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_229/while/lstm_cell_367/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_229/while/lstm_cell_367/MatMul_1/ReadVariableOpReadVariableOp?lstm_229_while_lstm_cell_367_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_229/while/lstm_cell_367/MatMul_1MatMullstm_229_while_placeholder_2<lstm_229/while/lstm_cell_367/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_229/while/lstm_cell_367/addAddV2-lstm_229/while/lstm_cell_367/MatMul:product:0/lstm_229/while/lstm_cell_367/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_229/while/lstm_cell_367/BiasAdd/ReadVariableOpReadVariableOp>lstm_229_while_lstm_cell_367_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_229/while/lstm_cell_367/BiasAddBiasAdd$lstm_229/while/lstm_cell_367/add:z:0;lstm_229/while/lstm_cell_367/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_229/while/lstm_cell_367/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_229/while/lstm_cell_367/splitSplit5lstm_229/while/lstm_cell_367/split/split_dim:output:0-lstm_229/while/lstm_cell_367/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_229/while/lstm_cell_367/SigmoidSigmoid+lstm_229/while/lstm_cell_367/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_229/while/lstm_cell_367/Sigmoid_1Sigmoid+lstm_229/while/lstm_cell_367/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_229/while/lstm_cell_367/mulMul*lstm_229/while/lstm_cell_367/Sigmoid_1:y:0lstm_229_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_229/while/lstm_cell_367/ReluRelu+lstm_229/while/lstm_cell_367/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_229/while/lstm_cell_367/mul_1Mul(lstm_229/while/lstm_cell_367/Sigmoid:y:0/lstm_229/while/lstm_cell_367/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_229/while/lstm_cell_367/add_1AddV2$lstm_229/while/lstm_cell_367/mul:z:0&lstm_229/while/lstm_cell_367/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_229/while/lstm_cell_367/Sigmoid_2Sigmoid+lstm_229/while/lstm_cell_367/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_229/while/lstm_cell_367/Relu_1Relu&lstm_229/while/lstm_cell_367/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_229/while/lstm_cell_367/mul_2Mul*lstm_229/while/lstm_cell_367/Sigmoid_2:y:01lstm_229/while/lstm_cell_367/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_229/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_229_while_placeholder_1lstm_229_while_placeholder&lstm_229/while/lstm_cell_367/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_229/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_229/while/addAddV2lstm_229_while_placeholderlstm_229/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_229/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_229/while/add_1AddV2*lstm_229_while_lstm_229_while_loop_counterlstm_229/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_229/while/IdentityIdentitylstm_229/while/add_1:z:0^lstm_229/while/NoOp*
T0*
_output_shapes
: ?
lstm_229/while/Identity_1Identity0lstm_229_while_lstm_229_while_maximum_iterations^lstm_229/while/NoOp*
T0*
_output_shapes
: t
lstm_229/while/Identity_2Identitylstm_229/while/add:z:0^lstm_229/while/NoOp*
T0*
_output_shapes
: ?
lstm_229/while/Identity_3IdentityClstm_229/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_229/while/NoOp*
T0*
_output_shapes
: ?
lstm_229/while/Identity_4Identity&lstm_229/while/lstm_cell_367/mul_2:z:0^lstm_229/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_229/while/Identity_5Identity&lstm_229/while/lstm_cell_367/add_1:z:0^lstm_229/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_229/while/NoOpNoOp4^lstm_229/while/lstm_cell_367/BiasAdd/ReadVariableOp3^lstm_229/while/lstm_cell_367/MatMul/ReadVariableOp5^lstm_229/while/lstm_cell_367/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_229_while_identity lstm_229/while/Identity:output:0"?
lstm_229_while_identity_1"lstm_229/while/Identity_1:output:0"?
lstm_229_while_identity_2"lstm_229/while/Identity_2:output:0"?
lstm_229_while_identity_3"lstm_229/while/Identity_3:output:0"?
lstm_229_while_identity_4"lstm_229/while/Identity_4:output:0"?
lstm_229_while_identity_5"lstm_229/while/Identity_5:output:0"T
'lstm_229_while_lstm_229_strided_slice_1)lstm_229_while_lstm_229_strided_slice_1_0"~
<lstm_229_while_lstm_cell_367_biasadd_readvariableop_resource>lstm_229_while_lstm_cell_367_biasadd_readvariableop_resource_0"?
=lstm_229_while_lstm_cell_367_matmul_1_readvariableop_resource?lstm_229_while_lstm_cell_367_matmul_1_readvariableop_resource_0"|
;lstm_229_while_lstm_cell_367_matmul_readvariableop_resource=lstm_229_while_lstm_cell_367_matmul_readvariableop_resource_0"?
clstm_229_while_tensorarrayv2read_tensorlistgetitem_lstm_229_tensorarrayunstack_tensorlistfromtensorelstm_229_while_tensorarrayv2read_tensorlistgetitem_lstm_229_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_229/while/lstm_cell_367/BiasAdd/ReadVariableOp3lstm_229/while/lstm_cell_367/BiasAdd/ReadVariableOp2h
2lstm_229/while/lstm_cell_367/MatMul/ReadVariableOp2lstm_229/while/lstm_cell_367/MatMul/ReadVariableOp2l
4lstm_229/while/lstm_cell_367/MatMul_1/ReadVariableOp4lstm_229/while/lstm_cell_367/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2230156
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2230156___redundant_placeholder05
1while_while_cond_2230156___redundant_placeholder15
1while_while_cond_2230156___redundant_placeholder25
1while_while_cond_2230156___redundant_placeholder3
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
while_cond_2230629
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2230629___redundant_placeholder05
1while_while_cond_2230629___redundant_placeholder15
1while_while_cond_2230629___redundant_placeholder25
1while_while_cond_2230629___redundant_placeholder3
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
while_body_2227572
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_366_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_366_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_366_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_366_matmul_readvariableop_resource:	?G
4while_lstm_cell_366_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_366_biasadd_readvariableop_resource:	???*while/lstm_cell_366/BiasAdd/ReadVariableOp?)while/lstm_cell_366/MatMul/ReadVariableOp?+while/lstm_cell_366/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_366/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_366_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_366/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_366/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_366/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_366_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_366/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_366/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_366/addAddV2$while/lstm_cell_366/MatMul:product:0&while/lstm_cell_366/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_366/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_366_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_366/BiasAddBiasAddwhile/lstm_cell_366/add:z:02while/lstm_cell_366/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_366/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_366/splitSplit,while/lstm_cell_366/split/split_dim:output:0$while/lstm_cell_366/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_366/SigmoidSigmoid"while/lstm_cell_366/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_366/Sigmoid_1Sigmoid"while/lstm_cell_366/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_366/mulMul!while/lstm_cell_366/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_366/ReluRelu"while/lstm_cell_366/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_366/mul_1Mulwhile/lstm_cell_366/Sigmoid:y:0&while/lstm_cell_366/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_366/add_1AddV2while/lstm_cell_366/mul:z:0while/lstm_cell_366/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_366/Sigmoid_2Sigmoid"while/lstm_cell_366/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_366/Relu_1Reluwhile/lstm_cell_366/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_366/mul_2Mul!while/lstm_cell_366/Sigmoid_2:y:0(while/lstm_cell_366/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_366/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_366/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_366/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_366/BiasAdd/ReadVariableOp*^while/lstm_cell_366/MatMul/ReadVariableOp,^while/lstm_cell_366/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_366_biasadd_readvariableop_resource5while_lstm_cell_366_biasadd_readvariableop_resource_0"n
4while_lstm_cell_366_matmul_1_readvariableop_resource6while_lstm_cell_366_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_366_matmul_readvariableop_resource4while_lstm_cell_366_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_366/BiasAdd/ReadVariableOp*while/lstm_cell_366/BiasAdd/ReadVariableOp2V
)while/lstm_cell_366/MatMul/ReadVariableOp)while/lstm_cell_366/MatMul/ReadVariableOp2Z
+while/lstm_cell_366/MatMul_1/ReadVariableOp+while/lstm_cell_366/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_230_layer_call_and_return_conditional_losses_2227956

inputs>
,lstm_cell_368_matmul_readvariableop_resource:2(@
.lstm_cell_368_matmul_1_readvariableop_resource:
(;
-lstm_cell_368_biasadd_readvariableop_resource:(
identity??$lstm_cell_368/BiasAdd/ReadVariableOp?#lstm_cell_368/MatMul/ReadVariableOp?%lstm_cell_368/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_368/MatMul/ReadVariableOpReadVariableOp,lstm_cell_368_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_368/MatMulMatMulstrided_slice_2:output:0+lstm_cell_368/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_368/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_368_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_368/MatMul_1MatMulzeros:output:0-lstm_cell_368/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_368/addAddV2lstm_cell_368/MatMul:product:0 lstm_cell_368/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_368/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_368_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_368/BiasAddBiasAddlstm_cell_368/add:z:0,lstm_cell_368/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_368/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_368/splitSplit&lstm_cell_368/split/split_dim:output:0lstm_cell_368/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_368/SigmoidSigmoidlstm_cell_368/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_368/Sigmoid_1Sigmoidlstm_cell_368/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_368/mulMullstm_cell_368/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_368/ReluRelulstm_cell_368/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_368/mul_1Mullstm_cell_368/Sigmoid:y:0 lstm_cell_368/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_368/add_1AddV2lstm_cell_368/mul:z:0lstm_cell_368/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_368/Sigmoid_2Sigmoidlstm_cell_368/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_368/Relu_1Relulstm_cell_368/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_368/mul_2Mullstm_cell_368/Sigmoid_2:y:0"lstm_cell_368/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_368_matmul_readvariableop_resource.lstm_cell_368_matmul_1_readvariableop_resource-lstm_cell_368_biasadd_readvariableop_resource*
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
while_body_2227872*
condR
while_cond_2227871*K
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
NoOpNoOp%^lstm_cell_368/BiasAdd/ReadVariableOp$^lstm_cell_368/MatMul/ReadVariableOp&^lstm_cell_368/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_368/BiasAdd/ReadVariableOp$lstm_cell_368/BiasAdd/ReadVariableOp2J
#lstm_cell_368/MatMul/ReadVariableOp#lstm_cell_368/MatMul/ReadVariableOp2N
%lstm_cell_368/MatMul_1/ReadVariableOp%lstm_cell_368/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_2227428
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2227428___redundant_placeholder05
1while_while_cond_2227428___redundant_placeholder15
1while_while_cond_2227428___redundant_placeholder25
1while_while_cond_2227428___redundant_placeholder3
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
J__inference_sequential_76_layer_call_and_return_conditional_losses_2229625

inputsH
5lstm_228_lstm_cell_366_matmul_readvariableop_resource:	?J
7lstm_228_lstm_cell_366_matmul_1_readvariableop_resource:	d?E
6lstm_228_lstm_cell_366_biasadd_readvariableop_resource:	?H
5lstm_229_lstm_cell_367_matmul_readvariableop_resource:	d?J
7lstm_229_lstm_cell_367_matmul_1_readvariableop_resource:	2?E
6lstm_229_lstm_cell_367_biasadd_readvariableop_resource:	?G
5lstm_230_lstm_cell_368_matmul_readvariableop_resource:2(I
7lstm_230_lstm_cell_368_matmul_1_readvariableop_resource:
(D
6lstm_230_lstm_cell_368_biasadd_readvariableop_resource:(9
'dense_76_matmul_readvariableop_resource:
6
(dense_76_biasadd_readvariableop_resource:
identity??dense_76/BiasAdd/ReadVariableOp?dense_76/MatMul/ReadVariableOp?-lstm_228/lstm_cell_366/BiasAdd/ReadVariableOp?,lstm_228/lstm_cell_366/MatMul/ReadVariableOp?.lstm_228/lstm_cell_366/MatMul_1/ReadVariableOp?lstm_228/while?-lstm_229/lstm_cell_367/BiasAdd/ReadVariableOp?,lstm_229/lstm_cell_367/MatMul/ReadVariableOp?.lstm_229/lstm_cell_367/MatMul_1/ReadVariableOp?lstm_229/while?-lstm_230/lstm_cell_368/BiasAdd/ReadVariableOp?,lstm_230/lstm_cell_368/MatMul/ReadVariableOp?.lstm_230/lstm_cell_368/MatMul_1/ReadVariableOp?lstm_230/whileD
lstm_228/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_228/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_228/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_228/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_228/strided_sliceStridedSlicelstm_228/Shape:output:0%lstm_228/strided_slice/stack:output:0'lstm_228/strided_slice/stack_1:output:0'lstm_228/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_228/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_228/zeros/packedPacklstm_228/strided_slice:output:0 lstm_228/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_228/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_228/zerosFilllstm_228/zeros/packed:output:0lstm_228/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_228/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_228/zeros_1/packedPacklstm_228/strided_slice:output:0"lstm_228/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_228/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_228/zeros_1Fill lstm_228/zeros_1/packed:output:0lstm_228/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_228/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_228/transpose	Transposeinputs lstm_228/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_228/Shape_1Shapelstm_228/transpose:y:0*
T0*
_output_shapes
:h
lstm_228/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_228/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_228/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_228/strided_slice_1StridedSlicelstm_228/Shape_1:output:0'lstm_228/strided_slice_1/stack:output:0)lstm_228/strided_slice_1/stack_1:output:0)lstm_228/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_228/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_228/TensorArrayV2TensorListReserve-lstm_228/TensorArrayV2/element_shape:output:0!lstm_228/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_228/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_228/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_228/transpose:y:0Glstm_228/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_228/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_228/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_228/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_228/strided_slice_2StridedSlicelstm_228/transpose:y:0'lstm_228/strided_slice_2/stack:output:0)lstm_228/strided_slice_2/stack_1:output:0)lstm_228/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_228/lstm_cell_366/MatMul/ReadVariableOpReadVariableOp5lstm_228_lstm_cell_366_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_228/lstm_cell_366/MatMulMatMul!lstm_228/strided_slice_2:output:04lstm_228/lstm_cell_366/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_228/lstm_cell_366/MatMul_1/ReadVariableOpReadVariableOp7lstm_228_lstm_cell_366_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_228/lstm_cell_366/MatMul_1MatMullstm_228/zeros:output:06lstm_228/lstm_cell_366/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_228/lstm_cell_366/addAddV2'lstm_228/lstm_cell_366/MatMul:product:0)lstm_228/lstm_cell_366/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_228/lstm_cell_366/BiasAdd/ReadVariableOpReadVariableOp6lstm_228_lstm_cell_366_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_228/lstm_cell_366/BiasAddBiasAddlstm_228/lstm_cell_366/add:z:05lstm_228/lstm_cell_366/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_228/lstm_cell_366/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_228/lstm_cell_366/splitSplit/lstm_228/lstm_cell_366/split/split_dim:output:0'lstm_228/lstm_cell_366/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_228/lstm_cell_366/SigmoidSigmoid%lstm_228/lstm_cell_366/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_228/lstm_cell_366/Sigmoid_1Sigmoid%lstm_228/lstm_cell_366/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_228/lstm_cell_366/mulMul$lstm_228/lstm_cell_366/Sigmoid_1:y:0lstm_228/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_228/lstm_cell_366/ReluRelu%lstm_228/lstm_cell_366/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_228/lstm_cell_366/mul_1Mul"lstm_228/lstm_cell_366/Sigmoid:y:0)lstm_228/lstm_cell_366/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_228/lstm_cell_366/add_1AddV2lstm_228/lstm_cell_366/mul:z:0 lstm_228/lstm_cell_366/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_228/lstm_cell_366/Sigmoid_2Sigmoid%lstm_228/lstm_cell_366/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_228/lstm_cell_366/Relu_1Relu lstm_228/lstm_cell_366/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_228/lstm_cell_366/mul_2Mul$lstm_228/lstm_cell_366/Sigmoid_2:y:0+lstm_228/lstm_cell_366/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_228/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_228/TensorArrayV2_1TensorListReserve/lstm_228/TensorArrayV2_1/element_shape:output:0!lstm_228/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_228/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_228/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_228/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_228/whileWhile$lstm_228/while/loop_counter:output:0*lstm_228/while/maximum_iterations:output:0lstm_228/time:output:0!lstm_228/TensorArrayV2_1:handle:0lstm_228/zeros:output:0lstm_228/zeros_1:output:0!lstm_228/strided_slice_1:output:0@lstm_228/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_228_lstm_cell_366_matmul_readvariableop_resource7lstm_228_lstm_cell_366_matmul_1_readvariableop_resource6lstm_228_lstm_cell_366_biasadd_readvariableop_resource*
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
lstm_228_while_body_2229257*'
condR
lstm_228_while_cond_2229256*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_228/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_228/TensorArrayV2Stack/TensorListStackTensorListStacklstm_228/while:output:3Blstm_228/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_228/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_228/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_228/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_228/strided_slice_3StridedSlice4lstm_228/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_228/strided_slice_3/stack:output:0)lstm_228/strided_slice_3/stack_1:output:0)lstm_228/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_228/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_228/transpose_1	Transpose4lstm_228/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_228/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_228/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_229/ShapeShapelstm_228/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_229/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_229/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_229/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_229/strided_sliceStridedSlicelstm_229/Shape:output:0%lstm_229/strided_slice/stack:output:0'lstm_229/strided_slice/stack_1:output:0'lstm_229/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_229/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_229/zeros/packedPacklstm_229/strided_slice:output:0 lstm_229/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_229/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_229/zerosFilllstm_229/zeros/packed:output:0lstm_229/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_229/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_229/zeros_1/packedPacklstm_229/strided_slice:output:0"lstm_229/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_229/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_229/zeros_1Fill lstm_229/zeros_1/packed:output:0lstm_229/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_229/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_229/transpose	Transposelstm_228/transpose_1:y:0 lstm_229/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_229/Shape_1Shapelstm_229/transpose:y:0*
T0*
_output_shapes
:h
lstm_229/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_229/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_229/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_229/strided_slice_1StridedSlicelstm_229/Shape_1:output:0'lstm_229/strided_slice_1/stack:output:0)lstm_229/strided_slice_1/stack_1:output:0)lstm_229/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_229/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_229/TensorArrayV2TensorListReserve-lstm_229/TensorArrayV2/element_shape:output:0!lstm_229/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_229/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_229/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_229/transpose:y:0Glstm_229/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_229/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_229/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_229/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_229/strided_slice_2StridedSlicelstm_229/transpose:y:0'lstm_229/strided_slice_2/stack:output:0)lstm_229/strided_slice_2/stack_1:output:0)lstm_229/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_229/lstm_cell_367/MatMul/ReadVariableOpReadVariableOp5lstm_229_lstm_cell_367_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_229/lstm_cell_367/MatMulMatMul!lstm_229/strided_slice_2:output:04lstm_229/lstm_cell_367/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_229/lstm_cell_367/MatMul_1/ReadVariableOpReadVariableOp7lstm_229_lstm_cell_367_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_229/lstm_cell_367/MatMul_1MatMullstm_229/zeros:output:06lstm_229/lstm_cell_367/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_229/lstm_cell_367/addAddV2'lstm_229/lstm_cell_367/MatMul:product:0)lstm_229/lstm_cell_367/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_229/lstm_cell_367/BiasAdd/ReadVariableOpReadVariableOp6lstm_229_lstm_cell_367_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_229/lstm_cell_367/BiasAddBiasAddlstm_229/lstm_cell_367/add:z:05lstm_229/lstm_cell_367/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_229/lstm_cell_367/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_229/lstm_cell_367/splitSplit/lstm_229/lstm_cell_367/split/split_dim:output:0'lstm_229/lstm_cell_367/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_229/lstm_cell_367/SigmoidSigmoid%lstm_229/lstm_cell_367/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_229/lstm_cell_367/Sigmoid_1Sigmoid%lstm_229/lstm_cell_367/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_229/lstm_cell_367/mulMul$lstm_229/lstm_cell_367/Sigmoid_1:y:0lstm_229/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_229/lstm_cell_367/ReluRelu%lstm_229/lstm_cell_367/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_229/lstm_cell_367/mul_1Mul"lstm_229/lstm_cell_367/Sigmoid:y:0)lstm_229/lstm_cell_367/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_229/lstm_cell_367/add_1AddV2lstm_229/lstm_cell_367/mul:z:0 lstm_229/lstm_cell_367/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_229/lstm_cell_367/Sigmoid_2Sigmoid%lstm_229/lstm_cell_367/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_229/lstm_cell_367/Relu_1Relu lstm_229/lstm_cell_367/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_229/lstm_cell_367/mul_2Mul$lstm_229/lstm_cell_367/Sigmoid_2:y:0+lstm_229/lstm_cell_367/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_229/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_229/TensorArrayV2_1TensorListReserve/lstm_229/TensorArrayV2_1/element_shape:output:0!lstm_229/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_229/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_229/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_229/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_229/whileWhile$lstm_229/while/loop_counter:output:0*lstm_229/while/maximum_iterations:output:0lstm_229/time:output:0!lstm_229/TensorArrayV2_1:handle:0lstm_229/zeros:output:0lstm_229/zeros_1:output:0!lstm_229/strided_slice_1:output:0@lstm_229/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_229_lstm_cell_367_matmul_readvariableop_resource7lstm_229_lstm_cell_367_matmul_1_readvariableop_resource6lstm_229_lstm_cell_367_biasadd_readvariableop_resource*
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
lstm_229_while_body_2229396*'
condR
lstm_229_while_cond_2229395*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_229/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_229/TensorArrayV2Stack/TensorListStackTensorListStacklstm_229/while:output:3Blstm_229/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_229/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_229/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_229/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_229/strided_slice_3StridedSlice4lstm_229/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_229/strided_slice_3/stack:output:0)lstm_229/strided_slice_3/stack_1:output:0)lstm_229/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_229/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_229/transpose_1	Transpose4lstm_229/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_229/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_229/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_230/ShapeShapelstm_229/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_230/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_230/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_230/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_230/strided_sliceStridedSlicelstm_230/Shape:output:0%lstm_230/strided_slice/stack:output:0'lstm_230/strided_slice/stack_1:output:0'lstm_230/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_230/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_230/zeros/packedPacklstm_230/strided_slice:output:0 lstm_230/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_230/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_230/zerosFilllstm_230/zeros/packed:output:0lstm_230/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_230/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_230/zeros_1/packedPacklstm_230/strided_slice:output:0"lstm_230/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_230/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_230/zeros_1Fill lstm_230/zeros_1/packed:output:0lstm_230/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_230/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_230/transpose	Transposelstm_229/transpose_1:y:0 lstm_230/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_230/Shape_1Shapelstm_230/transpose:y:0*
T0*
_output_shapes
:h
lstm_230/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_230/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_230/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_230/strided_slice_1StridedSlicelstm_230/Shape_1:output:0'lstm_230/strided_slice_1/stack:output:0)lstm_230/strided_slice_1/stack_1:output:0)lstm_230/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_230/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_230/TensorArrayV2TensorListReserve-lstm_230/TensorArrayV2/element_shape:output:0!lstm_230/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_230/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_230/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_230/transpose:y:0Glstm_230/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_230/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_230/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_230/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_230/strided_slice_2StridedSlicelstm_230/transpose:y:0'lstm_230/strided_slice_2/stack:output:0)lstm_230/strided_slice_2/stack_1:output:0)lstm_230/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_230/lstm_cell_368/MatMul/ReadVariableOpReadVariableOp5lstm_230_lstm_cell_368_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_230/lstm_cell_368/MatMulMatMul!lstm_230/strided_slice_2:output:04lstm_230/lstm_cell_368/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_230/lstm_cell_368/MatMul_1/ReadVariableOpReadVariableOp7lstm_230_lstm_cell_368_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_230/lstm_cell_368/MatMul_1MatMullstm_230/zeros:output:06lstm_230/lstm_cell_368/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_230/lstm_cell_368/addAddV2'lstm_230/lstm_cell_368/MatMul:product:0)lstm_230/lstm_cell_368/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_230/lstm_cell_368/BiasAdd/ReadVariableOpReadVariableOp6lstm_230_lstm_cell_368_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_230/lstm_cell_368/BiasAddBiasAddlstm_230/lstm_cell_368/add:z:05lstm_230/lstm_cell_368/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_230/lstm_cell_368/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_230/lstm_cell_368/splitSplit/lstm_230/lstm_cell_368/split/split_dim:output:0'lstm_230/lstm_cell_368/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_230/lstm_cell_368/SigmoidSigmoid%lstm_230/lstm_cell_368/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_230/lstm_cell_368/Sigmoid_1Sigmoid%lstm_230/lstm_cell_368/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_230/lstm_cell_368/mulMul$lstm_230/lstm_cell_368/Sigmoid_1:y:0lstm_230/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_230/lstm_cell_368/ReluRelu%lstm_230/lstm_cell_368/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_230/lstm_cell_368/mul_1Mul"lstm_230/lstm_cell_368/Sigmoid:y:0)lstm_230/lstm_cell_368/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_230/lstm_cell_368/add_1AddV2lstm_230/lstm_cell_368/mul:z:0 lstm_230/lstm_cell_368/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_230/lstm_cell_368/Sigmoid_2Sigmoid%lstm_230/lstm_cell_368/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_230/lstm_cell_368/Relu_1Relu lstm_230/lstm_cell_368/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_230/lstm_cell_368/mul_2Mul$lstm_230/lstm_cell_368/Sigmoid_2:y:0+lstm_230/lstm_cell_368/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_230/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_230/TensorArrayV2_1TensorListReserve/lstm_230/TensorArrayV2_1/element_shape:output:0!lstm_230/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_230/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_230/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_230/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_230/whileWhile$lstm_230/while/loop_counter:output:0*lstm_230/while/maximum_iterations:output:0lstm_230/time:output:0!lstm_230/TensorArrayV2_1:handle:0lstm_230/zeros:output:0lstm_230/zeros_1:output:0!lstm_230/strided_slice_1:output:0@lstm_230/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_230_lstm_cell_368_matmul_readvariableop_resource7lstm_230_lstm_cell_368_matmul_1_readvariableop_resource6lstm_230_lstm_cell_368_biasadd_readvariableop_resource*
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
lstm_230_while_body_2229535*'
condR
lstm_230_while_cond_2229534*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_230/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_230/TensorArrayV2Stack/TensorListStackTensorListStacklstm_230/while:output:3Blstm_230/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_230/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_230/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_230/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_230/strided_slice_3StridedSlice4lstm_230/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_230/strided_slice_3/stack:output:0)lstm_230/strided_slice_3/stack_1:output:0)lstm_230/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_230/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_230/transpose_1	Transpose4lstm_230/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_230/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_230/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_76/MatMul/ReadVariableOpReadVariableOp'dense_76_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_76/MatMulMatMul!lstm_230/strided_slice_3:output:0&dense_76/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_76/BiasAdd/ReadVariableOpReadVariableOp(dense_76_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_76/BiasAddBiasAdddense_76/MatMul:product:0'dense_76/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_76/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_76/BiasAdd/ReadVariableOp^dense_76/MatMul/ReadVariableOp.^lstm_228/lstm_cell_366/BiasAdd/ReadVariableOp-^lstm_228/lstm_cell_366/MatMul/ReadVariableOp/^lstm_228/lstm_cell_366/MatMul_1/ReadVariableOp^lstm_228/while.^lstm_229/lstm_cell_367/BiasAdd/ReadVariableOp-^lstm_229/lstm_cell_367/MatMul/ReadVariableOp/^lstm_229/lstm_cell_367/MatMul_1/ReadVariableOp^lstm_229/while.^lstm_230/lstm_cell_368/BiasAdd/ReadVariableOp-^lstm_230/lstm_cell_368/MatMul/ReadVariableOp/^lstm_230/lstm_cell_368/MatMul_1/ReadVariableOp^lstm_230/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_76/BiasAdd/ReadVariableOpdense_76/BiasAdd/ReadVariableOp2@
dense_76/MatMul/ReadVariableOpdense_76/MatMul/ReadVariableOp2^
-lstm_228/lstm_cell_366/BiasAdd/ReadVariableOp-lstm_228/lstm_cell_366/BiasAdd/ReadVariableOp2\
,lstm_228/lstm_cell_366/MatMul/ReadVariableOp,lstm_228/lstm_cell_366/MatMul/ReadVariableOp2`
.lstm_228/lstm_cell_366/MatMul_1/ReadVariableOp.lstm_228/lstm_cell_366/MatMul_1/ReadVariableOp2 
lstm_228/whilelstm_228/while2^
-lstm_229/lstm_cell_367/BiasAdd/ReadVariableOp-lstm_229/lstm_cell_367/BiasAdd/ReadVariableOp2\
,lstm_229/lstm_cell_367/MatMul/ReadVariableOp,lstm_229/lstm_cell_367/MatMul/ReadVariableOp2`
.lstm_229/lstm_cell_367/MatMul_1/ReadVariableOp.lstm_229/lstm_cell_367/MatMul_1/ReadVariableOp2 
lstm_229/whilelstm_229/while2^
-lstm_230/lstm_cell_368/BiasAdd/ReadVariableOp-lstm_230/lstm_cell_368/BiasAdd/ReadVariableOp2\
,lstm_230/lstm_cell_368/MatMul/ReadVariableOp,lstm_230/lstm_cell_368/MatMul/ReadVariableOp2`
.lstm_230/lstm_cell_368/MatMul_1/ReadVariableOp.lstm_230/lstm_cell_368/MatMul_1/ReadVariableOp2 
lstm_230/whilelstm_230/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_368_layer_call_and_return_conditional_losses_2227370

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
/__inference_sequential_76_layer_call_fn_2228622
lstm_228_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_228_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_76_layer_call_and_return_conditional_losses_2228570o
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
_user_specified_namelstm_228_input
?
?
*__inference_lstm_228_layer_call_fn_2229636
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
E__inference_lstm_228_layer_call_and_return_conditional_losses_2226607|
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
while_cond_2230343
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2230343___redundant_placeholder05
1while_while_cond_2230343___redundant_placeholder15
1while_while_cond_2230343___redundant_placeholder25
1while_while_cond_2230343___redundant_placeholder3
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
*__inference_lstm_229_layer_call_fn_2230263
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
E__inference_lstm_229_layer_call_and_return_conditional_losses_2227148|
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
%__inference_signature_wrapper_2228717
lstm_228_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_228_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_2226457o
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
_user_specified_namelstm_228_input
?

?
lstm_228_while_cond_2228829.
*lstm_228_while_lstm_228_while_loop_counter4
0lstm_228_while_lstm_228_while_maximum_iterations
lstm_228_while_placeholder 
lstm_228_while_placeholder_1 
lstm_228_while_placeholder_2 
lstm_228_while_placeholder_30
,lstm_228_while_less_lstm_228_strided_slice_1G
Clstm_228_while_lstm_228_while_cond_2228829___redundant_placeholder0G
Clstm_228_while_lstm_228_while_cond_2228829___redundant_placeholder1G
Clstm_228_while_lstm_228_while_cond_2228829___redundant_placeholder2G
Clstm_228_while_lstm_228_while_cond_2228829___redundant_placeholder3
lstm_228_while_identity
?
lstm_228/while/LessLesslstm_228_while_placeholder,lstm_228_while_less_lstm_228_strided_slice_1*
T0*
_output_shapes
: ]
lstm_228/while/IdentityIdentitylstm_228/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_228_while_identity lstm_228/while/Identity:output:0*(
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
while_body_2230630
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_367_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_367_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_367_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_367_matmul_readvariableop_resource:	d?G
4while_lstm_cell_367_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_367_biasadd_readvariableop_resource:	???*while/lstm_cell_367/BiasAdd/ReadVariableOp?)while/lstm_cell_367/MatMul/ReadVariableOp?+while/lstm_cell_367/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_367/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_367_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_367/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_367/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_367/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_367_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_367/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_367/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_367/addAddV2$while/lstm_cell_367/MatMul:product:0&while/lstm_cell_367/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_367/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_367_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_367/BiasAddBiasAddwhile/lstm_cell_367/add:z:02while/lstm_cell_367/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_367/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_367/splitSplit,while/lstm_cell_367/split/split_dim:output:0$while/lstm_cell_367/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_367/SigmoidSigmoid"while/lstm_cell_367/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_367/Sigmoid_1Sigmoid"while/lstm_cell_367/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_367/mulMul!while/lstm_cell_367/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_367/ReluRelu"while/lstm_cell_367/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_367/mul_1Mulwhile/lstm_cell_367/Sigmoid:y:0&while/lstm_cell_367/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_367/add_1AddV2while/lstm_cell_367/mul:z:0while/lstm_cell_367/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_367/Sigmoid_2Sigmoid"while/lstm_cell_367/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_367/Relu_1Reluwhile/lstm_cell_367/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_367/mul_2Mul!while/lstm_cell_367/Sigmoid_2:y:0(while/lstm_cell_367/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_367/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_367/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_367/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_367/BiasAdd/ReadVariableOp*^while/lstm_cell_367/MatMul/ReadVariableOp,^while/lstm_cell_367/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_367_biasadd_readvariableop_resource5while_lstm_cell_367_biasadd_readvariableop_resource_0"n
4while_lstm_cell_367_matmul_1_readvariableop_resource6while_lstm_cell_367_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_367_matmul_readvariableop_resource4while_lstm_cell_367_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_367/BiasAdd/ReadVariableOp*while/lstm_cell_367/BiasAdd/ReadVariableOp2V
)while/lstm_cell_367/MatMul/ReadVariableOp)while/lstm_cell_367/MatMul/ReadVariableOp2Z
+while/lstm_cell_367/MatMul_1/ReadVariableOp+while/lstm_cell_367/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_229_layer_call_and_return_conditional_losses_2230571
inputs_0?
,lstm_cell_367_matmul_readvariableop_resource:	d?A
.lstm_cell_367_matmul_1_readvariableop_resource:	2?<
-lstm_cell_367_biasadd_readvariableop_resource:	?
identity??$lstm_cell_367/BiasAdd/ReadVariableOp?#lstm_cell_367/MatMul/ReadVariableOp?%lstm_cell_367/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_367/MatMul/ReadVariableOpReadVariableOp,lstm_cell_367_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_367/MatMulMatMulstrided_slice_2:output:0+lstm_cell_367/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_367/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_367_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_367/MatMul_1MatMulzeros:output:0-lstm_cell_367/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_367/addAddV2lstm_cell_367/MatMul:product:0 lstm_cell_367/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_367/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_367_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_367/BiasAddBiasAddlstm_cell_367/add:z:0,lstm_cell_367/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_367/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_367/splitSplit&lstm_cell_367/split/split_dim:output:0lstm_cell_367/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_367/SigmoidSigmoidlstm_cell_367/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_367/Sigmoid_1Sigmoidlstm_cell_367/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_367/mulMullstm_cell_367/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_367/ReluRelulstm_cell_367/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_367/mul_1Mullstm_cell_367/Sigmoid:y:0 lstm_cell_367/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_367/add_1AddV2lstm_cell_367/mul:z:0lstm_cell_367/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_367/Sigmoid_2Sigmoidlstm_cell_367/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_367/Relu_1Relulstm_cell_367/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_367/mul_2Mullstm_cell_367/Sigmoid_2:y:0"lstm_cell_367/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_367_matmul_readvariableop_resource.lstm_cell_367_matmul_1_readvariableop_resource-lstm_cell_367_biasadd_readvariableop_resource*
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
while_body_2230487*
condR
while_cond_2230486*K
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
NoOpNoOp%^lstm_cell_367/BiasAdd/ReadVariableOp$^lstm_cell_367/MatMul/ReadVariableOp&^lstm_cell_367/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_367/BiasAdd/ReadVariableOp$lstm_cell_367/BiasAdd/ReadVariableOp2J
#lstm_cell_367/MatMul/ReadVariableOp#lstm_cell_367/MatMul/ReadVariableOp2N
%lstm_cell_367/MatMul_1/ReadVariableOp%lstm_cell_367/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_2230960
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_368_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_368_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_368_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_368_matmul_readvariableop_resource:2(F
4while_lstm_cell_368_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_368_biasadd_readvariableop_resource:(??*while/lstm_cell_368/BiasAdd/ReadVariableOp?)while/lstm_cell_368/MatMul/ReadVariableOp?+while/lstm_cell_368/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_368/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_368_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_368/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_368/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_368/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_368_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_368/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_368/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_368/addAddV2$while/lstm_cell_368/MatMul:product:0&while/lstm_cell_368/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_368/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_368_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_368/BiasAddBiasAddwhile/lstm_cell_368/add:z:02while/lstm_cell_368/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_368/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_368/splitSplit,while/lstm_cell_368/split/split_dim:output:0$while/lstm_cell_368/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_368/SigmoidSigmoid"while/lstm_cell_368/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_368/Sigmoid_1Sigmoid"while/lstm_cell_368/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_368/mulMul!while/lstm_cell_368/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_368/ReluRelu"while/lstm_cell_368/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_368/mul_1Mulwhile/lstm_cell_368/Sigmoid:y:0&while/lstm_cell_368/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_368/add_1AddV2while/lstm_cell_368/mul:z:0while/lstm_cell_368/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_368/Sigmoid_2Sigmoid"while/lstm_cell_368/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_368/Relu_1Reluwhile/lstm_cell_368/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_368/mul_2Mul!while/lstm_cell_368/Sigmoid_2:y:0(while/lstm_cell_368/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_368/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_368/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_368/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_368/BiasAdd/ReadVariableOp*^while/lstm_cell_368/MatMul/ReadVariableOp,^while/lstm_cell_368/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_368_biasadd_readvariableop_resource5while_lstm_cell_368_biasadd_readvariableop_resource_0"n
4while_lstm_cell_368_matmul_1_readvariableop_resource6while_lstm_cell_368_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_368_matmul_readvariableop_resource4while_lstm_cell_368_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_368/BiasAdd/ReadVariableOp*while/lstm_cell_368/BiasAdd/ReadVariableOp2V
)while/lstm_cell_368/MatMul/ReadVariableOp)while/lstm_cell_368/MatMul/ReadVariableOp2Z
+while/lstm_cell_368/MatMul_1/ReadVariableOp+while/lstm_cell_368/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_366_layer_call_fn_2231509

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
J__inference_lstm_cell_366_layer_call_and_return_conditional_losses_2226524o
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
while_cond_2231245
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2231245___redundant_placeholder05
1while_while_cond_2231245___redundant_placeholder15
1while_while_cond_2231245___redundant_placeholder25
1while_while_cond_2231245___redundant_placeholder3
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
E__inference_lstm_230_layer_call_and_return_conditional_losses_2231044
inputs_0>
,lstm_cell_368_matmul_readvariableop_resource:2(@
.lstm_cell_368_matmul_1_readvariableop_resource:
(;
-lstm_cell_368_biasadd_readvariableop_resource:(
identity??$lstm_cell_368/BiasAdd/ReadVariableOp?#lstm_cell_368/MatMul/ReadVariableOp?%lstm_cell_368/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_368/MatMul/ReadVariableOpReadVariableOp,lstm_cell_368_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_368/MatMulMatMulstrided_slice_2:output:0+lstm_cell_368/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_368/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_368_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_368/MatMul_1MatMulzeros:output:0-lstm_cell_368/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_368/addAddV2lstm_cell_368/MatMul:product:0 lstm_cell_368/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_368/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_368_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_368/BiasAddBiasAddlstm_cell_368/add:z:0,lstm_cell_368/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_368/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_368/splitSplit&lstm_cell_368/split/split_dim:output:0lstm_cell_368/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_368/SigmoidSigmoidlstm_cell_368/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_368/Sigmoid_1Sigmoidlstm_cell_368/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_368/mulMullstm_cell_368/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_368/ReluRelulstm_cell_368/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_368/mul_1Mullstm_cell_368/Sigmoid:y:0 lstm_cell_368/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_368/add_1AddV2lstm_cell_368/mul:z:0lstm_cell_368/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_368/Sigmoid_2Sigmoidlstm_cell_368/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_368/Relu_1Relulstm_cell_368/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_368/mul_2Mullstm_cell_368/Sigmoid_2:y:0"lstm_cell_368/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_368_matmul_readvariableop_resource.lstm_cell_368_matmul_1_readvariableop_resource-lstm_cell_368_biasadd_readvariableop_resource*
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
while_body_2230960*
condR
while_cond_2230959*K
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
NoOpNoOp%^lstm_cell_368/BiasAdd/ReadVariableOp$^lstm_cell_368/MatMul/ReadVariableOp&^lstm_cell_368/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_368/BiasAdd/ReadVariableOp$lstm_cell_368/BiasAdd/ReadVariableOp2J
#lstm_cell_368/MatMul/ReadVariableOp#lstm_cell_368/MatMul/ReadVariableOp2N
%lstm_cell_368/MatMul_1/ReadVariableOp%lstm_cell_368/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_230_layer_call_fn_2230868
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
E__inference_lstm_230_layer_call_and_return_conditional_losses_2227307o
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
E__inference_lstm_230_layer_call_and_return_conditional_losses_2227498

inputs'
lstm_cell_368_2227416:2('
lstm_cell_368_2227418:
(#
lstm_cell_368_2227420:(
identity??%lstm_cell_368/StatefulPartitionedCall?while;
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
%lstm_cell_368/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_368_2227416lstm_cell_368_2227418lstm_cell_368_2227420*
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
J__inference_lstm_cell_368_layer_call_and_return_conditional_losses_2227370n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_368_2227416lstm_cell_368_2227418lstm_cell_368_2227420*
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
while_body_2227429*
condR
while_cond_2227428*K
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
NoOpNoOp&^lstm_cell_368/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_368/StatefulPartitionedCall%lstm_cell_368/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?#
?
while_body_2226888
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_367_2226912_0:	d?0
while_lstm_cell_367_2226914_0:	2?,
while_lstm_cell_367_2226916_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_367_2226912:	d?.
while_lstm_cell_367_2226914:	2?*
while_lstm_cell_367_2226916:	???+while/lstm_cell_367/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_367/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_367_2226912_0while_lstm_cell_367_2226914_0while_lstm_cell_367_2226916_0*
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
J__inference_lstm_cell_367_layer_call_and_return_conditional_losses_2226874?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_367/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_367/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_367/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_367/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_367_2226912while_lstm_cell_367_2226912_0"<
while_lstm_cell_367_2226914while_lstm_cell_367_2226914_0"<
while_lstm_cell_367_2226916while_lstm_cell_367_2226916_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_367/StatefulPartitionedCall+while/lstm_cell_367/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_368_layer_call_and_return_conditional_losses_2231786

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
??
?
#__inference__traced_restore_2232059
file_prefix2
 assignvariableop_dense_76_kernel:
.
 assignvariableop_1_dense_76_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_228_lstm_cell_228_kernel:	?M
:assignvariableop_8_lstm_228_lstm_cell_228_recurrent_kernel:	d?=
.assignvariableop_9_lstm_228_lstm_cell_228_bias:	?D
1assignvariableop_10_lstm_229_lstm_cell_229_kernel:	d?N
;assignvariableop_11_lstm_229_lstm_cell_229_recurrent_kernel:	2?>
/assignvariableop_12_lstm_229_lstm_cell_229_bias:	?C
1assignvariableop_13_lstm_230_lstm_cell_230_kernel:2(M
;assignvariableop_14_lstm_230_lstm_cell_230_recurrent_kernel:
(=
/assignvariableop_15_lstm_230_lstm_cell_230_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_76_kernel_m:
6
(assignvariableop_19_adam_dense_76_bias_m:K
8assignvariableop_20_adam_lstm_228_lstm_cell_228_kernel_m:	?U
Bassignvariableop_21_adam_lstm_228_lstm_cell_228_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_228_lstm_cell_228_bias_m:	?K
8assignvariableop_23_adam_lstm_229_lstm_cell_229_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_229_lstm_cell_229_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_229_lstm_cell_229_bias_m:	?J
8assignvariableop_26_adam_lstm_230_lstm_cell_230_kernel_m:2(T
Bassignvariableop_27_adam_lstm_230_lstm_cell_230_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_230_lstm_cell_230_bias_m:(<
*assignvariableop_29_adam_dense_76_kernel_v:
6
(assignvariableop_30_adam_dense_76_bias_v:K
8assignvariableop_31_adam_lstm_228_lstm_cell_228_kernel_v:	?U
Bassignvariableop_32_adam_lstm_228_lstm_cell_228_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_228_lstm_cell_228_bias_v:	?K
8assignvariableop_34_adam_lstm_229_lstm_cell_229_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_229_lstm_cell_229_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_229_lstm_cell_229_bias_v:	?J
8assignvariableop_37_adam_lstm_230_lstm_cell_230_kernel_v:2(T
Bassignvariableop_38_adam_lstm_230_lstm_cell_230_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_230_lstm_cell_230_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_76_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_76_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_228_lstm_cell_228_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_228_lstm_cell_228_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_228_lstm_cell_228_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_229_lstm_cell_229_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_229_lstm_cell_229_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_229_lstm_cell_229_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_230_lstm_cell_230_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_230_lstm_cell_230_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_230_lstm_cell_230_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_76_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_76_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_228_lstm_cell_228_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_228_lstm_cell_228_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_228_lstm_cell_228_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_229_lstm_cell_229_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_229_lstm_cell_229_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_229_lstm_cell_229_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_230_lstm_cell_230_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_230_lstm_cell_230_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_230_lstm_cell_230_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_76_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_76_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_228_lstm_cell_228_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_228_lstm_cell_228_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_228_lstm_cell_228_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_229_lstm_cell_229_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_229_lstm_cell_229_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_229_lstm_cell_229_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_230_lstm_cell_230_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_230_lstm_cell_230_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_230_lstm_cell_230_bias_vIdentity_39:output:0"/device:CPU:0*
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
?
E__inference_dense_76_layer_call_and_return_conditional_losses_2231492

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
/__inference_lstm_cell_366_layer_call_fn_2231526

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
J__inference_lstm_cell_366_layer_call_and_return_conditional_losses_2226670o
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

?
lstm_230_while_cond_2229534.
*lstm_230_while_lstm_230_while_loop_counter4
0lstm_230_while_lstm_230_while_maximum_iterations
lstm_230_while_placeholder 
lstm_230_while_placeholder_1 
lstm_230_while_placeholder_2 
lstm_230_while_placeholder_30
,lstm_230_while_less_lstm_230_strided_slice_1G
Clstm_230_while_lstm_230_while_cond_2229534___redundant_placeholder0G
Clstm_230_while_lstm_230_while_cond_2229534___redundant_placeholder1G
Clstm_230_while_lstm_230_while_cond_2229534___redundant_placeholder2G
Clstm_230_while_lstm_230_while_cond_2229534___redundant_placeholder3
lstm_230_while_identity
?
lstm_230/while/LessLesslstm_230_while_placeholder,lstm_230_while_less_lstm_230_strided_slice_1*
T0*
_output_shapes
: ]
lstm_230/while/IdentityIdentitylstm_230/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_230_while_identity lstm_230/while/Identity:output:0*(
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
while_cond_2226728
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2226728___redundant_placeholder05
1while_while_cond_2226728___redundant_placeholder15
1while_while_cond_2226728___redundant_placeholder25
1while_while_cond_2226728___redundant_placeholder3
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
/__inference_lstm_cell_367_layer_call_fn_2231607

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
J__inference_lstm_cell_367_layer_call_and_return_conditional_losses_2226874o
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

lstm_230_while_body_2229108.
*lstm_230_while_lstm_230_while_loop_counter4
0lstm_230_while_lstm_230_while_maximum_iterations
lstm_230_while_placeholder 
lstm_230_while_placeholder_1 
lstm_230_while_placeholder_2 
lstm_230_while_placeholder_3-
)lstm_230_while_lstm_230_strided_slice_1_0i
elstm_230_while_tensorarrayv2read_tensorlistgetitem_lstm_230_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_230_while_lstm_cell_368_matmul_readvariableop_resource_0:2(Q
?lstm_230_while_lstm_cell_368_matmul_1_readvariableop_resource_0:
(L
>lstm_230_while_lstm_cell_368_biasadd_readvariableop_resource_0:(
lstm_230_while_identity
lstm_230_while_identity_1
lstm_230_while_identity_2
lstm_230_while_identity_3
lstm_230_while_identity_4
lstm_230_while_identity_5+
'lstm_230_while_lstm_230_strided_slice_1g
clstm_230_while_tensorarrayv2read_tensorlistgetitem_lstm_230_tensorarrayunstack_tensorlistfromtensorM
;lstm_230_while_lstm_cell_368_matmul_readvariableop_resource:2(O
=lstm_230_while_lstm_cell_368_matmul_1_readvariableop_resource:
(J
<lstm_230_while_lstm_cell_368_biasadd_readvariableop_resource:(??3lstm_230/while/lstm_cell_368/BiasAdd/ReadVariableOp?2lstm_230/while/lstm_cell_368/MatMul/ReadVariableOp?4lstm_230/while/lstm_cell_368/MatMul_1/ReadVariableOp?
@lstm_230/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_230/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_230_while_tensorarrayv2read_tensorlistgetitem_lstm_230_tensorarrayunstack_tensorlistfromtensor_0lstm_230_while_placeholderIlstm_230/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_230/while/lstm_cell_368/MatMul/ReadVariableOpReadVariableOp=lstm_230_while_lstm_cell_368_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_230/while/lstm_cell_368/MatMulMatMul9lstm_230/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_230/while/lstm_cell_368/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_230/while/lstm_cell_368/MatMul_1/ReadVariableOpReadVariableOp?lstm_230_while_lstm_cell_368_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_230/while/lstm_cell_368/MatMul_1MatMullstm_230_while_placeholder_2<lstm_230/while/lstm_cell_368/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_230/while/lstm_cell_368/addAddV2-lstm_230/while/lstm_cell_368/MatMul:product:0/lstm_230/while/lstm_cell_368/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_230/while/lstm_cell_368/BiasAdd/ReadVariableOpReadVariableOp>lstm_230_while_lstm_cell_368_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_230/while/lstm_cell_368/BiasAddBiasAdd$lstm_230/while/lstm_cell_368/add:z:0;lstm_230/while/lstm_cell_368/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_230/while/lstm_cell_368/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_230/while/lstm_cell_368/splitSplit5lstm_230/while/lstm_cell_368/split/split_dim:output:0-lstm_230/while/lstm_cell_368/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_230/while/lstm_cell_368/SigmoidSigmoid+lstm_230/while/lstm_cell_368/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_230/while/lstm_cell_368/Sigmoid_1Sigmoid+lstm_230/while/lstm_cell_368/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_230/while/lstm_cell_368/mulMul*lstm_230/while/lstm_cell_368/Sigmoid_1:y:0lstm_230_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_230/while/lstm_cell_368/ReluRelu+lstm_230/while/lstm_cell_368/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_230/while/lstm_cell_368/mul_1Mul(lstm_230/while/lstm_cell_368/Sigmoid:y:0/lstm_230/while/lstm_cell_368/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_230/while/lstm_cell_368/add_1AddV2$lstm_230/while/lstm_cell_368/mul:z:0&lstm_230/while/lstm_cell_368/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_230/while/lstm_cell_368/Sigmoid_2Sigmoid+lstm_230/while/lstm_cell_368/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_230/while/lstm_cell_368/Relu_1Relu&lstm_230/while/lstm_cell_368/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_230/while/lstm_cell_368/mul_2Mul*lstm_230/while/lstm_cell_368/Sigmoid_2:y:01lstm_230/while/lstm_cell_368/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_230/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_230_while_placeholder_1lstm_230_while_placeholder&lstm_230/while/lstm_cell_368/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_230/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_230/while/addAddV2lstm_230_while_placeholderlstm_230/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_230/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_230/while/add_1AddV2*lstm_230_while_lstm_230_while_loop_counterlstm_230/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_230/while/IdentityIdentitylstm_230/while/add_1:z:0^lstm_230/while/NoOp*
T0*
_output_shapes
: ?
lstm_230/while/Identity_1Identity0lstm_230_while_lstm_230_while_maximum_iterations^lstm_230/while/NoOp*
T0*
_output_shapes
: t
lstm_230/while/Identity_2Identitylstm_230/while/add:z:0^lstm_230/while/NoOp*
T0*
_output_shapes
: ?
lstm_230/while/Identity_3IdentityClstm_230/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_230/while/NoOp*
T0*
_output_shapes
: ?
lstm_230/while/Identity_4Identity&lstm_230/while/lstm_cell_368/mul_2:z:0^lstm_230/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_230/while/Identity_5Identity&lstm_230/while/lstm_cell_368/add_1:z:0^lstm_230/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_230/while/NoOpNoOp4^lstm_230/while/lstm_cell_368/BiasAdd/ReadVariableOp3^lstm_230/while/lstm_cell_368/MatMul/ReadVariableOp5^lstm_230/while/lstm_cell_368/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_230_while_identity lstm_230/while/Identity:output:0"?
lstm_230_while_identity_1"lstm_230/while/Identity_1:output:0"?
lstm_230_while_identity_2"lstm_230/while/Identity_2:output:0"?
lstm_230_while_identity_3"lstm_230/while/Identity_3:output:0"?
lstm_230_while_identity_4"lstm_230/while/Identity_4:output:0"?
lstm_230_while_identity_5"lstm_230/while/Identity_5:output:0"T
'lstm_230_while_lstm_230_strided_slice_1)lstm_230_while_lstm_230_strided_slice_1_0"~
<lstm_230_while_lstm_cell_368_biasadd_readvariableop_resource>lstm_230_while_lstm_cell_368_biasadd_readvariableop_resource_0"?
=lstm_230_while_lstm_cell_368_matmul_1_readvariableop_resource?lstm_230_while_lstm_cell_368_matmul_1_readvariableop_resource_0"|
;lstm_230_while_lstm_cell_368_matmul_readvariableop_resource=lstm_230_while_lstm_cell_368_matmul_readvariableop_resource_0"?
clstm_230_while_tensorarrayv2read_tensorlistgetitem_lstm_230_tensorarrayunstack_tensorlistfromtensorelstm_230_while_tensorarrayv2read_tensorlistgetitem_lstm_230_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_230/while/lstm_cell_368/BiasAdd/ReadVariableOp3lstm_230/while/lstm_cell_368/BiasAdd/ReadVariableOp2h
2lstm_230/while/lstm_cell_368/MatMul/ReadVariableOp2lstm_230/while/lstm_cell_368/MatMul/ReadVariableOp2l
4lstm_230/while/lstm_cell_368/MatMul_1/ReadVariableOp4lstm_230/while/lstm_cell_368/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2228088
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_368_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_368_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_368_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_368_matmul_readvariableop_resource:2(F
4while_lstm_cell_368_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_368_biasadd_readvariableop_resource:(??*while/lstm_cell_368/BiasAdd/ReadVariableOp?)while/lstm_cell_368/MatMul/ReadVariableOp?+while/lstm_cell_368/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_368/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_368_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_368/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_368/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_368/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_368_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_368/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_368/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_368/addAddV2$while/lstm_cell_368/MatMul:product:0&while/lstm_cell_368/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_368/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_368_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_368/BiasAddBiasAddwhile/lstm_cell_368/add:z:02while/lstm_cell_368/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_368/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_368/splitSplit,while/lstm_cell_368/split/split_dim:output:0$while/lstm_cell_368/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_368/SigmoidSigmoid"while/lstm_cell_368/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_368/Sigmoid_1Sigmoid"while/lstm_cell_368/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_368/mulMul!while/lstm_cell_368/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_368/ReluRelu"while/lstm_cell_368/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_368/mul_1Mulwhile/lstm_cell_368/Sigmoid:y:0&while/lstm_cell_368/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_368/add_1AddV2while/lstm_cell_368/mul:z:0while/lstm_cell_368/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_368/Sigmoid_2Sigmoid"while/lstm_cell_368/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_368/Relu_1Reluwhile/lstm_cell_368/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_368/mul_2Mul!while/lstm_cell_368/Sigmoid_2:y:0(while/lstm_cell_368/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_368/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_368/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_368/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_368/BiasAdd/ReadVariableOp*^while/lstm_cell_368/MatMul/ReadVariableOp,^while/lstm_cell_368/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_368_biasadd_readvariableop_resource5while_lstm_cell_368_biasadd_readvariableop_resource_0"n
4while_lstm_cell_368_matmul_1_readvariableop_resource6while_lstm_cell_368_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_368_matmul_readvariableop_resource4while_lstm_cell_368_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_368/BiasAdd/ReadVariableOp*while/lstm_cell_368/BiasAdd/ReadVariableOp2V
)while/lstm_cell_368/MatMul/ReadVariableOp)while/lstm_cell_368/MatMul/ReadVariableOp2Z
+while/lstm_cell_368/MatMul_1/ReadVariableOp+while/lstm_cell_368/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2229727
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2229727___redundant_placeholder05
1while_while_cond_2229727___redundant_placeholder15
1while_while_cond_2229727___redundant_placeholder25
1while_while_cond_2229727___redundant_placeholder3
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
E__inference_lstm_230_layer_call_and_return_conditional_losses_2227307

inputs'
lstm_cell_368_2227225:2('
lstm_cell_368_2227227:
(#
lstm_cell_368_2227229:(
identity??%lstm_cell_368/StatefulPartitionedCall?while;
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
%lstm_cell_368/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_368_2227225lstm_cell_368_2227227lstm_cell_368_2227229*
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
J__inference_lstm_cell_368_layer_call_and_return_conditional_losses_2227224n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_368_2227225lstm_cell_368_2227227lstm_cell_368_2227229*
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
while_body_2227238*
condR
while_cond_2227237*K
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
NoOpNoOp&^lstm_cell_368/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_368/StatefulPartitionedCall%lstm_cell_368/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_2230013
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2230013___redundant_placeholder05
1while_while_cond_2230013___redundant_placeholder15
1while_while_cond_2230013___redundant_placeholder25
1while_while_cond_2230013___redundant_placeholder3
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
*__inference_lstm_230_layer_call_fn_2230901

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
E__inference_lstm_230_layer_call_and_return_conditional_losses_2228172o
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
E__inference_lstm_229_layer_call_and_return_conditional_losses_2230857

inputs?
,lstm_cell_367_matmul_readvariableop_resource:	d?A
.lstm_cell_367_matmul_1_readvariableop_resource:	2?<
-lstm_cell_367_biasadd_readvariableop_resource:	?
identity??$lstm_cell_367/BiasAdd/ReadVariableOp?#lstm_cell_367/MatMul/ReadVariableOp?%lstm_cell_367/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_367/MatMul/ReadVariableOpReadVariableOp,lstm_cell_367_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_367/MatMulMatMulstrided_slice_2:output:0+lstm_cell_367/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_367/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_367_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_367/MatMul_1MatMulzeros:output:0-lstm_cell_367/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_367/addAddV2lstm_cell_367/MatMul:product:0 lstm_cell_367/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_367/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_367_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_367/BiasAddBiasAddlstm_cell_367/add:z:0,lstm_cell_367/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_367/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_367/splitSplit&lstm_cell_367/split/split_dim:output:0lstm_cell_367/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_367/SigmoidSigmoidlstm_cell_367/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_367/Sigmoid_1Sigmoidlstm_cell_367/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_367/mulMullstm_cell_367/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_367/ReluRelulstm_cell_367/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_367/mul_1Mullstm_cell_367/Sigmoid:y:0 lstm_cell_367/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_367/add_1AddV2lstm_cell_367/mul:z:0lstm_cell_367/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_367/Sigmoid_2Sigmoidlstm_cell_367/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_367/Relu_1Relulstm_cell_367/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_367/mul_2Mullstm_cell_367/Sigmoid_2:y:0"lstm_cell_367/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_367_matmul_readvariableop_resource.lstm_cell_367_matmul_1_readvariableop_resource-lstm_cell_367_biasadd_readvariableop_resource*
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
while_body_2230773*
condR
while_cond_2230772*K
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
NoOpNoOp%^lstm_cell_367/BiasAdd/ReadVariableOp$^lstm_cell_367/MatMul/ReadVariableOp&^lstm_cell_367/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_367/BiasAdd/ReadVariableOp$lstm_cell_367/BiasAdd/ReadVariableOp2J
#lstm_cell_367/MatMul/ReadVariableOp#lstm_cell_367/MatMul/ReadVariableOp2N
%lstm_cell_367/MatMul_1/ReadVariableOp%lstm_cell_367/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?C
?

lstm_230_while_body_2229535.
*lstm_230_while_lstm_230_while_loop_counter4
0lstm_230_while_lstm_230_while_maximum_iterations
lstm_230_while_placeholder 
lstm_230_while_placeholder_1 
lstm_230_while_placeholder_2 
lstm_230_while_placeholder_3-
)lstm_230_while_lstm_230_strided_slice_1_0i
elstm_230_while_tensorarrayv2read_tensorlistgetitem_lstm_230_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_230_while_lstm_cell_368_matmul_readvariableop_resource_0:2(Q
?lstm_230_while_lstm_cell_368_matmul_1_readvariableop_resource_0:
(L
>lstm_230_while_lstm_cell_368_biasadd_readvariableop_resource_0:(
lstm_230_while_identity
lstm_230_while_identity_1
lstm_230_while_identity_2
lstm_230_while_identity_3
lstm_230_while_identity_4
lstm_230_while_identity_5+
'lstm_230_while_lstm_230_strided_slice_1g
clstm_230_while_tensorarrayv2read_tensorlistgetitem_lstm_230_tensorarrayunstack_tensorlistfromtensorM
;lstm_230_while_lstm_cell_368_matmul_readvariableop_resource:2(O
=lstm_230_while_lstm_cell_368_matmul_1_readvariableop_resource:
(J
<lstm_230_while_lstm_cell_368_biasadd_readvariableop_resource:(??3lstm_230/while/lstm_cell_368/BiasAdd/ReadVariableOp?2lstm_230/while/lstm_cell_368/MatMul/ReadVariableOp?4lstm_230/while/lstm_cell_368/MatMul_1/ReadVariableOp?
@lstm_230/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_230/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_230_while_tensorarrayv2read_tensorlistgetitem_lstm_230_tensorarrayunstack_tensorlistfromtensor_0lstm_230_while_placeholderIlstm_230/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_230/while/lstm_cell_368/MatMul/ReadVariableOpReadVariableOp=lstm_230_while_lstm_cell_368_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_230/while/lstm_cell_368/MatMulMatMul9lstm_230/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_230/while/lstm_cell_368/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_230/while/lstm_cell_368/MatMul_1/ReadVariableOpReadVariableOp?lstm_230_while_lstm_cell_368_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_230/while/lstm_cell_368/MatMul_1MatMullstm_230_while_placeholder_2<lstm_230/while/lstm_cell_368/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_230/while/lstm_cell_368/addAddV2-lstm_230/while/lstm_cell_368/MatMul:product:0/lstm_230/while/lstm_cell_368/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_230/while/lstm_cell_368/BiasAdd/ReadVariableOpReadVariableOp>lstm_230_while_lstm_cell_368_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_230/while/lstm_cell_368/BiasAddBiasAdd$lstm_230/while/lstm_cell_368/add:z:0;lstm_230/while/lstm_cell_368/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_230/while/lstm_cell_368/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_230/while/lstm_cell_368/splitSplit5lstm_230/while/lstm_cell_368/split/split_dim:output:0-lstm_230/while/lstm_cell_368/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_230/while/lstm_cell_368/SigmoidSigmoid+lstm_230/while/lstm_cell_368/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_230/while/lstm_cell_368/Sigmoid_1Sigmoid+lstm_230/while/lstm_cell_368/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_230/while/lstm_cell_368/mulMul*lstm_230/while/lstm_cell_368/Sigmoid_1:y:0lstm_230_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_230/while/lstm_cell_368/ReluRelu+lstm_230/while/lstm_cell_368/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_230/while/lstm_cell_368/mul_1Mul(lstm_230/while/lstm_cell_368/Sigmoid:y:0/lstm_230/while/lstm_cell_368/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_230/while/lstm_cell_368/add_1AddV2$lstm_230/while/lstm_cell_368/mul:z:0&lstm_230/while/lstm_cell_368/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_230/while/lstm_cell_368/Sigmoid_2Sigmoid+lstm_230/while/lstm_cell_368/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_230/while/lstm_cell_368/Relu_1Relu&lstm_230/while/lstm_cell_368/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_230/while/lstm_cell_368/mul_2Mul*lstm_230/while/lstm_cell_368/Sigmoid_2:y:01lstm_230/while/lstm_cell_368/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_230/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_230_while_placeholder_1lstm_230_while_placeholder&lstm_230/while/lstm_cell_368/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_230/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_230/while/addAddV2lstm_230_while_placeholderlstm_230/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_230/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_230/while/add_1AddV2*lstm_230_while_lstm_230_while_loop_counterlstm_230/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_230/while/IdentityIdentitylstm_230/while/add_1:z:0^lstm_230/while/NoOp*
T0*
_output_shapes
: ?
lstm_230/while/Identity_1Identity0lstm_230_while_lstm_230_while_maximum_iterations^lstm_230/while/NoOp*
T0*
_output_shapes
: t
lstm_230/while/Identity_2Identitylstm_230/while/add:z:0^lstm_230/while/NoOp*
T0*
_output_shapes
: ?
lstm_230/while/Identity_3IdentityClstm_230/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_230/while/NoOp*
T0*
_output_shapes
: ?
lstm_230/while/Identity_4Identity&lstm_230/while/lstm_cell_368/mul_2:z:0^lstm_230/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_230/while/Identity_5Identity&lstm_230/while/lstm_cell_368/add_1:z:0^lstm_230/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_230/while/NoOpNoOp4^lstm_230/while/lstm_cell_368/BiasAdd/ReadVariableOp3^lstm_230/while/lstm_cell_368/MatMul/ReadVariableOp5^lstm_230/while/lstm_cell_368/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_230_while_identity lstm_230/while/Identity:output:0"?
lstm_230_while_identity_1"lstm_230/while/Identity_1:output:0"?
lstm_230_while_identity_2"lstm_230/while/Identity_2:output:0"?
lstm_230_while_identity_3"lstm_230/while/Identity_3:output:0"?
lstm_230_while_identity_4"lstm_230/while/Identity_4:output:0"?
lstm_230_while_identity_5"lstm_230/while/Identity_5:output:0"T
'lstm_230_while_lstm_230_strided_slice_1)lstm_230_while_lstm_230_strided_slice_1_0"~
<lstm_230_while_lstm_cell_368_biasadd_readvariableop_resource>lstm_230_while_lstm_cell_368_biasadd_readvariableop_resource_0"?
=lstm_230_while_lstm_cell_368_matmul_1_readvariableop_resource?lstm_230_while_lstm_cell_368_matmul_1_readvariableop_resource_0"|
;lstm_230_while_lstm_cell_368_matmul_readvariableop_resource=lstm_230_while_lstm_cell_368_matmul_readvariableop_resource_0"?
clstm_230_while_tensorarrayv2read_tensorlistgetitem_lstm_230_tensorarrayunstack_tensorlistfromtensorelstm_230_while_tensorarrayv2read_tensorlistgetitem_lstm_230_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_230/while/lstm_cell_368/BiasAdd/ReadVariableOp3lstm_230/while/lstm_cell_368/BiasAdd/ReadVariableOp2h
2lstm_230/while/lstm_cell_368/MatMul/ReadVariableOp2lstm_230/while/lstm_cell_368/MatMul/ReadVariableOp2l
4lstm_230/while/lstm_cell_368/MatMul_1/ReadVariableOp4lstm_230/while/lstm_cell_368/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_230_layer_call_and_return_conditional_losses_2228172

inputs>
,lstm_cell_368_matmul_readvariableop_resource:2(@
.lstm_cell_368_matmul_1_readvariableop_resource:
(;
-lstm_cell_368_biasadd_readvariableop_resource:(
identity??$lstm_cell_368/BiasAdd/ReadVariableOp?#lstm_cell_368/MatMul/ReadVariableOp?%lstm_cell_368/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_368/MatMul/ReadVariableOpReadVariableOp,lstm_cell_368_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_368/MatMulMatMulstrided_slice_2:output:0+lstm_cell_368/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_368/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_368_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_368/MatMul_1MatMulzeros:output:0-lstm_cell_368/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_368/addAddV2lstm_cell_368/MatMul:product:0 lstm_cell_368/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_368/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_368_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_368/BiasAddBiasAddlstm_cell_368/add:z:0,lstm_cell_368/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_368/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_368/splitSplit&lstm_cell_368/split/split_dim:output:0lstm_cell_368/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_368/SigmoidSigmoidlstm_cell_368/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_368/Sigmoid_1Sigmoidlstm_cell_368/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_368/mulMullstm_cell_368/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_368/ReluRelulstm_cell_368/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_368/mul_1Mullstm_cell_368/Sigmoid:y:0 lstm_cell_368/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_368/add_1AddV2lstm_cell_368/mul:z:0lstm_cell_368/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_368/Sigmoid_2Sigmoidlstm_cell_368/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_368/Relu_1Relulstm_cell_368/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_368/mul_2Mullstm_cell_368/Sigmoid_2:y:0"lstm_cell_368/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_368_matmul_readvariableop_resource.lstm_cell_368_matmul_1_readvariableop_resource-lstm_cell_368_biasadd_readvariableop_resource*
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
while_body_2228088*
condR
while_cond_2228087*K
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
NoOpNoOp%^lstm_cell_368/BiasAdd/ReadVariableOp$^lstm_cell_368/MatMul/ReadVariableOp&^lstm_cell_368/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_368/BiasAdd/ReadVariableOp$lstm_cell_368/BiasAdd/ReadVariableOp2J
#lstm_cell_368/MatMul/ReadVariableOp#lstm_cell_368/MatMul/ReadVariableOp2N
%lstm_cell_368/MatMul_1/ReadVariableOp%lstm_cell_368/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_367_layer_call_and_return_conditional_losses_2226874

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

lstm_229_while_body_2228969.
*lstm_229_while_lstm_229_while_loop_counter4
0lstm_229_while_lstm_229_while_maximum_iterations
lstm_229_while_placeholder 
lstm_229_while_placeholder_1 
lstm_229_while_placeholder_2 
lstm_229_while_placeholder_3-
)lstm_229_while_lstm_229_strided_slice_1_0i
elstm_229_while_tensorarrayv2read_tensorlistgetitem_lstm_229_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_229_while_lstm_cell_367_matmul_readvariableop_resource_0:	d?R
?lstm_229_while_lstm_cell_367_matmul_1_readvariableop_resource_0:	2?M
>lstm_229_while_lstm_cell_367_biasadd_readvariableop_resource_0:	?
lstm_229_while_identity
lstm_229_while_identity_1
lstm_229_while_identity_2
lstm_229_while_identity_3
lstm_229_while_identity_4
lstm_229_while_identity_5+
'lstm_229_while_lstm_229_strided_slice_1g
clstm_229_while_tensorarrayv2read_tensorlistgetitem_lstm_229_tensorarrayunstack_tensorlistfromtensorN
;lstm_229_while_lstm_cell_367_matmul_readvariableop_resource:	d?P
=lstm_229_while_lstm_cell_367_matmul_1_readvariableop_resource:	2?K
<lstm_229_while_lstm_cell_367_biasadd_readvariableop_resource:	???3lstm_229/while/lstm_cell_367/BiasAdd/ReadVariableOp?2lstm_229/while/lstm_cell_367/MatMul/ReadVariableOp?4lstm_229/while/lstm_cell_367/MatMul_1/ReadVariableOp?
@lstm_229/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_229/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_229_while_tensorarrayv2read_tensorlistgetitem_lstm_229_tensorarrayunstack_tensorlistfromtensor_0lstm_229_while_placeholderIlstm_229/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_229/while/lstm_cell_367/MatMul/ReadVariableOpReadVariableOp=lstm_229_while_lstm_cell_367_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_229/while/lstm_cell_367/MatMulMatMul9lstm_229/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_229/while/lstm_cell_367/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_229/while/lstm_cell_367/MatMul_1/ReadVariableOpReadVariableOp?lstm_229_while_lstm_cell_367_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_229/while/lstm_cell_367/MatMul_1MatMullstm_229_while_placeholder_2<lstm_229/while/lstm_cell_367/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_229/while/lstm_cell_367/addAddV2-lstm_229/while/lstm_cell_367/MatMul:product:0/lstm_229/while/lstm_cell_367/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_229/while/lstm_cell_367/BiasAdd/ReadVariableOpReadVariableOp>lstm_229_while_lstm_cell_367_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_229/while/lstm_cell_367/BiasAddBiasAdd$lstm_229/while/lstm_cell_367/add:z:0;lstm_229/while/lstm_cell_367/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_229/while/lstm_cell_367/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_229/while/lstm_cell_367/splitSplit5lstm_229/while/lstm_cell_367/split/split_dim:output:0-lstm_229/while/lstm_cell_367/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_229/while/lstm_cell_367/SigmoidSigmoid+lstm_229/while/lstm_cell_367/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_229/while/lstm_cell_367/Sigmoid_1Sigmoid+lstm_229/while/lstm_cell_367/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_229/while/lstm_cell_367/mulMul*lstm_229/while/lstm_cell_367/Sigmoid_1:y:0lstm_229_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_229/while/lstm_cell_367/ReluRelu+lstm_229/while/lstm_cell_367/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_229/while/lstm_cell_367/mul_1Mul(lstm_229/while/lstm_cell_367/Sigmoid:y:0/lstm_229/while/lstm_cell_367/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_229/while/lstm_cell_367/add_1AddV2$lstm_229/while/lstm_cell_367/mul:z:0&lstm_229/while/lstm_cell_367/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_229/while/lstm_cell_367/Sigmoid_2Sigmoid+lstm_229/while/lstm_cell_367/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_229/while/lstm_cell_367/Relu_1Relu&lstm_229/while/lstm_cell_367/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_229/while/lstm_cell_367/mul_2Mul*lstm_229/while/lstm_cell_367/Sigmoid_2:y:01lstm_229/while/lstm_cell_367/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_229/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_229_while_placeholder_1lstm_229_while_placeholder&lstm_229/while/lstm_cell_367/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_229/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_229/while/addAddV2lstm_229_while_placeholderlstm_229/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_229/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_229/while/add_1AddV2*lstm_229_while_lstm_229_while_loop_counterlstm_229/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_229/while/IdentityIdentitylstm_229/while/add_1:z:0^lstm_229/while/NoOp*
T0*
_output_shapes
: ?
lstm_229/while/Identity_1Identity0lstm_229_while_lstm_229_while_maximum_iterations^lstm_229/while/NoOp*
T0*
_output_shapes
: t
lstm_229/while/Identity_2Identitylstm_229/while/add:z:0^lstm_229/while/NoOp*
T0*
_output_shapes
: ?
lstm_229/while/Identity_3IdentityClstm_229/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_229/while/NoOp*
T0*
_output_shapes
: ?
lstm_229/while/Identity_4Identity&lstm_229/while/lstm_cell_367/mul_2:z:0^lstm_229/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_229/while/Identity_5Identity&lstm_229/while/lstm_cell_367/add_1:z:0^lstm_229/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_229/while/NoOpNoOp4^lstm_229/while/lstm_cell_367/BiasAdd/ReadVariableOp3^lstm_229/while/lstm_cell_367/MatMul/ReadVariableOp5^lstm_229/while/lstm_cell_367/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_229_while_identity lstm_229/while/Identity:output:0"?
lstm_229_while_identity_1"lstm_229/while/Identity_1:output:0"?
lstm_229_while_identity_2"lstm_229/while/Identity_2:output:0"?
lstm_229_while_identity_3"lstm_229/while/Identity_3:output:0"?
lstm_229_while_identity_4"lstm_229/while/Identity_4:output:0"?
lstm_229_while_identity_5"lstm_229/while/Identity_5:output:0"T
'lstm_229_while_lstm_229_strided_slice_1)lstm_229_while_lstm_229_strided_slice_1_0"~
<lstm_229_while_lstm_cell_367_biasadd_readvariableop_resource>lstm_229_while_lstm_cell_367_biasadd_readvariableop_resource_0"?
=lstm_229_while_lstm_cell_367_matmul_1_readvariableop_resource?lstm_229_while_lstm_cell_367_matmul_1_readvariableop_resource_0"|
;lstm_229_while_lstm_cell_367_matmul_readvariableop_resource=lstm_229_while_lstm_cell_367_matmul_readvariableop_resource_0"?
clstm_229_while_tensorarrayv2read_tensorlistgetitem_lstm_229_tensorarrayunstack_tensorlistfromtensorelstm_229_while_tensorarrayv2read_tensorlistgetitem_lstm_229_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_229/while/lstm_cell_367/BiasAdd/ReadVariableOp3lstm_229/while/lstm_cell_367/BiasAdd/ReadVariableOp2h
2lstm_229/while/lstm_cell_367/MatMul/ReadVariableOp2lstm_229/while/lstm_cell_367/MatMul/ReadVariableOp2l
4lstm_229/while/lstm_cell_367/MatMul_1/ReadVariableOp4lstm_229/while/lstm_cell_367/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_sequential_76_layer_call_fn_2228771

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
J__inference_sequential_76_layer_call_and_return_conditional_losses_2228570o
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
lstm_229_while_cond_2229395.
*lstm_229_while_lstm_229_while_loop_counter4
0lstm_229_while_lstm_229_while_maximum_iterations
lstm_229_while_placeholder 
lstm_229_while_placeholder_1 
lstm_229_while_placeholder_2 
lstm_229_while_placeholder_30
,lstm_229_while_less_lstm_229_strided_slice_1G
Clstm_229_while_lstm_229_while_cond_2229395___redundant_placeholder0G
Clstm_229_while_lstm_229_while_cond_2229395___redundant_placeholder1G
Clstm_229_while_lstm_229_while_cond_2229395___redundant_placeholder2G
Clstm_229_while_lstm_229_while_cond_2229395___redundant_placeholder3
lstm_229_while_identity
?
lstm_229/while/LessLesslstm_229_while_placeholder,lstm_229_while_less_lstm_229_strided_slice_1*
T0*
_output_shapes
: ]
lstm_229/while/IdentityIdentitylstm_229/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_229_while_identity lstm_229/while/Identity:output:0*(
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
E__inference_lstm_228_layer_call_and_return_conditional_losses_2229812
inputs_0?
,lstm_cell_366_matmul_readvariableop_resource:	?A
.lstm_cell_366_matmul_1_readvariableop_resource:	d?<
-lstm_cell_366_biasadd_readvariableop_resource:	?
identity??$lstm_cell_366/BiasAdd/ReadVariableOp?#lstm_cell_366/MatMul/ReadVariableOp?%lstm_cell_366/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_366/MatMul/ReadVariableOpReadVariableOp,lstm_cell_366_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_366/MatMulMatMulstrided_slice_2:output:0+lstm_cell_366/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_366/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_366_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_366/MatMul_1MatMulzeros:output:0-lstm_cell_366/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_366/addAddV2lstm_cell_366/MatMul:product:0 lstm_cell_366/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_366/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_366_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_366/BiasAddBiasAddlstm_cell_366/add:z:0,lstm_cell_366/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_366/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_366/splitSplit&lstm_cell_366/split/split_dim:output:0lstm_cell_366/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_366/SigmoidSigmoidlstm_cell_366/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_366/Sigmoid_1Sigmoidlstm_cell_366/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_366/mulMullstm_cell_366/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_366/ReluRelulstm_cell_366/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_366/mul_1Mullstm_cell_366/Sigmoid:y:0 lstm_cell_366/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_366/add_1AddV2lstm_cell_366/mul:z:0lstm_cell_366/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_366/Sigmoid_2Sigmoidlstm_cell_366/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_366/Relu_1Relulstm_cell_366/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_366/mul_2Mullstm_cell_366/Sigmoid_2:y:0"lstm_cell_366/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_366_matmul_readvariableop_resource.lstm_cell_366_matmul_1_readvariableop_resource-lstm_cell_366_biasadd_readvariableop_resource*
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
while_body_2229728*
condR
while_cond_2229727*K
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
NoOpNoOp%^lstm_cell_366/BiasAdd/ReadVariableOp$^lstm_cell_366/MatMul/ReadVariableOp&^lstm_cell_366/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_366/BiasAdd/ReadVariableOp$lstm_cell_366/BiasAdd/ReadVariableOp2J
#lstm_cell_366/MatMul/ReadVariableOp#lstm_cell_366/MatMul/ReadVariableOp2N
%lstm_cell_366/MatMul_1/ReadVariableOp%lstm_cell_366/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_228_layer_call_and_return_conditional_losses_2230241

inputs?
,lstm_cell_366_matmul_readvariableop_resource:	?A
.lstm_cell_366_matmul_1_readvariableop_resource:	d?<
-lstm_cell_366_biasadd_readvariableop_resource:	?
identity??$lstm_cell_366/BiasAdd/ReadVariableOp?#lstm_cell_366/MatMul/ReadVariableOp?%lstm_cell_366/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_366/MatMul/ReadVariableOpReadVariableOp,lstm_cell_366_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_366/MatMulMatMulstrided_slice_2:output:0+lstm_cell_366/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_366/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_366_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_366/MatMul_1MatMulzeros:output:0-lstm_cell_366/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_366/addAddV2lstm_cell_366/MatMul:product:0 lstm_cell_366/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_366/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_366_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_366/BiasAddBiasAddlstm_cell_366/add:z:0,lstm_cell_366/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_366/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_366/splitSplit&lstm_cell_366/split/split_dim:output:0lstm_cell_366/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_366/SigmoidSigmoidlstm_cell_366/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_366/Sigmoid_1Sigmoidlstm_cell_366/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_366/mulMullstm_cell_366/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_366/ReluRelulstm_cell_366/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_366/mul_1Mullstm_cell_366/Sigmoid:y:0 lstm_cell_366/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_366/add_1AddV2lstm_cell_366/mul:z:0lstm_cell_366/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_366/Sigmoid_2Sigmoidlstm_cell_366/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_366/Relu_1Relulstm_cell_366/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_366/mul_2Mullstm_cell_366/Sigmoid_2:y:0"lstm_cell_366/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_366_matmul_readvariableop_resource.lstm_cell_366_matmul_1_readvariableop_resource-lstm_cell_366_biasadd_readvariableop_resource*
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
while_body_2230157*
condR
while_cond_2230156*K
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
NoOpNoOp%^lstm_cell_366/BiasAdd/ReadVariableOp$^lstm_cell_366/MatMul/ReadVariableOp&^lstm_cell_366/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_366/BiasAdd/ReadVariableOp$lstm_cell_366/BiasAdd/ReadVariableOp2J
#lstm_cell_366/MatMul/ReadVariableOp#lstm_cell_366/MatMul/ReadVariableOp2N
%lstm_cell_366/MatMul_1/ReadVariableOp%lstm_cell_366/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)sequential_76_lstm_228_while_cond_2226088J
Fsequential_76_lstm_228_while_sequential_76_lstm_228_while_loop_counterP
Lsequential_76_lstm_228_while_sequential_76_lstm_228_while_maximum_iterations,
(sequential_76_lstm_228_while_placeholder.
*sequential_76_lstm_228_while_placeholder_1.
*sequential_76_lstm_228_while_placeholder_2.
*sequential_76_lstm_228_while_placeholder_3L
Hsequential_76_lstm_228_while_less_sequential_76_lstm_228_strided_slice_1c
_sequential_76_lstm_228_while_sequential_76_lstm_228_while_cond_2226088___redundant_placeholder0c
_sequential_76_lstm_228_while_sequential_76_lstm_228_while_cond_2226088___redundant_placeholder1c
_sequential_76_lstm_228_while_sequential_76_lstm_228_while_cond_2226088___redundant_placeholder2c
_sequential_76_lstm_228_while_sequential_76_lstm_228_while_cond_2226088___redundant_placeholder3)
%sequential_76_lstm_228_while_identity
?
!sequential_76/lstm_228/while/LessLess(sequential_76_lstm_228_while_placeholderHsequential_76_lstm_228_while_less_sequential_76_lstm_228_strided_slice_1*
T0*
_output_shapes
: y
%sequential_76/lstm_228/while/IdentityIdentity%sequential_76/lstm_228/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_76_lstm_228_while_identity.sequential_76/lstm_228/while/Identity:output:0*(
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
E__inference_dense_76_layer_call_and_return_conditional_losses_2227974

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
while_body_2227872
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_368_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_368_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_368_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_368_matmul_readvariableop_resource:2(F
4while_lstm_cell_368_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_368_biasadd_readvariableop_resource:(??*while/lstm_cell_368/BiasAdd/ReadVariableOp?)while/lstm_cell_368/MatMul/ReadVariableOp?+while/lstm_cell_368/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_368/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_368_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_368/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_368/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_368/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_368_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_368/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_368/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_368/addAddV2$while/lstm_cell_368/MatMul:product:0&while/lstm_cell_368/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_368/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_368_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_368/BiasAddBiasAddwhile/lstm_cell_368/add:z:02while/lstm_cell_368/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_368/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_368/splitSplit,while/lstm_cell_368/split/split_dim:output:0$while/lstm_cell_368/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_368/SigmoidSigmoid"while/lstm_cell_368/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_368/Sigmoid_1Sigmoid"while/lstm_cell_368/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_368/mulMul!while/lstm_cell_368/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_368/ReluRelu"while/lstm_cell_368/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_368/mul_1Mulwhile/lstm_cell_368/Sigmoid:y:0&while/lstm_cell_368/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_368/add_1AddV2while/lstm_cell_368/mul:z:0while/lstm_cell_368/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_368/Sigmoid_2Sigmoid"while/lstm_cell_368/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_368/Relu_1Reluwhile/lstm_cell_368/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_368/mul_2Mul!while/lstm_cell_368/Sigmoid_2:y:0(while/lstm_cell_368/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_368/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_368/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_368/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_368/BiasAdd/ReadVariableOp*^while/lstm_cell_368/MatMul/ReadVariableOp,^while/lstm_cell_368/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_368_biasadd_readvariableop_resource5while_lstm_cell_368_biasadd_readvariableop_resource_0"n
4while_lstm_cell_368_matmul_1_readvariableop_resource6while_lstm_cell_368_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_368_matmul_readvariableop_resource4while_lstm_cell_368_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_368/BiasAdd/ReadVariableOp*while/lstm_cell_368/BiasAdd/ReadVariableOp2V
)while/lstm_cell_368/MatMul/ReadVariableOp)while/lstm_cell_368/MatMul/ReadVariableOp2Z
+while/lstm_cell_368/MatMul_1/ReadVariableOp+while/lstm_cell_368/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_229_layer_call_and_return_conditional_losses_2228337

inputs?
,lstm_cell_367_matmul_readvariableop_resource:	d?A
.lstm_cell_367_matmul_1_readvariableop_resource:	2?<
-lstm_cell_367_biasadd_readvariableop_resource:	?
identity??$lstm_cell_367/BiasAdd/ReadVariableOp?#lstm_cell_367/MatMul/ReadVariableOp?%lstm_cell_367/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_367/MatMul/ReadVariableOpReadVariableOp,lstm_cell_367_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_367/MatMulMatMulstrided_slice_2:output:0+lstm_cell_367/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_367/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_367_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_367/MatMul_1MatMulzeros:output:0-lstm_cell_367/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_367/addAddV2lstm_cell_367/MatMul:product:0 lstm_cell_367/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_367/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_367_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_367/BiasAddBiasAddlstm_cell_367/add:z:0,lstm_cell_367/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_367/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_367/splitSplit&lstm_cell_367/split/split_dim:output:0lstm_cell_367/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_367/SigmoidSigmoidlstm_cell_367/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_367/Sigmoid_1Sigmoidlstm_cell_367/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_367/mulMullstm_cell_367/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_367/ReluRelulstm_cell_367/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_367/mul_1Mullstm_cell_367/Sigmoid:y:0 lstm_cell_367/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_367/add_1AddV2lstm_cell_367/mul:z:0lstm_cell_367/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_367/Sigmoid_2Sigmoidlstm_cell_367/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_367/Relu_1Relulstm_cell_367/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_367/mul_2Mullstm_cell_367/Sigmoid_2:y:0"lstm_cell_367/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_367_matmul_readvariableop_resource.lstm_cell_367_matmul_1_readvariableop_resource-lstm_cell_367_biasadd_readvariableop_resource*
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
while_body_2228253*
condR
while_cond_2228252*K
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
NoOpNoOp%^lstm_cell_367/BiasAdd/ReadVariableOp$^lstm_cell_367/MatMul/ReadVariableOp&^lstm_cell_367/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_367/BiasAdd/ReadVariableOp$lstm_cell_367/BiasAdd/ReadVariableOp2J
#lstm_cell_367/MatMul/ReadVariableOp#lstm_cell_367/MatMul/ReadVariableOp2N
%lstm_cell_367/MatMul_1/ReadVariableOp%lstm_cell_367/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_230_layer_call_and_return_conditional_losses_2231473

inputs>
,lstm_cell_368_matmul_readvariableop_resource:2(@
.lstm_cell_368_matmul_1_readvariableop_resource:
(;
-lstm_cell_368_biasadd_readvariableop_resource:(
identity??$lstm_cell_368/BiasAdd/ReadVariableOp?#lstm_cell_368/MatMul/ReadVariableOp?%lstm_cell_368/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_368/MatMul/ReadVariableOpReadVariableOp,lstm_cell_368_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_368/MatMulMatMulstrided_slice_2:output:0+lstm_cell_368/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_368/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_368_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_368/MatMul_1MatMulzeros:output:0-lstm_cell_368/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_368/addAddV2lstm_cell_368/MatMul:product:0 lstm_cell_368/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_368/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_368_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_368/BiasAddBiasAddlstm_cell_368/add:z:0,lstm_cell_368/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_368/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_368/splitSplit&lstm_cell_368/split/split_dim:output:0lstm_cell_368/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_368/SigmoidSigmoidlstm_cell_368/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_368/Sigmoid_1Sigmoidlstm_cell_368/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_368/mulMullstm_cell_368/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_368/ReluRelulstm_cell_368/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_368/mul_1Mullstm_cell_368/Sigmoid:y:0 lstm_cell_368/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_368/add_1AddV2lstm_cell_368/mul:z:0lstm_cell_368/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_368/Sigmoid_2Sigmoidlstm_cell_368/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_368/Relu_1Relulstm_cell_368/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_368/mul_2Mullstm_cell_368/Sigmoid_2:y:0"lstm_cell_368/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_368_matmul_readvariableop_resource.lstm_cell_368_matmul_1_readvariableop_resource-lstm_cell_368_biasadd_readvariableop_resource*
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
while_body_2231389*
condR
while_cond_2231388*K
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
NoOpNoOp%^lstm_cell_368/BiasAdd/ReadVariableOp$^lstm_cell_368/MatMul/ReadVariableOp&^lstm_cell_368/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_368/BiasAdd/ReadVariableOp$lstm_cell_368/BiasAdd/ReadVariableOp2J
#lstm_cell_368/MatMul/ReadVariableOp#lstm_cell_368/MatMul/ReadVariableOp2N
%lstm_cell_368/MatMul_1/ReadVariableOp%lstm_cell_368/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_2231246
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_368_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_368_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_368_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_368_matmul_readvariableop_resource:2(F
4while_lstm_cell_368_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_368_biasadd_readvariableop_resource:(??*while/lstm_cell_368/BiasAdd/ReadVariableOp?)while/lstm_cell_368/MatMul/ReadVariableOp?+while/lstm_cell_368/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_368/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_368_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_368/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_368/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_368/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_368_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_368/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_368/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_368/addAddV2$while/lstm_cell_368/MatMul:product:0&while/lstm_cell_368/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_368/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_368_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_368/BiasAddBiasAddwhile/lstm_cell_368/add:z:02while/lstm_cell_368/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_368/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_368/splitSplit,while/lstm_cell_368/split/split_dim:output:0$while/lstm_cell_368/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_368/SigmoidSigmoid"while/lstm_cell_368/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_368/Sigmoid_1Sigmoid"while/lstm_cell_368/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_368/mulMul!while/lstm_cell_368/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_368/ReluRelu"while/lstm_cell_368/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_368/mul_1Mulwhile/lstm_cell_368/Sigmoid:y:0&while/lstm_cell_368/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_368/add_1AddV2while/lstm_cell_368/mul:z:0while/lstm_cell_368/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_368/Sigmoid_2Sigmoid"while/lstm_cell_368/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_368/Relu_1Reluwhile/lstm_cell_368/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_368/mul_2Mul!while/lstm_cell_368/Sigmoid_2:y:0(while/lstm_cell_368/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_368/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_368/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_368/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_368/BiasAdd/ReadVariableOp*^while/lstm_cell_368/MatMul/ReadVariableOp,^while/lstm_cell_368/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_368_biasadd_readvariableop_resource5while_lstm_cell_368_biasadd_readvariableop_resource_0"n
4while_lstm_cell_368_matmul_1_readvariableop_resource6while_lstm_cell_368_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_368_matmul_readvariableop_resource4while_lstm_cell_368_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_368/BiasAdd/ReadVariableOp*while/lstm_cell_368/BiasAdd/ReadVariableOp2V
)while/lstm_cell_368/MatMul/ReadVariableOp)while/lstm_cell_368/MatMul/ReadVariableOp2Z
+while/lstm_cell_368/MatMul_1/ReadVariableOp+while/lstm_cell_368/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2231389
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_368_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_368_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_368_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_368_matmul_readvariableop_resource:2(F
4while_lstm_cell_368_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_368_biasadd_readvariableop_resource:(??*while/lstm_cell_368/BiasAdd/ReadVariableOp?)while/lstm_cell_368/MatMul/ReadVariableOp?+while/lstm_cell_368/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_368/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_368_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_368/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_368/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_368/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_368_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_368/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_368/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_368/addAddV2$while/lstm_cell_368/MatMul:product:0&while/lstm_cell_368/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_368/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_368_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_368/BiasAddBiasAddwhile/lstm_cell_368/add:z:02while/lstm_cell_368/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_368/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_368/splitSplit,while/lstm_cell_368/split/split_dim:output:0$while/lstm_cell_368/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_368/SigmoidSigmoid"while/lstm_cell_368/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_368/Sigmoid_1Sigmoid"while/lstm_cell_368/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_368/mulMul!while/lstm_cell_368/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_368/ReluRelu"while/lstm_cell_368/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_368/mul_1Mulwhile/lstm_cell_368/Sigmoid:y:0&while/lstm_cell_368/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_368/add_1AddV2while/lstm_cell_368/mul:z:0while/lstm_cell_368/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_368/Sigmoid_2Sigmoid"while/lstm_cell_368/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_368/Relu_1Reluwhile/lstm_cell_368/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_368/mul_2Mul!while/lstm_cell_368/Sigmoid_2:y:0(while/lstm_cell_368/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_368/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_368/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_368/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_368/BiasAdd/ReadVariableOp*^while/lstm_cell_368/MatMul/ReadVariableOp,^while/lstm_cell_368/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_368_biasadd_readvariableop_resource5while_lstm_cell_368_biasadd_readvariableop_resource_0"n
4while_lstm_cell_368_matmul_1_readvariableop_resource6while_lstm_cell_368_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_368_matmul_readvariableop_resource4while_lstm_cell_368_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_368/BiasAdd/ReadVariableOp*while/lstm_cell_368/BiasAdd/ReadVariableOp2V
)while/lstm_cell_368/MatMul/ReadVariableOp)while/lstm_cell_368/MatMul/ReadVariableOp2Z
+while/lstm_cell_368/MatMul_1/ReadVariableOp+while/lstm_cell_368/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2230772
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2230772___redundant_placeholder05
1while_while_cond_2230772___redundant_placeholder15
1while_while_cond_2230772___redundant_placeholder25
1while_while_cond_2230772___redundant_placeholder3
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
E__inference_lstm_230_layer_call_and_return_conditional_losses_2231187
inputs_0>
,lstm_cell_368_matmul_readvariableop_resource:2(@
.lstm_cell_368_matmul_1_readvariableop_resource:
(;
-lstm_cell_368_biasadd_readvariableop_resource:(
identity??$lstm_cell_368/BiasAdd/ReadVariableOp?#lstm_cell_368/MatMul/ReadVariableOp?%lstm_cell_368/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_368/MatMul/ReadVariableOpReadVariableOp,lstm_cell_368_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_368/MatMulMatMulstrided_slice_2:output:0+lstm_cell_368/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_368/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_368_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_368/MatMul_1MatMulzeros:output:0-lstm_cell_368/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_368/addAddV2lstm_cell_368/MatMul:product:0 lstm_cell_368/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_368/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_368_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_368/BiasAddBiasAddlstm_cell_368/add:z:0,lstm_cell_368/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_368/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_368/splitSplit&lstm_cell_368/split/split_dim:output:0lstm_cell_368/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_368/SigmoidSigmoidlstm_cell_368/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_368/Sigmoid_1Sigmoidlstm_cell_368/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_368/mulMullstm_cell_368/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_368/ReluRelulstm_cell_368/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_368/mul_1Mullstm_cell_368/Sigmoid:y:0 lstm_cell_368/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_368/add_1AddV2lstm_cell_368/mul:z:0lstm_cell_368/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_368/Sigmoid_2Sigmoidlstm_cell_368/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_368/Relu_1Relulstm_cell_368/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_368/mul_2Mullstm_cell_368/Sigmoid_2:y:0"lstm_cell_368/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_368_matmul_readvariableop_resource.lstm_cell_368_matmul_1_readvariableop_resource-lstm_cell_368_biasadd_readvariableop_resource*
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
while_body_2231103*
condR
while_cond_2231102*K
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
NoOpNoOp%^lstm_cell_368/BiasAdd/ReadVariableOp$^lstm_cell_368/MatMul/ReadVariableOp&^lstm_cell_368/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_368/BiasAdd/ReadVariableOp$lstm_cell_368/BiasAdd/ReadVariableOp2J
#lstm_cell_368/MatMul/ReadVariableOp#lstm_cell_368/MatMul/ReadVariableOp2N
%lstm_cell_368/MatMul_1/ReadVariableOp%lstm_cell_368/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_368_layer_call_and_return_conditional_losses_2227224

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
while_cond_2228252
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2228252___redundant_placeholder05
1while_while_cond_2228252___redundant_placeholder15
1while_while_cond_2228252___redundant_placeholder25
1while_while_cond_2228252___redundant_placeholder3
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
E__inference_lstm_229_layer_call_and_return_conditional_losses_2227806

inputs?
,lstm_cell_367_matmul_readvariableop_resource:	d?A
.lstm_cell_367_matmul_1_readvariableop_resource:	2?<
-lstm_cell_367_biasadd_readvariableop_resource:	?
identity??$lstm_cell_367/BiasAdd/ReadVariableOp?#lstm_cell_367/MatMul/ReadVariableOp?%lstm_cell_367/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_367/MatMul/ReadVariableOpReadVariableOp,lstm_cell_367_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_367/MatMulMatMulstrided_slice_2:output:0+lstm_cell_367/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_367/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_367_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_367/MatMul_1MatMulzeros:output:0-lstm_cell_367/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_367/addAddV2lstm_cell_367/MatMul:product:0 lstm_cell_367/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_367/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_367_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_367/BiasAddBiasAddlstm_cell_367/add:z:0,lstm_cell_367/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_367/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_367/splitSplit&lstm_cell_367/split/split_dim:output:0lstm_cell_367/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_367/SigmoidSigmoidlstm_cell_367/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_367/Sigmoid_1Sigmoidlstm_cell_367/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_367/mulMullstm_cell_367/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_367/ReluRelulstm_cell_367/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_367/mul_1Mullstm_cell_367/Sigmoid:y:0 lstm_cell_367/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_367/add_1AddV2lstm_cell_367/mul:z:0lstm_cell_367/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_367/Sigmoid_2Sigmoidlstm_cell_367/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_367/Relu_1Relulstm_cell_367/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_367/mul_2Mullstm_cell_367/Sigmoid_2:y:0"lstm_cell_367/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_367_matmul_readvariableop_resource.lstm_cell_367_matmul_1_readvariableop_resource-lstm_cell_367_biasadd_readvariableop_resource*
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
while_body_2227722*
condR
while_cond_2227721*K
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
NoOpNoOp%^lstm_cell_367/BiasAdd/ReadVariableOp$^lstm_cell_367/MatMul/ReadVariableOp&^lstm_cell_367/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_367/BiasAdd/ReadVariableOp$lstm_cell_367/BiasAdd/ReadVariableOp2J
#lstm_cell_367/MatMul/ReadVariableOp#lstm_cell_367/MatMul/ReadVariableOp2N
%lstm_cell_367/MatMul_1/ReadVariableOp%lstm_cell_367/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?W
?
 __inference__traced_save_2231929
file_prefix.
*savev2_dense_76_kernel_read_readvariableop,
(savev2_dense_76_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_228_lstm_cell_228_kernel_read_readvariableopF
Bsavev2_lstm_228_lstm_cell_228_recurrent_kernel_read_readvariableop:
6savev2_lstm_228_lstm_cell_228_bias_read_readvariableop<
8savev2_lstm_229_lstm_cell_229_kernel_read_readvariableopF
Bsavev2_lstm_229_lstm_cell_229_recurrent_kernel_read_readvariableop:
6savev2_lstm_229_lstm_cell_229_bias_read_readvariableop<
8savev2_lstm_230_lstm_cell_230_kernel_read_readvariableopF
Bsavev2_lstm_230_lstm_cell_230_recurrent_kernel_read_readvariableop:
6savev2_lstm_230_lstm_cell_230_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_76_kernel_m_read_readvariableop3
/savev2_adam_dense_76_bias_m_read_readvariableopC
?savev2_adam_lstm_228_lstm_cell_228_kernel_m_read_readvariableopM
Isavev2_adam_lstm_228_lstm_cell_228_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_228_lstm_cell_228_bias_m_read_readvariableopC
?savev2_adam_lstm_229_lstm_cell_229_kernel_m_read_readvariableopM
Isavev2_adam_lstm_229_lstm_cell_229_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_229_lstm_cell_229_bias_m_read_readvariableopC
?savev2_adam_lstm_230_lstm_cell_230_kernel_m_read_readvariableopM
Isavev2_adam_lstm_230_lstm_cell_230_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_230_lstm_cell_230_bias_m_read_readvariableop5
1savev2_adam_dense_76_kernel_v_read_readvariableop3
/savev2_adam_dense_76_bias_v_read_readvariableopC
?savev2_adam_lstm_228_lstm_cell_228_kernel_v_read_readvariableopM
Isavev2_adam_lstm_228_lstm_cell_228_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_228_lstm_cell_228_bias_v_read_readvariableopC
?savev2_adam_lstm_229_lstm_cell_229_kernel_v_read_readvariableopM
Isavev2_adam_lstm_229_lstm_cell_229_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_229_lstm_cell_229_bias_v_read_readvariableopC
?savev2_adam_lstm_230_lstm_cell_230_kernel_v_read_readvariableopM
Isavev2_adam_lstm_230_lstm_cell_230_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_230_lstm_cell_230_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_76_kernel_read_readvariableop(savev2_dense_76_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_228_lstm_cell_228_kernel_read_readvariableopBsavev2_lstm_228_lstm_cell_228_recurrent_kernel_read_readvariableop6savev2_lstm_228_lstm_cell_228_bias_read_readvariableop8savev2_lstm_229_lstm_cell_229_kernel_read_readvariableopBsavev2_lstm_229_lstm_cell_229_recurrent_kernel_read_readvariableop6savev2_lstm_229_lstm_cell_229_bias_read_readvariableop8savev2_lstm_230_lstm_cell_230_kernel_read_readvariableopBsavev2_lstm_230_lstm_cell_230_recurrent_kernel_read_readvariableop6savev2_lstm_230_lstm_cell_230_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_76_kernel_m_read_readvariableop/savev2_adam_dense_76_bias_m_read_readvariableop?savev2_adam_lstm_228_lstm_cell_228_kernel_m_read_readvariableopIsavev2_adam_lstm_228_lstm_cell_228_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_228_lstm_cell_228_bias_m_read_readvariableop?savev2_adam_lstm_229_lstm_cell_229_kernel_m_read_readvariableopIsavev2_adam_lstm_229_lstm_cell_229_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_229_lstm_cell_229_bias_m_read_readvariableop?savev2_adam_lstm_230_lstm_cell_230_kernel_m_read_readvariableopIsavev2_adam_lstm_230_lstm_cell_230_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_230_lstm_cell_230_bias_m_read_readvariableop1savev2_adam_dense_76_kernel_v_read_readvariableop/savev2_adam_dense_76_bias_v_read_readvariableop?savev2_adam_lstm_228_lstm_cell_228_kernel_v_read_readvariableopIsavev2_adam_lstm_228_lstm_cell_228_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_228_lstm_cell_228_bias_v_read_readvariableop?savev2_adam_lstm_229_lstm_cell_229_kernel_v_read_readvariableopIsavev2_adam_lstm_229_lstm_cell_229_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_229_lstm_cell_229_bias_v_read_readvariableop?savev2_adam_lstm_230_lstm_cell_230_kernel_v_read_readvariableopIsavev2_adam_lstm_230_lstm_cell_230_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_230_lstm_cell_230_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
E__inference_lstm_228_layer_call_and_return_conditional_losses_2228502

inputs?
,lstm_cell_366_matmul_readvariableop_resource:	?A
.lstm_cell_366_matmul_1_readvariableop_resource:	d?<
-lstm_cell_366_biasadd_readvariableop_resource:	?
identity??$lstm_cell_366/BiasAdd/ReadVariableOp?#lstm_cell_366/MatMul/ReadVariableOp?%lstm_cell_366/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_366/MatMul/ReadVariableOpReadVariableOp,lstm_cell_366_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_366/MatMulMatMulstrided_slice_2:output:0+lstm_cell_366/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_366/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_366_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_366/MatMul_1MatMulzeros:output:0-lstm_cell_366/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_366/addAddV2lstm_cell_366/MatMul:product:0 lstm_cell_366/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_366/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_366_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_366/BiasAddBiasAddlstm_cell_366/add:z:0,lstm_cell_366/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_366/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_366/splitSplit&lstm_cell_366/split/split_dim:output:0lstm_cell_366/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_366/SigmoidSigmoidlstm_cell_366/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_366/Sigmoid_1Sigmoidlstm_cell_366/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_366/mulMullstm_cell_366/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_366/ReluRelulstm_cell_366/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_366/mul_1Mullstm_cell_366/Sigmoid:y:0 lstm_cell_366/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_366/add_1AddV2lstm_cell_366/mul:z:0lstm_cell_366/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_366/Sigmoid_2Sigmoidlstm_cell_366/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_366/Relu_1Relulstm_cell_366/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_366/mul_2Mullstm_cell_366/Sigmoid_2:y:0"lstm_cell_366/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_366_matmul_readvariableop_resource.lstm_cell_366_matmul_1_readvariableop_resource-lstm_cell_366_biasadd_readvariableop_resource*
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
while_body_2228418*
condR
while_cond_2228417*K
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
NoOpNoOp%^lstm_cell_366/BiasAdd/ReadVariableOp$^lstm_cell_366/MatMul/ReadVariableOp&^lstm_cell_366/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_366/BiasAdd/ReadVariableOp$lstm_cell_366/BiasAdd/ReadVariableOp2J
#lstm_cell_366/MatMul/ReadVariableOp#lstm_cell_366/MatMul/ReadVariableOp2N
%lstm_cell_366/MatMul_1/ReadVariableOp%lstm_cell_366/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_228_while_body_2229257.
*lstm_228_while_lstm_228_while_loop_counter4
0lstm_228_while_lstm_228_while_maximum_iterations
lstm_228_while_placeholder 
lstm_228_while_placeholder_1 
lstm_228_while_placeholder_2 
lstm_228_while_placeholder_3-
)lstm_228_while_lstm_228_strided_slice_1_0i
elstm_228_while_tensorarrayv2read_tensorlistgetitem_lstm_228_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_228_while_lstm_cell_366_matmul_readvariableop_resource_0:	?R
?lstm_228_while_lstm_cell_366_matmul_1_readvariableop_resource_0:	d?M
>lstm_228_while_lstm_cell_366_biasadd_readvariableop_resource_0:	?
lstm_228_while_identity
lstm_228_while_identity_1
lstm_228_while_identity_2
lstm_228_while_identity_3
lstm_228_while_identity_4
lstm_228_while_identity_5+
'lstm_228_while_lstm_228_strided_slice_1g
clstm_228_while_tensorarrayv2read_tensorlistgetitem_lstm_228_tensorarrayunstack_tensorlistfromtensorN
;lstm_228_while_lstm_cell_366_matmul_readvariableop_resource:	?P
=lstm_228_while_lstm_cell_366_matmul_1_readvariableop_resource:	d?K
<lstm_228_while_lstm_cell_366_biasadd_readvariableop_resource:	???3lstm_228/while/lstm_cell_366/BiasAdd/ReadVariableOp?2lstm_228/while/lstm_cell_366/MatMul/ReadVariableOp?4lstm_228/while/lstm_cell_366/MatMul_1/ReadVariableOp?
@lstm_228/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_228/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_228_while_tensorarrayv2read_tensorlistgetitem_lstm_228_tensorarrayunstack_tensorlistfromtensor_0lstm_228_while_placeholderIlstm_228/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_228/while/lstm_cell_366/MatMul/ReadVariableOpReadVariableOp=lstm_228_while_lstm_cell_366_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_228/while/lstm_cell_366/MatMulMatMul9lstm_228/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_228/while/lstm_cell_366/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_228/while/lstm_cell_366/MatMul_1/ReadVariableOpReadVariableOp?lstm_228_while_lstm_cell_366_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_228/while/lstm_cell_366/MatMul_1MatMullstm_228_while_placeholder_2<lstm_228/while/lstm_cell_366/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_228/while/lstm_cell_366/addAddV2-lstm_228/while/lstm_cell_366/MatMul:product:0/lstm_228/while/lstm_cell_366/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_228/while/lstm_cell_366/BiasAdd/ReadVariableOpReadVariableOp>lstm_228_while_lstm_cell_366_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_228/while/lstm_cell_366/BiasAddBiasAdd$lstm_228/while/lstm_cell_366/add:z:0;lstm_228/while/lstm_cell_366/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_228/while/lstm_cell_366/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_228/while/lstm_cell_366/splitSplit5lstm_228/while/lstm_cell_366/split/split_dim:output:0-lstm_228/while/lstm_cell_366/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_228/while/lstm_cell_366/SigmoidSigmoid+lstm_228/while/lstm_cell_366/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_228/while/lstm_cell_366/Sigmoid_1Sigmoid+lstm_228/while/lstm_cell_366/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_228/while/lstm_cell_366/mulMul*lstm_228/while/lstm_cell_366/Sigmoid_1:y:0lstm_228_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_228/while/lstm_cell_366/ReluRelu+lstm_228/while/lstm_cell_366/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_228/while/lstm_cell_366/mul_1Mul(lstm_228/while/lstm_cell_366/Sigmoid:y:0/lstm_228/while/lstm_cell_366/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_228/while/lstm_cell_366/add_1AddV2$lstm_228/while/lstm_cell_366/mul:z:0&lstm_228/while/lstm_cell_366/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_228/while/lstm_cell_366/Sigmoid_2Sigmoid+lstm_228/while/lstm_cell_366/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_228/while/lstm_cell_366/Relu_1Relu&lstm_228/while/lstm_cell_366/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_228/while/lstm_cell_366/mul_2Mul*lstm_228/while/lstm_cell_366/Sigmoid_2:y:01lstm_228/while/lstm_cell_366/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_228/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_228_while_placeholder_1lstm_228_while_placeholder&lstm_228/while/lstm_cell_366/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_228/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_228/while/addAddV2lstm_228_while_placeholderlstm_228/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_228/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_228/while/add_1AddV2*lstm_228_while_lstm_228_while_loop_counterlstm_228/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_228/while/IdentityIdentitylstm_228/while/add_1:z:0^lstm_228/while/NoOp*
T0*
_output_shapes
: ?
lstm_228/while/Identity_1Identity0lstm_228_while_lstm_228_while_maximum_iterations^lstm_228/while/NoOp*
T0*
_output_shapes
: t
lstm_228/while/Identity_2Identitylstm_228/while/add:z:0^lstm_228/while/NoOp*
T0*
_output_shapes
: ?
lstm_228/while/Identity_3IdentityClstm_228/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_228/while/NoOp*
T0*
_output_shapes
: ?
lstm_228/while/Identity_4Identity&lstm_228/while/lstm_cell_366/mul_2:z:0^lstm_228/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_228/while/Identity_5Identity&lstm_228/while/lstm_cell_366/add_1:z:0^lstm_228/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_228/while/NoOpNoOp4^lstm_228/while/lstm_cell_366/BiasAdd/ReadVariableOp3^lstm_228/while/lstm_cell_366/MatMul/ReadVariableOp5^lstm_228/while/lstm_cell_366/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_228_while_identity lstm_228/while/Identity:output:0"?
lstm_228_while_identity_1"lstm_228/while/Identity_1:output:0"?
lstm_228_while_identity_2"lstm_228/while/Identity_2:output:0"?
lstm_228_while_identity_3"lstm_228/while/Identity_3:output:0"?
lstm_228_while_identity_4"lstm_228/while/Identity_4:output:0"?
lstm_228_while_identity_5"lstm_228/while/Identity_5:output:0"T
'lstm_228_while_lstm_228_strided_slice_1)lstm_228_while_lstm_228_strided_slice_1_0"~
<lstm_228_while_lstm_cell_366_biasadd_readvariableop_resource>lstm_228_while_lstm_cell_366_biasadd_readvariableop_resource_0"?
=lstm_228_while_lstm_cell_366_matmul_1_readvariableop_resource?lstm_228_while_lstm_cell_366_matmul_1_readvariableop_resource_0"|
;lstm_228_while_lstm_cell_366_matmul_readvariableop_resource=lstm_228_while_lstm_cell_366_matmul_readvariableop_resource_0"?
clstm_228_while_tensorarrayv2read_tensorlistgetitem_lstm_228_tensorarrayunstack_tensorlistfromtensorelstm_228_while_tensorarrayv2read_tensorlistgetitem_lstm_228_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_228/while/lstm_cell_366/BiasAdd/ReadVariableOp3lstm_228/while/lstm_cell_366/BiasAdd/ReadVariableOp2h
2lstm_228/while/lstm_cell_366/MatMul/ReadVariableOp2lstm_228/while/lstm_cell_366/MatMul/ReadVariableOp2l
4lstm_228/while/lstm_cell_366/MatMul_1/ReadVariableOp4lstm_228/while/lstm_cell_366/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_368_layer_call_fn_2231705

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
J__inference_lstm_cell_368_layer_call_and_return_conditional_losses_2227224o
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
while_cond_2230486
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2230486___redundant_placeholder05
1while_while_cond_2230486___redundant_placeholder15
1while_while_cond_2230486___redundant_placeholder25
1while_while_cond_2230486___redundant_placeholder3
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
while_cond_2231102
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2231102___redundant_placeholder05
1while_while_cond_2231102___redundant_placeholder15
1while_while_cond_2231102___redundant_placeholder25
1while_while_cond_2231102___redundant_placeholder3
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
*__inference_lstm_230_layer_call_fn_2230879
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
E__inference_lstm_230_layer_call_and_return_conditional_losses_2227498o
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
while_cond_2226887
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2226887___redundant_placeholder05
1while_while_cond_2226887___redundant_placeholder15
1while_while_cond_2226887___redundant_placeholder25
1while_while_cond_2226887___redundant_placeholder3
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
while_body_2227238
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_368_2227262_0:2(/
while_lstm_cell_368_2227264_0:
(+
while_lstm_cell_368_2227266_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_368_2227262:2(-
while_lstm_cell_368_2227264:
()
while_lstm_cell_368_2227266:(??+while/lstm_cell_368/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_368/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_368_2227262_0while_lstm_cell_368_2227264_0while_lstm_cell_368_2227266_0*
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
J__inference_lstm_cell_368_layer_call_and_return_conditional_losses_2227224?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_368/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_368/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_368/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_368/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_368_2227262while_lstm_cell_368_2227262_0"<
while_lstm_cell_368_2227264while_lstm_cell_368_2227264_0"<
while_lstm_cell_368_2227266while_lstm_cell_368_2227266_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_368/StatefulPartitionedCall+while/lstm_cell_368/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_229_layer_call_fn_2230285

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
E__inference_lstm_229_layer_call_and_return_conditional_losses_2228337s
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

?
/__inference_sequential_76_layer_call_fn_2228744

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
J__inference_sequential_76_layer_call_and_return_conditional_losses_2227981o
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
?
?
J__inference_sequential_76_layer_call_and_return_conditional_losses_2228682
lstm_228_input#
lstm_228_2228655:	?#
lstm_228_2228657:	d?
lstm_228_2228659:	?#
lstm_229_2228662:	d?#
lstm_229_2228664:	2?
lstm_229_2228666:	?"
lstm_230_2228669:2("
lstm_230_2228671:
(
lstm_230_2228673:("
dense_76_2228676:

dense_76_2228678:
identity?? dense_76/StatefulPartitionedCall? lstm_228/StatefulPartitionedCall? lstm_229/StatefulPartitionedCall? lstm_230/StatefulPartitionedCall?
 lstm_228/StatefulPartitionedCallStatefulPartitionedCalllstm_228_inputlstm_228_2228655lstm_228_2228657lstm_228_2228659*
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
E__inference_lstm_228_layer_call_and_return_conditional_losses_2228502?
 lstm_229/StatefulPartitionedCallStatefulPartitionedCall)lstm_228/StatefulPartitionedCall:output:0lstm_229_2228662lstm_229_2228664lstm_229_2228666*
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
E__inference_lstm_229_layer_call_and_return_conditional_losses_2228337?
 lstm_230/StatefulPartitionedCallStatefulPartitionedCall)lstm_229/StatefulPartitionedCall:output:0lstm_230_2228669lstm_230_2228671lstm_230_2228673*
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
E__inference_lstm_230_layer_call_and_return_conditional_losses_2228172?
 dense_76/StatefulPartitionedCallStatefulPartitionedCall)lstm_230/StatefulPartitionedCall:output:0dense_76_2228676dense_76_2228678*
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
E__inference_dense_76_layer_call_and_return_conditional_losses_2227974x
IdentityIdentity)dense_76/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_76/StatefulPartitionedCall!^lstm_228/StatefulPartitionedCall!^lstm_229/StatefulPartitionedCall!^lstm_230/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_76/StatefulPartitionedCall dense_76/StatefulPartitionedCall2D
 lstm_228/StatefulPartitionedCall lstm_228/StatefulPartitionedCall2D
 lstm_229/StatefulPartitionedCall lstm_229/StatefulPartitionedCall2D
 lstm_230/StatefulPartitionedCall lstm_230/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_228_input
?
?
*__inference_lstm_228_layer_call_fn_2229647
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
E__inference_lstm_228_layer_call_and_return_conditional_losses_2226798|
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
E__inference_lstm_229_layer_call_and_return_conditional_losses_2226957

inputs(
lstm_cell_367_2226875:	d?(
lstm_cell_367_2226877:	2?$
lstm_cell_367_2226879:	?
identity??%lstm_cell_367/StatefulPartitionedCall?while;
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
%lstm_cell_367/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_367_2226875lstm_cell_367_2226877lstm_cell_367_2226879*
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
J__inference_lstm_cell_367_layer_call_and_return_conditional_losses_2226874n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_367_2226875lstm_cell_367_2226877lstm_cell_367_2226879*
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
while_body_2226888*
condR
while_cond_2226887*K
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
NoOpNoOp&^lstm_cell_367/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_367/StatefulPartitionedCall%lstm_cell_367/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?K
?
E__inference_lstm_229_layer_call_and_return_conditional_losses_2230428
inputs_0?
,lstm_cell_367_matmul_readvariableop_resource:	d?A
.lstm_cell_367_matmul_1_readvariableop_resource:	2?<
-lstm_cell_367_biasadd_readvariableop_resource:	?
identity??$lstm_cell_367/BiasAdd/ReadVariableOp?#lstm_cell_367/MatMul/ReadVariableOp?%lstm_cell_367/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_367/MatMul/ReadVariableOpReadVariableOp,lstm_cell_367_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_367/MatMulMatMulstrided_slice_2:output:0+lstm_cell_367/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_367/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_367_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_367/MatMul_1MatMulzeros:output:0-lstm_cell_367/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_367/addAddV2lstm_cell_367/MatMul:product:0 lstm_cell_367/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_367/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_367_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_367/BiasAddBiasAddlstm_cell_367/add:z:0,lstm_cell_367/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_367/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_367/splitSplit&lstm_cell_367/split/split_dim:output:0lstm_cell_367/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_367/SigmoidSigmoidlstm_cell_367/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_367/Sigmoid_1Sigmoidlstm_cell_367/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_367/mulMullstm_cell_367/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_367/ReluRelulstm_cell_367/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_367/mul_1Mullstm_cell_367/Sigmoid:y:0 lstm_cell_367/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_367/add_1AddV2lstm_cell_367/mul:z:0lstm_cell_367/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_367/Sigmoid_2Sigmoidlstm_cell_367/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_367/Relu_1Relulstm_cell_367/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_367/mul_2Mullstm_cell_367/Sigmoid_2:y:0"lstm_cell_367/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_367_matmul_readvariableop_resource.lstm_cell_367_matmul_1_readvariableop_resource-lstm_cell_367_biasadd_readvariableop_resource*
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
while_body_2230344*
condR
while_cond_2230343*K
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
NoOpNoOp%^lstm_cell_367/BiasAdd/ReadVariableOp$^lstm_cell_367/MatMul/ReadVariableOp&^lstm_cell_367/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_367/BiasAdd/ReadVariableOp$lstm_cell_367/BiasAdd/ReadVariableOp2J
#lstm_cell_367/MatMul/ReadVariableOp#lstm_cell_367/MatMul/ReadVariableOp2N
%lstm_cell_367/MatMul_1/ReadVariableOp%lstm_cell_367/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
)sequential_76_lstm_229_while_cond_2226227J
Fsequential_76_lstm_229_while_sequential_76_lstm_229_while_loop_counterP
Lsequential_76_lstm_229_while_sequential_76_lstm_229_while_maximum_iterations,
(sequential_76_lstm_229_while_placeholder.
*sequential_76_lstm_229_while_placeholder_1.
*sequential_76_lstm_229_while_placeholder_2.
*sequential_76_lstm_229_while_placeholder_3L
Hsequential_76_lstm_229_while_less_sequential_76_lstm_229_strided_slice_1c
_sequential_76_lstm_229_while_sequential_76_lstm_229_while_cond_2226227___redundant_placeholder0c
_sequential_76_lstm_229_while_sequential_76_lstm_229_while_cond_2226227___redundant_placeholder1c
_sequential_76_lstm_229_while_sequential_76_lstm_229_while_cond_2226227___redundant_placeholder2c
_sequential_76_lstm_229_while_sequential_76_lstm_229_while_cond_2226227___redundant_placeholder3)
%sequential_76_lstm_229_while_identity
?
!sequential_76/lstm_229/while/LessLess(sequential_76_lstm_229_while_placeholderHsequential_76_lstm_229_while_less_sequential_76_lstm_229_strided_slice_1*
T0*
_output_shapes
: y
%sequential_76/lstm_229/while/IdentityIdentity%sequential_76/lstm_229/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_76_lstm_229_while_identity.sequential_76/lstm_229/while/Identity:output:0*(
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
while_cond_2227871
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2227871___redundant_placeholder05
1while_while_cond_2227871___redundant_placeholder15
1while_while_cond_2227871___redundant_placeholder25
1while_while_cond_2227871___redundant_placeholder3
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
while_cond_2227078
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2227078___redundant_placeholder05
1while_while_cond_2227078___redundant_placeholder15
1while_while_cond_2227078___redundant_placeholder25
1while_while_cond_2227078___redundant_placeholder3
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
while_cond_2228087
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2228087___redundant_placeholder05
1while_while_cond_2228087___redundant_placeholder15
1while_while_cond_2228087___redundant_placeholder25
1while_while_cond_2228087___redundant_placeholder3
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
J__inference_lstm_cell_366_layer_call_and_return_conditional_losses_2231590

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
/__inference_lstm_cell_368_layer_call_fn_2231722

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
J__inference_lstm_cell_368_layer_call_and_return_conditional_losses_2227370o
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
??
?
"__inference__wrapped_model_2226457
lstm_228_inputV
Csequential_76_lstm_228_lstm_cell_366_matmul_readvariableop_resource:	?X
Esequential_76_lstm_228_lstm_cell_366_matmul_1_readvariableop_resource:	d?S
Dsequential_76_lstm_228_lstm_cell_366_biasadd_readvariableop_resource:	?V
Csequential_76_lstm_229_lstm_cell_367_matmul_readvariableop_resource:	d?X
Esequential_76_lstm_229_lstm_cell_367_matmul_1_readvariableop_resource:	2?S
Dsequential_76_lstm_229_lstm_cell_367_biasadd_readvariableop_resource:	?U
Csequential_76_lstm_230_lstm_cell_368_matmul_readvariableop_resource:2(W
Esequential_76_lstm_230_lstm_cell_368_matmul_1_readvariableop_resource:
(R
Dsequential_76_lstm_230_lstm_cell_368_biasadd_readvariableop_resource:(G
5sequential_76_dense_76_matmul_readvariableop_resource:
D
6sequential_76_dense_76_biasadd_readvariableop_resource:
identity??-sequential_76/dense_76/BiasAdd/ReadVariableOp?,sequential_76/dense_76/MatMul/ReadVariableOp?;sequential_76/lstm_228/lstm_cell_366/BiasAdd/ReadVariableOp?:sequential_76/lstm_228/lstm_cell_366/MatMul/ReadVariableOp?<sequential_76/lstm_228/lstm_cell_366/MatMul_1/ReadVariableOp?sequential_76/lstm_228/while?;sequential_76/lstm_229/lstm_cell_367/BiasAdd/ReadVariableOp?:sequential_76/lstm_229/lstm_cell_367/MatMul/ReadVariableOp?<sequential_76/lstm_229/lstm_cell_367/MatMul_1/ReadVariableOp?sequential_76/lstm_229/while?;sequential_76/lstm_230/lstm_cell_368/BiasAdd/ReadVariableOp?:sequential_76/lstm_230/lstm_cell_368/MatMul/ReadVariableOp?<sequential_76/lstm_230/lstm_cell_368/MatMul_1/ReadVariableOp?sequential_76/lstm_230/whileZ
sequential_76/lstm_228/ShapeShapelstm_228_input*
T0*
_output_shapes
:t
*sequential_76/lstm_228/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_76/lstm_228/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_76/lstm_228/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_76/lstm_228/strided_sliceStridedSlice%sequential_76/lstm_228/Shape:output:03sequential_76/lstm_228/strided_slice/stack:output:05sequential_76/lstm_228/strided_slice/stack_1:output:05sequential_76/lstm_228/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_76/lstm_228/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
#sequential_76/lstm_228/zeros/packedPack-sequential_76/lstm_228/strided_slice:output:0.sequential_76/lstm_228/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_76/lstm_228/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_76/lstm_228/zerosFill,sequential_76/lstm_228/zeros/packed:output:0+sequential_76/lstm_228/zeros/Const:output:0*
T0*'
_output_shapes
:?????????di
'sequential_76/lstm_228/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
%sequential_76/lstm_228/zeros_1/packedPack-sequential_76/lstm_228/strided_slice:output:00sequential_76/lstm_228/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_76/lstm_228/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_76/lstm_228/zeros_1Fill.sequential_76/lstm_228/zeros_1/packed:output:0-sequential_76/lstm_228/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dz
%sequential_76/lstm_228/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_76/lstm_228/transpose	Transposelstm_228_input.sequential_76/lstm_228/transpose/perm:output:0*
T0*+
_output_shapes
:?????????r
sequential_76/lstm_228/Shape_1Shape$sequential_76/lstm_228/transpose:y:0*
T0*
_output_shapes
:v
,sequential_76/lstm_228/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_76/lstm_228/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_76/lstm_228/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_76/lstm_228/strided_slice_1StridedSlice'sequential_76/lstm_228/Shape_1:output:05sequential_76/lstm_228/strided_slice_1/stack:output:07sequential_76/lstm_228/strided_slice_1/stack_1:output:07sequential_76/lstm_228/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_76/lstm_228/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_76/lstm_228/TensorArrayV2TensorListReserve;sequential_76/lstm_228/TensorArrayV2/element_shape:output:0/sequential_76/lstm_228/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_76/lstm_228/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
>sequential_76/lstm_228/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_76/lstm_228/transpose:y:0Usequential_76/lstm_228/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_76/lstm_228/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_76/lstm_228/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_76/lstm_228/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_76/lstm_228/strided_slice_2StridedSlice$sequential_76/lstm_228/transpose:y:05sequential_76/lstm_228/strided_slice_2/stack:output:07sequential_76/lstm_228/strided_slice_2/stack_1:output:07sequential_76/lstm_228/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
:sequential_76/lstm_228/lstm_cell_366/MatMul/ReadVariableOpReadVariableOpCsequential_76_lstm_228_lstm_cell_366_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
+sequential_76/lstm_228/lstm_cell_366/MatMulMatMul/sequential_76/lstm_228/strided_slice_2:output:0Bsequential_76/lstm_228/lstm_cell_366/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_76/lstm_228/lstm_cell_366/MatMul_1/ReadVariableOpReadVariableOpEsequential_76_lstm_228_lstm_cell_366_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
-sequential_76/lstm_228/lstm_cell_366/MatMul_1MatMul%sequential_76/lstm_228/zeros:output:0Dsequential_76/lstm_228/lstm_cell_366/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_76/lstm_228/lstm_cell_366/addAddV25sequential_76/lstm_228/lstm_cell_366/MatMul:product:07sequential_76/lstm_228/lstm_cell_366/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_76/lstm_228/lstm_cell_366/BiasAdd/ReadVariableOpReadVariableOpDsequential_76_lstm_228_lstm_cell_366_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_76/lstm_228/lstm_cell_366/BiasAddBiasAdd,sequential_76/lstm_228/lstm_cell_366/add:z:0Csequential_76/lstm_228/lstm_cell_366/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_76/lstm_228/lstm_cell_366/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_76/lstm_228/lstm_cell_366/splitSplit=sequential_76/lstm_228/lstm_cell_366/split/split_dim:output:05sequential_76/lstm_228/lstm_cell_366/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
,sequential_76/lstm_228/lstm_cell_366/SigmoidSigmoid3sequential_76/lstm_228/lstm_cell_366/split:output:0*
T0*'
_output_shapes
:?????????d?
.sequential_76/lstm_228/lstm_cell_366/Sigmoid_1Sigmoid3sequential_76/lstm_228/lstm_cell_366/split:output:1*
T0*'
_output_shapes
:?????????d?
(sequential_76/lstm_228/lstm_cell_366/mulMul2sequential_76/lstm_228/lstm_cell_366/Sigmoid_1:y:0'sequential_76/lstm_228/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
)sequential_76/lstm_228/lstm_cell_366/ReluRelu3sequential_76/lstm_228/lstm_cell_366/split:output:2*
T0*'
_output_shapes
:?????????d?
*sequential_76/lstm_228/lstm_cell_366/mul_1Mul0sequential_76/lstm_228/lstm_cell_366/Sigmoid:y:07sequential_76/lstm_228/lstm_cell_366/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
*sequential_76/lstm_228/lstm_cell_366/add_1AddV2,sequential_76/lstm_228/lstm_cell_366/mul:z:0.sequential_76/lstm_228/lstm_cell_366/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
.sequential_76/lstm_228/lstm_cell_366/Sigmoid_2Sigmoid3sequential_76/lstm_228/lstm_cell_366/split:output:3*
T0*'
_output_shapes
:?????????d?
+sequential_76/lstm_228/lstm_cell_366/Relu_1Relu.sequential_76/lstm_228/lstm_cell_366/add_1:z:0*
T0*'
_output_shapes
:?????????d?
*sequential_76/lstm_228/lstm_cell_366/mul_2Mul2sequential_76/lstm_228/lstm_cell_366/Sigmoid_2:y:09sequential_76/lstm_228/lstm_cell_366/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
4sequential_76/lstm_228/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
&sequential_76/lstm_228/TensorArrayV2_1TensorListReserve=sequential_76/lstm_228/TensorArrayV2_1/element_shape:output:0/sequential_76/lstm_228/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_76/lstm_228/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_76/lstm_228/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_76/lstm_228/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_76/lstm_228/whileWhile2sequential_76/lstm_228/while/loop_counter:output:08sequential_76/lstm_228/while/maximum_iterations:output:0$sequential_76/lstm_228/time:output:0/sequential_76/lstm_228/TensorArrayV2_1:handle:0%sequential_76/lstm_228/zeros:output:0'sequential_76/lstm_228/zeros_1:output:0/sequential_76/lstm_228/strided_slice_1:output:0Nsequential_76/lstm_228/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_76_lstm_228_lstm_cell_366_matmul_readvariableop_resourceEsequential_76_lstm_228_lstm_cell_366_matmul_1_readvariableop_resourceDsequential_76_lstm_228_lstm_cell_366_biasadd_readvariableop_resource*
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
)sequential_76_lstm_228_while_body_2226089*5
cond-R+
)sequential_76_lstm_228_while_cond_2226088*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Gsequential_76/lstm_228/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
9sequential_76/lstm_228/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_76/lstm_228/while:output:3Psequential_76/lstm_228/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0
,sequential_76/lstm_228/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_76/lstm_228/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_76/lstm_228/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_76/lstm_228/strided_slice_3StridedSliceBsequential_76/lstm_228/TensorArrayV2Stack/TensorListStack:tensor:05sequential_76/lstm_228/strided_slice_3/stack:output:07sequential_76/lstm_228/strided_slice_3/stack_1:output:07sequential_76/lstm_228/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask|
'sequential_76/lstm_228/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_76/lstm_228/transpose_1	TransposeBsequential_76/lstm_228/TensorArrayV2Stack/TensorListStack:tensor:00sequential_76/lstm_228/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_76/lstm_228/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_76/lstm_229/ShapeShape&sequential_76/lstm_228/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_76/lstm_229/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_76/lstm_229/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_76/lstm_229/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_76/lstm_229/strided_sliceStridedSlice%sequential_76/lstm_229/Shape:output:03sequential_76/lstm_229/strided_slice/stack:output:05sequential_76/lstm_229/strided_slice/stack_1:output:05sequential_76/lstm_229/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_76/lstm_229/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
#sequential_76/lstm_229/zeros/packedPack-sequential_76/lstm_229/strided_slice:output:0.sequential_76/lstm_229/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_76/lstm_229/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_76/lstm_229/zerosFill,sequential_76/lstm_229/zeros/packed:output:0+sequential_76/lstm_229/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2i
'sequential_76/lstm_229/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
%sequential_76/lstm_229/zeros_1/packedPack-sequential_76/lstm_229/strided_slice:output:00sequential_76/lstm_229/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_76/lstm_229/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_76/lstm_229/zeros_1Fill.sequential_76/lstm_229/zeros_1/packed:output:0-sequential_76/lstm_229/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2z
%sequential_76/lstm_229/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_76/lstm_229/transpose	Transpose&sequential_76/lstm_228/transpose_1:y:0.sequential_76/lstm_229/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_76/lstm_229/Shape_1Shape$sequential_76/lstm_229/transpose:y:0*
T0*
_output_shapes
:v
,sequential_76/lstm_229/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_76/lstm_229/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_76/lstm_229/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_76/lstm_229/strided_slice_1StridedSlice'sequential_76/lstm_229/Shape_1:output:05sequential_76/lstm_229/strided_slice_1/stack:output:07sequential_76/lstm_229/strided_slice_1/stack_1:output:07sequential_76/lstm_229/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_76/lstm_229/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_76/lstm_229/TensorArrayV2TensorListReserve;sequential_76/lstm_229/TensorArrayV2/element_shape:output:0/sequential_76/lstm_229/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_76/lstm_229/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
>sequential_76/lstm_229/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_76/lstm_229/transpose:y:0Usequential_76/lstm_229/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_76/lstm_229/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_76/lstm_229/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_76/lstm_229/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_76/lstm_229/strided_slice_2StridedSlice$sequential_76/lstm_229/transpose:y:05sequential_76/lstm_229/strided_slice_2/stack:output:07sequential_76/lstm_229/strided_slice_2/stack_1:output:07sequential_76/lstm_229/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
:sequential_76/lstm_229/lstm_cell_367/MatMul/ReadVariableOpReadVariableOpCsequential_76_lstm_229_lstm_cell_367_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
+sequential_76/lstm_229/lstm_cell_367/MatMulMatMul/sequential_76/lstm_229/strided_slice_2:output:0Bsequential_76/lstm_229/lstm_cell_367/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_76/lstm_229/lstm_cell_367/MatMul_1/ReadVariableOpReadVariableOpEsequential_76_lstm_229_lstm_cell_367_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
-sequential_76/lstm_229/lstm_cell_367/MatMul_1MatMul%sequential_76/lstm_229/zeros:output:0Dsequential_76/lstm_229/lstm_cell_367/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_76/lstm_229/lstm_cell_367/addAddV25sequential_76/lstm_229/lstm_cell_367/MatMul:product:07sequential_76/lstm_229/lstm_cell_367/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_76/lstm_229/lstm_cell_367/BiasAdd/ReadVariableOpReadVariableOpDsequential_76_lstm_229_lstm_cell_367_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_76/lstm_229/lstm_cell_367/BiasAddBiasAdd,sequential_76/lstm_229/lstm_cell_367/add:z:0Csequential_76/lstm_229/lstm_cell_367/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_76/lstm_229/lstm_cell_367/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_76/lstm_229/lstm_cell_367/splitSplit=sequential_76/lstm_229/lstm_cell_367/split/split_dim:output:05sequential_76/lstm_229/lstm_cell_367/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
,sequential_76/lstm_229/lstm_cell_367/SigmoidSigmoid3sequential_76/lstm_229/lstm_cell_367/split:output:0*
T0*'
_output_shapes
:?????????2?
.sequential_76/lstm_229/lstm_cell_367/Sigmoid_1Sigmoid3sequential_76/lstm_229/lstm_cell_367/split:output:1*
T0*'
_output_shapes
:?????????2?
(sequential_76/lstm_229/lstm_cell_367/mulMul2sequential_76/lstm_229/lstm_cell_367/Sigmoid_1:y:0'sequential_76/lstm_229/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
)sequential_76/lstm_229/lstm_cell_367/ReluRelu3sequential_76/lstm_229/lstm_cell_367/split:output:2*
T0*'
_output_shapes
:?????????2?
*sequential_76/lstm_229/lstm_cell_367/mul_1Mul0sequential_76/lstm_229/lstm_cell_367/Sigmoid:y:07sequential_76/lstm_229/lstm_cell_367/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
*sequential_76/lstm_229/lstm_cell_367/add_1AddV2,sequential_76/lstm_229/lstm_cell_367/mul:z:0.sequential_76/lstm_229/lstm_cell_367/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
.sequential_76/lstm_229/lstm_cell_367/Sigmoid_2Sigmoid3sequential_76/lstm_229/lstm_cell_367/split:output:3*
T0*'
_output_shapes
:?????????2?
+sequential_76/lstm_229/lstm_cell_367/Relu_1Relu.sequential_76/lstm_229/lstm_cell_367/add_1:z:0*
T0*'
_output_shapes
:?????????2?
*sequential_76/lstm_229/lstm_cell_367/mul_2Mul2sequential_76/lstm_229/lstm_cell_367/Sigmoid_2:y:09sequential_76/lstm_229/lstm_cell_367/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
4sequential_76/lstm_229/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
&sequential_76/lstm_229/TensorArrayV2_1TensorListReserve=sequential_76/lstm_229/TensorArrayV2_1/element_shape:output:0/sequential_76/lstm_229/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_76/lstm_229/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_76/lstm_229/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_76/lstm_229/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_76/lstm_229/whileWhile2sequential_76/lstm_229/while/loop_counter:output:08sequential_76/lstm_229/while/maximum_iterations:output:0$sequential_76/lstm_229/time:output:0/sequential_76/lstm_229/TensorArrayV2_1:handle:0%sequential_76/lstm_229/zeros:output:0'sequential_76/lstm_229/zeros_1:output:0/sequential_76/lstm_229/strided_slice_1:output:0Nsequential_76/lstm_229/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_76_lstm_229_lstm_cell_367_matmul_readvariableop_resourceEsequential_76_lstm_229_lstm_cell_367_matmul_1_readvariableop_resourceDsequential_76_lstm_229_lstm_cell_367_biasadd_readvariableop_resource*
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
)sequential_76_lstm_229_while_body_2226228*5
cond-R+
)sequential_76_lstm_229_while_cond_2226227*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Gsequential_76/lstm_229/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
9sequential_76/lstm_229/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_76/lstm_229/while:output:3Psequential_76/lstm_229/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0
,sequential_76/lstm_229/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_76/lstm_229/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_76/lstm_229/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_76/lstm_229/strided_slice_3StridedSliceBsequential_76/lstm_229/TensorArrayV2Stack/TensorListStack:tensor:05sequential_76/lstm_229/strided_slice_3/stack:output:07sequential_76/lstm_229/strided_slice_3/stack_1:output:07sequential_76/lstm_229/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask|
'sequential_76/lstm_229/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_76/lstm_229/transpose_1	TransposeBsequential_76/lstm_229/TensorArrayV2Stack/TensorListStack:tensor:00sequential_76/lstm_229/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_76/lstm_229/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_76/lstm_230/ShapeShape&sequential_76/lstm_229/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_76/lstm_230/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_76/lstm_230/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_76/lstm_230/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_76/lstm_230/strided_sliceStridedSlice%sequential_76/lstm_230/Shape:output:03sequential_76/lstm_230/strided_slice/stack:output:05sequential_76/lstm_230/strided_slice/stack_1:output:05sequential_76/lstm_230/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_76/lstm_230/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
#sequential_76/lstm_230/zeros/packedPack-sequential_76/lstm_230/strided_slice:output:0.sequential_76/lstm_230/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_76/lstm_230/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_76/lstm_230/zerosFill,sequential_76/lstm_230/zeros/packed:output:0+sequential_76/lstm_230/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
i
'sequential_76/lstm_230/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
%sequential_76/lstm_230/zeros_1/packedPack-sequential_76/lstm_230/strided_slice:output:00sequential_76/lstm_230/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_76/lstm_230/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_76/lstm_230/zeros_1Fill.sequential_76/lstm_230/zeros_1/packed:output:0-sequential_76/lstm_230/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
z
%sequential_76/lstm_230/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_76/lstm_230/transpose	Transpose&sequential_76/lstm_229/transpose_1:y:0.sequential_76/lstm_230/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_76/lstm_230/Shape_1Shape$sequential_76/lstm_230/transpose:y:0*
T0*
_output_shapes
:v
,sequential_76/lstm_230/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_76/lstm_230/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_76/lstm_230/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_76/lstm_230/strided_slice_1StridedSlice'sequential_76/lstm_230/Shape_1:output:05sequential_76/lstm_230/strided_slice_1/stack:output:07sequential_76/lstm_230/strided_slice_1/stack_1:output:07sequential_76/lstm_230/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_76/lstm_230/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_76/lstm_230/TensorArrayV2TensorListReserve;sequential_76/lstm_230/TensorArrayV2/element_shape:output:0/sequential_76/lstm_230/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_76/lstm_230/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
>sequential_76/lstm_230/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_76/lstm_230/transpose:y:0Usequential_76/lstm_230/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_76/lstm_230/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_76/lstm_230/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_76/lstm_230/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_76/lstm_230/strided_slice_2StridedSlice$sequential_76/lstm_230/transpose:y:05sequential_76/lstm_230/strided_slice_2/stack:output:07sequential_76/lstm_230/strided_slice_2/stack_1:output:07sequential_76/lstm_230/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
:sequential_76/lstm_230/lstm_cell_368/MatMul/ReadVariableOpReadVariableOpCsequential_76_lstm_230_lstm_cell_368_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
+sequential_76/lstm_230/lstm_cell_368/MatMulMatMul/sequential_76/lstm_230/strided_slice_2:output:0Bsequential_76/lstm_230/lstm_cell_368/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
<sequential_76/lstm_230/lstm_cell_368/MatMul_1/ReadVariableOpReadVariableOpEsequential_76_lstm_230_lstm_cell_368_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
-sequential_76/lstm_230/lstm_cell_368/MatMul_1MatMul%sequential_76/lstm_230/zeros:output:0Dsequential_76/lstm_230/lstm_cell_368/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
(sequential_76/lstm_230/lstm_cell_368/addAddV25sequential_76/lstm_230/lstm_cell_368/MatMul:product:07sequential_76/lstm_230/lstm_cell_368/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
;sequential_76/lstm_230/lstm_cell_368/BiasAdd/ReadVariableOpReadVariableOpDsequential_76_lstm_230_lstm_cell_368_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
,sequential_76/lstm_230/lstm_cell_368/BiasAddBiasAdd,sequential_76/lstm_230/lstm_cell_368/add:z:0Csequential_76/lstm_230/lstm_cell_368/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(v
4sequential_76/lstm_230/lstm_cell_368/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_76/lstm_230/lstm_cell_368/splitSplit=sequential_76/lstm_230/lstm_cell_368/split/split_dim:output:05sequential_76/lstm_230/lstm_cell_368/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
,sequential_76/lstm_230/lstm_cell_368/SigmoidSigmoid3sequential_76/lstm_230/lstm_cell_368/split:output:0*
T0*'
_output_shapes
:?????????
?
.sequential_76/lstm_230/lstm_cell_368/Sigmoid_1Sigmoid3sequential_76/lstm_230/lstm_cell_368/split:output:1*
T0*'
_output_shapes
:?????????
?
(sequential_76/lstm_230/lstm_cell_368/mulMul2sequential_76/lstm_230/lstm_cell_368/Sigmoid_1:y:0'sequential_76/lstm_230/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
)sequential_76/lstm_230/lstm_cell_368/ReluRelu3sequential_76/lstm_230/lstm_cell_368/split:output:2*
T0*'
_output_shapes
:?????????
?
*sequential_76/lstm_230/lstm_cell_368/mul_1Mul0sequential_76/lstm_230/lstm_cell_368/Sigmoid:y:07sequential_76/lstm_230/lstm_cell_368/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
*sequential_76/lstm_230/lstm_cell_368/add_1AddV2,sequential_76/lstm_230/lstm_cell_368/mul:z:0.sequential_76/lstm_230/lstm_cell_368/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
.sequential_76/lstm_230/lstm_cell_368/Sigmoid_2Sigmoid3sequential_76/lstm_230/lstm_cell_368/split:output:3*
T0*'
_output_shapes
:?????????
?
+sequential_76/lstm_230/lstm_cell_368/Relu_1Relu.sequential_76/lstm_230/lstm_cell_368/add_1:z:0*
T0*'
_output_shapes
:?????????
?
*sequential_76/lstm_230/lstm_cell_368/mul_2Mul2sequential_76/lstm_230/lstm_cell_368/Sigmoid_2:y:09sequential_76/lstm_230/lstm_cell_368/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
4sequential_76/lstm_230/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
&sequential_76/lstm_230/TensorArrayV2_1TensorListReserve=sequential_76/lstm_230/TensorArrayV2_1/element_shape:output:0/sequential_76/lstm_230/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_76/lstm_230/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_76/lstm_230/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_76/lstm_230/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_76/lstm_230/whileWhile2sequential_76/lstm_230/while/loop_counter:output:08sequential_76/lstm_230/while/maximum_iterations:output:0$sequential_76/lstm_230/time:output:0/sequential_76/lstm_230/TensorArrayV2_1:handle:0%sequential_76/lstm_230/zeros:output:0'sequential_76/lstm_230/zeros_1:output:0/sequential_76/lstm_230/strided_slice_1:output:0Nsequential_76/lstm_230/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_76_lstm_230_lstm_cell_368_matmul_readvariableop_resourceEsequential_76_lstm_230_lstm_cell_368_matmul_1_readvariableop_resourceDsequential_76_lstm_230_lstm_cell_368_biasadd_readvariableop_resource*
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
)sequential_76_lstm_230_while_body_2226367*5
cond-R+
)sequential_76_lstm_230_while_cond_2226366*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Gsequential_76/lstm_230/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
9sequential_76/lstm_230/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_76/lstm_230/while:output:3Psequential_76/lstm_230/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0
,sequential_76/lstm_230/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_76/lstm_230/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_76/lstm_230/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_76/lstm_230/strided_slice_3StridedSliceBsequential_76/lstm_230/TensorArrayV2Stack/TensorListStack:tensor:05sequential_76/lstm_230/strided_slice_3/stack:output:07sequential_76/lstm_230/strided_slice_3/stack_1:output:07sequential_76/lstm_230/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask|
'sequential_76/lstm_230/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_76/lstm_230/transpose_1	TransposeBsequential_76/lstm_230/TensorArrayV2Stack/TensorListStack:tensor:00sequential_76/lstm_230/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
r
sequential_76/lstm_230/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_76/dense_76/MatMul/ReadVariableOpReadVariableOp5sequential_76_dense_76_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_76/dense_76/MatMulMatMul/sequential_76/lstm_230/strided_slice_3:output:04sequential_76/dense_76/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_76/dense_76/BiasAdd/ReadVariableOpReadVariableOp6sequential_76_dense_76_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_76/dense_76/BiasAddBiasAdd'sequential_76/dense_76/MatMul:product:05sequential_76/dense_76/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_76/dense_76/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_76/dense_76/BiasAdd/ReadVariableOp-^sequential_76/dense_76/MatMul/ReadVariableOp<^sequential_76/lstm_228/lstm_cell_366/BiasAdd/ReadVariableOp;^sequential_76/lstm_228/lstm_cell_366/MatMul/ReadVariableOp=^sequential_76/lstm_228/lstm_cell_366/MatMul_1/ReadVariableOp^sequential_76/lstm_228/while<^sequential_76/lstm_229/lstm_cell_367/BiasAdd/ReadVariableOp;^sequential_76/lstm_229/lstm_cell_367/MatMul/ReadVariableOp=^sequential_76/lstm_229/lstm_cell_367/MatMul_1/ReadVariableOp^sequential_76/lstm_229/while<^sequential_76/lstm_230/lstm_cell_368/BiasAdd/ReadVariableOp;^sequential_76/lstm_230/lstm_cell_368/MatMul/ReadVariableOp=^sequential_76/lstm_230/lstm_cell_368/MatMul_1/ReadVariableOp^sequential_76/lstm_230/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2^
-sequential_76/dense_76/BiasAdd/ReadVariableOp-sequential_76/dense_76/BiasAdd/ReadVariableOp2\
,sequential_76/dense_76/MatMul/ReadVariableOp,sequential_76/dense_76/MatMul/ReadVariableOp2z
;sequential_76/lstm_228/lstm_cell_366/BiasAdd/ReadVariableOp;sequential_76/lstm_228/lstm_cell_366/BiasAdd/ReadVariableOp2x
:sequential_76/lstm_228/lstm_cell_366/MatMul/ReadVariableOp:sequential_76/lstm_228/lstm_cell_366/MatMul/ReadVariableOp2|
<sequential_76/lstm_228/lstm_cell_366/MatMul_1/ReadVariableOp<sequential_76/lstm_228/lstm_cell_366/MatMul_1/ReadVariableOp2<
sequential_76/lstm_228/whilesequential_76/lstm_228/while2z
;sequential_76/lstm_229/lstm_cell_367/BiasAdd/ReadVariableOp;sequential_76/lstm_229/lstm_cell_367/BiasAdd/ReadVariableOp2x
:sequential_76/lstm_229/lstm_cell_367/MatMul/ReadVariableOp:sequential_76/lstm_229/lstm_cell_367/MatMul/ReadVariableOp2|
<sequential_76/lstm_229/lstm_cell_367/MatMul_1/ReadVariableOp<sequential_76/lstm_229/lstm_cell_367/MatMul_1/ReadVariableOp2<
sequential_76/lstm_229/whilesequential_76/lstm_229/while2z
;sequential_76/lstm_230/lstm_cell_368/BiasAdd/ReadVariableOp;sequential_76/lstm_230/lstm_cell_368/BiasAdd/ReadVariableOp2x
:sequential_76/lstm_230/lstm_cell_368/MatMul/ReadVariableOp:sequential_76/lstm_230/lstm_cell_368/MatMul/ReadVariableOp2|
<sequential_76/lstm_230/lstm_cell_368/MatMul_1/ReadVariableOp<sequential_76/lstm_230/lstm_cell_368/MatMul_1/ReadVariableOp2<
sequential_76/lstm_230/whilesequential_76/lstm_230/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_228_input
?
?
J__inference_lstm_cell_366_layer_call_and_return_conditional_losses_2226670

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
?
?
J__inference_lstm_cell_367_layer_call_and_return_conditional_losses_2227020

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
while_cond_2229870
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2229870___redundant_placeholder05
1while_while_cond_2229870___redundant_placeholder15
1while_while_cond_2229870___redundant_placeholder25
1while_while_cond_2229870___redundant_placeholder3
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
while_body_2231103
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_368_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_368_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_368_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_368_matmul_readvariableop_resource:2(F
4while_lstm_cell_368_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_368_biasadd_readvariableop_resource:(??*while/lstm_cell_368/BiasAdd/ReadVariableOp?)while/lstm_cell_368/MatMul/ReadVariableOp?+while/lstm_cell_368/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_368/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_368_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_368/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_368/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_368/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_368_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_368/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_368/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_368/addAddV2$while/lstm_cell_368/MatMul:product:0&while/lstm_cell_368/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_368/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_368_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_368/BiasAddBiasAddwhile/lstm_cell_368/add:z:02while/lstm_cell_368/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_368/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_368/splitSplit,while/lstm_cell_368/split/split_dim:output:0$while/lstm_cell_368/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_368/SigmoidSigmoid"while/lstm_cell_368/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_368/Sigmoid_1Sigmoid"while/lstm_cell_368/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_368/mulMul!while/lstm_cell_368/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_368/ReluRelu"while/lstm_cell_368/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_368/mul_1Mulwhile/lstm_cell_368/Sigmoid:y:0&while/lstm_cell_368/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_368/add_1AddV2while/lstm_cell_368/mul:z:0while/lstm_cell_368/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_368/Sigmoid_2Sigmoid"while/lstm_cell_368/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_368/Relu_1Reluwhile/lstm_cell_368/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_368/mul_2Mul!while/lstm_cell_368/Sigmoid_2:y:0(while/lstm_cell_368/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_368/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_368/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_368/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_368/BiasAdd/ReadVariableOp*^while/lstm_cell_368/MatMul/ReadVariableOp,^while/lstm_cell_368/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_368_biasadd_readvariableop_resource5while_lstm_cell_368_biasadd_readvariableop_resource_0"n
4while_lstm_cell_368_matmul_1_readvariableop_resource6while_lstm_cell_368_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_368_matmul_readvariableop_resource4while_lstm_cell_368_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_368/BiasAdd/ReadVariableOp*while/lstm_cell_368/BiasAdd/ReadVariableOp2V
)while/lstm_cell_368/MatMul/ReadVariableOp)while/lstm_cell_368/MatMul/ReadVariableOp2Z
+while/lstm_cell_368/MatMul_1/ReadVariableOp+while/lstm_cell_368/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2227429
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_368_2227453_0:2(/
while_lstm_cell_368_2227455_0:
(+
while_lstm_cell_368_2227457_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_368_2227453:2(-
while_lstm_cell_368_2227455:
()
while_lstm_cell_368_2227457:(??+while/lstm_cell_368/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_368/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_368_2227453_0while_lstm_cell_368_2227455_0while_lstm_cell_368_2227457_0*
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
J__inference_lstm_cell_368_layer_call_and_return_conditional_losses_2227370?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_368/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_368/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_368/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_368/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_368_2227453while_lstm_cell_368_2227453_0"<
while_lstm_cell_368_2227455while_lstm_cell_368_2227455_0"<
while_lstm_cell_368_2227457while_lstm_cell_368_2227457_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_368/StatefulPartitionedCall+while/lstm_cell_368/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_2230773
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_367_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_367_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_367_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_367_matmul_readvariableop_resource:	d?G
4while_lstm_cell_367_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_367_biasadd_readvariableop_resource:	???*while/lstm_cell_367/BiasAdd/ReadVariableOp?)while/lstm_cell_367/MatMul/ReadVariableOp?+while/lstm_cell_367/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_367/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_367_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_367/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_367/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_367/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_367_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_367/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_367/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_367/addAddV2$while/lstm_cell_367/MatMul:product:0&while/lstm_cell_367/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_367/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_367_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_367/BiasAddBiasAddwhile/lstm_cell_367/add:z:02while/lstm_cell_367/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_367/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_367/splitSplit,while/lstm_cell_367/split/split_dim:output:0$while/lstm_cell_367/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_367/SigmoidSigmoid"while/lstm_cell_367/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_367/Sigmoid_1Sigmoid"while/lstm_cell_367/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_367/mulMul!while/lstm_cell_367/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_367/ReluRelu"while/lstm_cell_367/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_367/mul_1Mulwhile/lstm_cell_367/Sigmoid:y:0&while/lstm_cell_367/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_367/add_1AddV2while/lstm_cell_367/mul:z:0while/lstm_cell_367/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_367/Sigmoid_2Sigmoid"while/lstm_cell_367/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_367/Relu_1Reluwhile/lstm_cell_367/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_367/mul_2Mul!while/lstm_cell_367/Sigmoid_2:y:0(while/lstm_cell_367/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_367/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_367/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_367/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_367/BiasAdd/ReadVariableOp*^while/lstm_cell_367/MatMul/ReadVariableOp,^while/lstm_cell_367/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_367_biasadd_readvariableop_resource5while_lstm_cell_367_biasadd_readvariableop_resource_0"n
4while_lstm_cell_367_matmul_1_readvariableop_resource6while_lstm_cell_367_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_367_matmul_readvariableop_resource4while_lstm_cell_367_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_367/BiasAdd/ReadVariableOp*while/lstm_cell_367/BiasAdd/ReadVariableOp2V
)while/lstm_cell_367/MatMul/ReadVariableOp)while/lstm_cell_367/MatMul/ReadVariableOp2Z
+while/lstm_cell_367/MatMul_1/ReadVariableOp+while/lstm_cell_367/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_228_layer_call_and_return_conditional_losses_2227656

inputs?
,lstm_cell_366_matmul_readvariableop_resource:	?A
.lstm_cell_366_matmul_1_readvariableop_resource:	d?<
-lstm_cell_366_biasadd_readvariableop_resource:	?
identity??$lstm_cell_366/BiasAdd/ReadVariableOp?#lstm_cell_366/MatMul/ReadVariableOp?%lstm_cell_366/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_366/MatMul/ReadVariableOpReadVariableOp,lstm_cell_366_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_366/MatMulMatMulstrided_slice_2:output:0+lstm_cell_366/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_366/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_366_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_366/MatMul_1MatMulzeros:output:0-lstm_cell_366/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_366/addAddV2lstm_cell_366/MatMul:product:0 lstm_cell_366/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_366/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_366_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_366/BiasAddBiasAddlstm_cell_366/add:z:0,lstm_cell_366/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_366/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_366/splitSplit&lstm_cell_366/split/split_dim:output:0lstm_cell_366/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_366/SigmoidSigmoidlstm_cell_366/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_366/Sigmoid_1Sigmoidlstm_cell_366/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_366/mulMullstm_cell_366/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_366/ReluRelulstm_cell_366/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_366/mul_1Mullstm_cell_366/Sigmoid:y:0 lstm_cell_366/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_366/add_1AddV2lstm_cell_366/mul:z:0lstm_cell_366/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_366/Sigmoid_2Sigmoidlstm_cell_366/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_366/Relu_1Relulstm_cell_366/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_366/mul_2Mullstm_cell_366/Sigmoid_2:y:0"lstm_cell_366/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_366_matmul_readvariableop_resource.lstm_cell_366_matmul_1_readvariableop_resource-lstm_cell_366_biasadd_readvariableop_resource*
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
while_body_2227572*
condR
while_cond_2227571*K
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
NoOpNoOp%^lstm_cell_366/BiasAdd/ReadVariableOp$^lstm_cell_366/MatMul/ReadVariableOp&^lstm_cell_366/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_366/BiasAdd/ReadVariableOp$lstm_cell_366/BiasAdd/ReadVariableOp2J
#lstm_cell_366/MatMul/ReadVariableOp#lstm_cell_366/MatMul/ReadVariableOp2N
%lstm_cell_366/MatMul_1/ReadVariableOp%lstm_cell_366/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_2226538
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_366_2226562_0:	?0
while_lstm_cell_366_2226564_0:	d?,
while_lstm_cell_366_2226566_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_366_2226562:	?.
while_lstm_cell_366_2226564:	d?*
while_lstm_cell_366_2226566:	???+while/lstm_cell_366/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_366/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_366_2226562_0while_lstm_cell_366_2226564_0while_lstm_cell_366_2226566_0*
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
J__inference_lstm_cell_366_layer_call_and_return_conditional_losses_2226524?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_366/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_366/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_366/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_366/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_366_2226562while_lstm_cell_366_2226562_0"<
while_lstm_cell_366_2226564while_lstm_cell_366_2226564_0"<
while_lstm_cell_366_2226566while_lstm_cell_366_2226566_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_366/StatefulPartitionedCall+while/lstm_cell_366/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_2230487
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_367_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_367_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_367_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_367_matmul_readvariableop_resource:	d?G
4while_lstm_cell_367_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_367_biasadd_readvariableop_resource:	???*while/lstm_cell_367/BiasAdd/ReadVariableOp?)while/lstm_cell_367/MatMul/ReadVariableOp?+while/lstm_cell_367/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_367/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_367_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_367/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_367/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_367/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_367_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_367/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_367/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_367/addAddV2$while/lstm_cell_367/MatMul:product:0&while/lstm_cell_367/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_367/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_367_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_367/BiasAddBiasAddwhile/lstm_cell_367/add:z:02while/lstm_cell_367/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_367/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_367/splitSplit,while/lstm_cell_367/split/split_dim:output:0$while/lstm_cell_367/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_367/SigmoidSigmoid"while/lstm_cell_367/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_367/Sigmoid_1Sigmoid"while/lstm_cell_367/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_367/mulMul!while/lstm_cell_367/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_367/ReluRelu"while/lstm_cell_367/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_367/mul_1Mulwhile/lstm_cell_367/Sigmoid:y:0&while/lstm_cell_367/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_367/add_1AddV2while/lstm_cell_367/mul:z:0while/lstm_cell_367/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_367/Sigmoid_2Sigmoid"while/lstm_cell_367/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_367/Relu_1Reluwhile/lstm_cell_367/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_367/mul_2Mul!while/lstm_cell_367/Sigmoid_2:y:0(while/lstm_cell_367/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_367/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_367/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_367/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_367/BiasAdd/ReadVariableOp*^while/lstm_cell_367/MatMul/ReadVariableOp,^while/lstm_cell_367/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_367_biasadd_readvariableop_resource5while_lstm_cell_367_biasadd_readvariableop_resource_0"n
4while_lstm_cell_367_matmul_1_readvariableop_resource6while_lstm_cell_367_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_367_matmul_readvariableop_resource4while_lstm_cell_367_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_367/BiasAdd/ReadVariableOp*while/lstm_cell_367/BiasAdd/ReadVariableOp2V
)while/lstm_cell_367/MatMul/ReadVariableOp)while/lstm_cell_367/MatMul/ReadVariableOp2Z
+while/lstm_cell_367/MatMul_1/ReadVariableOp+while/lstm_cell_367/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_229_layer_call_and_return_conditional_losses_2230714

inputs?
,lstm_cell_367_matmul_readvariableop_resource:	d?A
.lstm_cell_367_matmul_1_readvariableop_resource:	2?<
-lstm_cell_367_biasadd_readvariableop_resource:	?
identity??$lstm_cell_367/BiasAdd/ReadVariableOp?#lstm_cell_367/MatMul/ReadVariableOp?%lstm_cell_367/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_367/MatMul/ReadVariableOpReadVariableOp,lstm_cell_367_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_367/MatMulMatMulstrided_slice_2:output:0+lstm_cell_367/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_367/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_367_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_367/MatMul_1MatMulzeros:output:0-lstm_cell_367/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_367/addAddV2lstm_cell_367/MatMul:product:0 lstm_cell_367/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_367/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_367_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_367/BiasAddBiasAddlstm_cell_367/add:z:0,lstm_cell_367/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_367/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_367/splitSplit&lstm_cell_367/split/split_dim:output:0lstm_cell_367/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_367/SigmoidSigmoidlstm_cell_367/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_367/Sigmoid_1Sigmoidlstm_cell_367/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_367/mulMullstm_cell_367/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_367/ReluRelulstm_cell_367/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_367/mul_1Mullstm_cell_367/Sigmoid:y:0 lstm_cell_367/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_367/add_1AddV2lstm_cell_367/mul:z:0lstm_cell_367/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_367/Sigmoid_2Sigmoidlstm_cell_367/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_367/Relu_1Relulstm_cell_367/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_367/mul_2Mullstm_cell_367/Sigmoid_2:y:0"lstm_cell_367/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_367_matmul_readvariableop_resource.lstm_cell_367_matmul_1_readvariableop_resource-lstm_cell_367_biasadd_readvariableop_resource*
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
while_body_2230630*
condR
while_cond_2230629*K
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
NoOpNoOp%^lstm_cell_367/BiasAdd/ReadVariableOp$^lstm_cell_367/MatMul/ReadVariableOp&^lstm_cell_367/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_367/BiasAdd/ReadVariableOp$lstm_cell_367/BiasAdd/ReadVariableOp2J
#lstm_cell_367/MatMul/ReadVariableOp#lstm_cell_367/MatMul/ReadVariableOp2N
%lstm_cell_367/MatMul_1/ReadVariableOp%lstm_cell_367/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_2228418
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_366_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_366_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_366_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_366_matmul_readvariableop_resource:	?G
4while_lstm_cell_366_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_366_biasadd_readvariableop_resource:	???*while/lstm_cell_366/BiasAdd/ReadVariableOp?)while/lstm_cell_366/MatMul/ReadVariableOp?+while/lstm_cell_366/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_366/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_366_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_366/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_366/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_366/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_366_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_366/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_366/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_366/addAddV2$while/lstm_cell_366/MatMul:product:0&while/lstm_cell_366/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_366/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_366_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_366/BiasAddBiasAddwhile/lstm_cell_366/add:z:02while/lstm_cell_366/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_366/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_366/splitSplit,while/lstm_cell_366/split/split_dim:output:0$while/lstm_cell_366/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_366/SigmoidSigmoid"while/lstm_cell_366/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_366/Sigmoid_1Sigmoid"while/lstm_cell_366/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_366/mulMul!while/lstm_cell_366/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_366/ReluRelu"while/lstm_cell_366/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_366/mul_1Mulwhile/lstm_cell_366/Sigmoid:y:0&while/lstm_cell_366/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_366/add_1AddV2while/lstm_cell_366/mul:z:0while/lstm_cell_366/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_366/Sigmoid_2Sigmoid"while/lstm_cell_366/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_366/Relu_1Reluwhile/lstm_cell_366/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_366/mul_2Mul!while/lstm_cell_366/Sigmoid_2:y:0(while/lstm_cell_366/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_366/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_366/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_366/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_366/BiasAdd/ReadVariableOp*^while/lstm_cell_366/MatMul/ReadVariableOp,^while/lstm_cell_366/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_366_biasadd_readvariableop_resource5while_lstm_cell_366_biasadd_readvariableop_resource_0"n
4while_lstm_cell_366_matmul_1_readvariableop_resource6while_lstm_cell_366_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_366_matmul_readvariableop_resource4while_lstm_cell_366_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_366/BiasAdd/ReadVariableOp*while/lstm_cell_366/BiasAdd/ReadVariableOp2V
)while/lstm_cell_366/MatMul/ReadVariableOp)while/lstm_cell_366/MatMul/ReadVariableOp2Z
+while/lstm_cell_366/MatMul_1/ReadVariableOp+while/lstm_cell_366/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2227237
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2227237___redundant_placeholder05
1while_while_cond_2227237___redundant_placeholder15
1while_while_cond_2227237___redundant_placeholder25
1while_while_cond_2227237___redundant_placeholder3
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
lstm_228_while_cond_2229256.
*lstm_228_while_lstm_228_while_loop_counter4
0lstm_228_while_lstm_228_while_maximum_iterations
lstm_228_while_placeholder 
lstm_228_while_placeholder_1 
lstm_228_while_placeholder_2 
lstm_228_while_placeholder_30
,lstm_228_while_less_lstm_228_strided_slice_1G
Clstm_228_while_lstm_228_while_cond_2229256___redundant_placeholder0G
Clstm_228_while_lstm_228_while_cond_2229256___redundant_placeholder1G
Clstm_228_while_lstm_228_while_cond_2229256___redundant_placeholder2G
Clstm_228_while_lstm_228_while_cond_2229256___redundant_placeholder3
lstm_228_while_identity
?
lstm_228/while/LessLesslstm_228_while_placeholder,lstm_228_while_less_lstm_228_strided_slice_1*
T0*
_output_shapes
: ]
lstm_228/while/IdentityIdentitylstm_228/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_228_while_identity lstm_228/while/Identity:output:0*(
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
)sequential_76_lstm_229_while_body_2226228J
Fsequential_76_lstm_229_while_sequential_76_lstm_229_while_loop_counterP
Lsequential_76_lstm_229_while_sequential_76_lstm_229_while_maximum_iterations,
(sequential_76_lstm_229_while_placeholder.
*sequential_76_lstm_229_while_placeholder_1.
*sequential_76_lstm_229_while_placeholder_2.
*sequential_76_lstm_229_while_placeholder_3I
Esequential_76_lstm_229_while_sequential_76_lstm_229_strided_slice_1_0?
?sequential_76_lstm_229_while_tensorarrayv2read_tensorlistgetitem_sequential_76_lstm_229_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_76_lstm_229_while_lstm_cell_367_matmul_readvariableop_resource_0:	d?`
Msequential_76_lstm_229_while_lstm_cell_367_matmul_1_readvariableop_resource_0:	2?[
Lsequential_76_lstm_229_while_lstm_cell_367_biasadd_readvariableop_resource_0:	?)
%sequential_76_lstm_229_while_identity+
'sequential_76_lstm_229_while_identity_1+
'sequential_76_lstm_229_while_identity_2+
'sequential_76_lstm_229_while_identity_3+
'sequential_76_lstm_229_while_identity_4+
'sequential_76_lstm_229_while_identity_5G
Csequential_76_lstm_229_while_sequential_76_lstm_229_strided_slice_1?
sequential_76_lstm_229_while_tensorarrayv2read_tensorlistgetitem_sequential_76_lstm_229_tensorarrayunstack_tensorlistfromtensor\
Isequential_76_lstm_229_while_lstm_cell_367_matmul_readvariableop_resource:	d?^
Ksequential_76_lstm_229_while_lstm_cell_367_matmul_1_readvariableop_resource:	2?Y
Jsequential_76_lstm_229_while_lstm_cell_367_biasadd_readvariableop_resource:	???Asequential_76/lstm_229/while/lstm_cell_367/BiasAdd/ReadVariableOp?@sequential_76/lstm_229/while/lstm_cell_367/MatMul/ReadVariableOp?Bsequential_76/lstm_229/while/lstm_cell_367/MatMul_1/ReadVariableOp?
Nsequential_76/lstm_229/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
@sequential_76/lstm_229/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_76_lstm_229_while_tensorarrayv2read_tensorlistgetitem_sequential_76_lstm_229_tensorarrayunstack_tensorlistfromtensor_0(sequential_76_lstm_229_while_placeholderWsequential_76/lstm_229/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
@sequential_76/lstm_229/while/lstm_cell_367/MatMul/ReadVariableOpReadVariableOpKsequential_76_lstm_229_while_lstm_cell_367_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
1sequential_76/lstm_229/while/lstm_cell_367/MatMulMatMulGsequential_76/lstm_229/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_76/lstm_229/while/lstm_cell_367/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_76/lstm_229/while/lstm_cell_367/MatMul_1/ReadVariableOpReadVariableOpMsequential_76_lstm_229_while_lstm_cell_367_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
3sequential_76/lstm_229/while/lstm_cell_367/MatMul_1MatMul*sequential_76_lstm_229_while_placeholder_2Jsequential_76/lstm_229/while/lstm_cell_367/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_76/lstm_229/while/lstm_cell_367/addAddV2;sequential_76/lstm_229/while/lstm_cell_367/MatMul:product:0=sequential_76/lstm_229/while/lstm_cell_367/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_76/lstm_229/while/lstm_cell_367/BiasAdd/ReadVariableOpReadVariableOpLsequential_76_lstm_229_while_lstm_cell_367_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_76/lstm_229/while/lstm_cell_367/BiasAddBiasAdd2sequential_76/lstm_229/while/lstm_cell_367/add:z:0Isequential_76/lstm_229/while/lstm_cell_367/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_76/lstm_229/while/lstm_cell_367/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_76/lstm_229/while/lstm_cell_367/splitSplitCsequential_76/lstm_229/while/lstm_cell_367/split/split_dim:output:0;sequential_76/lstm_229/while/lstm_cell_367/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
2sequential_76/lstm_229/while/lstm_cell_367/SigmoidSigmoid9sequential_76/lstm_229/while/lstm_cell_367/split:output:0*
T0*'
_output_shapes
:?????????2?
4sequential_76/lstm_229/while/lstm_cell_367/Sigmoid_1Sigmoid9sequential_76/lstm_229/while/lstm_cell_367/split:output:1*
T0*'
_output_shapes
:?????????2?
.sequential_76/lstm_229/while/lstm_cell_367/mulMul8sequential_76/lstm_229/while/lstm_cell_367/Sigmoid_1:y:0*sequential_76_lstm_229_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
/sequential_76/lstm_229/while/lstm_cell_367/ReluRelu9sequential_76/lstm_229/while/lstm_cell_367/split:output:2*
T0*'
_output_shapes
:?????????2?
0sequential_76/lstm_229/while/lstm_cell_367/mul_1Mul6sequential_76/lstm_229/while/lstm_cell_367/Sigmoid:y:0=sequential_76/lstm_229/while/lstm_cell_367/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
0sequential_76/lstm_229/while/lstm_cell_367/add_1AddV22sequential_76/lstm_229/while/lstm_cell_367/mul:z:04sequential_76/lstm_229/while/lstm_cell_367/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
4sequential_76/lstm_229/while/lstm_cell_367/Sigmoid_2Sigmoid9sequential_76/lstm_229/while/lstm_cell_367/split:output:3*
T0*'
_output_shapes
:?????????2?
1sequential_76/lstm_229/while/lstm_cell_367/Relu_1Relu4sequential_76/lstm_229/while/lstm_cell_367/add_1:z:0*
T0*'
_output_shapes
:?????????2?
0sequential_76/lstm_229/while/lstm_cell_367/mul_2Mul8sequential_76/lstm_229/while/lstm_cell_367/Sigmoid_2:y:0?sequential_76/lstm_229/while/lstm_cell_367/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Asequential_76/lstm_229/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_76_lstm_229_while_placeholder_1(sequential_76_lstm_229_while_placeholder4sequential_76/lstm_229/while/lstm_cell_367/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_76/lstm_229/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_76/lstm_229/while/addAddV2(sequential_76_lstm_229_while_placeholder+sequential_76/lstm_229/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_76/lstm_229/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_76/lstm_229/while/add_1AddV2Fsequential_76_lstm_229_while_sequential_76_lstm_229_while_loop_counter-sequential_76/lstm_229/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_76/lstm_229/while/IdentityIdentity&sequential_76/lstm_229/while/add_1:z:0"^sequential_76/lstm_229/while/NoOp*
T0*
_output_shapes
: ?
'sequential_76/lstm_229/while/Identity_1IdentityLsequential_76_lstm_229_while_sequential_76_lstm_229_while_maximum_iterations"^sequential_76/lstm_229/while/NoOp*
T0*
_output_shapes
: ?
'sequential_76/lstm_229/while/Identity_2Identity$sequential_76/lstm_229/while/add:z:0"^sequential_76/lstm_229/while/NoOp*
T0*
_output_shapes
: ?
'sequential_76/lstm_229/while/Identity_3IdentityQsequential_76/lstm_229/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_76/lstm_229/while/NoOp*
T0*
_output_shapes
: ?
'sequential_76/lstm_229/while/Identity_4Identity4sequential_76/lstm_229/while/lstm_cell_367/mul_2:z:0"^sequential_76/lstm_229/while/NoOp*
T0*'
_output_shapes
:?????????2?
'sequential_76/lstm_229/while/Identity_5Identity4sequential_76/lstm_229/while/lstm_cell_367/add_1:z:0"^sequential_76/lstm_229/while/NoOp*
T0*'
_output_shapes
:?????????2?
!sequential_76/lstm_229/while/NoOpNoOpB^sequential_76/lstm_229/while/lstm_cell_367/BiasAdd/ReadVariableOpA^sequential_76/lstm_229/while/lstm_cell_367/MatMul/ReadVariableOpC^sequential_76/lstm_229/while/lstm_cell_367/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_76_lstm_229_while_identity.sequential_76/lstm_229/while/Identity:output:0"[
'sequential_76_lstm_229_while_identity_10sequential_76/lstm_229/while/Identity_1:output:0"[
'sequential_76_lstm_229_while_identity_20sequential_76/lstm_229/while/Identity_2:output:0"[
'sequential_76_lstm_229_while_identity_30sequential_76/lstm_229/while/Identity_3:output:0"[
'sequential_76_lstm_229_while_identity_40sequential_76/lstm_229/while/Identity_4:output:0"[
'sequential_76_lstm_229_while_identity_50sequential_76/lstm_229/while/Identity_5:output:0"?
Jsequential_76_lstm_229_while_lstm_cell_367_biasadd_readvariableop_resourceLsequential_76_lstm_229_while_lstm_cell_367_biasadd_readvariableop_resource_0"?
Ksequential_76_lstm_229_while_lstm_cell_367_matmul_1_readvariableop_resourceMsequential_76_lstm_229_while_lstm_cell_367_matmul_1_readvariableop_resource_0"?
Isequential_76_lstm_229_while_lstm_cell_367_matmul_readvariableop_resourceKsequential_76_lstm_229_while_lstm_cell_367_matmul_readvariableop_resource_0"?
Csequential_76_lstm_229_while_sequential_76_lstm_229_strided_slice_1Esequential_76_lstm_229_while_sequential_76_lstm_229_strided_slice_1_0"?
sequential_76_lstm_229_while_tensorarrayv2read_tensorlistgetitem_sequential_76_lstm_229_tensorarrayunstack_tensorlistfromtensor?sequential_76_lstm_229_while_tensorarrayv2read_tensorlistgetitem_sequential_76_lstm_229_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Asequential_76/lstm_229/while/lstm_cell_367/BiasAdd/ReadVariableOpAsequential_76/lstm_229/while/lstm_cell_367/BiasAdd/ReadVariableOp2?
@sequential_76/lstm_229/while/lstm_cell_367/MatMul/ReadVariableOp@sequential_76/lstm_229/while/lstm_cell_367/MatMul/ReadVariableOp2?
Bsequential_76/lstm_229/while/lstm_cell_367/MatMul_1/ReadVariableOpBsequential_76/lstm_229/while/lstm_cell_367/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_228_input;
 serving_default_lstm_228_input:0?????????<
dense_760
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
2dense_76/kernel
:2dense_76/bias
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
0:.	?2lstm_228/lstm_cell_228/kernel
::8	d?2'lstm_228/lstm_cell_228/recurrent_kernel
*:(?2lstm_228/lstm_cell_228/bias
0:.	d?2lstm_229/lstm_cell_229/kernel
::8	2?2'lstm_229/lstm_cell_229/recurrent_kernel
*:(?2lstm_229/lstm_cell_229/bias
/:-2(2lstm_230/lstm_cell_230/kernel
9:7
(2'lstm_230/lstm_cell_230/recurrent_kernel
):'(2lstm_230/lstm_cell_230/bias
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
2Adam/dense_76/kernel/m
 :2Adam/dense_76/bias/m
5:3	?2$Adam/lstm_228/lstm_cell_228/kernel/m
?:=	d?2.Adam/lstm_228/lstm_cell_228/recurrent_kernel/m
/:-?2"Adam/lstm_228/lstm_cell_228/bias/m
5:3	d?2$Adam/lstm_229/lstm_cell_229/kernel/m
?:=	2?2.Adam/lstm_229/lstm_cell_229/recurrent_kernel/m
/:-?2"Adam/lstm_229/lstm_cell_229/bias/m
4:22(2$Adam/lstm_230/lstm_cell_230/kernel/m
>:<
(2.Adam/lstm_230/lstm_cell_230/recurrent_kernel/m
.:,(2"Adam/lstm_230/lstm_cell_230/bias/m
&:$
2Adam/dense_76/kernel/v
 :2Adam/dense_76/bias/v
5:3	?2$Adam/lstm_228/lstm_cell_228/kernel/v
?:=	d?2.Adam/lstm_228/lstm_cell_228/recurrent_kernel/v
/:-?2"Adam/lstm_228/lstm_cell_228/bias/v
5:3	d?2$Adam/lstm_229/lstm_cell_229/kernel/v
?:=	2?2.Adam/lstm_229/lstm_cell_229/recurrent_kernel/v
/:-?2"Adam/lstm_229/lstm_cell_229/bias/v
4:22(2$Adam/lstm_230/lstm_cell_230/kernel/v
>:<
(2.Adam/lstm_230/lstm_cell_230/recurrent_kernel/v
.:,(2"Adam/lstm_230/lstm_cell_230/bias/v
?2?
/__inference_sequential_76_layer_call_fn_2228006
/__inference_sequential_76_layer_call_fn_2228744
/__inference_sequential_76_layer_call_fn_2228771
/__inference_sequential_76_layer_call_fn_2228622?
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
J__inference_sequential_76_layer_call_and_return_conditional_losses_2229198
J__inference_sequential_76_layer_call_and_return_conditional_losses_2229625
J__inference_sequential_76_layer_call_and_return_conditional_losses_2228652
J__inference_sequential_76_layer_call_and_return_conditional_losses_2228682?
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
"__inference__wrapped_model_2226457lstm_228_input"?
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
*__inference_lstm_228_layer_call_fn_2229636
*__inference_lstm_228_layer_call_fn_2229647
*__inference_lstm_228_layer_call_fn_2229658
*__inference_lstm_228_layer_call_fn_2229669?
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
E__inference_lstm_228_layer_call_and_return_conditional_losses_2229812
E__inference_lstm_228_layer_call_and_return_conditional_losses_2229955
E__inference_lstm_228_layer_call_and_return_conditional_losses_2230098
E__inference_lstm_228_layer_call_and_return_conditional_losses_2230241?
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
*__inference_lstm_229_layer_call_fn_2230252
*__inference_lstm_229_layer_call_fn_2230263
*__inference_lstm_229_layer_call_fn_2230274
*__inference_lstm_229_layer_call_fn_2230285?
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
E__inference_lstm_229_layer_call_and_return_conditional_losses_2230428
E__inference_lstm_229_layer_call_and_return_conditional_losses_2230571
E__inference_lstm_229_layer_call_and_return_conditional_losses_2230714
E__inference_lstm_229_layer_call_and_return_conditional_losses_2230857?
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
*__inference_lstm_230_layer_call_fn_2230868
*__inference_lstm_230_layer_call_fn_2230879
*__inference_lstm_230_layer_call_fn_2230890
*__inference_lstm_230_layer_call_fn_2230901?
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
E__inference_lstm_230_layer_call_and_return_conditional_losses_2231044
E__inference_lstm_230_layer_call_and_return_conditional_losses_2231187
E__inference_lstm_230_layer_call_and_return_conditional_losses_2231330
E__inference_lstm_230_layer_call_and_return_conditional_losses_2231473?
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
*__inference_dense_76_layer_call_fn_2231482?
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
E__inference_dense_76_layer_call_and_return_conditional_losses_2231492?
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
%__inference_signature_wrapper_2228717lstm_228_input"?
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
/__inference_lstm_cell_366_layer_call_fn_2231509
/__inference_lstm_cell_366_layer_call_fn_2231526?
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
J__inference_lstm_cell_366_layer_call_and_return_conditional_losses_2231558
J__inference_lstm_cell_366_layer_call_and_return_conditional_losses_2231590?
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
/__inference_lstm_cell_367_layer_call_fn_2231607
/__inference_lstm_cell_367_layer_call_fn_2231624?
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
J__inference_lstm_cell_367_layer_call_and_return_conditional_losses_2231656
J__inference_lstm_cell_367_layer_call_and_return_conditional_losses_2231688?
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
/__inference_lstm_cell_368_layer_call_fn_2231705
/__inference_lstm_cell_368_layer_call_fn_2231722?
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
J__inference_lstm_cell_368_layer_call_and_return_conditional_losses_2231754
J__inference_lstm_cell_368_layer_call_and_return_conditional_losses_2231786?
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
"__inference__wrapped_model_2226457-./012345!";?8
1?.
,?)
lstm_228_input?????????
? "3?0
.
dense_76"?
dense_76??????????
E__inference_dense_76_layer_call_and_return_conditional_losses_2231492\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_76_layer_call_fn_2231482O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_228_layer_call_and_return_conditional_losses_2229812?-./O?L
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
E__inference_lstm_228_layer_call_and_return_conditional_losses_2229955?-./O?L
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
E__inference_lstm_228_layer_call_and_return_conditional_losses_2230098q-./??<
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
E__inference_lstm_228_layer_call_and_return_conditional_losses_2230241q-./??<
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
*__inference_lstm_228_layer_call_fn_2229636}-./O?L
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
*__inference_lstm_228_layer_call_fn_2229647}-./O?L
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
*__inference_lstm_228_layer_call_fn_2229658d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_228_layer_call_fn_2229669d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_229_layer_call_and_return_conditional_losses_2230428?012O?L
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
E__inference_lstm_229_layer_call_and_return_conditional_losses_2230571?012O?L
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
E__inference_lstm_229_layer_call_and_return_conditional_losses_2230714q012??<
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
E__inference_lstm_229_layer_call_and_return_conditional_losses_2230857q012??<
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
*__inference_lstm_229_layer_call_fn_2230252}012O?L
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
*__inference_lstm_229_layer_call_fn_2230263}012O?L
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
*__inference_lstm_229_layer_call_fn_2230274d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_229_layer_call_fn_2230285d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_230_layer_call_and_return_conditional_losses_2231044}345O?L
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
E__inference_lstm_230_layer_call_and_return_conditional_losses_2231187}345O?L
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
E__inference_lstm_230_layer_call_and_return_conditional_losses_2231330m345??<
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
E__inference_lstm_230_layer_call_and_return_conditional_losses_2231473m345??<
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
*__inference_lstm_230_layer_call_fn_2230868p345O?L
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
*__inference_lstm_230_layer_call_fn_2230879p345O?L
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
*__inference_lstm_230_layer_call_fn_2230890`345??<
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
*__inference_lstm_230_layer_call_fn_2230901`345??<
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
J__inference_lstm_cell_366_layer_call_and_return_conditional_losses_2231558?-./??}
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
J__inference_lstm_cell_366_layer_call_and_return_conditional_losses_2231590?-./??}
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
/__inference_lstm_cell_366_layer_call_fn_2231509?-./??}
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
/__inference_lstm_cell_366_layer_call_fn_2231526?-./??}
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
J__inference_lstm_cell_367_layer_call_and_return_conditional_losses_2231656?012??}
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
J__inference_lstm_cell_367_layer_call_and_return_conditional_losses_2231688?012??}
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
/__inference_lstm_cell_367_layer_call_fn_2231607?012??}
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
/__inference_lstm_cell_367_layer_call_fn_2231624?012??}
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
J__inference_lstm_cell_368_layer_call_and_return_conditional_losses_2231754?345??}
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
J__inference_lstm_cell_368_layer_call_and_return_conditional_losses_2231786?345??}
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
/__inference_lstm_cell_368_layer_call_fn_2231705?345??}
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
/__inference_lstm_cell_368_layer_call_fn_2231722?345??}
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
J__inference_sequential_76_layer_call_and_return_conditional_losses_2228652y-./012345!"C?@
9?6
,?)
lstm_228_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_76_layer_call_and_return_conditional_losses_2228682y-./012345!"C?@
9?6
,?)
lstm_228_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_76_layer_call_and_return_conditional_losses_2229198q-./012345!";?8
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
J__inference_sequential_76_layer_call_and_return_conditional_losses_2229625q-./012345!";?8
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
/__inference_sequential_76_layer_call_fn_2228006l-./012345!"C?@
9?6
,?)
lstm_228_input?????????
p 

 
? "???????????
/__inference_sequential_76_layer_call_fn_2228622l-./012345!"C?@
9?6
,?)
lstm_228_input?????????
p

 
? "???????????
/__inference_sequential_76_layer_call_fn_2228744d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_76_layer_call_fn_2228771d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_2228717?-./012345!"M?J
? 
C?@
>
lstm_228_input,?)
lstm_228_input?????????"3?0
.
dense_76"?
dense_76?????????