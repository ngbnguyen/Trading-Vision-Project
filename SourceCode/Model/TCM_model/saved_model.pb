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
dense_82/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_82/kernel
s
#dense_82/kernel/Read/ReadVariableOpReadVariableOpdense_82/kernel*
_output_shapes

:
*
dtype0
r
dense_82/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_82/bias
k
!dense_82/bias/Read/ReadVariableOpReadVariableOpdense_82/bias*
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
lstm_246/lstm_cell_246/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_246/lstm_cell_246/kernel
?
1lstm_246/lstm_cell_246/kernel/Read/ReadVariableOpReadVariableOplstm_246/lstm_cell_246/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_246/lstm_cell_246/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_246/lstm_cell_246/recurrent_kernel
?
;lstm_246/lstm_cell_246/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_246/lstm_cell_246/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_246/lstm_cell_246/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_246/lstm_cell_246/bias
?
/lstm_246/lstm_cell_246/bias/Read/ReadVariableOpReadVariableOplstm_246/lstm_cell_246/bias*
_output_shapes	
:?*
dtype0
?
lstm_247/lstm_cell_247/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_247/lstm_cell_247/kernel
?
1lstm_247/lstm_cell_247/kernel/Read/ReadVariableOpReadVariableOplstm_247/lstm_cell_247/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_247/lstm_cell_247/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_247/lstm_cell_247/recurrent_kernel
?
;lstm_247/lstm_cell_247/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_247/lstm_cell_247/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_247/lstm_cell_247/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_247/lstm_cell_247/bias
?
/lstm_247/lstm_cell_247/bias/Read/ReadVariableOpReadVariableOplstm_247/lstm_cell_247/bias*
_output_shapes	
:?*
dtype0
?
lstm_248/lstm_cell_248/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_248/lstm_cell_248/kernel
?
1lstm_248/lstm_cell_248/kernel/Read/ReadVariableOpReadVariableOplstm_248/lstm_cell_248/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_248/lstm_cell_248/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_248/lstm_cell_248/recurrent_kernel
?
;lstm_248/lstm_cell_248/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_248/lstm_cell_248/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_248/lstm_cell_248/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_248/lstm_cell_248/bias
?
/lstm_248/lstm_cell_248/bias/Read/ReadVariableOpReadVariableOplstm_248/lstm_cell_248/bias*
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
Adam/dense_82/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_82/kernel/m
?
*Adam/dense_82/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_82/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_82/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_82/bias/m
y
(Adam/dense_82/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_82/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_246/lstm_cell_246/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_246/lstm_cell_246/kernel/m
?
8Adam/lstm_246/lstm_cell_246/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_246/lstm_cell_246/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_246/lstm_cell_246/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_246/lstm_cell_246/recurrent_kernel/m
?
BAdam/lstm_246/lstm_cell_246/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_246/lstm_cell_246/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_246/lstm_cell_246/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_246/lstm_cell_246/bias/m
?
6Adam/lstm_246/lstm_cell_246/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_246/lstm_cell_246/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_247/lstm_cell_247/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_247/lstm_cell_247/kernel/m
?
8Adam/lstm_247/lstm_cell_247/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_247/lstm_cell_247/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_247/lstm_cell_247/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_247/lstm_cell_247/recurrent_kernel/m
?
BAdam/lstm_247/lstm_cell_247/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_247/lstm_cell_247/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_247/lstm_cell_247/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_247/lstm_cell_247/bias/m
?
6Adam/lstm_247/lstm_cell_247/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_247/lstm_cell_247/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_248/lstm_cell_248/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_248/lstm_cell_248/kernel/m
?
8Adam/lstm_248/lstm_cell_248/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_248/lstm_cell_248/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_248/lstm_cell_248/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_248/lstm_cell_248/recurrent_kernel/m
?
BAdam/lstm_248/lstm_cell_248/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_248/lstm_cell_248/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_248/lstm_cell_248/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_248/lstm_cell_248/bias/m
?
6Adam/lstm_248/lstm_cell_248/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_248/lstm_cell_248/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_82/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_82/kernel/v
?
*Adam/dense_82/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_82/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_82/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_82/bias/v
y
(Adam/dense_82/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_82/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_246/lstm_cell_246/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_246/lstm_cell_246/kernel/v
?
8Adam/lstm_246/lstm_cell_246/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_246/lstm_cell_246/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_246/lstm_cell_246/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_246/lstm_cell_246/recurrent_kernel/v
?
BAdam/lstm_246/lstm_cell_246/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_246/lstm_cell_246/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_246/lstm_cell_246/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_246/lstm_cell_246/bias/v
?
6Adam/lstm_246/lstm_cell_246/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_246/lstm_cell_246/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_247/lstm_cell_247/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_247/lstm_cell_247/kernel/v
?
8Adam/lstm_247/lstm_cell_247/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_247/lstm_cell_247/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_247/lstm_cell_247/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_247/lstm_cell_247/recurrent_kernel/v
?
BAdam/lstm_247/lstm_cell_247/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_247/lstm_cell_247/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_247/lstm_cell_247/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_247/lstm_cell_247/bias/v
?
6Adam/lstm_247/lstm_cell_247/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_247/lstm_cell_247/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_248/lstm_cell_248/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_248/lstm_cell_248/kernel/v
?
8Adam/lstm_248/lstm_cell_248/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_248/lstm_cell_248/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_248/lstm_cell_248/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_248/lstm_cell_248/recurrent_kernel/v
?
BAdam/lstm_248/lstm_cell_248/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_248/lstm_cell_248/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_248/lstm_cell_248/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_248/lstm_cell_248/bias/v
?
6Adam/lstm_248/lstm_cell_248/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_248/lstm_cell_248/bias/v*
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
VARIABLE_VALUEdense_82/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_82/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_246/lstm_cell_246/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_246/lstm_cell_246/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_246/lstm_cell_246/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_247/lstm_cell_247/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_247/lstm_cell_247/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_247/lstm_cell_247/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_248/lstm_cell_248/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_248/lstm_cell_248/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_248/lstm_cell_248/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_82/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_82/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_246/lstm_cell_246/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_246/lstm_cell_246/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_246/lstm_cell_246/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_247/lstm_cell_247/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_247/lstm_cell_247/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_247/lstm_cell_247/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_248/lstm_cell_248/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_248/lstm_cell_248/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_248/lstm_cell_248/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_82/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_82/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_246/lstm_cell_246/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_246/lstm_cell_246/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_246/lstm_cell_246/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_247/lstm_cell_247/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_247/lstm_cell_247/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_247/lstm_cell_247/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_248/lstm_cell_248/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_248/lstm_cell_248/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_248/lstm_cell_248/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_246_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_246_inputlstm_246/lstm_cell_246/kernel'lstm_246/lstm_cell_246/recurrent_kernellstm_246/lstm_cell_246/biaslstm_247/lstm_cell_247/kernel'lstm_247/lstm_cell_247/recurrent_kernellstm_247/lstm_cell_247/biaslstm_248/lstm_cell_248/kernel'lstm_248/lstm_cell_248/recurrent_kernellstm_248/lstm_cell_248/biasdense_82/kerneldense_82/bias*
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
%__inference_signature_wrapper_1412386
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_82/kernel/Read/ReadVariableOp!dense_82/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_246/lstm_cell_246/kernel/Read/ReadVariableOp;lstm_246/lstm_cell_246/recurrent_kernel/Read/ReadVariableOp/lstm_246/lstm_cell_246/bias/Read/ReadVariableOp1lstm_247/lstm_cell_247/kernel/Read/ReadVariableOp;lstm_247/lstm_cell_247/recurrent_kernel/Read/ReadVariableOp/lstm_247/lstm_cell_247/bias/Read/ReadVariableOp1lstm_248/lstm_cell_248/kernel/Read/ReadVariableOp;lstm_248/lstm_cell_248/recurrent_kernel/Read/ReadVariableOp/lstm_248/lstm_cell_248/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_82/kernel/m/Read/ReadVariableOp(Adam/dense_82/bias/m/Read/ReadVariableOp8Adam/lstm_246/lstm_cell_246/kernel/m/Read/ReadVariableOpBAdam/lstm_246/lstm_cell_246/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_246/lstm_cell_246/bias/m/Read/ReadVariableOp8Adam/lstm_247/lstm_cell_247/kernel/m/Read/ReadVariableOpBAdam/lstm_247/lstm_cell_247/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_247/lstm_cell_247/bias/m/Read/ReadVariableOp8Adam/lstm_248/lstm_cell_248/kernel/m/Read/ReadVariableOpBAdam/lstm_248/lstm_cell_248/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_248/lstm_cell_248/bias/m/Read/ReadVariableOp*Adam/dense_82/kernel/v/Read/ReadVariableOp(Adam/dense_82/bias/v/Read/ReadVariableOp8Adam/lstm_246/lstm_cell_246/kernel/v/Read/ReadVariableOpBAdam/lstm_246/lstm_cell_246/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_246/lstm_cell_246/bias/v/Read/ReadVariableOp8Adam/lstm_247/lstm_cell_247/kernel/v/Read/ReadVariableOpBAdam/lstm_247/lstm_cell_247/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_247/lstm_cell_247/bias/v/Read/ReadVariableOp8Adam/lstm_248/lstm_cell_248/kernel/v/Read/ReadVariableOpBAdam/lstm_248/lstm_cell_248/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_248/lstm_cell_248/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_1415598
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_82/kerneldense_82/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_246/lstm_cell_246/kernel'lstm_246/lstm_cell_246/recurrent_kernellstm_246/lstm_cell_246/biaslstm_247/lstm_cell_247/kernel'lstm_247/lstm_cell_247/recurrent_kernellstm_247/lstm_cell_247/biaslstm_248/lstm_cell_248/kernel'lstm_248/lstm_cell_248/recurrent_kernellstm_248/lstm_cell_248/biastotalcountAdam/dense_82/kernel/mAdam/dense_82/bias/m$Adam/lstm_246/lstm_cell_246/kernel/m.Adam/lstm_246/lstm_cell_246/recurrent_kernel/m"Adam/lstm_246/lstm_cell_246/bias/m$Adam/lstm_247/lstm_cell_247/kernel/m.Adam/lstm_247/lstm_cell_247/recurrent_kernel/m"Adam/lstm_247/lstm_cell_247/bias/m$Adam/lstm_248/lstm_cell_248/kernel/m.Adam/lstm_248/lstm_cell_248/recurrent_kernel/m"Adam/lstm_248/lstm_cell_248/bias/mAdam/dense_82/kernel/vAdam/dense_82/bias/v$Adam/lstm_246/lstm_cell_246/kernel/v.Adam/lstm_246/lstm_cell_246/recurrent_kernel/v"Adam/lstm_246/lstm_cell_246/bias/v$Adam/lstm_247/lstm_cell_247/kernel/v.Adam/lstm_247/lstm_cell_247/recurrent_kernel/v"Adam/lstm_247/lstm_cell_247/bias/v$Adam/lstm_248/lstm_cell_248/kernel/v.Adam/lstm_248/lstm_cell_248/recurrent_kernel/v"Adam/lstm_248/lstm_cell_248/bias/v*4
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
#__inference__traced_restore_1415728??+
?8
?
E__inference_lstm_247_layer_call_and_return_conditional_losses_1410626

inputs(
lstm_cell_232_1410544:	d?(
lstm_cell_232_1410546:	2?$
lstm_cell_232_1410548:	?
identity??%lstm_cell_232/StatefulPartitionedCall?while;
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
%lstm_cell_232/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_232_1410544lstm_cell_232_1410546lstm_cell_232_1410548*
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
J__inference_lstm_cell_232_layer_call_and_return_conditional_losses_1410543n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_232_1410544lstm_cell_232_1410546lstm_cell_232_1410548*
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
while_body_1410557*
condR
while_cond_1410556*K
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
NoOpNoOp&^lstm_cell_232/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_232/StatefulPartitionedCall%lstm_cell_232/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
while_body_1411241
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_231_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_231_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_231_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_231_matmul_readvariableop_resource:	?G
4while_lstm_cell_231_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_231_biasadd_readvariableop_resource:	???*while/lstm_cell_231/BiasAdd/ReadVariableOp?)while/lstm_cell_231/MatMul/ReadVariableOp?+while/lstm_cell_231/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_231/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_231_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_231/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_231/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_231/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_231_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_231/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_231/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_231/addAddV2$while/lstm_cell_231/MatMul:product:0&while/lstm_cell_231/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_231/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_231_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_231/BiasAddBiasAddwhile/lstm_cell_231/add:z:02while/lstm_cell_231/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_231/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_231/splitSplit,while/lstm_cell_231/split/split_dim:output:0$while/lstm_cell_231/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_231/SigmoidSigmoid"while/lstm_cell_231/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_231/Sigmoid_1Sigmoid"while/lstm_cell_231/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_231/mulMul!while/lstm_cell_231/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_231/ReluRelu"while/lstm_cell_231/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_231/mul_1Mulwhile/lstm_cell_231/Sigmoid:y:0&while/lstm_cell_231/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_231/add_1AddV2while/lstm_cell_231/mul:z:0while/lstm_cell_231/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_231/Sigmoid_2Sigmoid"while/lstm_cell_231/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_231/Relu_1Reluwhile/lstm_cell_231/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_231/mul_2Mul!while/lstm_cell_231/Sigmoid_2:y:0(while/lstm_cell_231/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_231/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_231/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_231/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_231/BiasAdd/ReadVariableOp*^while/lstm_cell_231/MatMul/ReadVariableOp,^while/lstm_cell_231/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_231_biasadd_readvariableop_resource5while_lstm_cell_231_biasadd_readvariableop_resource_0"n
4while_lstm_cell_231_matmul_1_readvariableop_resource6while_lstm_cell_231_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_231_matmul_readvariableop_resource4while_lstm_cell_231_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_231/BiasAdd/ReadVariableOp*while/lstm_cell_231/BiasAdd/ReadVariableOp2V
)while/lstm_cell_231/MatMul/ReadVariableOp)while/lstm_cell_231/MatMul/ReadVariableOp2Z
+while/lstm_cell_231/MatMul_1/ReadVariableOp+while/lstm_cell_231/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1410207
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_231_1410231_0:	?0
while_lstm_cell_231_1410233_0:	d?,
while_lstm_cell_231_1410235_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_231_1410231:	?.
while_lstm_cell_231_1410233:	d?*
while_lstm_cell_231_1410235:	???+while/lstm_cell_231/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_231/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_231_1410231_0while_lstm_cell_231_1410233_0while_lstm_cell_231_1410235_0*
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
J__inference_lstm_cell_231_layer_call_and_return_conditional_losses_1410193?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_231/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_231/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_231/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_231/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_231_1410231while_lstm_cell_231_1410231_0"<
while_lstm_cell_231_1410233while_lstm_cell_231_1410233_0"<
while_lstm_cell_231_1410235while_lstm_cell_231_1410235_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_231/StatefulPartitionedCall+while/lstm_cell_231/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_247_layer_call_and_return_conditional_losses_1411475

inputs?
,lstm_cell_232_matmul_readvariableop_resource:	d?A
.lstm_cell_232_matmul_1_readvariableop_resource:	2?<
-lstm_cell_232_biasadd_readvariableop_resource:	?
identity??$lstm_cell_232/BiasAdd/ReadVariableOp?#lstm_cell_232/MatMul/ReadVariableOp?%lstm_cell_232/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_232/MatMul/ReadVariableOpReadVariableOp,lstm_cell_232_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_232/MatMulMatMulstrided_slice_2:output:0+lstm_cell_232/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_232/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_232_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_232/MatMul_1MatMulzeros:output:0-lstm_cell_232/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_232/addAddV2lstm_cell_232/MatMul:product:0 lstm_cell_232/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_232/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_232_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_232/BiasAddBiasAddlstm_cell_232/add:z:0,lstm_cell_232/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_232/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_232/splitSplit&lstm_cell_232/split/split_dim:output:0lstm_cell_232/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_232/SigmoidSigmoidlstm_cell_232/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_232/Sigmoid_1Sigmoidlstm_cell_232/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_232/mulMullstm_cell_232/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_232/ReluRelulstm_cell_232/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_232/mul_1Mullstm_cell_232/Sigmoid:y:0 lstm_cell_232/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_232/add_1AddV2lstm_cell_232/mul:z:0lstm_cell_232/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_232/Sigmoid_2Sigmoidlstm_cell_232/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_232/Relu_1Relulstm_cell_232/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_232/mul_2Mullstm_cell_232/Sigmoid_2:y:0"lstm_cell_232/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_232_matmul_readvariableop_resource.lstm_cell_232_matmul_1_readvariableop_resource-lstm_cell_232_biasadd_readvariableop_resource*
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
while_body_1411391*
condR
while_cond_1411390*K
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
NoOpNoOp%^lstm_cell_232/BiasAdd/ReadVariableOp$^lstm_cell_232/MatMul/ReadVariableOp&^lstm_cell_232/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_232/BiasAdd/ReadVariableOp$lstm_cell_232/BiasAdd/ReadVariableOp2J
#lstm_cell_232/MatMul/ReadVariableOp#lstm_cell_232/MatMul/ReadVariableOp2N
%lstm_cell_232/MatMul_1/ReadVariableOp%lstm_cell_232/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_246_layer_call_and_return_conditional_losses_1413767

inputs?
,lstm_cell_231_matmul_readvariableop_resource:	?A
.lstm_cell_231_matmul_1_readvariableop_resource:	d?<
-lstm_cell_231_biasadd_readvariableop_resource:	?
identity??$lstm_cell_231/BiasAdd/ReadVariableOp?#lstm_cell_231/MatMul/ReadVariableOp?%lstm_cell_231/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_231/MatMul/ReadVariableOpReadVariableOp,lstm_cell_231_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_231/MatMulMatMulstrided_slice_2:output:0+lstm_cell_231/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_231/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_231_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_231/MatMul_1MatMulzeros:output:0-lstm_cell_231/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_231/addAddV2lstm_cell_231/MatMul:product:0 lstm_cell_231/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_231/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_231_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_231/BiasAddBiasAddlstm_cell_231/add:z:0,lstm_cell_231/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_231/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_231/splitSplit&lstm_cell_231/split/split_dim:output:0lstm_cell_231/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_231/SigmoidSigmoidlstm_cell_231/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_231/Sigmoid_1Sigmoidlstm_cell_231/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_231/mulMullstm_cell_231/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_231/ReluRelulstm_cell_231/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_231/mul_1Mullstm_cell_231/Sigmoid:y:0 lstm_cell_231/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_231/add_1AddV2lstm_cell_231/mul:z:0lstm_cell_231/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_231/Sigmoid_2Sigmoidlstm_cell_231/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_231/Relu_1Relulstm_cell_231/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_231/mul_2Mullstm_cell_231/Sigmoid_2:y:0"lstm_cell_231/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_231_matmul_readvariableop_resource.lstm_cell_231_matmul_1_readvariableop_resource-lstm_cell_231_biasadd_readvariableop_resource*
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
while_body_1413683*
condR
while_cond_1413682*K
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
NoOpNoOp%^lstm_cell_231/BiasAdd/ReadVariableOp$^lstm_cell_231/MatMul/ReadVariableOp&^lstm_cell_231/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_231/BiasAdd/ReadVariableOp$lstm_cell_231/BiasAdd/ReadVariableOp2J
#lstm_cell_231/MatMul/ReadVariableOp#lstm_cell_231/MatMul/ReadVariableOp2N
%lstm_cell_231/MatMul_1/ReadVariableOp%lstm_cell_231/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_248_layer_call_fn_1414570

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
E__inference_lstm_248_layer_call_and_return_conditional_losses_1411841o
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
E__inference_lstm_248_layer_call_and_return_conditional_losses_1414999

inputs>
,lstm_cell_233_matmul_readvariableop_resource:2(@
.lstm_cell_233_matmul_1_readvariableop_resource:
(;
-lstm_cell_233_biasadd_readvariableop_resource:(
identity??$lstm_cell_233/BiasAdd/ReadVariableOp?#lstm_cell_233/MatMul/ReadVariableOp?%lstm_cell_233/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_233/MatMul/ReadVariableOpReadVariableOp,lstm_cell_233_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_233/MatMulMatMulstrided_slice_2:output:0+lstm_cell_233/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_233/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_233_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_233/MatMul_1MatMulzeros:output:0-lstm_cell_233/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_233/addAddV2lstm_cell_233/MatMul:product:0 lstm_cell_233/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_233/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_233_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_233/BiasAddBiasAddlstm_cell_233/add:z:0,lstm_cell_233/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_233/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_233/splitSplit&lstm_cell_233/split/split_dim:output:0lstm_cell_233/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_233/SigmoidSigmoidlstm_cell_233/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_233/Sigmoid_1Sigmoidlstm_cell_233/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_233/mulMullstm_cell_233/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_233/ReluRelulstm_cell_233/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_233/mul_1Mullstm_cell_233/Sigmoid:y:0 lstm_cell_233/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_233/add_1AddV2lstm_cell_233/mul:z:0lstm_cell_233/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_233/Sigmoid_2Sigmoidlstm_cell_233/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_233/Relu_1Relulstm_cell_233/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_233/mul_2Mullstm_cell_233/Sigmoid_2:y:0"lstm_cell_233/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_233_matmul_readvariableop_resource.lstm_cell_233_matmul_1_readvariableop_resource-lstm_cell_233_biasadd_readvariableop_resource*
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
while_body_1414915*
condR
while_cond_1414914*K
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
NoOpNoOp%^lstm_cell_233/BiasAdd/ReadVariableOp$^lstm_cell_233/MatMul/ReadVariableOp&^lstm_cell_233/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_233/BiasAdd/ReadVariableOp$lstm_cell_233/BiasAdd/ReadVariableOp2J
#lstm_cell_233/MatMul/ReadVariableOp#lstm_cell_233/MatMul/ReadVariableOp2N
%lstm_cell_233/MatMul_1/ReadVariableOp%lstm_cell_233/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
/__inference_sequential_82_layer_call_fn_1412291
lstm_246_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_246_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_82_layer_call_and_return_conditional_losses_1412239o
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
_user_specified_namelstm_246_input
??
?
"__inference__wrapped_model_1410126
lstm_246_inputV
Csequential_82_lstm_246_lstm_cell_231_matmul_readvariableop_resource:	?X
Esequential_82_lstm_246_lstm_cell_231_matmul_1_readvariableop_resource:	d?S
Dsequential_82_lstm_246_lstm_cell_231_biasadd_readvariableop_resource:	?V
Csequential_82_lstm_247_lstm_cell_232_matmul_readvariableop_resource:	d?X
Esequential_82_lstm_247_lstm_cell_232_matmul_1_readvariableop_resource:	2?S
Dsequential_82_lstm_247_lstm_cell_232_biasadd_readvariableop_resource:	?U
Csequential_82_lstm_248_lstm_cell_233_matmul_readvariableop_resource:2(W
Esequential_82_lstm_248_lstm_cell_233_matmul_1_readvariableop_resource:
(R
Dsequential_82_lstm_248_lstm_cell_233_biasadd_readvariableop_resource:(G
5sequential_82_dense_82_matmul_readvariableop_resource:
D
6sequential_82_dense_82_biasadd_readvariableop_resource:
identity??-sequential_82/dense_82/BiasAdd/ReadVariableOp?,sequential_82/dense_82/MatMul/ReadVariableOp?;sequential_82/lstm_246/lstm_cell_231/BiasAdd/ReadVariableOp?:sequential_82/lstm_246/lstm_cell_231/MatMul/ReadVariableOp?<sequential_82/lstm_246/lstm_cell_231/MatMul_1/ReadVariableOp?sequential_82/lstm_246/while?;sequential_82/lstm_247/lstm_cell_232/BiasAdd/ReadVariableOp?:sequential_82/lstm_247/lstm_cell_232/MatMul/ReadVariableOp?<sequential_82/lstm_247/lstm_cell_232/MatMul_1/ReadVariableOp?sequential_82/lstm_247/while?;sequential_82/lstm_248/lstm_cell_233/BiasAdd/ReadVariableOp?:sequential_82/lstm_248/lstm_cell_233/MatMul/ReadVariableOp?<sequential_82/lstm_248/lstm_cell_233/MatMul_1/ReadVariableOp?sequential_82/lstm_248/whileZ
sequential_82/lstm_246/ShapeShapelstm_246_input*
T0*
_output_shapes
:t
*sequential_82/lstm_246/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_82/lstm_246/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_82/lstm_246/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_82/lstm_246/strided_sliceStridedSlice%sequential_82/lstm_246/Shape:output:03sequential_82/lstm_246/strided_slice/stack:output:05sequential_82/lstm_246/strided_slice/stack_1:output:05sequential_82/lstm_246/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_82/lstm_246/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
#sequential_82/lstm_246/zeros/packedPack-sequential_82/lstm_246/strided_slice:output:0.sequential_82/lstm_246/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_82/lstm_246/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_82/lstm_246/zerosFill,sequential_82/lstm_246/zeros/packed:output:0+sequential_82/lstm_246/zeros/Const:output:0*
T0*'
_output_shapes
:?????????di
'sequential_82/lstm_246/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
%sequential_82/lstm_246/zeros_1/packedPack-sequential_82/lstm_246/strided_slice:output:00sequential_82/lstm_246/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_82/lstm_246/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_82/lstm_246/zeros_1Fill.sequential_82/lstm_246/zeros_1/packed:output:0-sequential_82/lstm_246/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dz
%sequential_82/lstm_246/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_82/lstm_246/transpose	Transposelstm_246_input.sequential_82/lstm_246/transpose/perm:output:0*
T0*+
_output_shapes
:?????????r
sequential_82/lstm_246/Shape_1Shape$sequential_82/lstm_246/transpose:y:0*
T0*
_output_shapes
:v
,sequential_82/lstm_246/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_82/lstm_246/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_82/lstm_246/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_82/lstm_246/strided_slice_1StridedSlice'sequential_82/lstm_246/Shape_1:output:05sequential_82/lstm_246/strided_slice_1/stack:output:07sequential_82/lstm_246/strided_slice_1/stack_1:output:07sequential_82/lstm_246/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_82/lstm_246/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_82/lstm_246/TensorArrayV2TensorListReserve;sequential_82/lstm_246/TensorArrayV2/element_shape:output:0/sequential_82/lstm_246/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_82/lstm_246/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
>sequential_82/lstm_246/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_82/lstm_246/transpose:y:0Usequential_82/lstm_246/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_82/lstm_246/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_82/lstm_246/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_82/lstm_246/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_82/lstm_246/strided_slice_2StridedSlice$sequential_82/lstm_246/transpose:y:05sequential_82/lstm_246/strided_slice_2/stack:output:07sequential_82/lstm_246/strided_slice_2/stack_1:output:07sequential_82/lstm_246/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
:sequential_82/lstm_246/lstm_cell_231/MatMul/ReadVariableOpReadVariableOpCsequential_82_lstm_246_lstm_cell_231_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
+sequential_82/lstm_246/lstm_cell_231/MatMulMatMul/sequential_82/lstm_246/strided_slice_2:output:0Bsequential_82/lstm_246/lstm_cell_231/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_82/lstm_246/lstm_cell_231/MatMul_1/ReadVariableOpReadVariableOpEsequential_82_lstm_246_lstm_cell_231_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
-sequential_82/lstm_246/lstm_cell_231/MatMul_1MatMul%sequential_82/lstm_246/zeros:output:0Dsequential_82/lstm_246/lstm_cell_231/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_82/lstm_246/lstm_cell_231/addAddV25sequential_82/lstm_246/lstm_cell_231/MatMul:product:07sequential_82/lstm_246/lstm_cell_231/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_82/lstm_246/lstm_cell_231/BiasAdd/ReadVariableOpReadVariableOpDsequential_82_lstm_246_lstm_cell_231_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_82/lstm_246/lstm_cell_231/BiasAddBiasAdd,sequential_82/lstm_246/lstm_cell_231/add:z:0Csequential_82/lstm_246/lstm_cell_231/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_82/lstm_246/lstm_cell_231/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_82/lstm_246/lstm_cell_231/splitSplit=sequential_82/lstm_246/lstm_cell_231/split/split_dim:output:05sequential_82/lstm_246/lstm_cell_231/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
,sequential_82/lstm_246/lstm_cell_231/SigmoidSigmoid3sequential_82/lstm_246/lstm_cell_231/split:output:0*
T0*'
_output_shapes
:?????????d?
.sequential_82/lstm_246/lstm_cell_231/Sigmoid_1Sigmoid3sequential_82/lstm_246/lstm_cell_231/split:output:1*
T0*'
_output_shapes
:?????????d?
(sequential_82/lstm_246/lstm_cell_231/mulMul2sequential_82/lstm_246/lstm_cell_231/Sigmoid_1:y:0'sequential_82/lstm_246/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
)sequential_82/lstm_246/lstm_cell_231/ReluRelu3sequential_82/lstm_246/lstm_cell_231/split:output:2*
T0*'
_output_shapes
:?????????d?
*sequential_82/lstm_246/lstm_cell_231/mul_1Mul0sequential_82/lstm_246/lstm_cell_231/Sigmoid:y:07sequential_82/lstm_246/lstm_cell_231/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
*sequential_82/lstm_246/lstm_cell_231/add_1AddV2,sequential_82/lstm_246/lstm_cell_231/mul:z:0.sequential_82/lstm_246/lstm_cell_231/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
.sequential_82/lstm_246/lstm_cell_231/Sigmoid_2Sigmoid3sequential_82/lstm_246/lstm_cell_231/split:output:3*
T0*'
_output_shapes
:?????????d?
+sequential_82/lstm_246/lstm_cell_231/Relu_1Relu.sequential_82/lstm_246/lstm_cell_231/add_1:z:0*
T0*'
_output_shapes
:?????????d?
*sequential_82/lstm_246/lstm_cell_231/mul_2Mul2sequential_82/lstm_246/lstm_cell_231/Sigmoid_2:y:09sequential_82/lstm_246/lstm_cell_231/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
4sequential_82/lstm_246/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
&sequential_82/lstm_246/TensorArrayV2_1TensorListReserve=sequential_82/lstm_246/TensorArrayV2_1/element_shape:output:0/sequential_82/lstm_246/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_82/lstm_246/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_82/lstm_246/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_82/lstm_246/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_82/lstm_246/whileWhile2sequential_82/lstm_246/while/loop_counter:output:08sequential_82/lstm_246/while/maximum_iterations:output:0$sequential_82/lstm_246/time:output:0/sequential_82/lstm_246/TensorArrayV2_1:handle:0%sequential_82/lstm_246/zeros:output:0'sequential_82/lstm_246/zeros_1:output:0/sequential_82/lstm_246/strided_slice_1:output:0Nsequential_82/lstm_246/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_82_lstm_246_lstm_cell_231_matmul_readvariableop_resourceEsequential_82_lstm_246_lstm_cell_231_matmul_1_readvariableop_resourceDsequential_82_lstm_246_lstm_cell_231_biasadd_readvariableop_resource*
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
)sequential_82_lstm_246_while_body_1409758*5
cond-R+
)sequential_82_lstm_246_while_cond_1409757*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Gsequential_82/lstm_246/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
9sequential_82/lstm_246/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_82/lstm_246/while:output:3Psequential_82/lstm_246/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0
,sequential_82/lstm_246/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_82/lstm_246/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_82/lstm_246/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_82/lstm_246/strided_slice_3StridedSliceBsequential_82/lstm_246/TensorArrayV2Stack/TensorListStack:tensor:05sequential_82/lstm_246/strided_slice_3/stack:output:07sequential_82/lstm_246/strided_slice_3/stack_1:output:07sequential_82/lstm_246/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask|
'sequential_82/lstm_246/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_82/lstm_246/transpose_1	TransposeBsequential_82/lstm_246/TensorArrayV2Stack/TensorListStack:tensor:00sequential_82/lstm_246/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_82/lstm_246/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_82/lstm_247/ShapeShape&sequential_82/lstm_246/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_82/lstm_247/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_82/lstm_247/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_82/lstm_247/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_82/lstm_247/strided_sliceStridedSlice%sequential_82/lstm_247/Shape:output:03sequential_82/lstm_247/strided_slice/stack:output:05sequential_82/lstm_247/strided_slice/stack_1:output:05sequential_82/lstm_247/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_82/lstm_247/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
#sequential_82/lstm_247/zeros/packedPack-sequential_82/lstm_247/strided_slice:output:0.sequential_82/lstm_247/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_82/lstm_247/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_82/lstm_247/zerosFill,sequential_82/lstm_247/zeros/packed:output:0+sequential_82/lstm_247/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2i
'sequential_82/lstm_247/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
%sequential_82/lstm_247/zeros_1/packedPack-sequential_82/lstm_247/strided_slice:output:00sequential_82/lstm_247/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_82/lstm_247/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_82/lstm_247/zeros_1Fill.sequential_82/lstm_247/zeros_1/packed:output:0-sequential_82/lstm_247/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2z
%sequential_82/lstm_247/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_82/lstm_247/transpose	Transpose&sequential_82/lstm_246/transpose_1:y:0.sequential_82/lstm_247/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_82/lstm_247/Shape_1Shape$sequential_82/lstm_247/transpose:y:0*
T0*
_output_shapes
:v
,sequential_82/lstm_247/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_82/lstm_247/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_82/lstm_247/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_82/lstm_247/strided_slice_1StridedSlice'sequential_82/lstm_247/Shape_1:output:05sequential_82/lstm_247/strided_slice_1/stack:output:07sequential_82/lstm_247/strided_slice_1/stack_1:output:07sequential_82/lstm_247/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_82/lstm_247/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_82/lstm_247/TensorArrayV2TensorListReserve;sequential_82/lstm_247/TensorArrayV2/element_shape:output:0/sequential_82/lstm_247/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_82/lstm_247/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
>sequential_82/lstm_247/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_82/lstm_247/transpose:y:0Usequential_82/lstm_247/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_82/lstm_247/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_82/lstm_247/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_82/lstm_247/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_82/lstm_247/strided_slice_2StridedSlice$sequential_82/lstm_247/transpose:y:05sequential_82/lstm_247/strided_slice_2/stack:output:07sequential_82/lstm_247/strided_slice_2/stack_1:output:07sequential_82/lstm_247/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
:sequential_82/lstm_247/lstm_cell_232/MatMul/ReadVariableOpReadVariableOpCsequential_82_lstm_247_lstm_cell_232_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
+sequential_82/lstm_247/lstm_cell_232/MatMulMatMul/sequential_82/lstm_247/strided_slice_2:output:0Bsequential_82/lstm_247/lstm_cell_232/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_82/lstm_247/lstm_cell_232/MatMul_1/ReadVariableOpReadVariableOpEsequential_82_lstm_247_lstm_cell_232_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
-sequential_82/lstm_247/lstm_cell_232/MatMul_1MatMul%sequential_82/lstm_247/zeros:output:0Dsequential_82/lstm_247/lstm_cell_232/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_82/lstm_247/lstm_cell_232/addAddV25sequential_82/lstm_247/lstm_cell_232/MatMul:product:07sequential_82/lstm_247/lstm_cell_232/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_82/lstm_247/lstm_cell_232/BiasAdd/ReadVariableOpReadVariableOpDsequential_82_lstm_247_lstm_cell_232_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_82/lstm_247/lstm_cell_232/BiasAddBiasAdd,sequential_82/lstm_247/lstm_cell_232/add:z:0Csequential_82/lstm_247/lstm_cell_232/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_82/lstm_247/lstm_cell_232/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_82/lstm_247/lstm_cell_232/splitSplit=sequential_82/lstm_247/lstm_cell_232/split/split_dim:output:05sequential_82/lstm_247/lstm_cell_232/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
,sequential_82/lstm_247/lstm_cell_232/SigmoidSigmoid3sequential_82/lstm_247/lstm_cell_232/split:output:0*
T0*'
_output_shapes
:?????????2?
.sequential_82/lstm_247/lstm_cell_232/Sigmoid_1Sigmoid3sequential_82/lstm_247/lstm_cell_232/split:output:1*
T0*'
_output_shapes
:?????????2?
(sequential_82/lstm_247/lstm_cell_232/mulMul2sequential_82/lstm_247/lstm_cell_232/Sigmoid_1:y:0'sequential_82/lstm_247/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
)sequential_82/lstm_247/lstm_cell_232/ReluRelu3sequential_82/lstm_247/lstm_cell_232/split:output:2*
T0*'
_output_shapes
:?????????2?
*sequential_82/lstm_247/lstm_cell_232/mul_1Mul0sequential_82/lstm_247/lstm_cell_232/Sigmoid:y:07sequential_82/lstm_247/lstm_cell_232/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
*sequential_82/lstm_247/lstm_cell_232/add_1AddV2,sequential_82/lstm_247/lstm_cell_232/mul:z:0.sequential_82/lstm_247/lstm_cell_232/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
.sequential_82/lstm_247/lstm_cell_232/Sigmoid_2Sigmoid3sequential_82/lstm_247/lstm_cell_232/split:output:3*
T0*'
_output_shapes
:?????????2?
+sequential_82/lstm_247/lstm_cell_232/Relu_1Relu.sequential_82/lstm_247/lstm_cell_232/add_1:z:0*
T0*'
_output_shapes
:?????????2?
*sequential_82/lstm_247/lstm_cell_232/mul_2Mul2sequential_82/lstm_247/lstm_cell_232/Sigmoid_2:y:09sequential_82/lstm_247/lstm_cell_232/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
4sequential_82/lstm_247/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
&sequential_82/lstm_247/TensorArrayV2_1TensorListReserve=sequential_82/lstm_247/TensorArrayV2_1/element_shape:output:0/sequential_82/lstm_247/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_82/lstm_247/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_82/lstm_247/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_82/lstm_247/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_82/lstm_247/whileWhile2sequential_82/lstm_247/while/loop_counter:output:08sequential_82/lstm_247/while/maximum_iterations:output:0$sequential_82/lstm_247/time:output:0/sequential_82/lstm_247/TensorArrayV2_1:handle:0%sequential_82/lstm_247/zeros:output:0'sequential_82/lstm_247/zeros_1:output:0/sequential_82/lstm_247/strided_slice_1:output:0Nsequential_82/lstm_247/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_82_lstm_247_lstm_cell_232_matmul_readvariableop_resourceEsequential_82_lstm_247_lstm_cell_232_matmul_1_readvariableop_resourceDsequential_82_lstm_247_lstm_cell_232_biasadd_readvariableop_resource*
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
)sequential_82_lstm_247_while_body_1409897*5
cond-R+
)sequential_82_lstm_247_while_cond_1409896*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Gsequential_82/lstm_247/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
9sequential_82/lstm_247/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_82/lstm_247/while:output:3Psequential_82/lstm_247/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0
,sequential_82/lstm_247/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_82/lstm_247/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_82/lstm_247/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_82/lstm_247/strided_slice_3StridedSliceBsequential_82/lstm_247/TensorArrayV2Stack/TensorListStack:tensor:05sequential_82/lstm_247/strided_slice_3/stack:output:07sequential_82/lstm_247/strided_slice_3/stack_1:output:07sequential_82/lstm_247/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask|
'sequential_82/lstm_247/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_82/lstm_247/transpose_1	TransposeBsequential_82/lstm_247/TensorArrayV2Stack/TensorListStack:tensor:00sequential_82/lstm_247/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_82/lstm_247/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_82/lstm_248/ShapeShape&sequential_82/lstm_247/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_82/lstm_248/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_82/lstm_248/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_82/lstm_248/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_82/lstm_248/strided_sliceStridedSlice%sequential_82/lstm_248/Shape:output:03sequential_82/lstm_248/strided_slice/stack:output:05sequential_82/lstm_248/strided_slice/stack_1:output:05sequential_82/lstm_248/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_82/lstm_248/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
#sequential_82/lstm_248/zeros/packedPack-sequential_82/lstm_248/strided_slice:output:0.sequential_82/lstm_248/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_82/lstm_248/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_82/lstm_248/zerosFill,sequential_82/lstm_248/zeros/packed:output:0+sequential_82/lstm_248/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
i
'sequential_82/lstm_248/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
%sequential_82/lstm_248/zeros_1/packedPack-sequential_82/lstm_248/strided_slice:output:00sequential_82/lstm_248/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_82/lstm_248/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_82/lstm_248/zeros_1Fill.sequential_82/lstm_248/zeros_1/packed:output:0-sequential_82/lstm_248/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
z
%sequential_82/lstm_248/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_82/lstm_248/transpose	Transpose&sequential_82/lstm_247/transpose_1:y:0.sequential_82/lstm_248/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_82/lstm_248/Shape_1Shape$sequential_82/lstm_248/transpose:y:0*
T0*
_output_shapes
:v
,sequential_82/lstm_248/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_82/lstm_248/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_82/lstm_248/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_82/lstm_248/strided_slice_1StridedSlice'sequential_82/lstm_248/Shape_1:output:05sequential_82/lstm_248/strided_slice_1/stack:output:07sequential_82/lstm_248/strided_slice_1/stack_1:output:07sequential_82/lstm_248/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_82/lstm_248/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_82/lstm_248/TensorArrayV2TensorListReserve;sequential_82/lstm_248/TensorArrayV2/element_shape:output:0/sequential_82/lstm_248/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_82/lstm_248/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
>sequential_82/lstm_248/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_82/lstm_248/transpose:y:0Usequential_82/lstm_248/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_82/lstm_248/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_82/lstm_248/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_82/lstm_248/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_82/lstm_248/strided_slice_2StridedSlice$sequential_82/lstm_248/transpose:y:05sequential_82/lstm_248/strided_slice_2/stack:output:07sequential_82/lstm_248/strided_slice_2/stack_1:output:07sequential_82/lstm_248/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
:sequential_82/lstm_248/lstm_cell_233/MatMul/ReadVariableOpReadVariableOpCsequential_82_lstm_248_lstm_cell_233_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
+sequential_82/lstm_248/lstm_cell_233/MatMulMatMul/sequential_82/lstm_248/strided_slice_2:output:0Bsequential_82/lstm_248/lstm_cell_233/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
<sequential_82/lstm_248/lstm_cell_233/MatMul_1/ReadVariableOpReadVariableOpEsequential_82_lstm_248_lstm_cell_233_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
-sequential_82/lstm_248/lstm_cell_233/MatMul_1MatMul%sequential_82/lstm_248/zeros:output:0Dsequential_82/lstm_248/lstm_cell_233/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
(sequential_82/lstm_248/lstm_cell_233/addAddV25sequential_82/lstm_248/lstm_cell_233/MatMul:product:07sequential_82/lstm_248/lstm_cell_233/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
;sequential_82/lstm_248/lstm_cell_233/BiasAdd/ReadVariableOpReadVariableOpDsequential_82_lstm_248_lstm_cell_233_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
,sequential_82/lstm_248/lstm_cell_233/BiasAddBiasAdd,sequential_82/lstm_248/lstm_cell_233/add:z:0Csequential_82/lstm_248/lstm_cell_233/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(v
4sequential_82/lstm_248/lstm_cell_233/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_82/lstm_248/lstm_cell_233/splitSplit=sequential_82/lstm_248/lstm_cell_233/split/split_dim:output:05sequential_82/lstm_248/lstm_cell_233/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
,sequential_82/lstm_248/lstm_cell_233/SigmoidSigmoid3sequential_82/lstm_248/lstm_cell_233/split:output:0*
T0*'
_output_shapes
:?????????
?
.sequential_82/lstm_248/lstm_cell_233/Sigmoid_1Sigmoid3sequential_82/lstm_248/lstm_cell_233/split:output:1*
T0*'
_output_shapes
:?????????
?
(sequential_82/lstm_248/lstm_cell_233/mulMul2sequential_82/lstm_248/lstm_cell_233/Sigmoid_1:y:0'sequential_82/lstm_248/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
)sequential_82/lstm_248/lstm_cell_233/ReluRelu3sequential_82/lstm_248/lstm_cell_233/split:output:2*
T0*'
_output_shapes
:?????????
?
*sequential_82/lstm_248/lstm_cell_233/mul_1Mul0sequential_82/lstm_248/lstm_cell_233/Sigmoid:y:07sequential_82/lstm_248/lstm_cell_233/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
*sequential_82/lstm_248/lstm_cell_233/add_1AddV2,sequential_82/lstm_248/lstm_cell_233/mul:z:0.sequential_82/lstm_248/lstm_cell_233/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
.sequential_82/lstm_248/lstm_cell_233/Sigmoid_2Sigmoid3sequential_82/lstm_248/lstm_cell_233/split:output:3*
T0*'
_output_shapes
:?????????
?
+sequential_82/lstm_248/lstm_cell_233/Relu_1Relu.sequential_82/lstm_248/lstm_cell_233/add_1:z:0*
T0*'
_output_shapes
:?????????
?
*sequential_82/lstm_248/lstm_cell_233/mul_2Mul2sequential_82/lstm_248/lstm_cell_233/Sigmoid_2:y:09sequential_82/lstm_248/lstm_cell_233/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
4sequential_82/lstm_248/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
&sequential_82/lstm_248/TensorArrayV2_1TensorListReserve=sequential_82/lstm_248/TensorArrayV2_1/element_shape:output:0/sequential_82/lstm_248/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_82/lstm_248/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_82/lstm_248/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_82/lstm_248/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_82/lstm_248/whileWhile2sequential_82/lstm_248/while/loop_counter:output:08sequential_82/lstm_248/while/maximum_iterations:output:0$sequential_82/lstm_248/time:output:0/sequential_82/lstm_248/TensorArrayV2_1:handle:0%sequential_82/lstm_248/zeros:output:0'sequential_82/lstm_248/zeros_1:output:0/sequential_82/lstm_248/strided_slice_1:output:0Nsequential_82/lstm_248/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_82_lstm_248_lstm_cell_233_matmul_readvariableop_resourceEsequential_82_lstm_248_lstm_cell_233_matmul_1_readvariableop_resourceDsequential_82_lstm_248_lstm_cell_233_biasadd_readvariableop_resource*
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
)sequential_82_lstm_248_while_body_1410036*5
cond-R+
)sequential_82_lstm_248_while_cond_1410035*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Gsequential_82/lstm_248/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
9sequential_82/lstm_248/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_82/lstm_248/while:output:3Psequential_82/lstm_248/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0
,sequential_82/lstm_248/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_82/lstm_248/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_82/lstm_248/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_82/lstm_248/strided_slice_3StridedSliceBsequential_82/lstm_248/TensorArrayV2Stack/TensorListStack:tensor:05sequential_82/lstm_248/strided_slice_3/stack:output:07sequential_82/lstm_248/strided_slice_3/stack_1:output:07sequential_82/lstm_248/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask|
'sequential_82/lstm_248/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_82/lstm_248/transpose_1	TransposeBsequential_82/lstm_248/TensorArrayV2Stack/TensorListStack:tensor:00sequential_82/lstm_248/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
r
sequential_82/lstm_248/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_82/dense_82/MatMul/ReadVariableOpReadVariableOp5sequential_82_dense_82_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_82/dense_82/MatMulMatMul/sequential_82/lstm_248/strided_slice_3:output:04sequential_82/dense_82/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_82/dense_82/BiasAdd/ReadVariableOpReadVariableOp6sequential_82_dense_82_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_82/dense_82/BiasAddBiasAdd'sequential_82/dense_82/MatMul:product:05sequential_82/dense_82/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_82/dense_82/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_82/dense_82/BiasAdd/ReadVariableOp-^sequential_82/dense_82/MatMul/ReadVariableOp<^sequential_82/lstm_246/lstm_cell_231/BiasAdd/ReadVariableOp;^sequential_82/lstm_246/lstm_cell_231/MatMul/ReadVariableOp=^sequential_82/lstm_246/lstm_cell_231/MatMul_1/ReadVariableOp^sequential_82/lstm_246/while<^sequential_82/lstm_247/lstm_cell_232/BiasAdd/ReadVariableOp;^sequential_82/lstm_247/lstm_cell_232/MatMul/ReadVariableOp=^sequential_82/lstm_247/lstm_cell_232/MatMul_1/ReadVariableOp^sequential_82/lstm_247/while<^sequential_82/lstm_248/lstm_cell_233/BiasAdd/ReadVariableOp;^sequential_82/lstm_248/lstm_cell_233/MatMul/ReadVariableOp=^sequential_82/lstm_248/lstm_cell_233/MatMul_1/ReadVariableOp^sequential_82/lstm_248/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2^
-sequential_82/dense_82/BiasAdd/ReadVariableOp-sequential_82/dense_82/BiasAdd/ReadVariableOp2\
,sequential_82/dense_82/MatMul/ReadVariableOp,sequential_82/dense_82/MatMul/ReadVariableOp2z
;sequential_82/lstm_246/lstm_cell_231/BiasAdd/ReadVariableOp;sequential_82/lstm_246/lstm_cell_231/BiasAdd/ReadVariableOp2x
:sequential_82/lstm_246/lstm_cell_231/MatMul/ReadVariableOp:sequential_82/lstm_246/lstm_cell_231/MatMul/ReadVariableOp2|
<sequential_82/lstm_246/lstm_cell_231/MatMul_1/ReadVariableOp<sequential_82/lstm_246/lstm_cell_231/MatMul_1/ReadVariableOp2<
sequential_82/lstm_246/whilesequential_82/lstm_246/while2z
;sequential_82/lstm_247/lstm_cell_232/BiasAdd/ReadVariableOp;sequential_82/lstm_247/lstm_cell_232/BiasAdd/ReadVariableOp2x
:sequential_82/lstm_247/lstm_cell_232/MatMul/ReadVariableOp:sequential_82/lstm_247/lstm_cell_232/MatMul/ReadVariableOp2|
<sequential_82/lstm_247/lstm_cell_232/MatMul_1/ReadVariableOp<sequential_82/lstm_247/lstm_cell_232/MatMul_1/ReadVariableOp2<
sequential_82/lstm_247/whilesequential_82/lstm_247/while2z
;sequential_82/lstm_248/lstm_cell_233/BiasAdd/ReadVariableOp;sequential_82/lstm_248/lstm_cell_233/BiasAdd/ReadVariableOp2x
:sequential_82/lstm_248/lstm_cell_233/MatMul/ReadVariableOp:sequential_82/lstm_248/lstm_cell_233/MatMul/ReadVariableOp2|
<sequential_82/lstm_248/lstm_cell_233/MatMul_1/ReadVariableOp<sequential_82/lstm_248/lstm_cell_233/MatMul_1/ReadVariableOp2<
sequential_82/lstm_248/whilesequential_82/lstm_248/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_246_input
?
?
while_cond_1413682
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1413682___redundant_placeholder05
1while_while_cond_1413682___redundant_placeholder15
1while_while_cond_1413682___redundant_placeholder25
1while_while_cond_1413682___redundant_placeholder3
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
J__inference_lstm_cell_232_layer_call_and_return_conditional_losses_1410543

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
?
E__inference_lstm_247_layer_call_and_return_conditional_losses_1410817

inputs(
lstm_cell_232_1410735:	d?(
lstm_cell_232_1410737:	2?$
lstm_cell_232_1410739:	?
identity??%lstm_cell_232/StatefulPartitionedCall?while;
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
%lstm_cell_232/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_232_1410735lstm_cell_232_1410737lstm_cell_232_1410739*
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
J__inference_lstm_cell_232_layer_call_and_return_conditional_losses_1410689n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_232_1410735lstm_cell_232_1410737lstm_cell_232_1410739*
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
while_body_1410748*
condR
while_cond_1410747*K
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
NoOpNoOp&^lstm_cell_232/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_232/StatefulPartitionedCall%lstm_cell_232/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
J__inference_sequential_82_layer_call_and_return_conditional_losses_1412351
lstm_246_input#
lstm_246_1412324:	?#
lstm_246_1412326:	d?
lstm_246_1412328:	?#
lstm_247_1412331:	d?#
lstm_247_1412333:	2?
lstm_247_1412335:	?"
lstm_248_1412338:2("
lstm_248_1412340:
(
lstm_248_1412342:("
dense_82_1412345:

dense_82_1412347:
identity?? dense_82/StatefulPartitionedCall? lstm_246/StatefulPartitionedCall? lstm_247/StatefulPartitionedCall? lstm_248/StatefulPartitionedCall?
 lstm_246/StatefulPartitionedCallStatefulPartitionedCalllstm_246_inputlstm_246_1412324lstm_246_1412326lstm_246_1412328*
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
E__inference_lstm_246_layer_call_and_return_conditional_losses_1412171?
 lstm_247/StatefulPartitionedCallStatefulPartitionedCall)lstm_246/StatefulPartitionedCall:output:0lstm_247_1412331lstm_247_1412333lstm_247_1412335*
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
E__inference_lstm_247_layer_call_and_return_conditional_losses_1412006?
 lstm_248/StatefulPartitionedCallStatefulPartitionedCall)lstm_247/StatefulPartitionedCall:output:0lstm_248_1412338lstm_248_1412340lstm_248_1412342*
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
E__inference_lstm_248_layer_call_and_return_conditional_losses_1411841?
 dense_82/StatefulPartitionedCallStatefulPartitionedCall)lstm_248/StatefulPartitionedCall:output:0dense_82_1412345dense_82_1412347*
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
E__inference_dense_82_layer_call_and_return_conditional_losses_1411643x
IdentityIdentity)dense_82/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_82/StatefulPartitionedCall!^lstm_246/StatefulPartitionedCall!^lstm_247/StatefulPartitionedCall!^lstm_248/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_82/StatefulPartitionedCall dense_82/StatefulPartitionedCall2D
 lstm_246/StatefulPartitionedCall lstm_246/StatefulPartitionedCall2D
 lstm_247/StatefulPartitionedCall lstm_247/StatefulPartitionedCall2D
 lstm_248/StatefulPartitionedCall lstm_248/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_246_input
?J
?
E__inference_lstm_247_layer_call_and_return_conditional_losses_1414526

inputs?
,lstm_cell_232_matmul_readvariableop_resource:	d?A
.lstm_cell_232_matmul_1_readvariableop_resource:	2?<
-lstm_cell_232_biasadd_readvariableop_resource:	?
identity??$lstm_cell_232/BiasAdd/ReadVariableOp?#lstm_cell_232/MatMul/ReadVariableOp?%lstm_cell_232/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_232/MatMul/ReadVariableOpReadVariableOp,lstm_cell_232_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_232/MatMulMatMulstrided_slice_2:output:0+lstm_cell_232/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_232/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_232_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_232/MatMul_1MatMulzeros:output:0-lstm_cell_232/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_232/addAddV2lstm_cell_232/MatMul:product:0 lstm_cell_232/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_232/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_232_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_232/BiasAddBiasAddlstm_cell_232/add:z:0,lstm_cell_232/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_232/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_232/splitSplit&lstm_cell_232/split/split_dim:output:0lstm_cell_232/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_232/SigmoidSigmoidlstm_cell_232/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_232/Sigmoid_1Sigmoidlstm_cell_232/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_232/mulMullstm_cell_232/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_232/ReluRelulstm_cell_232/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_232/mul_1Mullstm_cell_232/Sigmoid:y:0 lstm_cell_232/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_232/add_1AddV2lstm_cell_232/mul:z:0lstm_cell_232/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_232/Sigmoid_2Sigmoidlstm_cell_232/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_232/Relu_1Relulstm_cell_232/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_232/mul_2Mullstm_cell_232/Sigmoid_2:y:0"lstm_cell_232/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_232_matmul_readvariableop_resource.lstm_cell_232_matmul_1_readvariableop_resource-lstm_cell_232_biasadd_readvariableop_resource*
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
while_body_1414442*
condR
while_cond_1414441*K
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
NoOpNoOp%^lstm_cell_232/BiasAdd/ReadVariableOp$^lstm_cell_232/MatMul/ReadVariableOp&^lstm_cell_232/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_232/BiasAdd/ReadVariableOp$lstm_cell_232/BiasAdd/ReadVariableOp2J
#lstm_cell_232/MatMul/ReadVariableOp#lstm_cell_232/MatMul/ReadVariableOp2N
%lstm_cell_232/MatMul_1/ReadVariableOp%lstm_cell_232/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_1414441
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1414441___redundant_placeholder05
1while_while_cond_1414441___redundant_placeholder15
1while_while_cond_1414441___redundant_placeholder25
1while_while_cond_1414441___redundant_placeholder3
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
while_body_1410557
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_232_1410581_0:	d?0
while_lstm_cell_232_1410583_0:	2?,
while_lstm_cell_232_1410585_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_232_1410581:	d?.
while_lstm_cell_232_1410583:	2?*
while_lstm_cell_232_1410585:	???+while/lstm_cell_232/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_232/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_232_1410581_0while_lstm_cell_232_1410583_0while_lstm_cell_232_1410585_0*
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
J__inference_lstm_cell_232_layer_call_and_return_conditional_losses_1410543?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_232/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_232/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_232/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_232/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_232_1410581while_lstm_cell_232_1410581_0"<
while_lstm_cell_232_1410583while_lstm_cell_232_1410583_0"<
while_lstm_cell_232_1410585while_lstm_cell_232_1410585_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_232/StatefulPartitionedCall+while/lstm_cell_232/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_246_while_cond_1412498.
*lstm_246_while_lstm_246_while_loop_counter4
0lstm_246_while_lstm_246_while_maximum_iterations
lstm_246_while_placeholder 
lstm_246_while_placeholder_1 
lstm_246_while_placeholder_2 
lstm_246_while_placeholder_30
,lstm_246_while_less_lstm_246_strided_slice_1G
Clstm_246_while_lstm_246_while_cond_1412498___redundant_placeholder0G
Clstm_246_while_lstm_246_while_cond_1412498___redundant_placeholder1G
Clstm_246_while_lstm_246_while_cond_1412498___redundant_placeholder2G
Clstm_246_while_lstm_246_while_cond_1412498___redundant_placeholder3
lstm_246_while_identity
?
lstm_246/while/LessLesslstm_246_while_placeholder,lstm_246_while_less_lstm_246_strided_slice_1*
T0*
_output_shapes
: ]
lstm_246/while/IdentityIdentitylstm_246/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_246_while_identity lstm_246/while/Identity:output:0*(
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
J__inference_lstm_cell_233_layer_call_and_return_conditional_losses_1415455

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
?#
?
while_body_1411098
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_233_1411122_0:2(/
while_lstm_cell_233_1411124_0:
(+
while_lstm_cell_233_1411126_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_233_1411122:2(-
while_lstm_cell_233_1411124:
()
while_lstm_cell_233_1411126:(??+while/lstm_cell_233/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_233/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_233_1411122_0while_lstm_cell_233_1411124_0while_lstm_cell_233_1411126_0*
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
J__inference_lstm_cell_233_layer_call_and_return_conditional_losses_1411039?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_233/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_233/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_233/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_233/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_233_1411122while_lstm_cell_233_1411122_0"<
while_lstm_cell_233_1411124while_lstm_cell_233_1411124_0"<
while_lstm_cell_233_1411126while_lstm_cell_233_1411126_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_233/StatefulPartitionedCall+while/lstm_cell_233/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
??
?
#__inference__traced_restore_1415728
file_prefix2
 assignvariableop_dense_82_kernel:
.
 assignvariableop_1_dense_82_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_246_lstm_cell_246_kernel:	?M
:assignvariableop_8_lstm_246_lstm_cell_246_recurrent_kernel:	d?=
.assignvariableop_9_lstm_246_lstm_cell_246_bias:	?D
1assignvariableop_10_lstm_247_lstm_cell_247_kernel:	d?N
;assignvariableop_11_lstm_247_lstm_cell_247_recurrent_kernel:	2?>
/assignvariableop_12_lstm_247_lstm_cell_247_bias:	?C
1assignvariableop_13_lstm_248_lstm_cell_248_kernel:2(M
;assignvariableop_14_lstm_248_lstm_cell_248_recurrent_kernel:
(=
/assignvariableop_15_lstm_248_lstm_cell_248_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_82_kernel_m:
6
(assignvariableop_19_adam_dense_82_bias_m:K
8assignvariableop_20_adam_lstm_246_lstm_cell_246_kernel_m:	?U
Bassignvariableop_21_adam_lstm_246_lstm_cell_246_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_246_lstm_cell_246_bias_m:	?K
8assignvariableop_23_adam_lstm_247_lstm_cell_247_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_247_lstm_cell_247_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_247_lstm_cell_247_bias_m:	?J
8assignvariableop_26_adam_lstm_248_lstm_cell_248_kernel_m:2(T
Bassignvariableop_27_adam_lstm_248_lstm_cell_248_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_248_lstm_cell_248_bias_m:(<
*assignvariableop_29_adam_dense_82_kernel_v:
6
(assignvariableop_30_adam_dense_82_bias_v:K
8assignvariableop_31_adam_lstm_246_lstm_cell_246_kernel_v:	?U
Bassignvariableop_32_adam_lstm_246_lstm_cell_246_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_246_lstm_cell_246_bias_v:	?K
8assignvariableop_34_adam_lstm_247_lstm_cell_247_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_247_lstm_cell_247_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_247_lstm_cell_247_bias_v:	?J
8assignvariableop_37_adam_lstm_248_lstm_cell_248_kernel_v:2(T
Bassignvariableop_38_adam_lstm_248_lstm_cell_248_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_248_lstm_cell_248_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_82_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_82_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_246_lstm_cell_246_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_246_lstm_cell_246_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_246_lstm_cell_246_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_247_lstm_cell_247_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_247_lstm_cell_247_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_247_lstm_cell_247_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_248_lstm_cell_248_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_248_lstm_cell_248_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_248_lstm_cell_248_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_82_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_82_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_246_lstm_cell_246_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_246_lstm_cell_246_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_246_lstm_cell_246_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_247_lstm_cell_247_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_247_lstm_cell_247_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_247_lstm_cell_247_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_248_lstm_cell_248_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_248_lstm_cell_248_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_248_lstm_cell_248_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_82_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_82_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_246_lstm_cell_246_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_246_lstm_cell_246_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_246_lstm_cell_246_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_247_lstm_cell_247_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_247_lstm_cell_247_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_247_lstm_cell_247_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_248_lstm_cell_248_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_248_lstm_cell_248_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_248_lstm_cell_248_bias_vIdentity_39:output:0"/device:CPU:0*
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
?J
?
E__inference_lstm_247_layer_call_and_return_conditional_losses_1414383

inputs?
,lstm_cell_232_matmul_readvariableop_resource:	d?A
.lstm_cell_232_matmul_1_readvariableop_resource:	2?<
-lstm_cell_232_biasadd_readvariableop_resource:	?
identity??$lstm_cell_232/BiasAdd/ReadVariableOp?#lstm_cell_232/MatMul/ReadVariableOp?%lstm_cell_232/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_232/MatMul/ReadVariableOpReadVariableOp,lstm_cell_232_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_232/MatMulMatMulstrided_slice_2:output:0+lstm_cell_232/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_232/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_232_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_232/MatMul_1MatMulzeros:output:0-lstm_cell_232/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_232/addAddV2lstm_cell_232/MatMul:product:0 lstm_cell_232/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_232/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_232_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_232/BiasAddBiasAddlstm_cell_232/add:z:0,lstm_cell_232/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_232/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_232/splitSplit&lstm_cell_232/split/split_dim:output:0lstm_cell_232/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_232/SigmoidSigmoidlstm_cell_232/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_232/Sigmoid_1Sigmoidlstm_cell_232/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_232/mulMullstm_cell_232/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_232/ReluRelulstm_cell_232/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_232/mul_1Mullstm_cell_232/Sigmoid:y:0 lstm_cell_232/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_232/add_1AddV2lstm_cell_232/mul:z:0lstm_cell_232/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_232/Sigmoid_2Sigmoidlstm_cell_232/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_232/Relu_1Relulstm_cell_232/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_232/mul_2Mullstm_cell_232/Sigmoid_2:y:0"lstm_cell_232/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_232_matmul_readvariableop_resource.lstm_cell_232_matmul_1_readvariableop_resource-lstm_cell_232_biasadd_readvariableop_resource*
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
while_body_1414299*
condR
while_cond_1414298*K
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
NoOpNoOp%^lstm_cell_232/BiasAdd/ReadVariableOp$^lstm_cell_232/MatMul/ReadVariableOp&^lstm_cell_232/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_232/BiasAdd/ReadVariableOp$lstm_cell_232/BiasAdd/ReadVariableOp2J
#lstm_cell_232/MatMul/ReadVariableOp#lstm_cell_232/MatMul/ReadVariableOp2N
%lstm_cell_232/MatMul_1/ReadVariableOp%lstm_cell_232/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?#
?
while_body_1410398
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_231_1410422_0:	?0
while_lstm_cell_231_1410424_0:	d?,
while_lstm_cell_231_1410426_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_231_1410422:	?.
while_lstm_cell_231_1410424:	d?*
while_lstm_cell_231_1410426:	???+while/lstm_cell_231/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_231/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_231_1410422_0while_lstm_cell_231_1410424_0while_lstm_cell_231_1410426_0*
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
J__inference_lstm_cell_231_layer_call_and_return_conditional_losses_1410339?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_231/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_231/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_231/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_231/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_231_1410422while_lstm_cell_231_1410422_0"<
while_lstm_cell_231_1410424while_lstm_cell_231_1410424_0"<
while_lstm_cell_231_1410426while_lstm_cell_231_1410426_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_231/StatefulPartitionedCall+while/lstm_cell_231/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_248_while_cond_1412776.
*lstm_248_while_lstm_248_while_loop_counter4
0lstm_248_while_lstm_248_while_maximum_iterations
lstm_248_while_placeholder 
lstm_248_while_placeholder_1 
lstm_248_while_placeholder_2 
lstm_248_while_placeholder_30
,lstm_248_while_less_lstm_248_strided_slice_1G
Clstm_248_while_lstm_248_while_cond_1412776___redundant_placeholder0G
Clstm_248_while_lstm_248_while_cond_1412776___redundant_placeholder1G
Clstm_248_while_lstm_248_while_cond_1412776___redundant_placeholder2G
Clstm_248_while_lstm_248_while_cond_1412776___redundant_placeholder3
lstm_248_while_identity
?
lstm_248/while/LessLesslstm_248_while_placeholder,lstm_248_while_less_lstm_248_strided_slice_1*
T0*
_output_shapes
: ]
lstm_248/while/IdentityIdentitylstm_248/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_248_while_identity lstm_248/while/Identity:output:0*(
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
while_body_1414915
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_233_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_233_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_233_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_233_matmul_readvariableop_resource:2(F
4while_lstm_cell_233_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_233_biasadd_readvariableop_resource:(??*while/lstm_cell_233/BiasAdd/ReadVariableOp?)while/lstm_cell_233/MatMul/ReadVariableOp?+while/lstm_cell_233/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_233/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_233_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_233/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_233/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_233/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_233_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_233/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_233/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_233/addAddV2$while/lstm_cell_233/MatMul:product:0&while/lstm_cell_233/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_233/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_233_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_233/BiasAddBiasAddwhile/lstm_cell_233/add:z:02while/lstm_cell_233/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_233/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_233/splitSplit,while/lstm_cell_233/split/split_dim:output:0$while/lstm_cell_233/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_233/SigmoidSigmoid"while/lstm_cell_233/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_233/Sigmoid_1Sigmoid"while/lstm_cell_233/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_233/mulMul!while/lstm_cell_233/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_233/ReluRelu"while/lstm_cell_233/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_233/mul_1Mulwhile/lstm_cell_233/Sigmoid:y:0&while/lstm_cell_233/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_233/add_1AddV2while/lstm_cell_233/mul:z:0while/lstm_cell_233/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_233/Sigmoid_2Sigmoid"while/lstm_cell_233/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_233/Relu_1Reluwhile/lstm_cell_233/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_233/mul_2Mul!while/lstm_cell_233/Sigmoid_2:y:0(while/lstm_cell_233/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_233/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_233/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_233/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_233/BiasAdd/ReadVariableOp*^while/lstm_cell_233/MatMul/ReadVariableOp,^while/lstm_cell_233/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_233_biasadd_readvariableop_resource5while_lstm_cell_233_biasadd_readvariableop_resource_0"n
4while_lstm_cell_233_matmul_1_readvariableop_resource6while_lstm_cell_233_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_233_matmul_readvariableop_resource4while_lstm_cell_233_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_233/BiasAdd/ReadVariableOp*while/lstm_cell_233/BiasAdd/ReadVariableOp2V
)while/lstm_cell_233/MatMul/ReadVariableOp)while/lstm_cell_233/MatMul/ReadVariableOp2Z
+while/lstm_cell_233/MatMul_1/ReadVariableOp+while/lstm_cell_233/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_247_layer_call_fn_1413932
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
E__inference_lstm_247_layer_call_and_return_conditional_losses_1410817|
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
*__inference_lstm_248_layer_call_fn_1414537
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
E__inference_lstm_248_layer_call_and_return_conditional_losses_1410976o
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
?
/__inference_lstm_cell_231_layer_call_fn_1415195

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
J__inference_lstm_cell_231_layer_call_and_return_conditional_losses_1410339o
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
?
?
J__inference_sequential_82_layer_call_and_return_conditional_losses_1412321
lstm_246_input#
lstm_246_1412294:	?#
lstm_246_1412296:	d?
lstm_246_1412298:	?#
lstm_247_1412301:	d?#
lstm_247_1412303:	2?
lstm_247_1412305:	?"
lstm_248_1412308:2("
lstm_248_1412310:
(
lstm_248_1412312:("
dense_82_1412315:

dense_82_1412317:
identity?? dense_82/StatefulPartitionedCall? lstm_246/StatefulPartitionedCall? lstm_247/StatefulPartitionedCall? lstm_248/StatefulPartitionedCall?
 lstm_246/StatefulPartitionedCallStatefulPartitionedCalllstm_246_inputlstm_246_1412294lstm_246_1412296lstm_246_1412298*
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
E__inference_lstm_246_layer_call_and_return_conditional_losses_1411325?
 lstm_247/StatefulPartitionedCallStatefulPartitionedCall)lstm_246/StatefulPartitionedCall:output:0lstm_247_1412301lstm_247_1412303lstm_247_1412305*
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
E__inference_lstm_247_layer_call_and_return_conditional_losses_1411475?
 lstm_248/StatefulPartitionedCallStatefulPartitionedCall)lstm_247/StatefulPartitionedCall:output:0lstm_248_1412308lstm_248_1412310lstm_248_1412312*
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
E__inference_lstm_248_layer_call_and_return_conditional_losses_1411625?
 dense_82/StatefulPartitionedCallStatefulPartitionedCall)lstm_248/StatefulPartitionedCall:output:0dense_82_1412315dense_82_1412317*
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
E__inference_dense_82_layer_call_and_return_conditional_losses_1411643x
IdentityIdentity)dense_82/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_82/StatefulPartitionedCall!^lstm_246/StatefulPartitionedCall!^lstm_247/StatefulPartitionedCall!^lstm_248/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_82/StatefulPartitionedCall dense_82/StatefulPartitionedCall2D
 lstm_246/StatefulPartitionedCall lstm_246/StatefulPartitionedCall2D
 lstm_247/StatefulPartitionedCall lstm_247/StatefulPartitionedCall2D
 lstm_248/StatefulPartitionedCall lstm_248/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_246_input
?K
?
E__inference_lstm_248_layer_call_and_return_conditional_losses_1414856
inputs_0>
,lstm_cell_233_matmul_readvariableop_resource:2(@
.lstm_cell_233_matmul_1_readvariableop_resource:
(;
-lstm_cell_233_biasadd_readvariableop_resource:(
identity??$lstm_cell_233/BiasAdd/ReadVariableOp?#lstm_cell_233/MatMul/ReadVariableOp?%lstm_cell_233/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_233/MatMul/ReadVariableOpReadVariableOp,lstm_cell_233_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_233/MatMulMatMulstrided_slice_2:output:0+lstm_cell_233/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_233/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_233_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_233/MatMul_1MatMulzeros:output:0-lstm_cell_233/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_233/addAddV2lstm_cell_233/MatMul:product:0 lstm_cell_233/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_233/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_233_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_233/BiasAddBiasAddlstm_cell_233/add:z:0,lstm_cell_233/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_233/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_233/splitSplit&lstm_cell_233/split/split_dim:output:0lstm_cell_233/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_233/SigmoidSigmoidlstm_cell_233/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_233/Sigmoid_1Sigmoidlstm_cell_233/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_233/mulMullstm_cell_233/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_233/ReluRelulstm_cell_233/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_233/mul_1Mullstm_cell_233/Sigmoid:y:0 lstm_cell_233/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_233/add_1AddV2lstm_cell_233/mul:z:0lstm_cell_233/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_233/Sigmoid_2Sigmoidlstm_cell_233/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_233/Relu_1Relulstm_cell_233/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_233/mul_2Mullstm_cell_233/Sigmoid_2:y:0"lstm_cell_233/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_233_matmul_readvariableop_resource.lstm_cell_233_matmul_1_readvariableop_resource-lstm_cell_233_biasadd_readvariableop_resource*
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
while_body_1414772*
condR
while_cond_1414771*K
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
NoOpNoOp%^lstm_cell_233/BiasAdd/ReadVariableOp$^lstm_cell_233/MatMul/ReadVariableOp&^lstm_cell_233/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_233/BiasAdd/ReadVariableOp$lstm_cell_233/BiasAdd/ReadVariableOp2J
#lstm_cell_233/MatMul/ReadVariableOp#lstm_cell_233/MatMul/ReadVariableOp2N
%lstm_cell_233/MatMul_1/ReadVariableOp%lstm_cell_233/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
while_body_1413826
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_231_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_231_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_231_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_231_matmul_readvariableop_resource:	?G
4while_lstm_cell_231_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_231_biasadd_readvariableop_resource:	???*while/lstm_cell_231/BiasAdd/ReadVariableOp?)while/lstm_cell_231/MatMul/ReadVariableOp?+while/lstm_cell_231/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_231/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_231_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_231/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_231/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_231/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_231_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_231/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_231/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_231/addAddV2$while/lstm_cell_231/MatMul:product:0&while/lstm_cell_231/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_231/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_231_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_231/BiasAddBiasAddwhile/lstm_cell_231/add:z:02while/lstm_cell_231/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_231/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_231/splitSplit,while/lstm_cell_231/split/split_dim:output:0$while/lstm_cell_231/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_231/SigmoidSigmoid"while/lstm_cell_231/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_231/Sigmoid_1Sigmoid"while/lstm_cell_231/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_231/mulMul!while/lstm_cell_231/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_231/ReluRelu"while/lstm_cell_231/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_231/mul_1Mulwhile/lstm_cell_231/Sigmoid:y:0&while/lstm_cell_231/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_231/add_1AddV2while/lstm_cell_231/mul:z:0while/lstm_cell_231/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_231/Sigmoid_2Sigmoid"while/lstm_cell_231/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_231/Relu_1Reluwhile/lstm_cell_231/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_231/mul_2Mul!while/lstm_cell_231/Sigmoid_2:y:0(while/lstm_cell_231/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_231/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_231/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_231/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_231/BiasAdd/ReadVariableOp*^while/lstm_cell_231/MatMul/ReadVariableOp,^while/lstm_cell_231/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_231_biasadd_readvariableop_resource5while_lstm_cell_231_biasadd_readvariableop_resource_0"n
4while_lstm_cell_231_matmul_1_readvariableop_resource6while_lstm_cell_231_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_231_matmul_readvariableop_resource4while_lstm_cell_231_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_231/BiasAdd/ReadVariableOp*while/lstm_cell_231/BiasAdd/ReadVariableOp2V
)while/lstm_cell_231/MatMul/ReadVariableOp)while/lstm_cell_231/MatMul/ReadVariableOp2Z
+while/lstm_cell_231/MatMul_1/ReadVariableOp+while/lstm_cell_231/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_248_layer_call_and_return_conditional_losses_1410976

inputs'
lstm_cell_233_1410894:2('
lstm_cell_233_1410896:
(#
lstm_cell_233_1410898:(
identity??%lstm_cell_233/StatefulPartitionedCall?while;
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
%lstm_cell_233/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_233_1410894lstm_cell_233_1410896lstm_cell_233_1410898*
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
J__inference_lstm_cell_233_layer_call_and_return_conditional_losses_1410893n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_233_1410894lstm_cell_233_1410896lstm_cell_233_1410898*
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
while_body_1410907*
condR
while_cond_1410906*K
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
NoOpNoOp&^lstm_cell_233/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_233/StatefulPartitionedCall%lstm_cell_233/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
E__inference_lstm_246_layer_call_and_return_conditional_losses_1410467

inputs(
lstm_cell_231_1410385:	?(
lstm_cell_231_1410387:	d?$
lstm_cell_231_1410389:	?
identity??%lstm_cell_231/StatefulPartitionedCall?while;
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
%lstm_cell_231/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_231_1410385lstm_cell_231_1410387lstm_cell_231_1410389*
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
J__inference_lstm_cell_231_layer_call_and_return_conditional_losses_1410339n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_231_1410385lstm_cell_231_1410387lstm_cell_231_1410389*
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
while_body_1410398*
condR
while_cond_1410397*K
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
NoOpNoOp&^lstm_cell_231/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_231/StatefulPartitionedCall%lstm_cell_231/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
while_body_1413397
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_231_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_231_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_231_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_231_matmul_readvariableop_resource:	?G
4while_lstm_cell_231_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_231_biasadd_readvariableop_resource:	???*while/lstm_cell_231/BiasAdd/ReadVariableOp?)while/lstm_cell_231/MatMul/ReadVariableOp?+while/lstm_cell_231/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_231/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_231_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_231/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_231/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_231/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_231_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_231/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_231/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_231/addAddV2$while/lstm_cell_231/MatMul:product:0&while/lstm_cell_231/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_231/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_231_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_231/BiasAddBiasAddwhile/lstm_cell_231/add:z:02while/lstm_cell_231/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_231/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_231/splitSplit,while/lstm_cell_231/split/split_dim:output:0$while/lstm_cell_231/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_231/SigmoidSigmoid"while/lstm_cell_231/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_231/Sigmoid_1Sigmoid"while/lstm_cell_231/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_231/mulMul!while/lstm_cell_231/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_231/ReluRelu"while/lstm_cell_231/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_231/mul_1Mulwhile/lstm_cell_231/Sigmoid:y:0&while/lstm_cell_231/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_231/add_1AddV2while/lstm_cell_231/mul:z:0while/lstm_cell_231/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_231/Sigmoid_2Sigmoid"while/lstm_cell_231/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_231/Relu_1Reluwhile/lstm_cell_231/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_231/mul_2Mul!while/lstm_cell_231/Sigmoid_2:y:0(while/lstm_cell_231/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_231/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_231/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_231/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_231/BiasAdd/ReadVariableOp*^while/lstm_cell_231/MatMul/ReadVariableOp,^while/lstm_cell_231/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_231_biasadd_readvariableop_resource5while_lstm_cell_231_biasadd_readvariableop_resource_0"n
4while_lstm_cell_231_matmul_1_readvariableop_resource6while_lstm_cell_231_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_231_matmul_readvariableop_resource4while_lstm_cell_231_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_231/BiasAdd/ReadVariableOp*while/lstm_cell_231/BiasAdd/ReadVariableOp2V
)while/lstm_cell_231/MatMul/ReadVariableOp)while/lstm_cell_231/MatMul/ReadVariableOp2Z
+while/lstm_cell_231/MatMul_1/ReadVariableOp+while/lstm_cell_231/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_dense_82_layer_call_and_return_conditional_losses_1411643

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
E__inference_lstm_247_layer_call_and_return_conditional_losses_1414097
inputs_0?
,lstm_cell_232_matmul_readvariableop_resource:	d?A
.lstm_cell_232_matmul_1_readvariableop_resource:	2?<
-lstm_cell_232_biasadd_readvariableop_resource:	?
identity??$lstm_cell_232/BiasAdd/ReadVariableOp?#lstm_cell_232/MatMul/ReadVariableOp?%lstm_cell_232/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_232/MatMul/ReadVariableOpReadVariableOp,lstm_cell_232_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_232/MatMulMatMulstrided_slice_2:output:0+lstm_cell_232/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_232/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_232_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_232/MatMul_1MatMulzeros:output:0-lstm_cell_232/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_232/addAddV2lstm_cell_232/MatMul:product:0 lstm_cell_232/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_232/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_232_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_232/BiasAddBiasAddlstm_cell_232/add:z:0,lstm_cell_232/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_232/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_232/splitSplit&lstm_cell_232/split/split_dim:output:0lstm_cell_232/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_232/SigmoidSigmoidlstm_cell_232/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_232/Sigmoid_1Sigmoidlstm_cell_232/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_232/mulMullstm_cell_232/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_232/ReluRelulstm_cell_232/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_232/mul_1Mullstm_cell_232/Sigmoid:y:0 lstm_cell_232/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_232/add_1AddV2lstm_cell_232/mul:z:0lstm_cell_232/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_232/Sigmoid_2Sigmoidlstm_cell_232/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_232/Relu_1Relulstm_cell_232/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_232/mul_2Mullstm_cell_232/Sigmoid_2:y:0"lstm_cell_232/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_232_matmul_readvariableop_resource.lstm_cell_232_matmul_1_readvariableop_resource-lstm_cell_232_biasadd_readvariableop_resource*
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
while_body_1414013*
condR
while_cond_1414012*K
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
NoOpNoOp%^lstm_cell_232/BiasAdd/ReadVariableOp$^lstm_cell_232/MatMul/ReadVariableOp&^lstm_cell_232/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_232/BiasAdd/ReadVariableOp$lstm_cell_232/BiasAdd/ReadVariableOp2J
#lstm_cell_232/MatMul/ReadVariableOp#lstm_cell_232/MatMul/ReadVariableOp2N
%lstm_cell_232/MatMul_1/ReadVariableOp%lstm_cell_232/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?K
?
E__inference_lstm_246_layer_call_and_return_conditional_losses_1413481
inputs_0?
,lstm_cell_231_matmul_readvariableop_resource:	?A
.lstm_cell_231_matmul_1_readvariableop_resource:	d?<
-lstm_cell_231_biasadd_readvariableop_resource:	?
identity??$lstm_cell_231/BiasAdd/ReadVariableOp?#lstm_cell_231/MatMul/ReadVariableOp?%lstm_cell_231/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_231/MatMul/ReadVariableOpReadVariableOp,lstm_cell_231_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_231/MatMulMatMulstrided_slice_2:output:0+lstm_cell_231/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_231/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_231_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_231/MatMul_1MatMulzeros:output:0-lstm_cell_231/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_231/addAddV2lstm_cell_231/MatMul:product:0 lstm_cell_231/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_231/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_231_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_231/BiasAddBiasAddlstm_cell_231/add:z:0,lstm_cell_231/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_231/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_231/splitSplit&lstm_cell_231/split/split_dim:output:0lstm_cell_231/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_231/SigmoidSigmoidlstm_cell_231/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_231/Sigmoid_1Sigmoidlstm_cell_231/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_231/mulMullstm_cell_231/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_231/ReluRelulstm_cell_231/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_231/mul_1Mullstm_cell_231/Sigmoid:y:0 lstm_cell_231/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_231/add_1AddV2lstm_cell_231/mul:z:0lstm_cell_231/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_231/Sigmoid_2Sigmoidlstm_cell_231/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_231/Relu_1Relulstm_cell_231/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_231/mul_2Mullstm_cell_231/Sigmoid_2:y:0"lstm_cell_231/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_231_matmul_readvariableop_resource.lstm_cell_231_matmul_1_readvariableop_resource-lstm_cell_231_biasadd_readvariableop_resource*
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
while_body_1413397*
condR
while_cond_1413396*K
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
NoOpNoOp%^lstm_cell_231/BiasAdd/ReadVariableOp$^lstm_cell_231/MatMul/ReadVariableOp&^lstm_cell_231/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_231/BiasAdd/ReadVariableOp$lstm_cell_231/BiasAdd/ReadVariableOp2J
#lstm_cell_231/MatMul/ReadVariableOp#lstm_cell_231/MatMul/ReadVariableOp2N
%lstm_cell_231/MatMul_1/ReadVariableOp%lstm_cell_231/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?C
?

lstm_246_while_body_1412926.
*lstm_246_while_lstm_246_while_loop_counter4
0lstm_246_while_lstm_246_while_maximum_iterations
lstm_246_while_placeholder 
lstm_246_while_placeholder_1 
lstm_246_while_placeholder_2 
lstm_246_while_placeholder_3-
)lstm_246_while_lstm_246_strided_slice_1_0i
elstm_246_while_tensorarrayv2read_tensorlistgetitem_lstm_246_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_246_while_lstm_cell_231_matmul_readvariableop_resource_0:	?R
?lstm_246_while_lstm_cell_231_matmul_1_readvariableop_resource_0:	d?M
>lstm_246_while_lstm_cell_231_biasadd_readvariableop_resource_0:	?
lstm_246_while_identity
lstm_246_while_identity_1
lstm_246_while_identity_2
lstm_246_while_identity_3
lstm_246_while_identity_4
lstm_246_while_identity_5+
'lstm_246_while_lstm_246_strided_slice_1g
clstm_246_while_tensorarrayv2read_tensorlistgetitem_lstm_246_tensorarrayunstack_tensorlistfromtensorN
;lstm_246_while_lstm_cell_231_matmul_readvariableop_resource:	?P
=lstm_246_while_lstm_cell_231_matmul_1_readvariableop_resource:	d?K
<lstm_246_while_lstm_cell_231_biasadd_readvariableop_resource:	???3lstm_246/while/lstm_cell_231/BiasAdd/ReadVariableOp?2lstm_246/while/lstm_cell_231/MatMul/ReadVariableOp?4lstm_246/while/lstm_cell_231/MatMul_1/ReadVariableOp?
@lstm_246/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_246/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_246_while_tensorarrayv2read_tensorlistgetitem_lstm_246_tensorarrayunstack_tensorlistfromtensor_0lstm_246_while_placeholderIlstm_246/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_246/while/lstm_cell_231/MatMul/ReadVariableOpReadVariableOp=lstm_246_while_lstm_cell_231_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_246/while/lstm_cell_231/MatMulMatMul9lstm_246/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_246/while/lstm_cell_231/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_246/while/lstm_cell_231/MatMul_1/ReadVariableOpReadVariableOp?lstm_246_while_lstm_cell_231_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_246/while/lstm_cell_231/MatMul_1MatMullstm_246_while_placeholder_2<lstm_246/while/lstm_cell_231/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_246/while/lstm_cell_231/addAddV2-lstm_246/while/lstm_cell_231/MatMul:product:0/lstm_246/while/lstm_cell_231/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_246/while/lstm_cell_231/BiasAdd/ReadVariableOpReadVariableOp>lstm_246_while_lstm_cell_231_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_246/while/lstm_cell_231/BiasAddBiasAdd$lstm_246/while/lstm_cell_231/add:z:0;lstm_246/while/lstm_cell_231/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_246/while/lstm_cell_231/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_246/while/lstm_cell_231/splitSplit5lstm_246/while/lstm_cell_231/split/split_dim:output:0-lstm_246/while/lstm_cell_231/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_246/while/lstm_cell_231/SigmoidSigmoid+lstm_246/while/lstm_cell_231/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_246/while/lstm_cell_231/Sigmoid_1Sigmoid+lstm_246/while/lstm_cell_231/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_246/while/lstm_cell_231/mulMul*lstm_246/while/lstm_cell_231/Sigmoid_1:y:0lstm_246_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_246/while/lstm_cell_231/ReluRelu+lstm_246/while/lstm_cell_231/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_246/while/lstm_cell_231/mul_1Mul(lstm_246/while/lstm_cell_231/Sigmoid:y:0/lstm_246/while/lstm_cell_231/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_246/while/lstm_cell_231/add_1AddV2$lstm_246/while/lstm_cell_231/mul:z:0&lstm_246/while/lstm_cell_231/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_246/while/lstm_cell_231/Sigmoid_2Sigmoid+lstm_246/while/lstm_cell_231/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_246/while/lstm_cell_231/Relu_1Relu&lstm_246/while/lstm_cell_231/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_246/while/lstm_cell_231/mul_2Mul*lstm_246/while/lstm_cell_231/Sigmoid_2:y:01lstm_246/while/lstm_cell_231/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_246/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_246_while_placeholder_1lstm_246_while_placeholder&lstm_246/while/lstm_cell_231/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_246/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_246/while/addAddV2lstm_246_while_placeholderlstm_246/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_246/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_246/while/add_1AddV2*lstm_246_while_lstm_246_while_loop_counterlstm_246/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_246/while/IdentityIdentitylstm_246/while/add_1:z:0^lstm_246/while/NoOp*
T0*
_output_shapes
: ?
lstm_246/while/Identity_1Identity0lstm_246_while_lstm_246_while_maximum_iterations^lstm_246/while/NoOp*
T0*
_output_shapes
: t
lstm_246/while/Identity_2Identitylstm_246/while/add:z:0^lstm_246/while/NoOp*
T0*
_output_shapes
: ?
lstm_246/while/Identity_3IdentityClstm_246/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_246/while/NoOp*
T0*
_output_shapes
: ?
lstm_246/while/Identity_4Identity&lstm_246/while/lstm_cell_231/mul_2:z:0^lstm_246/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_246/while/Identity_5Identity&lstm_246/while/lstm_cell_231/add_1:z:0^lstm_246/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_246/while/NoOpNoOp4^lstm_246/while/lstm_cell_231/BiasAdd/ReadVariableOp3^lstm_246/while/lstm_cell_231/MatMul/ReadVariableOp5^lstm_246/while/lstm_cell_231/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_246_while_identity lstm_246/while/Identity:output:0"?
lstm_246_while_identity_1"lstm_246/while/Identity_1:output:0"?
lstm_246_while_identity_2"lstm_246/while/Identity_2:output:0"?
lstm_246_while_identity_3"lstm_246/while/Identity_3:output:0"?
lstm_246_while_identity_4"lstm_246/while/Identity_4:output:0"?
lstm_246_while_identity_5"lstm_246/while/Identity_5:output:0"T
'lstm_246_while_lstm_246_strided_slice_1)lstm_246_while_lstm_246_strided_slice_1_0"~
<lstm_246_while_lstm_cell_231_biasadd_readvariableop_resource>lstm_246_while_lstm_cell_231_biasadd_readvariableop_resource_0"?
=lstm_246_while_lstm_cell_231_matmul_1_readvariableop_resource?lstm_246_while_lstm_cell_231_matmul_1_readvariableop_resource_0"|
;lstm_246_while_lstm_cell_231_matmul_readvariableop_resource=lstm_246_while_lstm_cell_231_matmul_readvariableop_resource_0"?
clstm_246_while_tensorarrayv2read_tensorlistgetitem_lstm_246_tensorarrayunstack_tensorlistfromtensorelstm_246_while_tensorarrayv2read_tensorlistgetitem_lstm_246_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_246/while/lstm_cell_231/BiasAdd/ReadVariableOp3lstm_246/while/lstm_cell_231/BiasAdd/ReadVariableOp2h
2lstm_246/while/lstm_cell_231/MatMul/ReadVariableOp2lstm_246/while/lstm_cell_231/MatMul/ReadVariableOp2l
4lstm_246/while/lstm_cell_231/MatMul_1/ReadVariableOp4lstm_246/while/lstm_cell_231/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_248_while_body_1413204.
*lstm_248_while_lstm_248_while_loop_counter4
0lstm_248_while_lstm_248_while_maximum_iterations
lstm_248_while_placeholder 
lstm_248_while_placeholder_1 
lstm_248_while_placeholder_2 
lstm_248_while_placeholder_3-
)lstm_248_while_lstm_248_strided_slice_1_0i
elstm_248_while_tensorarrayv2read_tensorlistgetitem_lstm_248_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_248_while_lstm_cell_233_matmul_readvariableop_resource_0:2(Q
?lstm_248_while_lstm_cell_233_matmul_1_readvariableop_resource_0:
(L
>lstm_248_while_lstm_cell_233_biasadd_readvariableop_resource_0:(
lstm_248_while_identity
lstm_248_while_identity_1
lstm_248_while_identity_2
lstm_248_while_identity_3
lstm_248_while_identity_4
lstm_248_while_identity_5+
'lstm_248_while_lstm_248_strided_slice_1g
clstm_248_while_tensorarrayv2read_tensorlistgetitem_lstm_248_tensorarrayunstack_tensorlistfromtensorM
;lstm_248_while_lstm_cell_233_matmul_readvariableop_resource:2(O
=lstm_248_while_lstm_cell_233_matmul_1_readvariableop_resource:
(J
<lstm_248_while_lstm_cell_233_biasadd_readvariableop_resource:(??3lstm_248/while/lstm_cell_233/BiasAdd/ReadVariableOp?2lstm_248/while/lstm_cell_233/MatMul/ReadVariableOp?4lstm_248/while/lstm_cell_233/MatMul_1/ReadVariableOp?
@lstm_248/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_248/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_248_while_tensorarrayv2read_tensorlistgetitem_lstm_248_tensorarrayunstack_tensorlistfromtensor_0lstm_248_while_placeholderIlstm_248/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_248/while/lstm_cell_233/MatMul/ReadVariableOpReadVariableOp=lstm_248_while_lstm_cell_233_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_248/while/lstm_cell_233/MatMulMatMul9lstm_248/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_248/while/lstm_cell_233/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_248/while/lstm_cell_233/MatMul_1/ReadVariableOpReadVariableOp?lstm_248_while_lstm_cell_233_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_248/while/lstm_cell_233/MatMul_1MatMullstm_248_while_placeholder_2<lstm_248/while/lstm_cell_233/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_248/while/lstm_cell_233/addAddV2-lstm_248/while/lstm_cell_233/MatMul:product:0/lstm_248/while/lstm_cell_233/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_248/while/lstm_cell_233/BiasAdd/ReadVariableOpReadVariableOp>lstm_248_while_lstm_cell_233_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_248/while/lstm_cell_233/BiasAddBiasAdd$lstm_248/while/lstm_cell_233/add:z:0;lstm_248/while/lstm_cell_233/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_248/while/lstm_cell_233/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_248/while/lstm_cell_233/splitSplit5lstm_248/while/lstm_cell_233/split/split_dim:output:0-lstm_248/while/lstm_cell_233/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_248/while/lstm_cell_233/SigmoidSigmoid+lstm_248/while/lstm_cell_233/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_248/while/lstm_cell_233/Sigmoid_1Sigmoid+lstm_248/while/lstm_cell_233/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_248/while/lstm_cell_233/mulMul*lstm_248/while/lstm_cell_233/Sigmoid_1:y:0lstm_248_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_248/while/lstm_cell_233/ReluRelu+lstm_248/while/lstm_cell_233/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_248/while/lstm_cell_233/mul_1Mul(lstm_248/while/lstm_cell_233/Sigmoid:y:0/lstm_248/while/lstm_cell_233/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_248/while/lstm_cell_233/add_1AddV2$lstm_248/while/lstm_cell_233/mul:z:0&lstm_248/while/lstm_cell_233/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_248/while/lstm_cell_233/Sigmoid_2Sigmoid+lstm_248/while/lstm_cell_233/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_248/while/lstm_cell_233/Relu_1Relu&lstm_248/while/lstm_cell_233/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_248/while/lstm_cell_233/mul_2Mul*lstm_248/while/lstm_cell_233/Sigmoid_2:y:01lstm_248/while/lstm_cell_233/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_248/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_248_while_placeholder_1lstm_248_while_placeholder&lstm_248/while/lstm_cell_233/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_248/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_248/while/addAddV2lstm_248_while_placeholderlstm_248/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_248/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_248/while/add_1AddV2*lstm_248_while_lstm_248_while_loop_counterlstm_248/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_248/while/IdentityIdentitylstm_248/while/add_1:z:0^lstm_248/while/NoOp*
T0*
_output_shapes
: ?
lstm_248/while/Identity_1Identity0lstm_248_while_lstm_248_while_maximum_iterations^lstm_248/while/NoOp*
T0*
_output_shapes
: t
lstm_248/while/Identity_2Identitylstm_248/while/add:z:0^lstm_248/while/NoOp*
T0*
_output_shapes
: ?
lstm_248/while/Identity_3IdentityClstm_248/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_248/while/NoOp*
T0*
_output_shapes
: ?
lstm_248/while/Identity_4Identity&lstm_248/while/lstm_cell_233/mul_2:z:0^lstm_248/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_248/while/Identity_5Identity&lstm_248/while/lstm_cell_233/add_1:z:0^lstm_248/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_248/while/NoOpNoOp4^lstm_248/while/lstm_cell_233/BiasAdd/ReadVariableOp3^lstm_248/while/lstm_cell_233/MatMul/ReadVariableOp5^lstm_248/while/lstm_cell_233/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_248_while_identity lstm_248/while/Identity:output:0"?
lstm_248_while_identity_1"lstm_248/while/Identity_1:output:0"?
lstm_248_while_identity_2"lstm_248/while/Identity_2:output:0"?
lstm_248_while_identity_3"lstm_248/while/Identity_3:output:0"?
lstm_248_while_identity_4"lstm_248/while/Identity_4:output:0"?
lstm_248_while_identity_5"lstm_248/while/Identity_5:output:0"T
'lstm_248_while_lstm_248_strided_slice_1)lstm_248_while_lstm_248_strided_slice_1_0"~
<lstm_248_while_lstm_cell_233_biasadd_readvariableop_resource>lstm_248_while_lstm_cell_233_biasadd_readvariableop_resource_0"?
=lstm_248_while_lstm_cell_233_matmul_1_readvariableop_resource?lstm_248_while_lstm_cell_233_matmul_1_readvariableop_resource_0"|
;lstm_248_while_lstm_cell_233_matmul_readvariableop_resource=lstm_248_while_lstm_cell_233_matmul_readvariableop_resource_0"?
clstm_248_while_tensorarrayv2read_tensorlistgetitem_lstm_248_tensorarrayunstack_tensorlistfromtensorelstm_248_while_tensorarrayv2read_tensorlistgetitem_lstm_248_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_248/while/lstm_cell_233/BiasAdd/ReadVariableOp3lstm_248/while/lstm_cell_233/BiasAdd/ReadVariableOp2h
2lstm_248/while/lstm_cell_233/MatMul/ReadVariableOp2lstm_248/while/lstm_cell_233/MatMul/ReadVariableOp2l
4lstm_248/while/lstm_cell_233/MatMul_1/ReadVariableOp4lstm_248/while/lstm_cell_233/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1411756
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1411756___redundant_placeholder05
1while_while_cond_1411756___redundant_placeholder15
1while_while_cond_1411756___redundant_placeholder25
1while_while_cond_1411756___redundant_placeholder3
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
while_cond_1414628
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1414628___redundant_placeholder05
1while_while_cond_1414628___redundant_placeholder15
1while_while_cond_1414628___redundant_placeholder25
1while_while_cond_1414628___redundant_placeholder3
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
E__inference_lstm_246_layer_call_and_return_conditional_losses_1412171

inputs?
,lstm_cell_231_matmul_readvariableop_resource:	?A
.lstm_cell_231_matmul_1_readvariableop_resource:	d?<
-lstm_cell_231_biasadd_readvariableop_resource:	?
identity??$lstm_cell_231/BiasAdd/ReadVariableOp?#lstm_cell_231/MatMul/ReadVariableOp?%lstm_cell_231/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_231/MatMul/ReadVariableOpReadVariableOp,lstm_cell_231_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_231/MatMulMatMulstrided_slice_2:output:0+lstm_cell_231/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_231/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_231_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_231/MatMul_1MatMulzeros:output:0-lstm_cell_231/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_231/addAddV2lstm_cell_231/MatMul:product:0 lstm_cell_231/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_231/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_231_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_231/BiasAddBiasAddlstm_cell_231/add:z:0,lstm_cell_231/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_231/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_231/splitSplit&lstm_cell_231/split/split_dim:output:0lstm_cell_231/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_231/SigmoidSigmoidlstm_cell_231/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_231/Sigmoid_1Sigmoidlstm_cell_231/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_231/mulMullstm_cell_231/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_231/ReluRelulstm_cell_231/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_231/mul_1Mullstm_cell_231/Sigmoid:y:0 lstm_cell_231/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_231/add_1AddV2lstm_cell_231/mul:z:0lstm_cell_231/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_231/Sigmoid_2Sigmoidlstm_cell_231/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_231/Relu_1Relulstm_cell_231/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_231/mul_2Mullstm_cell_231/Sigmoid_2:y:0"lstm_cell_231/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_231_matmul_readvariableop_resource.lstm_cell_231_matmul_1_readvariableop_resource-lstm_cell_231_biasadd_readvariableop_resource*
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
while_body_1412087*
condR
while_cond_1412086*K
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
NoOpNoOp%^lstm_cell_231/BiasAdd/ReadVariableOp$^lstm_cell_231/MatMul/ReadVariableOp&^lstm_cell_231/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_231/BiasAdd/ReadVariableOp$lstm_cell_231/BiasAdd/ReadVariableOp2J
#lstm_cell_231/MatMul/ReadVariableOp#lstm_cell_231/MatMul/ReadVariableOp2N
%lstm_cell_231/MatMul_1/ReadVariableOp%lstm_cell_231/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?S
?
)sequential_82_lstm_247_while_body_1409897J
Fsequential_82_lstm_247_while_sequential_82_lstm_247_while_loop_counterP
Lsequential_82_lstm_247_while_sequential_82_lstm_247_while_maximum_iterations,
(sequential_82_lstm_247_while_placeholder.
*sequential_82_lstm_247_while_placeholder_1.
*sequential_82_lstm_247_while_placeholder_2.
*sequential_82_lstm_247_while_placeholder_3I
Esequential_82_lstm_247_while_sequential_82_lstm_247_strided_slice_1_0?
?sequential_82_lstm_247_while_tensorarrayv2read_tensorlistgetitem_sequential_82_lstm_247_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_82_lstm_247_while_lstm_cell_232_matmul_readvariableop_resource_0:	d?`
Msequential_82_lstm_247_while_lstm_cell_232_matmul_1_readvariableop_resource_0:	2?[
Lsequential_82_lstm_247_while_lstm_cell_232_biasadd_readvariableop_resource_0:	?)
%sequential_82_lstm_247_while_identity+
'sequential_82_lstm_247_while_identity_1+
'sequential_82_lstm_247_while_identity_2+
'sequential_82_lstm_247_while_identity_3+
'sequential_82_lstm_247_while_identity_4+
'sequential_82_lstm_247_while_identity_5G
Csequential_82_lstm_247_while_sequential_82_lstm_247_strided_slice_1?
sequential_82_lstm_247_while_tensorarrayv2read_tensorlistgetitem_sequential_82_lstm_247_tensorarrayunstack_tensorlistfromtensor\
Isequential_82_lstm_247_while_lstm_cell_232_matmul_readvariableop_resource:	d?^
Ksequential_82_lstm_247_while_lstm_cell_232_matmul_1_readvariableop_resource:	2?Y
Jsequential_82_lstm_247_while_lstm_cell_232_biasadd_readvariableop_resource:	???Asequential_82/lstm_247/while/lstm_cell_232/BiasAdd/ReadVariableOp?@sequential_82/lstm_247/while/lstm_cell_232/MatMul/ReadVariableOp?Bsequential_82/lstm_247/while/lstm_cell_232/MatMul_1/ReadVariableOp?
Nsequential_82/lstm_247/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
@sequential_82/lstm_247/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_82_lstm_247_while_tensorarrayv2read_tensorlistgetitem_sequential_82_lstm_247_tensorarrayunstack_tensorlistfromtensor_0(sequential_82_lstm_247_while_placeholderWsequential_82/lstm_247/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
@sequential_82/lstm_247/while/lstm_cell_232/MatMul/ReadVariableOpReadVariableOpKsequential_82_lstm_247_while_lstm_cell_232_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
1sequential_82/lstm_247/while/lstm_cell_232/MatMulMatMulGsequential_82/lstm_247/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_82/lstm_247/while/lstm_cell_232/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_82/lstm_247/while/lstm_cell_232/MatMul_1/ReadVariableOpReadVariableOpMsequential_82_lstm_247_while_lstm_cell_232_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
3sequential_82/lstm_247/while/lstm_cell_232/MatMul_1MatMul*sequential_82_lstm_247_while_placeholder_2Jsequential_82/lstm_247/while/lstm_cell_232/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_82/lstm_247/while/lstm_cell_232/addAddV2;sequential_82/lstm_247/while/lstm_cell_232/MatMul:product:0=sequential_82/lstm_247/while/lstm_cell_232/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_82/lstm_247/while/lstm_cell_232/BiasAdd/ReadVariableOpReadVariableOpLsequential_82_lstm_247_while_lstm_cell_232_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_82/lstm_247/while/lstm_cell_232/BiasAddBiasAdd2sequential_82/lstm_247/while/lstm_cell_232/add:z:0Isequential_82/lstm_247/while/lstm_cell_232/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_82/lstm_247/while/lstm_cell_232/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_82/lstm_247/while/lstm_cell_232/splitSplitCsequential_82/lstm_247/while/lstm_cell_232/split/split_dim:output:0;sequential_82/lstm_247/while/lstm_cell_232/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
2sequential_82/lstm_247/while/lstm_cell_232/SigmoidSigmoid9sequential_82/lstm_247/while/lstm_cell_232/split:output:0*
T0*'
_output_shapes
:?????????2?
4sequential_82/lstm_247/while/lstm_cell_232/Sigmoid_1Sigmoid9sequential_82/lstm_247/while/lstm_cell_232/split:output:1*
T0*'
_output_shapes
:?????????2?
.sequential_82/lstm_247/while/lstm_cell_232/mulMul8sequential_82/lstm_247/while/lstm_cell_232/Sigmoid_1:y:0*sequential_82_lstm_247_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
/sequential_82/lstm_247/while/lstm_cell_232/ReluRelu9sequential_82/lstm_247/while/lstm_cell_232/split:output:2*
T0*'
_output_shapes
:?????????2?
0sequential_82/lstm_247/while/lstm_cell_232/mul_1Mul6sequential_82/lstm_247/while/lstm_cell_232/Sigmoid:y:0=sequential_82/lstm_247/while/lstm_cell_232/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
0sequential_82/lstm_247/while/lstm_cell_232/add_1AddV22sequential_82/lstm_247/while/lstm_cell_232/mul:z:04sequential_82/lstm_247/while/lstm_cell_232/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
4sequential_82/lstm_247/while/lstm_cell_232/Sigmoid_2Sigmoid9sequential_82/lstm_247/while/lstm_cell_232/split:output:3*
T0*'
_output_shapes
:?????????2?
1sequential_82/lstm_247/while/lstm_cell_232/Relu_1Relu4sequential_82/lstm_247/while/lstm_cell_232/add_1:z:0*
T0*'
_output_shapes
:?????????2?
0sequential_82/lstm_247/while/lstm_cell_232/mul_2Mul8sequential_82/lstm_247/while/lstm_cell_232/Sigmoid_2:y:0?sequential_82/lstm_247/while/lstm_cell_232/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Asequential_82/lstm_247/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_82_lstm_247_while_placeholder_1(sequential_82_lstm_247_while_placeholder4sequential_82/lstm_247/while/lstm_cell_232/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_82/lstm_247/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_82/lstm_247/while/addAddV2(sequential_82_lstm_247_while_placeholder+sequential_82/lstm_247/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_82/lstm_247/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_82/lstm_247/while/add_1AddV2Fsequential_82_lstm_247_while_sequential_82_lstm_247_while_loop_counter-sequential_82/lstm_247/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_82/lstm_247/while/IdentityIdentity&sequential_82/lstm_247/while/add_1:z:0"^sequential_82/lstm_247/while/NoOp*
T0*
_output_shapes
: ?
'sequential_82/lstm_247/while/Identity_1IdentityLsequential_82_lstm_247_while_sequential_82_lstm_247_while_maximum_iterations"^sequential_82/lstm_247/while/NoOp*
T0*
_output_shapes
: ?
'sequential_82/lstm_247/while/Identity_2Identity$sequential_82/lstm_247/while/add:z:0"^sequential_82/lstm_247/while/NoOp*
T0*
_output_shapes
: ?
'sequential_82/lstm_247/while/Identity_3IdentityQsequential_82/lstm_247/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_82/lstm_247/while/NoOp*
T0*
_output_shapes
: ?
'sequential_82/lstm_247/while/Identity_4Identity4sequential_82/lstm_247/while/lstm_cell_232/mul_2:z:0"^sequential_82/lstm_247/while/NoOp*
T0*'
_output_shapes
:?????????2?
'sequential_82/lstm_247/while/Identity_5Identity4sequential_82/lstm_247/while/lstm_cell_232/add_1:z:0"^sequential_82/lstm_247/while/NoOp*
T0*'
_output_shapes
:?????????2?
!sequential_82/lstm_247/while/NoOpNoOpB^sequential_82/lstm_247/while/lstm_cell_232/BiasAdd/ReadVariableOpA^sequential_82/lstm_247/while/lstm_cell_232/MatMul/ReadVariableOpC^sequential_82/lstm_247/while/lstm_cell_232/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_82_lstm_247_while_identity.sequential_82/lstm_247/while/Identity:output:0"[
'sequential_82_lstm_247_while_identity_10sequential_82/lstm_247/while/Identity_1:output:0"[
'sequential_82_lstm_247_while_identity_20sequential_82/lstm_247/while/Identity_2:output:0"[
'sequential_82_lstm_247_while_identity_30sequential_82/lstm_247/while/Identity_3:output:0"[
'sequential_82_lstm_247_while_identity_40sequential_82/lstm_247/while/Identity_4:output:0"[
'sequential_82_lstm_247_while_identity_50sequential_82/lstm_247/while/Identity_5:output:0"?
Jsequential_82_lstm_247_while_lstm_cell_232_biasadd_readvariableop_resourceLsequential_82_lstm_247_while_lstm_cell_232_biasadd_readvariableop_resource_0"?
Ksequential_82_lstm_247_while_lstm_cell_232_matmul_1_readvariableop_resourceMsequential_82_lstm_247_while_lstm_cell_232_matmul_1_readvariableop_resource_0"?
Isequential_82_lstm_247_while_lstm_cell_232_matmul_readvariableop_resourceKsequential_82_lstm_247_while_lstm_cell_232_matmul_readvariableop_resource_0"?
Csequential_82_lstm_247_while_sequential_82_lstm_247_strided_slice_1Esequential_82_lstm_247_while_sequential_82_lstm_247_strided_slice_1_0"?
sequential_82_lstm_247_while_tensorarrayv2read_tensorlistgetitem_sequential_82_lstm_247_tensorarrayunstack_tensorlistfromtensor?sequential_82_lstm_247_while_tensorarrayv2read_tensorlistgetitem_sequential_82_lstm_247_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Asequential_82/lstm_247/while/lstm_cell_232/BiasAdd/ReadVariableOpAsequential_82/lstm_247/while/lstm_cell_232/BiasAdd/ReadVariableOp2?
@sequential_82/lstm_247/while/lstm_cell_232/MatMul/ReadVariableOp@sequential_82/lstm_247/while/lstm_cell_232/MatMul/ReadVariableOp2?
Bsequential_82/lstm_247/while/lstm_cell_232/MatMul_1/ReadVariableOpBsequential_82/lstm_247/while/lstm_cell_232/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1410206
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1410206___redundant_placeholder05
1while_while_cond_1410206___redundant_placeholder15
1while_while_cond_1410206___redundant_placeholder25
1while_while_cond_1410206___redundant_placeholder3
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
while_body_1414442
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_232_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_232_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_232_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_232_matmul_readvariableop_resource:	d?G
4while_lstm_cell_232_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_232_biasadd_readvariableop_resource:	???*while/lstm_cell_232/BiasAdd/ReadVariableOp?)while/lstm_cell_232/MatMul/ReadVariableOp?+while/lstm_cell_232/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_232/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_232_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_232/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_232/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_232/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_232_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_232/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_232/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_232/addAddV2$while/lstm_cell_232/MatMul:product:0&while/lstm_cell_232/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_232/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_232_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_232/BiasAddBiasAddwhile/lstm_cell_232/add:z:02while/lstm_cell_232/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_232/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_232/splitSplit,while/lstm_cell_232/split/split_dim:output:0$while/lstm_cell_232/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_232/SigmoidSigmoid"while/lstm_cell_232/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_232/Sigmoid_1Sigmoid"while/lstm_cell_232/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_232/mulMul!while/lstm_cell_232/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_232/ReluRelu"while/lstm_cell_232/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_232/mul_1Mulwhile/lstm_cell_232/Sigmoid:y:0&while/lstm_cell_232/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_232/add_1AddV2while/lstm_cell_232/mul:z:0while/lstm_cell_232/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_232/Sigmoid_2Sigmoid"while/lstm_cell_232/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_232/Relu_1Reluwhile/lstm_cell_232/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_232/mul_2Mul!while/lstm_cell_232/Sigmoid_2:y:0(while/lstm_cell_232/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_232/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_232/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_232/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_232/BiasAdd/ReadVariableOp*^while/lstm_cell_232/MatMul/ReadVariableOp,^while/lstm_cell_232/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_232_biasadd_readvariableop_resource5while_lstm_cell_232_biasadd_readvariableop_resource_0"n
4while_lstm_cell_232_matmul_1_readvariableop_resource6while_lstm_cell_232_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_232_matmul_readvariableop_resource4while_lstm_cell_232_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_232/BiasAdd/ReadVariableOp*while/lstm_cell_232/BiasAdd/ReadVariableOp2V
)while/lstm_cell_232/MatMul/ReadVariableOp)while/lstm_cell_232/MatMul/ReadVariableOp2Z
+while/lstm_cell_232/MatMul_1/ReadVariableOp+while/lstm_cell_232/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1413539
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1413539___redundant_placeholder05
1while_while_cond_1413539___redundant_placeholder15
1while_while_cond_1413539___redundant_placeholder25
1while_while_cond_1413539___redundant_placeholder3
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
J__inference_lstm_cell_231_layer_call_and_return_conditional_losses_1415259

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
/__inference_lstm_cell_233_layer_call_fn_1415374

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
J__inference_lstm_cell_233_layer_call_and_return_conditional_losses_1410893o
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
while_cond_1413825
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1413825___redundant_placeholder05
1while_while_cond_1413825___redundant_placeholder15
1while_while_cond_1413825___redundant_placeholder25
1while_while_cond_1413825___redundant_placeholder3
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
E__inference_lstm_248_layer_call_and_return_conditional_losses_1411167

inputs'
lstm_cell_233_1411085:2('
lstm_cell_233_1411087:
(#
lstm_cell_233_1411089:(
identity??%lstm_cell_233/StatefulPartitionedCall?while;
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
%lstm_cell_233/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_233_1411085lstm_cell_233_1411087lstm_cell_233_1411089*
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
J__inference_lstm_cell_233_layer_call_and_return_conditional_losses_1411039n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_233_1411085lstm_cell_233_1411087lstm_cell_233_1411089*
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
while_body_1411098*
condR
while_cond_1411097*K
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
NoOpNoOp&^lstm_cell_233/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_233/StatefulPartitionedCall%lstm_cell_233/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_1411540
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1411540___redundant_placeholder05
1while_while_cond_1411540___redundant_placeholder15
1while_while_cond_1411540___redundant_placeholder25
1while_while_cond_1411540___redundant_placeholder3
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
E__inference_dense_82_layer_call_and_return_conditional_losses_1415161

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
while_cond_1414155
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1414155___redundant_placeholder05
1while_while_cond_1414155___redundant_placeholder15
1while_while_cond_1414155___redundant_placeholder25
1while_while_cond_1414155___redundant_placeholder3
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
while_body_1412087
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_231_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_231_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_231_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_231_matmul_readvariableop_resource:	?G
4while_lstm_cell_231_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_231_biasadd_readvariableop_resource:	???*while/lstm_cell_231/BiasAdd/ReadVariableOp?)while/lstm_cell_231/MatMul/ReadVariableOp?+while/lstm_cell_231/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_231/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_231_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_231/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_231/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_231/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_231_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_231/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_231/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_231/addAddV2$while/lstm_cell_231/MatMul:product:0&while/lstm_cell_231/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_231/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_231_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_231/BiasAddBiasAddwhile/lstm_cell_231/add:z:02while/lstm_cell_231/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_231/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_231/splitSplit,while/lstm_cell_231/split/split_dim:output:0$while/lstm_cell_231/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_231/SigmoidSigmoid"while/lstm_cell_231/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_231/Sigmoid_1Sigmoid"while/lstm_cell_231/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_231/mulMul!while/lstm_cell_231/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_231/ReluRelu"while/lstm_cell_231/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_231/mul_1Mulwhile/lstm_cell_231/Sigmoid:y:0&while/lstm_cell_231/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_231/add_1AddV2while/lstm_cell_231/mul:z:0while/lstm_cell_231/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_231/Sigmoid_2Sigmoid"while/lstm_cell_231/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_231/Relu_1Reluwhile/lstm_cell_231/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_231/mul_2Mul!while/lstm_cell_231/Sigmoid_2:y:0(while/lstm_cell_231/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_231/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_231/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_231/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_231/BiasAdd/ReadVariableOp*^while/lstm_cell_231/MatMul/ReadVariableOp,^while/lstm_cell_231/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_231_biasadd_readvariableop_resource5while_lstm_cell_231_biasadd_readvariableop_resource_0"n
4while_lstm_cell_231_matmul_1_readvariableop_resource6while_lstm_cell_231_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_231_matmul_readvariableop_resource4while_lstm_cell_231_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_231/BiasAdd/ReadVariableOp*while/lstm_cell_231/BiasAdd/ReadVariableOp2V
)while/lstm_cell_231/MatMul/ReadVariableOp)while/lstm_cell_231/MatMul/ReadVariableOp2Z
+while/lstm_cell_231/MatMul_1/ReadVariableOp+while/lstm_cell_231/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1412086
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1412086___redundant_placeholder05
1while_while_cond_1412086___redundant_placeholder15
1while_while_cond_1412086___redundant_placeholder25
1while_while_cond_1412086___redundant_placeholder3
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
J__inference_sequential_82_layer_call_and_return_conditional_losses_1412867

inputsH
5lstm_246_lstm_cell_231_matmul_readvariableop_resource:	?J
7lstm_246_lstm_cell_231_matmul_1_readvariableop_resource:	d?E
6lstm_246_lstm_cell_231_biasadd_readvariableop_resource:	?H
5lstm_247_lstm_cell_232_matmul_readvariableop_resource:	d?J
7lstm_247_lstm_cell_232_matmul_1_readvariableop_resource:	2?E
6lstm_247_lstm_cell_232_biasadd_readvariableop_resource:	?G
5lstm_248_lstm_cell_233_matmul_readvariableop_resource:2(I
7lstm_248_lstm_cell_233_matmul_1_readvariableop_resource:
(D
6lstm_248_lstm_cell_233_biasadd_readvariableop_resource:(9
'dense_82_matmul_readvariableop_resource:
6
(dense_82_biasadd_readvariableop_resource:
identity??dense_82/BiasAdd/ReadVariableOp?dense_82/MatMul/ReadVariableOp?-lstm_246/lstm_cell_231/BiasAdd/ReadVariableOp?,lstm_246/lstm_cell_231/MatMul/ReadVariableOp?.lstm_246/lstm_cell_231/MatMul_1/ReadVariableOp?lstm_246/while?-lstm_247/lstm_cell_232/BiasAdd/ReadVariableOp?,lstm_247/lstm_cell_232/MatMul/ReadVariableOp?.lstm_247/lstm_cell_232/MatMul_1/ReadVariableOp?lstm_247/while?-lstm_248/lstm_cell_233/BiasAdd/ReadVariableOp?,lstm_248/lstm_cell_233/MatMul/ReadVariableOp?.lstm_248/lstm_cell_233/MatMul_1/ReadVariableOp?lstm_248/whileD
lstm_246/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_246/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_246/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_246/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_246/strided_sliceStridedSlicelstm_246/Shape:output:0%lstm_246/strided_slice/stack:output:0'lstm_246/strided_slice/stack_1:output:0'lstm_246/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_246/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_246/zeros/packedPacklstm_246/strided_slice:output:0 lstm_246/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_246/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_246/zerosFilllstm_246/zeros/packed:output:0lstm_246/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_246/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_246/zeros_1/packedPacklstm_246/strided_slice:output:0"lstm_246/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_246/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_246/zeros_1Fill lstm_246/zeros_1/packed:output:0lstm_246/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_246/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_246/transpose	Transposeinputs lstm_246/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_246/Shape_1Shapelstm_246/transpose:y:0*
T0*
_output_shapes
:h
lstm_246/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_246/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_246/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_246/strided_slice_1StridedSlicelstm_246/Shape_1:output:0'lstm_246/strided_slice_1/stack:output:0)lstm_246/strided_slice_1/stack_1:output:0)lstm_246/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_246/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_246/TensorArrayV2TensorListReserve-lstm_246/TensorArrayV2/element_shape:output:0!lstm_246/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_246/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_246/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_246/transpose:y:0Glstm_246/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_246/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_246/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_246/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_246/strided_slice_2StridedSlicelstm_246/transpose:y:0'lstm_246/strided_slice_2/stack:output:0)lstm_246/strided_slice_2/stack_1:output:0)lstm_246/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_246/lstm_cell_231/MatMul/ReadVariableOpReadVariableOp5lstm_246_lstm_cell_231_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_246/lstm_cell_231/MatMulMatMul!lstm_246/strided_slice_2:output:04lstm_246/lstm_cell_231/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_246/lstm_cell_231/MatMul_1/ReadVariableOpReadVariableOp7lstm_246_lstm_cell_231_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_246/lstm_cell_231/MatMul_1MatMullstm_246/zeros:output:06lstm_246/lstm_cell_231/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_246/lstm_cell_231/addAddV2'lstm_246/lstm_cell_231/MatMul:product:0)lstm_246/lstm_cell_231/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_246/lstm_cell_231/BiasAdd/ReadVariableOpReadVariableOp6lstm_246_lstm_cell_231_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_246/lstm_cell_231/BiasAddBiasAddlstm_246/lstm_cell_231/add:z:05lstm_246/lstm_cell_231/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_246/lstm_cell_231/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_246/lstm_cell_231/splitSplit/lstm_246/lstm_cell_231/split/split_dim:output:0'lstm_246/lstm_cell_231/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_246/lstm_cell_231/SigmoidSigmoid%lstm_246/lstm_cell_231/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_246/lstm_cell_231/Sigmoid_1Sigmoid%lstm_246/lstm_cell_231/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_246/lstm_cell_231/mulMul$lstm_246/lstm_cell_231/Sigmoid_1:y:0lstm_246/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_246/lstm_cell_231/ReluRelu%lstm_246/lstm_cell_231/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_246/lstm_cell_231/mul_1Mul"lstm_246/lstm_cell_231/Sigmoid:y:0)lstm_246/lstm_cell_231/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_246/lstm_cell_231/add_1AddV2lstm_246/lstm_cell_231/mul:z:0 lstm_246/lstm_cell_231/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_246/lstm_cell_231/Sigmoid_2Sigmoid%lstm_246/lstm_cell_231/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_246/lstm_cell_231/Relu_1Relu lstm_246/lstm_cell_231/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_246/lstm_cell_231/mul_2Mul$lstm_246/lstm_cell_231/Sigmoid_2:y:0+lstm_246/lstm_cell_231/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_246/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_246/TensorArrayV2_1TensorListReserve/lstm_246/TensorArrayV2_1/element_shape:output:0!lstm_246/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_246/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_246/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_246/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_246/whileWhile$lstm_246/while/loop_counter:output:0*lstm_246/while/maximum_iterations:output:0lstm_246/time:output:0!lstm_246/TensorArrayV2_1:handle:0lstm_246/zeros:output:0lstm_246/zeros_1:output:0!lstm_246/strided_slice_1:output:0@lstm_246/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_246_lstm_cell_231_matmul_readvariableop_resource7lstm_246_lstm_cell_231_matmul_1_readvariableop_resource6lstm_246_lstm_cell_231_biasadd_readvariableop_resource*
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
lstm_246_while_body_1412499*'
condR
lstm_246_while_cond_1412498*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_246/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_246/TensorArrayV2Stack/TensorListStackTensorListStacklstm_246/while:output:3Blstm_246/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_246/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_246/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_246/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_246/strided_slice_3StridedSlice4lstm_246/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_246/strided_slice_3/stack:output:0)lstm_246/strided_slice_3/stack_1:output:0)lstm_246/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_246/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_246/transpose_1	Transpose4lstm_246/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_246/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_246/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_247/ShapeShapelstm_246/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_247/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_247/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_247/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_247/strided_sliceStridedSlicelstm_247/Shape:output:0%lstm_247/strided_slice/stack:output:0'lstm_247/strided_slice/stack_1:output:0'lstm_247/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_247/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_247/zeros/packedPacklstm_247/strided_slice:output:0 lstm_247/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_247/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_247/zerosFilllstm_247/zeros/packed:output:0lstm_247/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_247/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_247/zeros_1/packedPacklstm_247/strided_slice:output:0"lstm_247/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_247/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_247/zeros_1Fill lstm_247/zeros_1/packed:output:0lstm_247/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_247/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_247/transpose	Transposelstm_246/transpose_1:y:0 lstm_247/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_247/Shape_1Shapelstm_247/transpose:y:0*
T0*
_output_shapes
:h
lstm_247/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_247/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_247/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_247/strided_slice_1StridedSlicelstm_247/Shape_1:output:0'lstm_247/strided_slice_1/stack:output:0)lstm_247/strided_slice_1/stack_1:output:0)lstm_247/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_247/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_247/TensorArrayV2TensorListReserve-lstm_247/TensorArrayV2/element_shape:output:0!lstm_247/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_247/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_247/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_247/transpose:y:0Glstm_247/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_247/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_247/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_247/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_247/strided_slice_2StridedSlicelstm_247/transpose:y:0'lstm_247/strided_slice_2/stack:output:0)lstm_247/strided_slice_2/stack_1:output:0)lstm_247/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_247/lstm_cell_232/MatMul/ReadVariableOpReadVariableOp5lstm_247_lstm_cell_232_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_247/lstm_cell_232/MatMulMatMul!lstm_247/strided_slice_2:output:04lstm_247/lstm_cell_232/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_247/lstm_cell_232/MatMul_1/ReadVariableOpReadVariableOp7lstm_247_lstm_cell_232_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_247/lstm_cell_232/MatMul_1MatMullstm_247/zeros:output:06lstm_247/lstm_cell_232/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_247/lstm_cell_232/addAddV2'lstm_247/lstm_cell_232/MatMul:product:0)lstm_247/lstm_cell_232/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_247/lstm_cell_232/BiasAdd/ReadVariableOpReadVariableOp6lstm_247_lstm_cell_232_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_247/lstm_cell_232/BiasAddBiasAddlstm_247/lstm_cell_232/add:z:05lstm_247/lstm_cell_232/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_247/lstm_cell_232/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_247/lstm_cell_232/splitSplit/lstm_247/lstm_cell_232/split/split_dim:output:0'lstm_247/lstm_cell_232/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_247/lstm_cell_232/SigmoidSigmoid%lstm_247/lstm_cell_232/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_247/lstm_cell_232/Sigmoid_1Sigmoid%lstm_247/lstm_cell_232/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_247/lstm_cell_232/mulMul$lstm_247/lstm_cell_232/Sigmoid_1:y:0lstm_247/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_247/lstm_cell_232/ReluRelu%lstm_247/lstm_cell_232/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_247/lstm_cell_232/mul_1Mul"lstm_247/lstm_cell_232/Sigmoid:y:0)lstm_247/lstm_cell_232/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_247/lstm_cell_232/add_1AddV2lstm_247/lstm_cell_232/mul:z:0 lstm_247/lstm_cell_232/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_247/lstm_cell_232/Sigmoid_2Sigmoid%lstm_247/lstm_cell_232/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_247/lstm_cell_232/Relu_1Relu lstm_247/lstm_cell_232/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_247/lstm_cell_232/mul_2Mul$lstm_247/lstm_cell_232/Sigmoid_2:y:0+lstm_247/lstm_cell_232/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_247/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_247/TensorArrayV2_1TensorListReserve/lstm_247/TensorArrayV2_1/element_shape:output:0!lstm_247/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_247/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_247/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_247/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_247/whileWhile$lstm_247/while/loop_counter:output:0*lstm_247/while/maximum_iterations:output:0lstm_247/time:output:0!lstm_247/TensorArrayV2_1:handle:0lstm_247/zeros:output:0lstm_247/zeros_1:output:0!lstm_247/strided_slice_1:output:0@lstm_247/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_247_lstm_cell_232_matmul_readvariableop_resource7lstm_247_lstm_cell_232_matmul_1_readvariableop_resource6lstm_247_lstm_cell_232_biasadd_readvariableop_resource*
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
lstm_247_while_body_1412638*'
condR
lstm_247_while_cond_1412637*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_247/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_247/TensorArrayV2Stack/TensorListStackTensorListStacklstm_247/while:output:3Blstm_247/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_247/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_247/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_247/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_247/strided_slice_3StridedSlice4lstm_247/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_247/strided_slice_3/stack:output:0)lstm_247/strided_slice_3/stack_1:output:0)lstm_247/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_247/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_247/transpose_1	Transpose4lstm_247/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_247/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_247/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_248/ShapeShapelstm_247/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_248/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_248/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_248/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_248/strided_sliceStridedSlicelstm_248/Shape:output:0%lstm_248/strided_slice/stack:output:0'lstm_248/strided_slice/stack_1:output:0'lstm_248/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_248/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_248/zeros/packedPacklstm_248/strided_slice:output:0 lstm_248/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_248/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_248/zerosFilllstm_248/zeros/packed:output:0lstm_248/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_248/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_248/zeros_1/packedPacklstm_248/strided_slice:output:0"lstm_248/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_248/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_248/zeros_1Fill lstm_248/zeros_1/packed:output:0lstm_248/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_248/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_248/transpose	Transposelstm_247/transpose_1:y:0 lstm_248/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_248/Shape_1Shapelstm_248/transpose:y:0*
T0*
_output_shapes
:h
lstm_248/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_248/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_248/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_248/strided_slice_1StridedSlicelstm_248/Shape_1:output:0'lstm_248/strided_slice_1/stack:output:0)lstm_248/strided_slice_1/stack_1:output:0)lstm_248/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_248/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_248/TensorArrayV2TensorListReserve-lstm_248/TensorArrayV2/element_shape:output:0!lstm_248/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_248/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_248/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_248/transpose:y:0Glstm_248/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_248/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_248/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_248/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_248/strided_slice_2StridedSlicelstm_248/transpose:y:0'lstm_248/strided_slice_2/stack:output:0)lstm_248/strided_slice_2/stack_1:output:0)lstm_248/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_248/lstm_cell_233/MatMul/ReadVariableOpReadVariableOp5lstm_248_lstm_cell_233_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_248/lstm_cell_233/MatMulMatMul!lstm_248/strided_slice_2:output:04lstm_248/lstm_cell_233/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_248/lstm_cell_233/MatMul_1/ReadVariableOpReadVariableOp7lstm_248_lstm_cell_233_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_248/lstm_cell_233/MatMul_1MatMullstm_248/zeros:output:06lstm_248/lstm_cell_233/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_248/lstm_cell_233/addAddV2'lstm_248/lstm_cell_233/MatMul:product:0)lstm_248/lstm_cell_233/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_248/lstm_cell_233/BiasAdd/ReadVariableOpReadVariableOp6lstm_248_lstm_cell_233_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_248/lstm_cell_233/BiasAddBiasAddlstm_248/lstm_cell_233/add:z:05lstm_248/lstm_cell_233/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_248/lstm_cell_233/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_248/lstm_cell_233/splitSplit/lstm_248/lstm_cell_233/split/split_dim:output:0'lstm_248/lstm_cell_233/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_248/lstm_cell_233/SigmoidSigmoid%lstm_248/lstm_cell_233/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_248/lstm_cell_233/Sigmoid_1Sigmoid%lstm_248/lstm_cell_233/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_248/lstm_cell_233/mulMul$lstm_248/lstm_cell_233/Sigmoid_1:y:0lstm_248/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_248/lstm_cell_233/ReluRelu%lstm_248/lstm_cell_233/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_248/lstm_cell_233/mul_1Mul"lstm_248/lstm_cell_233/Sigmoid:y:0)lstm_248/lstm_cell_233/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_248/lstm_cell_233/add_1AddV2lstm_248/lstm_cell_233/mul:z:0 lstm_248/lstm_cell_233/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_248/lstm_cell_233/Sigmoid_2Sigmoid%lstm_248/lstm_cell_233/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_248/lstm_cell_233/Relu_1Relu lstm_248/lstm_cell_233/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_248/lstm_cell_233/mul_2Mul$lstm_248/lstm_cell_233/Sigmoid_2:y:0+lstm_248/lstm_cell_233/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_248/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_248/TensorArrayV2_1TensorListReserve/lstm_248/TensorArrayV2_1/element_shape:output:0!lstm_248/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_248/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_248/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_248/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_248/whileWhile$lstm_248/while/loop_counter:output:0*lstm_248/while/maximum_iterations:output:0lstm_248/time:output:0!lstm_248/TensorArrayV2_1:handle:0lstm_248/zeros:output:0lstm_248/zeros_1:output:0!lstm_248/strided_slice_1:output:0@lstm_248/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_248_lstm_cell_233_matmul_readvariableop_resource7lstm_248_lstm_cell_233_matmul_1_readvariableop_resource6lstm_248_lstm_cell_233_biasadd_readvariableop_resource*
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
lstm_248_while_body_1412777*'
condR
lstm_248_while_cond_1412776*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_248/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_248/TensorArrayV2Stack/TensorListStackTensorListStacklstm_248/while:output:3Blstm_248/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_248/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_248/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_248/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_248/strided_slice_3StridedSlice4lstm_248/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_248/strided_slice_3/stack:output:0)lstm_248/strided_slice_3/stack_1:output:0)lstm_248/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_248/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_248/transpose_1	Transpose4lstm_248/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_248/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_248/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_82/MatMul/ReadVariableOpReadVariableOp'dense_82_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_82/MatMulMatMul!lstm_248/strided_slice_3:output:0&dense_82/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_82/BiasAdd/ReadVariableOpReadVariableOp(dense_82_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_82/BiasAddBiasAdddense_82/MatMul:product:0'dense_82/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_82/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_82/BiasAdd/ReadVariableOp^dense_82/MatMul/ReadVariableOp.^lstm_246/lstm_cell_231/BiasAdd/ReadVariableOp-^lstm_246/lstm_cell_231/MatMul/ReadVariableOp/^lstm_246/lstm_cell_231/MatMul_1/ReadVariableOp^lstm_246/while.^lstm_247/lstm_cell_232/BiasAdd/ReadVariableOp-^lstm_247/lstm_cell_232/MatMul/ReadVariableOp/^lstm_247/lstm_cell_232/MatMul_1/ReadVariableOp^lstm_247/while.^lstm_248/lstm_cell_233/BiasAdd/ReadVariableOp-^lstm_248/lstm_cell_233/MatMul/ReadVariableOp/^lstm_248/lstm_cell_233/MatMul_1/ReadVariableOp^lstm_248/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_82/BiasAdd/ReadVariableOpdense_82/BiasAdd/ReadVariableOp2@
dense_82/MatMul/ReadVariableOpdense_82/MatMul/ReadVariableOp2^
-lstm_246/lstm_cell_231/BiasAdd/ReadVariableOp-lstm_246/lstm_cell_231/BiasAdd/ReadVariableOp2\
,lstm_246/lstm_cell_231/MatMul/ReadVariableOp,lstm_246/lstm_cell_231/MatMul/ReadVariableOp2`
.lstm_246/lstm_cell_231/MatMul_1/ReadVariableOp.lstm_246/lstm_cell_231/MatMul_1/ReadVariableOp2 
lstm_246/whilelstm_246/while2^
-lstm_247/lstm_cell_232/BiasAdd/ReadVariableOp-lstm_247/lstm_cell_232/BiasAdd/ReadVariableOp2\
,lstm_247/lstm_cell_232/MatMul/ReadVariableOp,lstm_247/lstm_cell_232/MatMul/ReadVariableOp2`
.lstm_247/lstm_cell_232/MatMul_1/ReadVariableOp.lstm_247/lstm_cell_232/MatMul_1/ReadVariableOp2 
lstm_247/whilelstm_247/while2^
-lstm_248/lstm_cell_233/BiasAdd/ReadVariableOp-lstm_248/lstm_cell_233/BiasAdd/ReadVariableOp2\
,lstm_248/lstm_cell_233/MatMul/ReadVariableOp,lstm_248/lstm_cell_233/MatMul/ReadVariableOp2`
.lstm_248/lstm_cell_233/MatMul_1/ReadVariableOp.lstm_248/lstm_cell_233/MatMul_1/ReadVariableOp2 
lstm_248/whilelstm_248/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_232_layer_call_fn_1415293

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
J__inference_lstm_cell_232_layer_call_and_return_conditional_losses_1410689o
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
while_cond_1410556
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1410556___redundant_placeholder05
1while_while_cond_1410556___redundant_placeholder15
1while_while_cond_1410556___redundant_placeholder25
1while_while_cond_1410556___redundant_placeholder3
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
*__inference_lstm_247_layer_call_fn_1413954

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
E__inference_lstm_247_layer_call_and_return_conditional_losses_1412006s
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
)sequential_82_lstm_247_while_cond_1409896J
Fsequential_82_lstm_247_while_sequential_82_lstm_247_while_loop_counterP
Lsequential_82_lstm_247_while_sequential_82_lstm_247_while_maximum_iterations,
(sequential_82_lstm_247_while_placeholder.
*sequential_82_lstm_247_while_placeholder_1.
*sequential_82_lstm_247_while_placeholder_2.
*sequential_82_lstm_247_while_placeholder_3L
Hsequential_82_lstm_247_while_less_sequential_82_lstm_247_strided_slice_1c
_sequential_82_lstm_247_while_sequential_82_lstm_247_while_cond_1409896___redundant_placeholder0c
_sequential_82_lstm_247_while_sequential_82_lstm_247_while_cond_1409896___redundant_placeholder1c
_sequential_82_lstm_247_while_sequential_82_lstm_247_while_cond_1409896___redundant_placeholder2c
_sequential_82_lstm_247_while_sequential_82_lstm_247_while_cond_1409896___redundant_placeholder3)
%sequential_82_lstm_247_while_identity
?
!sequential_82/lstm_247/while/LessLess(sequential_82_lstm_247_while_placeholderHsequential_82_lstm_247_while_less_sequential_82_lstm_247_strided_slice_1*
T0*
_output_shapes
: y
%sequential_82/lstm_247/while/IdentityIdentity%sequential_82/lstm_247/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_82_lstm_247_while_identity.sequential_82/lstm_247/while/Identity:output:0*(
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

lstm_246_while_body_1412499.
*lstm_246_while_lstm_246_while_loop_counter4
0lstm_246_while_lstm_246_while_maximum_iterations
lstm_246_while_placeholder 
lstm_246_while_placeholder_1 
lstm_246_while_placeholder_2 
lstm_246_while_placeholder_3-
)lstm_246_while_lstm_246_strided_slice_1_0i
elstm_246_while_tensorarrayv2read_tensorlistgetitem_lstm_246_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_246_while_lstm_cell_231_matmul_readvariableop_resource_0:	?R
?lstm_246_while_lstm_cell_231_matmul_1_readvariableop_resource_0:	d?M
>lstm_246_while_lstm_cell_231_biasadd_readvariableop_resource_0:	?
lstm_246_while_identity
lstm_246_while_identity_1
lstm_246_while_identity_2
lstm_246_while_identity_3
lstm_246_while_identity_4
lstm_246_while_identity_5+
'lstm_246_while_lstm_246_strided_slice_1g
clstm_246_while_tensorarrayv2read_tensorlistgetitem_lstm_246_tensorarrayunstack_tensorlistfromtensorN
;lstm_246_while_lstm_cell_231_matmul_readvariableop_resource:	?P
=lstm_246_while_lstm_cell_231_matmul_1_readvariableop_resource:	d?K
<lstm_246_while_lstm_cell_231_biasadd_readvariableop_resource:	???3lstm_246/while/lstm_cell_231/BiasAdd/ReadVariableOp?2lstm_246/while/lstm_cell_231/MatMul/ReadVariableOp?4lstm_246/while/lstm_cell_231/MatMul_1/ReadVariableOp?
@lstm_246/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_246/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_246_while_tensorarrayv2read_tensorlistgetitem_lstm_246_tensorarrayunstack_tensorlistfromtensor_0lstm_246_while_placeholderIlstm_246/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_246/while/lstm_cell_231/MatMul/ReadVariableOpReadVariableOp=lstm_246_while_lstm_cell_231_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_246/while/lstm_cell_231/MatMulMatMul9lstm_246/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_246/while/lstm_cell_231/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_246/while/lstm_cell_231/MatMul_1/ReadVariableOpReadVariableOp?lstm_246_while_lstm_cell_231_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_246/while/lstm_cell_231/MatMul_1MatMullstm_246_while_placeholder_2<lstm_246/while/lstm_cell_231/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_246/while/lstm_cell_231/addAddV2-lstm_246/while/lstm_cell_231/MatMul:product:0/lstm_246/while/lstm_cell_231/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_246/while/lstm_cell_231/BiasAdd/ReadVariableOpReadVariableOp>lstm_246_while_lstm_cell_231_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_246/while/lstm_cell_231/BiasAddBiasAdd$lstm_246/while/lstm_cell_231/add:z:0;lstm_246/while/lstm_cell_231/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_246/while/lstm_cell_231/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_246/while/lstm_cell_231/splitSplit5lstm_246/while/lstm_cell_231/split/split_dim:output:0-lstm_246/while/lstm_cell_231/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_246/while/lstm_cell_231/SigmoidSigmoid+lstm_246/while/lstm_cell_231/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_246/while/lstm_cell_231/Sigmoid_1Sigmoid+lstm_246/while/lstm_cell_231/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_246/while/lstm_cell_231/mulMul*lstm_246/while/lstm_cell_231/Sigmoid_1:y:0lstm_246_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_246/while/lstm_cell_231/ReluRelu+lstm_246/while/lstm_cell_231/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_246/while/lstm_cell_231/mul_1Mul(lstm_246/while/lstm_cell_231/Sigmoid:y:0/lstm_246/while/lstm_cell_231/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_246/while/lstm_cell_231/add_1AddV2$lstm_246/while/lstm_cell_231/mul:z:0&lstm_246/while/lstm_cell_231/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_246/while/lstm_cell_231/Sigmoid_2Sigmoid+lstm_246/while/lstm_cell_231/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_246/while/lstm_cell_231/Relu_1Relu&lstm_246/while/lstm_cell_231/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_246/while/lstm_cell_231/mul_2Mul*lstm_246/while/lstm_cell_231/Sigmoid_2:y:01lstm_246/while/lstm_cell_231/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_246/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_246_while_placeholder_1lstm_246_while_placeholder&lstm_246/while/lstm_cell_231/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_246/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_246/while/addAddV2lstm_246_while_placeholderlstm_246/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_246/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_246/while/add_1AddV2*lstm_246_while_lstm_246_while_loop_counterlstm_246/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_246/while/IdentityIdentitylstm_246/while/add_1:z:0^lstm_246/while/NoOp*
T0*
_output_shapes
: ?
lstm_246/while/Identity_1Identity0lstm_246_while_lstm_246_while_maximum_iterations^lstm_246/while/NoOp*
T0*
_output_shapes
: t
lstm_246/while/Identity_2Identitylstm_246/while/add:z:0^lstm_246/while/NoOp*
T0*
_output_shapes
: ?
lstm_246/while/Identity_3IdentityClstm_246/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_246/while/NoOp*
T0*
_output_shapes
: ?
lstm_246/while/Identity_4Identity&lstm_246/while/lstm_cell_231/mul_2:z:0^lstm_246/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_246/while/Identity_5Identity&lstm_246/while/lstm_cell_231/add_1:z:0^lstm_246/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_246/while/NoOpNoOp4^lstm_246/while/lstm_cell_231/BiasAdd/ReadVariableOp3^lstm_246/while/lstm_cell_231/MatMul/ReadVariableOp5^lstm_246/while/lstm_cell_231/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_246_while_identity lstm_246/while/Identity:output:0"?
lstm_246_while_identity_1"lstm_246/while/Identity_1:output:0"?
lstm_246_while_identity_2"lstm_246/while/Identity_2:output:0"?
lstm_246_while_identity_3"lstm_246/while/Identity_3:output:0"?
lstm_246_while_identity_4"lstm_246/while/Identity_4:output:0"?
lstm_246_while_identity_5"lstm_246/while/Identity_5:output:0"T
'lstm_246_while_lstm_246_strided_slice_1)lstm_246_while_lstm_246_strided_slice_1_0"~
<lstm_246_while_lstm_cell_231_biasadd_readvariableop_resource>lstm_246_while_lstm_cell_231_biasadd_readvariableop_resource_0"?
=lstm_246_while_lstm_cell_231_matmul_1_readvariableop_resource?lstm_246_while_lstm_cell_231_matmul_1_readvariableop_resource_0"|
;lstm_246_while_lstm_cell_231_matmul_readvariableop_resource=lstm_246_while_lstm_cell_231_matmul_readvariableop_resource_0"?
clstm_246_while_tensorarrayv2read_tensorlistgetitem_lstm_246_tensorarrayunstack_tensorlistfromtensorelstm_246_while_tensorarrayv2read_tensorlistgetitem_lstm_246_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_246/while/lstm_cell_231/BiasAdd/ReadVariableOp3lstm_246/while/lstm_cell_231/BiasAdd/ReadVariableOp2h
2lstm_246/while/lstm_cell_231/MatMul/ReadVariableOp2lstm_246/while/lstm_cell_231/MatMul/ReadVariableOp2l
4lstm_246/while/lstm_cell_231/MatMul_1/ReadVariableOp4lstm_246/while/lstm_cell_231/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_232_layer_call_and_return_conditional_losses_1415325

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
*__inference_lstm_246_layer_call_fn_1413338

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
E__inference_lstm_246_layer_call_and_return_conditional_losses_1412171s
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
while_cond_1410747
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1410747___redundant_placeholder05
1while_while_cond_1410747___redundant_placeholder15
1while_while_cond_1410747___redundant_placeholder25
1while_while_cond_1410747___redundant_placeholder3
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
*__inference_lstm_247_layer_call_fn_1413943

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
E__inference_lstm_247_layer_call_and_return_conditional_losses_1411475s
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
while_body_1411757
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_233_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_233_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_233_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_233_matmul_readvariableop_resource:2(F
4while_lstm_cell_233_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_233_biasadd_readvariableop_resource:(??*while/lstm_cell_233/BiasAdd/ReadVariableOp?)while/lstm_cell_233/MatMul/ReadVariableOp?+while/lstm_cell_233/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_233/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_233_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_233/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_233/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_233/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_233_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_233/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_233/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_233/addAddV2$while/lstm_cell_233/MatMul:product:0&while/lstm_cell_233/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_233/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_233_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_233/BiasAddBiasAddwhile/lstm_cell_233/add:z:02while/lstm_cell_233/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_233/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_233/splitSplit,while/lstm_cell_233/split/split_dim:output:0$while/lstm_cell_233/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_233/SigmoidSigmoid"while/lstm_cell_233/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_233/Sigmoid_1Sigmoid"while/lstm_cell_233/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_233/mulMul!while/lstm_cell_233/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_233/ReluRelu"while/lstm_cell_233/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_233/mul_1Mulwhile/lstm_cell_233/Sigmoid:y:0&while/lstm_cell_233/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_233/add_1AddV2while/lstm_cell_233/mul:z:0while/lstm_cell_233/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_233/Sigmoid_2Sigmoid"while/lstm_cell_233/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_233/Relu_1Reluwhile/lstm_cell_233/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_233/mul_2Mul!while/lstm_cell_233/Sigmoid_2:y:0(while/lstm_cell_233/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_233/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_233/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_233/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_233/BiasAdd/ReadVariableOp*^while/lstm_cell_233/MatMul/ReadVariableOp,^while/lstm_cell_233/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_233_biasadd_readvariableop_resource5while_lstm_cell_233_biasadd_readvariableop_resource_0"n
4while_lstm_cell_233_matmul_1_readvariableop_resource6while_lstm_cell_233_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_233_matmul_readvariableop_resource4while_lstm_cell_233_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_233/BiasAdd/ReadVariableOp*while/lstm_cell_233/BiasAdd/ReadVariableOp2V
)while/lstm_cell_233/MatMul/ReadVariableOp)while/lstm_cell_233/MatMul/ReadVariableOp2Z
+while/lstm_cell_233/MatMul_1/ReadVariableOp+while/lstm_cell_233/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_247_while_body_1412638.
*lstm_247_while_lstm_247_while_loop_counter4
0lstm_247_while_lstm_247_while_maximum_iterations
lstm_247_while_placeholder 
lstm_247_while_placeholder_1 
lstm_247_while_placeholder_2 
lstm_247_while_placeholder_3-
)lstm_247_while_lstm_247_strided_slice_1_0i
elstm_247_while_tensorarrayv2read_tensorlistgetitem_lstm_247_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_247_while_lstm_cell_232_matmul_readvariableop_resource_0:	d?R
?lstm_247_while_lstm_cell_232_matmul_1_readvariableop_resource_0:	2?M
>lstm_247_while_lstm_cell_232_biasadd_readvariableop_resource_0:	?
lstm_247_while_identity
lstm_247_while_identity_1
lstm_247_while_identity_2
lstm_247_while_identity_3
lstm_247_while_identity_4
lstm_247_while_identity_5+
'lstm_247_while_lstm_247_strided_slice_1g
clstm_247_while_tensorarrayv2read_tensorlistgetitem_lstm_247_tensorarrayunstack_tensorlistfromtensorN
;lstm_247_while_lstm_cell_232_matmul_readvariableop_resource:	d?P
=lstm_247_while_lstm_cell_232_matmul_1_readvariableop_resource:	2?K
<lstm_247_while_lstm_cell_232_biasadd_readvariableop_resource:	???3lstm_247/while/lstm_cell_232/BiasAdd/ReadVariableOp?2lstm_247/while/lstm_cell_232/MatMul/ReadVariableOp?4lstm_247/while/lstm_cell_232/MatMul_1/ReadVariableOp?
@lstm_247/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_247/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_247_while_tensorarrayv2read_tensorlistgetitem_lstm_247_tensorarrayunstack_tensorlistfromtensor_0lstm_247_while_placeholderIlstm_247/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_247/while/lstm_cell_232/MatMul/ReadVariableOpReadVariableOp=lstm_247_while_lstm_cell_232_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_247/while/lstm_cell_232/MatMulMatMul9lstm_247/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_247/while/lstm_cell_232/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_247/while/lstm_cell_232/MatMul_1/ReadVariableOpReadVariableOp?lstm_247_while_lstm_cell_232_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_247/while/lstm_cell_232/MatMul_1MatMullstm_247_while_placeholder_2<lstm_247/while/lstm_cell_232/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_247/while/lstm_cell_232/addAddV2-lstm_247/while/lstm_cell_232/MatMul:product:0/lstm_247/while/lstm_cell_232/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_247/while/lstm_cell_232/BiasAdd/ReadVariableOpReadVariableOp>lstm_247_while_lstm_cell_232_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_247/while/lstm_cell_232/BiasAddBiasAdd$lstm_247/while/lstm_cell_232/add:z:0;lstm_247/while/lstm_cell_232/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_247/while/lstm_cell_232/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_247/while/lstm_cell_232/splitSplit5lstm_247/while/lstm_cell_232/split/split_dim:output:0-lstm_247/while/lstm_cell_232/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_247/while/lstm_cell_232/SigmoidSigmoid+lstm_247/while/lstm_cell_232/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_247/while/lstm_cell_232/Sigmoid_1Sigmoid+lstm_247/while/lstm_cell_232/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_247/while/lstm_cell_232/mulMul*lstm_247/while/lstm_cell_232/Sigmoid_1:y:0lstm_247_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_247/while/lstm_cell_232/ReluRelu+lstm_247/while/lstm_cell_232/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_247/while/lstm_cell_232/mul_1Mul(lstm_247/while/lstm_cell_232/Sigmoid:y:0/lstm_247/while/lstm_cell_232/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_247/while/lstm_cell_232/add_1AddV2$lstm_247/while/lstm_cell_232/mul:z:0&lstm_247/while/lstm_cell_232/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_247/while/lstm_cell_232/Sigmoid_2Sigmoid+lstm_247/while/lstm_cell_232/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_247/while/lstm_cell_232/Relu_1Relu&lstm_247/while/lstm_cell_232/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_247/while/lstm_cell_232/mul_2Mul*lstm_247/while/lstm_cell_232/Sigmoid_2:y:01lstm_247/while/lstm_cell_232/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_247/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_247_while_placeholder_1lstm_247_while_placeholder&lstm_247/while/lstm_cell_232/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_247/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_247/while/addAddV2lstm_247_while_placeholderlstm_247/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_247/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_247/while/add_1AddV2*lstm_247_while_lstm_247_while_loop_counterlstm_247/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_247/while/IdentityIdentitylstm_247/while/add_1:z:0^lstm_247/while/NoOp*
T0*
_output_shapes
: ?
lstm_247/while/Identity_1Identity0lstm_247_while_lstm_247_while_maximum_iterations^lstm_247/while/NoOp*
T0*
_output_shapes
: t
lstm_247/while/Identity_2Identitylstm_247/while/add:z:0^lstm_247/while/NoOp*
T0*
_output_shapes
: ?
lstm_247/while/Identity_3IdentityClstm_247/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_247/while/NoOp*
T0*
_output_shapes
: ?
lstm_247/while/Identity_4Identity&lstm_247/while/lstm_cell_232/mul_2:z:0^lstm_247/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_247/while/Identity_5Identity&lstm_247/while/lstm_cell_232/add_1:z:0^lstm_247/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_247/while/NoOpNoOp4^lstm_247/while/lstm_cell_232/BiasAdd/ReadVariableOp3^lstm_247/while/lstm_cell_232/MatMul/ReadVariableOp5^lstm_247/while/lstm_cell_232/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_247_while_identity lstm_247/while/Identity:output:0"?
lstm_247_while_identity_1"lstm_247/while/Identity_1:output:0"?
lstm_247_while_identity_2"lstm_247/while/Identity_2:output:0"?
lstm_247_while_identity_3"lstm_247/while/Identity_3:output:0"?
lstm_247_while_identity_4"lstm_247/while/Identity_4:output:0"?
lstm_247_while_identity_5"lstm_247/while/Identity_5:output:0"T
'lstm_247_while_lstm_247_strided_slice_1)lstm_247_while_lstm_247_strided_slice_1_0"~
<lstm_247_while_lstm_cell_232_biasadd_readvariableop_resource>lstm_247_while_lstm_cell_232_biasadd_readvariableop_resource_0"?
=lstm_247_while_lstm_cell_232_matmul_1_readvariableop_resource?lstm_247_while_lstm_cell_232_matmul_1_readvariableop_resource_0"|
;lstm_247_while_lstm_cell_232_matmul_readvariableop_resource=lstm_247_while_lstm_cell_232_matmul_readvariableop_resource_0"?
clstm_247_while_tensorarrayv2read_tensorlistgetitem_lstm_247_tensorarrayunstack_tensorlistfromtensorelstm_247_while_tensorarrayv2read_tensorlistgetitem_lstm_247_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_247/while/lstm_cell_232/BiasAdd/ReadVariableOp3lstm_247/while/lstm_cell_232/BiasAdd/ReadVariableOp2h
2lstm_247/while/lstm_cell_232/MatMul/ReadVariableOp2lstm_247/while/lstm_cell_232/MatMul/ReadVariableOp2l
4lstm_247/while/lstm_cell_232/MatMul_1/ReadVariableOp4lstm_247/while/lstm_cell_232/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1413396
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1413396___redundant_placeholder05
1while_while_cond_1413396___redundant_placeholder15
1while_while_cond_1413396___redundant_placeholder25
1while_while_cond_1413396___redundant_placeholder3
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
lstm_246_while_cond_1412925.
*lstm_246_while_lstm_246_while_loop_counter4
0lstm_246_while_lstm_246_while_maximum_iterations
lstm_246_while_placeholder 
lstm_246_while_placeholder_1 
lstm_246_while_placeholder_2 
lstm_246_while_placeholder_30
,lstm_246_while_less_lstm_246_strided_slice_1G
Clstm_246_while_lstm_246_while_cond_1412925___redundant_placeholder0G
Clstm_246_while_lstm_246_while_cond_1412925___redundant_placeholder1G
Clstm_246_while_lstm_246_while_cond_1412925___redundant_placeholder2G
Clstm_246_while_lstm_246_while_cond_1412925___redundant_placeholder3
lstm_246_while_identity
?
lstm_246/while/LessLesslstm_246_while_placeholder,lstm_246_while_less_lstm_246_strided_slice_1*
T0*
_output_shapes
: ]
lstm_246/while/IdentityIdentitylstm_246/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_246_while_identity lstm_246/while/Identity:output:0*(
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
while_cond_1410906
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1410906___redundant_placeholder05
1while_while_cond_1410906___redundant_placeholder15
1while_while_cond_1410906___redundant_placeholder25
1while_while_cond_1410906___redundant_placeholder3
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
while_body_1410748
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_232_1410772_0:	d?0
while_lstm_cell_232_1410774_0:	2?,
while_lstm_cell_232_1410776_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_232_1410772:	d?.
while_lstm_cell_232_1410774:	2?*
while_lstm_cell_232_1410776:	???+while/lstm_cell_232/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_232/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_232_1410772_0while_lstm_cell_232_1410774_0while_lstm_cell_232_1410776_0*
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
J__inference_lstm_cell_232_layer_call_and_return_conditional_losses_1410689?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_232/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_232/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_232/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_232/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_232_1410772while_lstm_cell_232_1410772_0"<
while_lstm_cell_232_1410774while_lstm_cell_232_1410774_0"<
while_lstm_cell_232_1410776while_lstm_cell_232_1410776_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_232/StatefulPartitionedCall+while/lstm_cell_232/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_231_layer_call_and_return_conditional_losses_1410193

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
lstm_247_while_cond_1413064.
*lstm_247_while_lstm_247_while_loop_counter4
0lstm_247_while_lstm_247_while_maximum_iterations
lstm_247_while_placeholder 
lstm_247_while_placeholder_1 
lstm_247_while_placeholder_2 
lstm_247_while_placeholder_30
,lstm_247_while_less_lstm_247_strided_slice_1G
Clstm_247_while_lstm_247_while_cond_1413064___redundant_placeholder0G
Clstm_247_while_lstm_247_while_cond_1413064___redundant_placeholder1G
Clstm_247_while_lstm_247_while_cond_1413064___redundant_placeholder2G
Clstm_247_while_lstm_247_while_cond_1413064___redundant_placeholder3
lstm_247_while_identity
?
lstm_247/while/LessLesslstm_247_while_placeholder,lstm_247_while_less_lstm_247_strided_slice_1*
T0*
_output_shapes
: ]
lstm_247/while/IdentityIdentitylstm_247/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_247_while_identity lstm_247/while/Identity:output:0*(
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
while_cond_1411097
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1411097___redundant_placeholder05
1while_while_cond_1411097___redundant_placeholder15
1while_while_cond_1411097___redundant_placeholder25
1while_while_cond_1411097___redundant_placeholder3
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
while_cond_1411390
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1411390___redundant_placeholder05
1while_while_cond_1411390___redundant_placeholder15
1while_while_cond_1411390___redundant_placeholder25
1while_while_cond_1411390___redundant_placeholder3
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
%__inference_signature_wrapper_1412386
lstm_246_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_246_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_1410126o
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
_user_specified_namelstm_246_input
?
?
while_cond_1411240
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1411240___redundant_placeholder05
1while_while_cond_1411240___redundant_placeholder15
1while_while_cond_1411240___redundant_placeholder25
1while_while_cond_1411240___redundant_placeholder3
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
E__inference_lstm_246_layer_call_and_return_conditional_losses_1410276

inputs(
lstm_cell_231_1410194:	?(
lstm_cell_231_1410196:	d?$
lstm_cell_231_1410198:	?
identity??%lstm_cell_231/StatefulPartitionedCall?while;
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
%lstm_cell_231/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_231_1410194lstm_cell_231_1410196lstm_cell_231_1410198*
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
J__inference_lstm_cell_231_layer_call_and_return_conditional_losses_1410193n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_231_1410194lstm_cell_231_1410196lstm_cell_231_1410198*
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
while_body_1410207*
condR
while_cond_1410206*K
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
NoOpNoOp&^lstm_cell_231/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_231/StatefulPartitionedCall%lstm_cell_231/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_1415057
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1415057___redundant_placeholder05
1while_while_cond_1415057___redundant_placeholder15
1while_while_cond_1415057___redundant_placeholder25
1while_while_cond_1415057___redundant_placeholder3
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
/__inference_sequential_82_layer_call_fn_1411675
lstm_246_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_246_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_82_layer_call_and_return_conditional_losses_1411650o
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
_user_specified_namelstm_246_input
?8
?
while_body_1415058
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_233_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_233_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_233_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_233_matmul_readvariableop_resource:2(F
4while_lstm_cell_233_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_233_biasadd_readvariableop_resource:(??*while/lstm_cell_233/BiasAdd/ReadVariableOp?)while/lstm_cell_233/MatMul/ReadVariableOp?+while/lstm_cell_233/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_233/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_233_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_233/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_233/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_233/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_233_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_233/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_233/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_233/addAddV2$while/lstm_cell_233/MatMul:product:0&while/lstm_cell_233/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_233/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_233_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_233/BiasAddBiasAddwhile/lstm_cell_233/add:z:02while/lstm_cell_233/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_233/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_233/splitSplit,while/lstm_cell_233/split/split_dim:output:0$while/lstm_cell_233/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_233/SigmoidSigmoid"while/lstm_cell_233/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_233/Sigmoid_1Sigmoid"while/lstm_cell_233/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_233/mulMul!while/lstm_cell_233/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_233/ReluRelu"while/lstm_cell_233/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_233/mul_1Mulwhile/lstm_cell_233/Sigmoid:y:0&while/lstm_cell_233/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_233/add_1AddV2while/lstm_cell_233/mul:z:0while/lstm_cell_233/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_233/Sigmoid_2Sigmoid"while/lstm_cell_233/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_233/Relu_1Reluwhile/lstm_cell_233/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_233/mul_2Mul!while/lstm_cell_233/Sigmoid_2:y:0(while/lstm_cell_233/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_233/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_233/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_233/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_233/BiasAdd/ReadVariableOp*^while/lstm_cell_233/MatMul/ReadVariableOp,^while/lstm_cell_233/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_233_biasadd_readvariableop_resource5while_lstm_cell_233_biasadd_readvariableop_resource_0"n
4while_lstm_cell_233_matmul_1_readvariableop_resource6while_lstm_cell_233_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_233_matmul_readvariableop_resource4while_lstm_cell_233_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_233/BiasAdd/ReadVariableOp*while/lstm_cell_233/BiasAdd/ReadVariableOp2V
)while/lstm_cell_233/MatMul/ReadVariableOp)while/lstm_cell_233/MatMul/ReadVariableOp2Z
+while/lstm_cell_233/MatMul_1/ReadVariableOp+while/lstm_cell_233/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_sequential_82_layer_call_fn_1412440

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
J__inference_sequential_82_layer_call_and_return_conditional_losses_1412239o
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
while_body_1414299
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_232_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_232_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_232_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_232_matmul_readvariableop_resource:	d?G
4while_lstm_cell_232_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_232_biasadd_readvariableop_resource:	???*while/lstm_cell_232/BiasAdd/ReadVariableOp?)while/lstm_cell_232/MatMul/ReadVariableOp?+while/lstm_cell_232/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_232/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_232_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_232/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_232/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_232/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_232_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_232/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_232/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_232/addAddV2$while/lstm_cell_232/MatMul:product:0&while/lstm_cell_232/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_232/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_232_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_232/BiasAddBiasAddwhile/lstm_cell_232/add:z:02while/lstm_cell_232/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_232/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_232/splitSplit,while/lstm_cell_232/split/split_dim:output:0$while/lstm_cell_232/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_232/SigmoidSigmoid"while/lstm_cell_232/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_232/Sigmoid_1Sigmoid"while/lstm_cell_232/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_232/mulMul!while/lstm_cell_232/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_232/ReluRelu"while/lstm_cell_232/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_232/mul_1Mulwhile/lstm_cell_232/Sigmoid:y:0&while/lstm_cell_232/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_232/add_1AddV2while/lstm_cell_232/mul:z:0while/lstm_cell_232/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_232/Sigmoid_2Sigmoid"while/lstm_cell_232/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_232/Relu_1Reluwhile/lstm_cell_232/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_232/mul_2Mul!while/lstm_cell_232/Sigmoid_2:y:0(while/lstm_cell_232/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_232/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_232/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_232/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_232/BiasAdd/ReadVariableOp*^while/lstm_cell_232/MatMul/ReadVariableOp,^while/lstm_cell_232/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_232_biasadd_readvariableop_resource5while_lstm_cell_232_biasadd_readvariableop_resource_0"n
4while_lstm_cell_232_matmul_1_readvariableop_resource6while_lstm_cell_232_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_232_matmul_readvariableop_resource4while_lstm_cell_232_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_232/BiasAdd/ReadVariableOp*while/lstm_cell_232/BiasAdd/ReadVariableOp2V
)while/lstm_cell_232/MatMul/ReadVariableOp)while/lstm_cell_232/MatMul/ReadVariableOp2Z
+while/lstm_cell_232/MatMul_1/ReadVariableOp+while/lstm_cell_232/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_247_layer_call_and_return_conditional_losses_1414240
inputs_0?
,lstm_cell_232_matmul_readvariableop_resource:	d?A
.lstm_cell_232_matmul_1_readvariableop_resource:	2?<
-lstm_cell_232_biasadd_readvariableop_resource:	?
identity??$lstm_cell_232/BiasAdd/ReadVariableOp?#lstm_cell_232/MatMul/ReadVariableOp?%lstm_cell_232/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_232/MatMul/ReadVariableOpReadVariableOp,lstm_cell_232_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_232/MatMulMatMulstrided_slice_2:output:0+lstm_cell_232/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_232/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_232_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_232/MatMul_1MatMulzeros:output:0-lstm_cell_232/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_232/addAddV2lstm_cell_232/MatMul:product:0 lstm_cell_232/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_232/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_232_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_232/BiasAddBiasAddlstm_cell_232/add:z:0,lstm_cell_232/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_232/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_232/splitSplit&lstm_cell_232/split/split_dim:output:0lstm_cell_232/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_232/SigmoidSigmoidlstm_cell_232/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_232/Sigmoid_1Sigmoidlstm_cell_232/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_232/mulMullstm_cell_232/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_232/ReluRelulstm_cell_232/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_232/mul_1Mullstm_cell_232/Sigmoid:y:0 lstm_cell_232/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_232/add_1AddV2lstm_cell_232/mul:z:0lstm_cell_232/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_232/Sigmoid_2Sigmoidlstm_cell_232/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_232/Relu_1Relulstm_cell_232/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_232/mul_2Mullstm_cell_232/Sigmoid_2:y:0"lstm_cell_232/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_232_matmul_readvariableop_resource.lstm_cell_232_matmul_1_readvariableop_resource-lstm_cell_232_biasadd_readvariableop_resource*
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
while_body_1414156*
condR
while_cond_1414155*K
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
NoOpNoOp%^lstm_cell_232/BiasAdd/ReadVariableOp$^lstm_cell_232/MatMul/ReadVariableOp&^lstm_cell_232/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_232/BiasAdd/ReadVariableOp$lstm_cell_232/BiasAdd/ReadVariableOp2J
#lstm_cell_232/MatMul/ReadVariableOp#lstm_cell_232/MatMul/ReadVariableOp2N
%lstm_cell_232/MatMul_1/ReadVariableOp%lstm_cell_232/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_1414013
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_232_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_232_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_232_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_232_matmul_readvariableop_resource:	d?G
4while_lstm_cell_232_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_232_biasadd_readvariableop_resource:	???*while/lstm_cell_232/BiasAdd/ReadVariableOp?)while/lstm_cell_232/MatMul/ReadVariableOp?+while/lstm_cell_232/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_232/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_232_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_232/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_232/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_232/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_232_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_232/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_232/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_232/addAddV2$while/lstm_cell_232/MatMul:product:0&while/lstm_cell_232/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_232/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_232_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_232/BiasAddBiasAddwhile/lstm_cell_232/add:z:02while/lstm_cell_232/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_232/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_232/splitSplit,while/lstm_cell_232/split/split_dim:output:0$while/lstm_cell_232/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_232/SigmoidSigmoid"while/lstm_cell_232/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_232/Sigmoid_1Sigmoid"while/lstm_cell_232/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_232/mulMul!while/lstm_cell_232/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_232/ReluRelu"while/lstm_cell_232/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_232/mul_1Mulwhile/lstm_cell_232/Sigmoid:y:0&while/lstm_cell_232/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_232/add_1AddV2while/lstm_cell_232/mul:z:0while/lstm_cell_232/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_232/Sigmoid_2Sigmoid"while/lstm_cell_232/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_232/Relu_1Reluwhile/lstm_cell_232/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_232/mul_2Mul!while/lstm_cell_232/Sigmoid_2:y:0(while/lstm_cell_232/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_232/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_232/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_232/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_232/BiasAdd/ReadVariableOp*^while/lstm_cell_232/MatMul/ReadVariableOp,^while/lstm_cell_232/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_232_biasadd_readvariableop_resource5while_lstm_cell_232_biasadd_readvariableop_resource_0"n
4while_lstm_cell_232_matmul_1_readvariableop_resource6while_lstm_cell_232_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_232_matmul_readvariableop_resource4while_lstm_cell_232_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_232/BiasAdd/ReadVariableOp*while/lstm_cell_232/BiasAdd/ReadVariableOp2V
)while/lstm_cell_232/MatMul/ReadVariableOp)while/lstm_cell_232/MatMul/ReadVariableOp2Z
+while/lstm_cell_232/MatMul_1/ReadVariableOp+while/lstm_cell_232/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_82_layer_call_and_return_conditional_losses_1412239

inputs#
lstm_246_1412212:	?#
lstm_246_1412214:	d?
lstm_246_1412216:	?#
lstm_247_1412219:	d?#
lstm_247_1412221:	2?
lstm_247_1412223:	?"
lstm_248_1412226:2("
lstm_248_1412228:
(
lstm_248_1412230:("
dense_82_1412233:

dense_82_1412235:
identity?? dense_82/StatefulPartitionedCall? lstm_246/StatefulPartitionedCall? lstm_247/StatefulPartitionedCall? lstm_248/StatefulPartitionedCall?
 lstm_246/StatefulPartitionedCallStatefulPartitionedCallinputslstm_246_1412212lstm_246_1412214lstm_246_1412216*
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
E__inference_lstm_246_layer_call_and_return_conditional_losses_1412171?
 lstm_247/StatefulPartitionedCallStatefulPartitionedCall)lstm_246/StatefulPartitionedCall:output:0lstm_247_1412219lstm_247_1412221lstm_247_1412223*
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
E__inference_lstm_247_layer_call_and_return_conditional_losses_1412006?
 lstm_248/StatefulPartitionedCallStatefulPartitionedCall)lstm_247/StatefulPartitionedCall:output:0lstm_248_1412226lstm_248_1412228lstm_248_1412230*
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
E__inference_lstm_248_layer_call_and_return_conditional_losses_1411841?
 dense_82/StatefulPartitionedCallStatefulPartitionedCall)lstm_248/StatefulPartitionedCall:output:0dense_82_1412233dense_82_1412235*
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
E__inference_dense_82_layer_call_and_return_conditional_losses_1411643x
IdentityIdentity)dense_82/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_82/StatefulPartitionedCall!^lstm_246/StatefulPartitionedCall!^lstm_247/StatefulPartitionedCall!^lstm_248/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_82/StatefulPartitionedCall dense_82/StatefulPartitionedCall2D
 lstm_246/StatefulPartitionedCall lstm_246/StatefulPartitionedCall2D
 lstm_247/StatefulPartitionedCall lstm_247/StatefulPartitionedCall2D
 lstm_248/StatefulPartitionedCall lstm_248/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_1410907
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_233_1410931_0:2(/
while_lstm_cell_233_1410933_0:
(+
while_lstm_cell_233_1410935_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_233_1410931:2(-
while_lstm_cell_233_1410933:
()
while_lstm_cell_233_1410935:(??+while/lstm_cell_233/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_233/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_233_1410931_0while_lstm_cell_233_1410933_0while_lstm_cell_233_1410935_0*
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
J__inference_lstm_cell_233_layer_call_and_return_conditional_losses_1410893?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_233/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_233/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_233/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_233/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_233_1410931while_lstm_cell_233_1410931_0"<
while_lstm_cell_233_1410933while_lstm_cell_233_1410933_0"<
while_lstm_cell_233_1410935while_lstm_cell_233_1410935_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_233/StatefulPartitionedCall+while/lstm_cell_233/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_248_layer_call_fn_1414559

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
E__inference_lstm_248_layer_call_and_return_conditional_losses_1411625o
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
while_cond_1414012
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1414012___redundant_placeholder05
1while_while_cond_1414012___redundant_placeholder15
1while_while_cond_1414012___redundant_placeholder25
1while_while_cond_1414012___redundant_placeholder3
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
while_cond_1411921
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1411921___redundant_placeholder05
1while_while_cond_1411921___redundant_placeholder15
1while_while_cond_1411921___redundant_placeholder25
1while_while_cond_1411921___redundant_placeholder3
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
while_body_1411922
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_232_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_232_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_232_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_232_matmul_readvariableop_resource:	d?G
4while_lstm_cell_232_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_232_biasadd_readvariableop_resource:	???*while/lstm_cell_232/BiasAdd/ReadVariableOp?)while/lstm_cell_232/MatMul/ReadVariableOp?+while/lstm_cell_232/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_232/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_232_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_232/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_232/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_232/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_232_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_232/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_232/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_232/addAddV2$while/lstm_cell_232/MatMul:product:0&while/lstm_cell_232/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_232/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_232_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_232/BiasAddBiasAddwhile/lstm_cell_232/add:z:02while/lstm_cell_232/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_232/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_232/splitSplit,while/lstm_cell_232/split/split_dim:output:0$while/lstm_cell_232/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_232/SigmoidSigmoid"while/lstm_cell_232/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_232/Sigmoid_1Sigmoid"while/lstm_cell_232/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_232/mulMul!while/lstm_cell_232/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_232/ReluRelu"while/lstm_cell_232/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_232/mul_1Mulwhile/lstm_cell_232/Sigmoid:y:0&while/lstm_cell_232/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_232/add_1AddV2while/lstm_cell_232/mul:z:0while/lstm_cell_232/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_232/Sigmoid_2Sigmoid"while/lstm_cell_232/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_232/Relu_1Reluwhile/lstm_cell_232/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_232/mul_2Mul!while/lstm_cell_232/Sigmoid_2:y:0(while/lstm_cell_232/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_232/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_232/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_232/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_232/BiasAdd/ReadVariableOp*^while/lstm_cell_232/MatMul/ReadVariableOp,^while/lstm_cell_232/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_232_biasadd_readvariableop_resource5while_lstm_cell_232_biasadd_readvariableop_resource_0"n
4while_lstm_cell_232_matmul_1_readvariableop_resource6while_lstm_cell_232_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_232_matmul_readvariableop_resource4while_lstm_cell_232_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_232/BiasAdd/ReadVariableOp*while/lstm_cell_232/BiasAdd/ReadVariableOp2V
)while/lstm_cell_232/MatMul/ReadVariableOp)while/lstm_cell_232/MatMul/ReadVariableOp2Z
+while/lstm_cell_232/MatMul_1/ReadVariableOp+while/lstm_cell_232/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_248_layer_call_and_return_conditional_losses_1411841

inputs>
,lstm_cell_233_matmul_readvariableop_resource:2(@
.lstm_cell_233_matmul_1_readvariableop_resource:
(;
-lstm_cell_233_biasadd_readvariableop_resource:(
identity??$lstm_cell_233/BiasAdd/ReadVariableOp?#lstm_cell_233/MatMul/ReadVariableOp?%lstm_cell_233/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_233/MatMul/ReadVariableOpReadVariableOp,lstm_cell_233_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_233/MatMulMatMulstrided_slice_2:output:0+lstm_cell_233/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_233/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_233_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_233/MatMul_1MatMulzeros:output:0-lstm_cell_233/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_233/addAddV2lstm_cell_233/MatMul:product:0 lstm_cell_233/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_233/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_233_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_233/BiasAddBiasAddlstm_cell_233/add:z:0,lstm_cell_233/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_233/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_233/splitSplit&lstm_cell_233/split/split_dim:output:0lstm_cell_233/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_233/SigmoidSigmoidlstm_cell_233/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_233/Sigmoid_1Sigmoidlstm_cell_233/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_233/mulMullstm_cell_233/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_233/ReluRelulstm_cell_233/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_233/mul_1Mullstm_cell_233/Sigmoid:y:0 lstm_cell_233/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_233/add_1AddV2lstm_cell_233/mul:z:0lstm_cell_233/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_233/Sigmoid_2Sigmoidlstm_cell_233/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_233/Relu_1Relulstm_cell_233/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_233/mul_2Mullstm_cell_233/Sigmoid_2:y:0"lstm_cell_233/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_233_matmul_readvariableop_resource.lstm_cell_233_matmul_1_readvariableop_resource-lstm_cell_233_biasadd_readvariableop_resource*
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
while_body_1411757*
condR
while_cond_1411756*K
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
NoOpNoOp%^lstm_cell_233/BiasAdd/ReadVariableOp$^lstm_cell_233/MatMul/ReadVariableOp&^lstm_cell_233/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_233/BiasAdd/ReadVariableOp$lstm_cell_233/BiasAdd/ReadVariableOp2J
#lstm_cell_233/MatMul/ReadVariableOp#lstm_cell_233/MatMul/ReadVariableOp2N
%lstm_cell_233/MatMul_1/ReadVariableOp%lstm_cell_233/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_247_layer_call_and_return_conditional_losses_1412006

inputs?
,lstm_cell_232_matmul_readvariableop_resource:	d?A
.lstm_cell_232_matmul_1_readvariableop_resource:	2?<
-lstm_cell_232_biasadd_readvariableop_resource:	?
identity??$lstm_cell_232/BiasAdd/ReadVariableOp?#lstm_cell_232/MatMul/ReadVariableOp?%lstm_cell_232/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_232/MatMul/ReadVariableOpReadVariableOp,lstm_cell_232_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_232/MatMulMatMulstrided_slice_2:output:0+lstm_cell_232/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_232/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_232_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_232/MatMul_1MatMulzeros:output:0-lstm_cell_232/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_232/addAddV2lstm_cell_232/MatMul:product:0 lstm_cell_232/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_232/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_232_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_232/BiasAddBiasAddlstm_cell_232/add:z:0,lstm_cell_232/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_232/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_232/splitSplit&lstm_cell_232/split/split_dim:output:0lstm_cell_232/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_232/SigmoidSigmoidlstm_cell_232/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_232/Sigmoid_1Sigmoidlstm_cell_232/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_232/mulMullstm_cell_232/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_232/ReluRelulstm_cell_232/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_232/mul_1Mullstm_cell_232/Sigmoid:y:0 lstm_cell_232/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_232/add_1AddV2lstm_cell_232/mul:z:0lstm_cell_232/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_232/Sigmoid_2Sigmoidlstm_cell_232/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_232/Relu_1Relulstm_cell_232/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_232/mul_2Mullstm_cell_232/Sigmoid_2:y:0"lstm_cell_232/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_232_matmul_readvariableop_resource.lstm_cell_232_matmul_1_readvariableop_resource-lstm_cell_232_biasadd_readvariableop_resource*
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
while_body_1411922*
condR
while_cond_1411921*K
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
NoOpNoOp%^lstm_cell_232/BiasAdd/ReadVariableOp$^lstm_cell_232/MatMul/ReadVariableOp&^lstm_cell_232/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_232/BiasAdd/ReadVariableOp$lstm_cell_232/BiasAdd/ReadVariableOp2J
#lstm_cell_232/MatMul/ReadVariableOp#lstm_cell_232/MatMul/ReadVariableOp2N
%lstm_cell_232/MatMul_1/ReadVariableOp%lstm_cell_232/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_246_layer_call_and_return_conditional_losses_1411325

inputs?
,lstm_cell_231_matmul_readvariableop_resource:	?A
.lstm_cell_231_matmul_1_readvariableop_resource:	d?<
-lstm_cell_231_biasadd_readvariableop_resource:	?
identity??$lstm_cell_231/BiasAdd/ReadVariableOp?#lstm_cell_231/MatMul/ReadVariableOp?%lstm_cell_231/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_231/MatMul/ReadVariableOpReadVariableOp,lstm_cell_231_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_231/MatMulMatMulstrided_slice_2:output:0+lstm_cell_231/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_231/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_231_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_231/MatMul_1MatMulzeros:output:0-lstm_cell_231/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_231/addAddV2lstm_cell_231/MatMul:product:0 lstm_cell_231/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_231/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_231_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_231/BiasAddBiasAddlstm_cell_231/add:z:0,lstm_cell_231/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_231/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_231/splitSplit&lstm_cell_231/split/split_dim:output:0lstm_cell_231/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_231/SigmoidSigmoidlstm_cell_231/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_231/Sigmoid_1Sigmoidlstm_cell_231/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_231/mulMullstm_cell_231/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_231/ReluRelulstm_cell_231/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_231/mul_1Mullstm_cell_231/Sigmoid:y:0 lstm_cell_231/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_231/add_1AddV2lstm_cell_231/mul:z:0lstm_cell_231/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_231/Sigmoid_2Sigmoidlstm_cell_231/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_231/Relu_1Relulstm_cell_231/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_231/mul_2Mullstm_cell_231/Sigmoid_2:y:0"lstm_cell_231/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_231_matmul_readvariableop_resource.lstm_cell_231_matmul_1_readvariableop_resource-lstm_cell_231_biasadd_readvariableop_resource*
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
while_body_1411241*
condR
while_cond_1411240*K
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
NoOpNoOp%^lstm_cell_231/BiasAdd/ReadVariableOp$^lstm_cell_231/MatMul/ReadVariableOp&^lstm_cell_231/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_231/BiasAdd/ReadVariableOp$lstm_cell_231/BiasAdd/ReadVariableOp2J
#lstm_cell_231/MatMul/ReadVariableOp#lstm_cell_231/MatMul/ReadVariableOp2N
%lstm_cell_231/MatMul_1/ReadVariableOp%lstm_cell_231/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_248_layer_call_and_return_conditional_losses_1411625

inputs>
,lstm_cell_233_matmul_readvariableop_resource:2(@
.lstm_cell_233_matmul_1_readvariableop_resource:
(;
-lstm_cell_233_biasadd_readvariableop_resource:(
identity??$lstm_cell_233/BiasAdd/ReadVariableOp?#lstm_cell_233/MatMul/ReadVariableOp?%lstm_cell_233/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_233/MatMul/ReadVariableOpReadVariableOp,lstm_cell_233_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_233/MatMulMatMulstrided_slice_2:output:0+lstm_cell_233/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_233/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_233_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_233/MatMul_1MatMulzeros:output:0-lstm_cell_233/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_233/addAddV2lstm_cell_233/MatMul:product:0 lstm_cell_233/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_233/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_233_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_233/BiasAddBiasAddlstm_cell_233/add:z:0,lstm_cell_233/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_233/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_233/splitSplit&lstm_cell_233/split/split_dim:output:0lstm_cell_233/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_233/SigmoidSigmoidlstm_cell_233/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_233/Sigmoid_1Sigmoidlstm_cell_233/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_233/mulMullstm_cell_233/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_233/ReluRelulstm_cell_233/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_233/mul_1Mullstm_cell_233/Sigmoid:y:0 lstm_cell_233/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_233/add_1AddV2lstm_cell_233/mul:z:0lstm_cell_233/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_233/Sigmoid_2Sigmoidlstm_cell_233/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_233/Relu_1Relulstm_cell_233/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_233/mul_2Mullstm_cell_233/Sigmoid_2:y:0"lstm_cell_233/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_233_matmul_readvariableop_resource.lstm_cell_233_matmul_1_readvariableop_resource-lstm_cell_233_biasadd_readvariableop_resource*
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
while_body_1411541*
condR
while_cond_1411540*K
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
NoOpNoOp%^lstm_cell_233/BiasAdd/ReadVariableOp$^lstm_cell_233/MatMul/ReadVariableOp&^lstm_cell_233/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_233/BiasAdd/ReadVariableOp$lstm_cell_233/BiasAdd/ReadVariableOp2J
#lstm_cell_233/MatMul/ReadVariableOp#lstm_cell_233/MatMul/ReadVariableOp2N
%lstm_cell_233/MatMul_1/ReadVariableOp%lstm_cell_233/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
)sequential_82_lstm_246_while_cond_1409757J
Fsequential_82_lstm_246_while_sequential_82_lstm_246_while_loop_counterP
Lsequential_82_lstm_246_while_sequential_82_lstm_246_while_maximum_iterations,
(sequential_82_lstm_246_while_placeholder.
*sequential_82_lstm_246_while_placeholder_1.
*sequential_82_lstm_246_while_placeholder_2.
*sequential_82_lstm_246_while_placeholder_3L
Hsequential_82_lstm_246_while_less_sequential_82_lstm_246_strided_slice_1c
_sequential_82_lstm_246_while_sequential_82_lstm_246_while_cond_1409757___redundant_placeholder0c
_sequential_82_lstm_246_while_sequential_82_lstm_246_while_cond_1409757___redundant_placeholder1c
_sequential_82_lstm_246_while_sequential_82_lstm_246_while_cond_1409757___redundant_placeholder2c
_sequential_82_lstm_246_while_sequential_82_lstm_246_while_cond_1409757___redundant_placeholder3)
%sequential_82_lstm_246_while_identity
?
!sequential_82/lstm_246/while/LessLess(sequential_82_lstm_246_while_placeholderHsequential_82_lstm_246_while_less_sequential_82_lstm_246_strided_slice_1*
T0*
_output_shapes
: y
%sequential_82/lstm_246/while/IdentityIdentity%sequential_82/lstm_246/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_82_lstm_246_while_identity.sequential_82/lstm_246/while/Identity:output:0*(
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
*__inference_lstm_246_layer_call_fn_1413316
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
E__inference_lstm_246_layer_call_and_return_conditional_losses_1410467|
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
?S
?
)sequential_82_lstm_248_while_body_1410036J
Fsequential_82_lstm_248_while_sequential_82_lstm_248_while_loop_counterP
Lsequential_82_lstm_248_while_sequential_82_lstm_248_while_maximum_iterations,
(sequential_82_lstm_248_while_placeholder.
*sequential_82_lstm_248_while_placeholder_1.
*sequential_82_lstm_248_while_placeholder_2.
*sequential_82_lstm_248_while_placeholder_3I
Esequential_82_lstm_248_while_sequential_82_lstm_248_strided_slice_1_0?
?sequential_82_lstm_248_while_tensorarrayv2read_tensorlistgetitem_sequential_82_lstm_248_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_82_lstm_248_while_lstm_cell_233_matmul_readvariableop_resource_0:2(_
Msequential_82_lstm_248_while_lstm_cell_233_matmul_1_readvariableop_resource_0:
(Z
Lsequential_82_lstm_248_while_lstm_cell_233_biasadd_readvariableop_resource_0:()
%sequential_82_lstm_248_while_identity+
'sequential_82_lstm_248_while_identity_1+
'sequential_82_lstm_248_while_identity_2+
'sequential_82_lstm_248_while_identity_3+
'sequential_82_lstm_248_while_identity_4+
'sequential_82_lstm_248_while_identity_5G
Csequential_82_lstm_248_while_sequential_82_lstm_248_strided_slice_1?
sequential_82_lstm_248_while_tensorarrayv2read_tensorlistgetitem_sequential_82_lstm_248_tensorarrayunstack_tensorlistfromtensor[
Isequential_82_lstm_248_while_lstm_cell_233_matmul_readvariableop_resource:2(]
Ksequential_82_lstm_248_while_lstm_cell_233_matmul_1_readvariableop_resource:
(X
Jsequential_82_lstm_248_while_lstm_cell_233_biasadd_readvariableop_resource:(??Asequential_82/lstm_248/while/lstm_cell_233/BiasAdd/ReadVariableOp?@sequential_82/lstm_248/while/lstm_cell_233/MatMul/ReadVariableOp?Bsequential_82/lstm_248/while/lstm_cell_233/MatMul_1/ReadVariableOp?
Nsequential_82/lstm_248/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
@sequential_82/lstm_248/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_82_lstm_248_while_tensorarrayv2read_tensorlistgetitem_sequential_82_lstm_248_tensorarrayunstack_tensorlistfromtensor_0(sequential_82_lstm_248_while_placeholderWsequential_82/lstm_248/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
@sequential_82/lstm_248/while/lstm_cell_233/MatMul/ReadVariableOpReadVariableOpKsequential_82_lstm_248_while_lstm_cell_233_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
1sequential_82/lstm_248/while/lstm_cell_233/MatMulMatMulGsequential_82/lstm_248/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_82/lstm_248/while/lstm_cell_233/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Bsequential_82/lstm_248/while/lstm_cell_233/MatMul_1/ReadVariableOpReadVariableOpMsequential_82_lstm_248_while_lstm_cell_233_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
3sequential_82/lstm_248/while/lstm_cell_233/MatMul_1MatMul*sequential_82_lstm_248_while_placeholder_2Jsequential_82/lstm_248/while/lstm_cell_233/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.sequential_82/lstm_248/while/lstm_cell_233/addAddV2;sequential_82/lstm_248/while/lstm_cell_233/MatMul:product:0=sequential_82/lstm_248/while/lstm_cell_233/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Asequential_82/lstm_248/while/lstm_cell_233/BiasAdd/ReadVariableOpReadVariableOpLsequential_82_lstm_248_while_lstm_cell_233_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
2sequential_82/lstm_248/while/lstm_cell_233/BiasAddBiasAdd2sequential_82/lstm_248/while/lstm_cell_233/add:z:0Isequential_82/lstm_248/while/lstm_cell_233/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(|
:sequential_82/lstm_248/while/lstm_cell_233/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_82/lstm_248/while/lstm_cell_233/splitSplitCsequential_82/lstm_248/while/lstm_cell_233/split/split_dim:output:0;sequential_82/lstm_248/while/lstm_cell_233/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
2sequential_82/lstm_248/while/lstm_cell_233/SigmoidSigmoid9sequential_82/lstm_248/while/lstm_cell_233/split:output:0*
T0*'
_output_shapes
:?????????
?
4sequential_82/lstm_248/while/lstm_cell_233/Sigmoid_1Sigmoid9sequential_82/lstm_248/while/lstm_cell_233/split:output:1*
T0*'
_output_shapes
:?????????
?
.sequential_82/lstm_248/while/lstm_cell_233/mulMul8sequential_82/lstm_248/while/lstm_cell_233/Sigmoid_1:y:0*sequential_82_lstm_248_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
/sequential_82/lstm_248/while/lstm_cell_233/ReluRelu9sequential_82/lstm_248/while/lstm_cell_233/split:output:2*
T0*'
_output_shapes
:?????????
?
0sequential_82/lstm_248/while/lstm_cell_233/mul_1Mul6sequential_82/lstm_248/while/lstm_cell_233/Sigmoid:y:0=sequential_82/lstm_248/while/lstm_cell_233/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
0sequential_82/lstm_248/while/lstm_cell_233/add_1AddV22sequential_82/lstm_248/while/lstm_cell_233/mul:z:04sequential_82/lstm_248/while/lstm_cell_233/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
4sequential_82/lstm_248/while/lstm_cell_233/Sigmoid_2Sigmoid9sequential_82/lstm_248/while/lstm_cell_233/split:output:3*
T0*'
_output_shapes
:?????????
?
1sequential_82/lstm_248/while/lstm_cell_233/Relu_1Relu4sequential_82/lstm_248/while/lstm_cell_233/add_1:z:0*
T0*'
_output_shapes
:?????????
?
0sequential_82/lstm_248/while/lstm_cell_233/mul_2Mul8sequential_82/lstm_248/while/lstm_cell_233/Sigmoid_2:y:0?sequential_82/lstm_248/while/lstm_cell_233/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Asequential_82/lstm_248/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_82_lstm_248_while_placeholder_1(sequential_82_lstm_248_while_placeholder4sequential_82/lstm_248/while/lstm_cell_233/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_82/lstm_248/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_82/lstm_248/while/addAddV2(sequential_82_lstm_248_while_placeholder+sequential_82/lstm_248/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_82/lstm_248/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_82/lstm_248/while/add_1AddV2Fsequential_82_lstm_248_while_sequential_82_lstm_248_while_loop_counter-sequential_82/lstm_248/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_82/lstm_248/while/IdentityIdentity&sequential_82/lstm_248/while/add_1:z:0"^sequential_82/lstm_248/while/NoOp*
T0*
_output_shapes
: ?
'sequential_82/lstm_248/while/Identity_1IdentityLsequential_82_lstm_248_while_sequential_82_lstm_248_while_maximum_iterations"^sequential_82/lstm_248/while/NoOp*
T0*
_output_shapes
: ?
'sequential_82/lstm_248/while/Identity_2Identity$sequential_82/lstm_248/while/add:z:0"^sequential_82/lstm_248/while/NoOp*
T0*
_output_shapes
: ?
'sequential_82/lstm_248/while/Identity_3IdentityQsequential_82/lstm_248/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_82/lstm_248/while/NoOp*
T0*
_output_shapes
: ?
'sequential_82/lstm_248/while/Identity_4Identity4sequential_82/lstm_248/while/lstm_cell_233/mul_2:z:0"^sequential_82/lstm_248/while/NoOp*
T0*'
_output_shapes
:?????????
?
'sequential_82/lstm_248/while/Identity_5Identity4sequential_82/lstm_248/while/lstm_cell_233/add_1:z:0"^sequential_82/lstm_248/while/NoOp*
T0*'
_output_shapes
:?????????
?
!sequential_82/lstm_248/while/NoOpNoOpB^sequential_82/lstm_248/while/lstm_cell_233/BiasAdd/ReadVariableOpA^sequential_82/lstm_248/while/lstm_cell_233/MatMul/ReadVariableOpC^sequential_82/lstm_248/while/lstm_cell_233/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_82_lstm_248_while_identity.sequential_82/lstm_248/while/Identity:output:0"[
'sequential_82_lstm_248_while_identity_10sequential_82/lstm_248/while/Identity_1:output:0"[
'sequential_82_lstm_248_while_identity_20sequential_82/lstm_248/while/Identity_2:output:0"[
'sequential_82_lstm_248_while_identity_30sequential_82/lstm_248/while/Identity_3:output:0"[
'sequential_82_lstm_248_while_identity_40sequential_82/lstm_248/while/Identity_4:output:0"[
'sequential_82_lstm_248_while_identity_50sequential_82/lstm_248/while/Identity_5:output:0"?
Jsequential_82_lstm_248_while_lstm_cell_233_biasadd_readvariableop_resourceLsequential_82_lstm_248_while_lstm_cell_233_biasadd_readvariableop_resource_0"?
Ksequential_82_lstm_248_while_lstm_cell_233_matmul_1_readvariableop_resourceMsequential_82_lstm_248_while_lstm_cell_233_matmul_1_readvariableop_resource_0"?
Isequential_82_lstm_248_while_lstm_cell_233_matmul_readvariableop_resourceKsequential_82_lstm_248_while_lstm_cell_233_matmul_readvariableop_resource_0"?
Csequential_82_lstm_248_while_sequential_82_lstm_248_strided_slice_1Esequential_82_lstm_248_while_sequential_82_lstm_248_strided_slice_1_0"?
sequential_82_lstm_248_while_tensorarrayv2read_tensorlistgetitem_sequential_82_lstm_248_tensorarrayunstack_tensorlistfromtensor?sequential_82_lstm_248_while_tensorarrayv2read_tensorlistgetitem_sequential_82_lstm_248_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Asequential_82/lstm_248/while/lstm_cell_233/BiasAdd/ReadVariableOpAsequential_82/lstm_248/while/lstm_cell_233/BiasAdd/ReadVariableOp2?
@sequential_82/lstm_248/while/lstm_cell_233/MatMul/ReadVariableOp@sequential_82/lstm_248/while/lstm_cell_233/MatMul/ReadVariableOp2?
Bsequential_82/lstm_248/while/lstm_cell_233/MatMul_1/ReadVariableOpBsequential_82/lstm_248/while/lstm_cell_233/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_247_while_body_1413065.
*lstm_247_while_lstm_247_while_loop_counter4
0lstm_247_while_lstm_247_while_maximum_iterations
lstm_247_while_placeholder 
lstm_247_while_placeholder_1 
lstm_247_while_placeholder_2 
lstm_247_while_placeholder_3-
)lstm_247_while_lstm_247_strided_slice_1_0i
elstm_247_while_tensorarrayv2read_tensorlistgetitem_lstm_247_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_247_while_lstm_cell_232_matmul_readvariableop_resource_0:	d?R
?lstm_247_while_lstm_cell_232_matmul_1_readvariableop_resource_0:	2?M
>lstm_247_while_lstm_cell_232_biasadd_readvariableop_resource_0:	?
lstm_247_while_identity
lstm_247_while_identity_1
lstm_247_while_identity_2
lstm_247_while_identity_3
lstm_247_while_identity_4
lstm_247_while_identity_5+
'lstm_247_while_lstm_247_strided_slice_1g
clstm_247_while_tensorarrayv2read_tensorlistgetitem_lstm_247_tensorarrayunstack_tensorlistfromtensorN
;lstm_247_while_lstm_cell_232_matmul_readvariableop_resource:	d?P
=lstm_247_while_lstm_cell_232_matmul_1_readvariableop_resource:	2?K
<lstm_247_while_lstm_cell_232_biasadd_readvariableop_resource:	???3lstm_247/while/lstm_cell_232/BiasAdd/ReadVariableOp?2lstm_247/while/lstm_cell_232/MatMul/ReadVariableOp?4lstm_247/while/lstm_cell_232/MatMul_1/ReadVariableOp?
@lstm_247/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_247/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_247_while_tensorarrayv2read_tensorlistgetitem_lstm_247_tensorarrayunstack_tensorlistfromtensor_0lstm_247_while_placeholderIlstm_247/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_247/while/lstm_cell_232/MatMul/ReadVariableOpReadVariableOp=lstm_247_while_lstm_cell_232_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_247/while/lstm_cell_232/MatMulMatMul9lstm_247/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_247/while/lstm_cell_232/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_247/while/lstm_cell_232/MatMul_1/ReadVariableOpReadVariableOp?lstm_247_while_lstm_cell_232_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_247/while/lstm_cell_232/MatMul_1MatMullstm_247_while_placeholder_2<lstm_247/while/lstm_cell_232/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_247/while/lstm_cell_232/addAddV2-lstm_247/while/lstm_cell_232/MatMul:product:0/lstm_247/while/lstm_cell_232/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_247/while/lstm_cell_232/BiasAdd/ReadVariableOpReadVariableOp>lstm_247_while_lstm_cell_232_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_247/while/lstm_cell_232/BiasAddBiasAdd$lstm_247/while/lstm_cell_232/add:z:0;lstm_247/while/lstm_cell_232/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_247/while/lstm_cell_232/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_247/while/lstm_cell_232/splitSplit5lstm_247/while/lstm_cell_232/split/split_dim:output:0-lstm_247/while/lstm_cell_232/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_247/while/lstm_cell_232/SigmoidSigmoid+lstm_247/while/lstm_cell_232/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_247/while/lstm_cell_232/Sigmoid_1Sigmoid+lstm_247/while/lstm_cell_232/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_247/while/lstm_cell_232/mulMul*lstm_247/while/lstm_cell_232/Sigmoid_1:y:0lstm_247_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_247/while/lstm_cell_232/ReluRelu+lstm_247/while/lstm_cell_232/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_247/while/lstm_cell_232/mul_1Mul(lstm_247/while/lstm_cell_232/Sigmoid:y:0/lstm_247/while/lstm_cell_232/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_247/while/lstm_cell_232/add_1AddV2$lstm_247/while/lstm_cell_232/mul:z:0&lstm_247/while/lstm_cell_232/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_247/while/lstm_cell_232/Sigmoid_2Sigmoid+lstm_247/while/lstm_cell_232/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_247/while/lstm_cell_232/Relu_1Relu&lstm_247/while/lstm_cell_232/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_247/while/lstm_cell_232/mul_2Mul*lstm_247/while/lstm_cell_232/Sigmoid_2:y:01lstm_247/while/lstm_cell_232/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_247/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_247_while_placeholder_1lstm_247_while_placeholder&lstm_247/while/lstm_cell_232/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_247/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_247/while/addAddV2lstm_247_while_placeholderlstm_247/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_247/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_247/while/add_1AddV2*lstm_247_while_lstm_247_while_loop_counterlstm_247/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_247/while/IdentityIdentitylstm_247/while/add_1:z:0^lstm_247/while/NoOp*
T0*
_output_shapes
: ?
lstm_247/while/Identity_1Identity0lstm_247_while_lstm_247_while_maximum_iterations^lstm_247/while/NoOp*
T0*
_output_shapes
: t
lstm_247/while/Identity_2Identitylstm_247/while/add:z:0^lstm_247/while/NoOp*
T0*
_output_shapes
: ?
lstm_247/while/Identity_3IdentityClstm_247/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_247/while/NoOp*
T0*
_output_shapes
: ?
lstm_247/while/Identity_4Identity&lstm_247/while/lstm_cell_232/mul_2:z:0^lstm_247/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_247/while/Identity_5Identity&lstm_247/while/lstm_cell_232/add_1:z:0^lstm_247/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_247/while/NoOpNoOp4^lstm_247/while/lstm_cell_232/BiasAdd/ReadVariableOp3^lstm_247/while/lstm_cell_232/MatMul/ReadVariableOp5^lstm_247/while/lstm_cell_232/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_247_while_identity lstm_247/while/Identity:output:0"?
lstm_247_while_identity_1"lstm_247/while/Identity_1:output:0"?
lstm_247_while_identity_2"lstm_247/while/Identity_2:output:0"?
lstm_247_while_identity_3"lstm_247/while/Identity_3:output:0"?
lstm_247_while_identity_4"lstm_247/while/Identity_4:output:0"?
lstm_247_while_identity_5"lstm_247/while/Identity_5:output:0"T
'lstm_247_while_lstm_247_strided_slice_1)lstm_247_while_lstm_247_strided_slice_1_0"~
<lstm_247_while_lstm_cell_232_biasadd_readvariableop_resource>lstm_247_while_lstm_cell_232_biasadd_readvariableop_resource_0"?
=lstm_247_while_lstm_cell_232_matmul_1_readvariableop_resource?lstm_247_while_lstm_cell_232_matmul_1_readvariableop_resource_0"|
;lstm_247_while_lstm_cell_232_matmul_readvariableop_resource=lstm_247_while_lstm_cell_232_matmul_readvariableop_resource_0"?
clstm_247_while_tensorarrayv2read_tensorlistgetitem_lstm_247_tensorarrayunstack_tensorlistfromtensorelstm_247_while_tensorarrayv2read_tensorlistgetitem_lstm_247_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_247/while/lstm_cell_232/BiasAdd/ReadVariableOp3lstm_247/while/lstm_cell_232/BiasAdd/ReadVariableOp2h
2lstm_247/while/lstm_cell_232/MatMul/ReadVariableOp2lstm_247/while/lstm_cell_232/MatMul/ReadVariableOp2l
4lstm_247/while/lstm_cell_232/MatMul_1/ReadVariableOp4lstm_247/while/lstm_cell_232/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_231_layer_call_and_return_conditional_losses_1410339

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
while_body_1413683
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_231_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_231_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_231_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_231_matmul_readvariableop_resource:	?G
4while_lstm_cell_231_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_231_biasadd_readvariableop_resource:	???*while/lstm_cell_231/BiasAdd/ReadVariableOp?)while/lstm_cell_231/MatMul/ReadVariableOp?+while/lstm_cell_231/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_231/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_231_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_231/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_231/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_231/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_231_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_231/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_231/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_231/addAddV2$while/lstm_cell_231/MatMul:product:0&while/lstm_cell_231/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_231/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_231_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_231/BiasAddBiasAddwhile/lstm_cell_231/add:z:02while/lstm_cell_231/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_231/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_231/splitSplit,while/lstm_cell_231/split/split_dim:output:0$while/lstm_cell_231/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_231/SigmoidSigmoid"while/lstm_cell_231/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_231/Sigmoid_1Sigmoid"while/lstm_cell_231/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_231/mulMul!while/lstm_cell_231/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_231/ReluRelu"while/lstm_cell_231/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_231/mul_1Mulwhile/lstm_cell_231/Sigmoid:y:0&while/lstm_cell_231/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_231/add_1AddV2while/lstm_cell_231/mul:z:0while/lstm_cell_231/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_231/Sigmoid_2Sigmoid"while/lstm_cell_231/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_231/Relu_1Reluwhile/lstm_cell_231/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_231/mul_2Mul!while/lstm_cell_231/Sigmoid_2:y:0(while/lstm_cell_231/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_231/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_231/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_231/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_231/BiasAdd/ReadVariableOp*^while/lstm_cell_231/MatMul/ReadVariableOp,^while/lstm_cell_231/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_231_biasadd_readvariableop_resource5while_lstm_cell_231_biasadd_readvariableop_resource_0"n
4while_lstm_cell_231_matmul_1_readvariableop_resource6while_lstm_cell_231_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_231_matmul_readvariableop_resource4while_lstm_cell_231_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_231/BiasAdd/ReadVariableOp*while/lstm_cell_231/BiasAdd/ReadVariableOp2V
)while/lstm_cell_231/MatMul/ReadVariableOp)while/lstm_cell_231/MatMul/ReadVariableOp2Z
+while/lstm_cell_231/MatMul_1/ReadVariableOp+while/lstm_cell_231/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_246_layer_call_fn_1413327

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
E__inference_lstm_246_layer_call_and_return_conditional_losses_1411325s
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
while_body_1413540
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_231_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_231_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_231_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_231_matmul_readvariableop_resource:	?G
4while_lstm_cell_231_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_231_biasadd_readvariableop_resource:	???*while/lstm_cell_231/BiasAdd/ReadVariableOp?)while/lstm_cell_231/MatMul/ReadVariableOp?+while/lstm_cell_231/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_231/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_231_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_231/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_231/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_231/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_231_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_231/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_231/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_231/addAddV2$while/lstm_cell_231/MatMul:product:0&while/lstm_cell_231/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_231/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_231_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_231/BiasAddBiasAddwhile/lstm_cell_231/add:z:02while/lstm_cell_231/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_231/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_231/splitSplit,while/lstm_cell_231/split/split_dim:output:0$while/lstm_cell_231/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_231/SigmoidSigmoid"while/lstm_cell_231/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_231/Sigmoid_1Sigmoid"while/lstm_cell_231/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_231/mulMul!while/lstm_cell_231/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_231/ReluRelu"while/lstm_cell_231/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_231/mul_1Mulwhile/lstm_cell_231/Sigmoid:y:0&while/lstm_cell_231/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_231/add_1AddV2while/lstm_cell_231/mul:z:0while/lstm_cell_231/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_231/Sigmoid_2Sigmoid"while/lstm_cell_231/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_231/Relu_1Reluwhile/lstm_cell_231/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_231/mul_2Mul!while/lstm_cell_231/Sigmoid_2:y:0(while/lstm_cell_231/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_231/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_231/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_231/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_231/BiasAdd/ReadVariableOp*^while/lstm_cell_231/MatMul/ReadVariableOp,^while/lstm_cell_231/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_231_biasadd_readvariableop_resource5while_lstm_cell_231_biasadd_readvariableop_resource_0"n
4while_lstm_cell_231_matmul_1_readvariableop_resource6while_lstm_cell_231_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_231_matmul_readvariableop_resource4while_lstm_cell_231_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_231/BiasAdd/ReadVariableOp*while/lstm_cell_231/BiasAdd/ReadVariableOp2V
)while/lstm_cell_231/MatMul/ReadVariableOp)while/lstm_cell_231/MatMul/ReadVariableOp2Z
+while/lstm_cell_231/MatMul_1/ReadVariableOp+while/lstm_cell_231/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1414156
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_232_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_232_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_232_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_232_matmul_readvariableop_resource:	d?G
4while_lstm_cell_232_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_232_biasadd_readvariableop_resource:	???*while/lstm_cell_232/BiasAdd/ReadVariableOp?)while/lstm_cell_232/MatMul/ReadVariableOp?+while/lstm_cell_232/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_232/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_232_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_232/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_232/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_232/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_232_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_232/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_232/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_232/addAddV2$while/lstm_cell_232/MatMul:product:0&while/lstm_cell_232/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_232/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_232_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_232/BiasAddBiasAddwhile/lstm_cell_232/add:z:02while/lstm_cell_232/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_232/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_232/splitSplit,while/lstm_cell_232/split/split_dim:output:0$while/lstm_cell_232/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_232/SigmoidSigmoid"while/lstm_cell_232/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_232/Sigmoid_1Sigmoid"while/lstm_cell_232/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_232/mulMul!while/lstm_cell_232/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_232/ReluRelu"while/lstm_cell_232/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_232/mul_1Mulwhile/lstm_cell_232/Sigmoid:y:0&while/lstm_cell_232/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_232/add_1AddV2while/lstm_cell_232/mul:z:0while/lstm_cell_232/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_232/Sigmoid_2Sigmoid"while/lstm_cell_232/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_232/Relu_1Reluwhile/lstm_cell_232/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_232/mul_2Mul!while/lstm_cell_232/Sigmoid_2:y:0(while/lstm_cell_232/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_232/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_232/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_232/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_232/BiasAdd/ReadVariableOp*^while/lstm_cell_232/MatMul/ReadVariableOp,^while/lstm_cell_232/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_232_biasadd_readvariableop_resource5while_lstm_cell_232_biasadd_readvariableop_resource_0"n
4while_lstm_cell_232_matmul_1_readvariableop_resource6while_lstm_cell_232_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_232_matmul_readvariableop_resource4while_lstm_cell_232_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_232/BiasAdd/ReadVariableOp*while/lstm_cell_232/BiasAdd/ReadVariableOp2V
)while/lstm_cell_232/MatMul/ReadVariableOp)while/lstm_cell_232/MatMul/ReadVariableOp2Z
+while/lstm_cell_232/MatMul_1/ReadVariableOp+while/lstm_cell_232/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_232_layer_call_and_return_conditional_losses_1415357

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
while_body_1414772
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_233_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_233_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_233_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_233_matmul_readvariableop_resource:2(F
4while_lstm_cell_233_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_233_biasadd_readvariableop_resource:(??*while/lstm_cell_233/BiasAdd/ReadVariableOp?)while/lstm_cell_233/MatMul/ReadVariableOp?+while/lstm_cell_233/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_233/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_233_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_233/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_233/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_233/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_233_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_233/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_233/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_233/addAddV2$while/lstm_cell_233/MatMul:product:0&while/lstm_cell_233/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_233/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_233_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_233/BiasAddBiasAddwhile/lstm_cell_233/add:z:02while/lstm_cell_233/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_233/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_233/splitSplit,while/lstm_cell_233/split/split_dim:output:0$while/lstm_cell_233/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_233/SigmoidSigmoid"while/lstm_cell_233/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_233/Sigmoid_1Sigmoid"while/lstm_cell_233/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_233/mulMul!while/lstm_cell_233/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_233/ReluRelu"while/lstm_cell_233/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_233/mul_1Mulwhile/lstm_cell_233/Sigmoid:y:0&while/lstm_cell_233/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_233/add_1AddV2while/lstm_cell_233/mul:z:0while/lstm_cell_233/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_233/Sigmoid_2Sigmoid"while/lstm_cell_233/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_233/Relu_1Reluwhile/lstm_cell_233/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_233/mul_2Mul!while/lstm_cell_233/Sigmoid_2:y:0(while/lstm_cell_233/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_233/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_233/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_233/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_233/BiasAdd/ReadVariableOp*^while/lstm_cell_233/MatMul/ReadVariableOp,^while/lstm_cell_233/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_233_biasadd_readvariableop_resource5while_lstm_cell_233_biasadd_readvariableop_resource_0"n
4while_lstm_cell_233_matmul_1_readvariableop_resource6while_lstm_cell_233_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_233_matmul_readvariableop_resource4while_lstm_cell_233_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_233/BiasAdd/ReadVariableOp*while/lstm_cell_233/BiasAdd/ReadVariableOp2V
)while/lstm_cell_233/MatMul/ReadVariableOp)while/lstm_cell_233/MatMul/ReadVariableOp2Z
+while/lstm_cell_233/MatMul_1/ReadVariableOp+while/lstm_cell_233/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1411541
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_233_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_233_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_233_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_233_matmul_readvariableop_resource:2(F
4while_lstm_cell_233_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_233_biasadd_readvariableop_resource:(??*while/lstm_cell_233/BiasAdd/ReadVariableOp?)while/lstm_cell_233/MatMul/ReadVariableOp?+while/lstm_cell_233/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_233/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_233_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_233/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_233/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_233/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_233_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_233/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_233/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_233/addAddV2$while/lstm_cell_233/MatMul:product:0&while/lstm_cell_233/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_233/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_233_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_233/BiasAddBiasAddwhile/lstm_cell_233/add:z:02while/lstm_cell_233/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_233/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_233/splitSplit,while/lstm_cell_233/split/split_dim:output:0$while/lstm_cell_233/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_233/SigmoidSigmoid"while/lstm_cell_233/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_233/Sigmoid_1Sigmoid"while/lstm_cell_233/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_233/mulMul!while/lstm_cell_233/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_233/ReluRelu"while/lstm_cell_233/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_233/mul_1Mulwhile/lstm_cell_233/Sigmoid:y:0&while/lstm_cell_233/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_233/add_1AddV2while/lstm_cell_233/mul:z:0while/lstm_cell_233/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_233/Sigmoid_2Sigmoid"while/lstm_cell_233/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_233/Relu_1Reluwhile/lstm_cell_233/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_233/mul_2Mul!while/lstm_cell_233/Sigmoid_2:y:0(while/lstm_cell_233/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_233/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_233/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_233/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_233/BiasAdd/ReadVariableOp*^while/lstm_cell_233/MatMul/ReadVariableOp,^while/lstm_cell_233/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_233_biasadd_readvariableop_resource5while_lstm_cell_233_biasadd_readvariableop_resource_0"n
4while_lstm_cell_233_matmul_1_readvariableop_resource6while_lstm_cell_233_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_233_matmul_readvariableop_resource4while_lstm_cell_233_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_233/BiasAdd/ReadVariableOp*while/lstm_cell_233/BiasAdd/ReadVariableOp2V
)while/lstm_cell_233/MatMul/ReadVariableOp)while/lstm_cell_233/MatMul/ReadVariableOp2Z
+while/lstm_cell_233/MatMul_1/ReadVariableOp+while/lstm_cell_233/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_247_layer_call_fn_1413921
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
E__inference_lstm_247_layer_call_and_return_conditional_losses_1410626|
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
/__inference_lstm_cell_233_layer_call_fn_1415391

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
J__inference_lstm_cell_233_layer_call_and_return_conditional_losses_1411039o
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
J__inference_lstm_cell_232_layer_call_and_return_conditional_losses_1410689

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
J__inference_lstm_cell_233_layer_call_and_return_conditional_losses_1411039

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
while_body_1414629
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_233_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_233_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_233_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_233_matmul_readvariableop_resource:2(F
4while_lstm_cell_233_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_233_biasadd_readvariableop_resource:(??*while/lstm_cell_233/BiasAdd/ReadVariableOp?)while/lstm_cell_233/MatMul/ReadVariableOp?+while/lstm_cell_233/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_233/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_233_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_233/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_233/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_233/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_233_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_233/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_233/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_233/addAddV2$while/lstm_cell_233/MatMul:product:0&while/lstm_cell_233/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_233/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_233_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_233/BiasAddBiasAddwhile/lstm_cell_233/add:z:02while/lstm_cell_233/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_233/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_233/splitSplit,while/lstm_cell_233/split/split_dim:output:0$while/lstm_cell_233/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_233/SigmoidSigmoid"while/lstm_cell_233/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_233/Sigmoid_1Sigmoid"while/lstm_cell_233/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_233/mulMul!while/lstm_cell_233/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_233/ReluRelu"while/lstm_cell_233/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_233/mul_1Mulwhile/lstm_cell_233/Sigmoid:y:0&while/lstm_cell_233/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_233/add_1AddV2while/lstm_cell_233/mul:z:0while/lstm_cell_233/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_233/Sigmoid_2Sigmoid"while/lstm_cell_233/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_233/Relu_1Reluwhile/lstm_cell_233/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_233/mul_2Mul!while/lstm_cell_233/Sigmoid_2:y:0(while/lstm_cell_233/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_233/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_233/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_233/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_233/BiasAdd/ReadVariableOp*^while/lstm_cell_233/MatMul/ReadVariableOp,^while/lstm_cell_233/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_233_biasadd_readvariableop_resource5while_lstm_cell_233_biasadd_readvariableop_resource_0"n
4while_lstm_cell_233_matmul_1_readvariableop_resource6while_lstm_cell_233_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_233_matmul_readvariableop_resource4while_lstm_cell_233_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_233/BiasAdd/ReadVariableOp*while/lstm_cell_233/BiasAdd/ReadVariableOp2V
)while/lstm_cell_233/MatMul/ReadVariableOp)while/lstm_cell_233/MatMul/ReadVariableOp2Z
+while/lstm_cell_233/MatMul_1/ReadVariableOp+while/lstm_cell_233/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_231_layer_call_fn_1415178

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
J__inference_lstm_cell_231_layer_call_and_return_conditional_losses_1410193o
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

lstm_248_while_body_1412777.
*lstm_248_while_lstm_248_while_loop_counter4
0lstm_248_while_lstm_248_while_maximum_iterations
lstm_248_while_placeholder 
lstm_248_while_placeholder_1 
lstm_248_while_placeholder_2 
lstm_248_while_placeholder_3-
)lstm_248_while_lstm_248_strided_slice_1_0i
elstm_248_while_tensorarrayv2read_tensorlistgetitem_lstm_248_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_248_while_lstm_cell_233_matmul_readvariableop_resource_0:2(Q
?lstm_248_while_lstm_cell_233_matmul_1_readvariableop_resource_0:
(L
>lstm_248_while_lstm_cell_233_biasadd_readvariableop_resource_0:(
lstm_248_while_identity
lstm_248_while_identity_1
lstm_248_while_identity_2
lstm_248_while_identity_3
lstm_248_while_identity_4
lstm_248_while_identity_5+
'lstm_248_while_lstm_248_strided_slice_1g
clstm_248_while_tensorarrayv2read_tensorlistgetitem_lstm_248_tensorarrayunstack_tensorlistfromtensorM
;lstm_248_while_lstm_cell_233_matmul_readvariableop_resource:2(O
=lstm_248_while_lstm_cell_233_matmul_1_readvariableop_resource:
(J
<lstm_248_while_lstm_cell_233_biasadd_readvariableop_resource:(??3lstm_248/while/lstm_cell_233/BiasAdd/ReadVariableOp?2lstm_248/while/lstm_cell_233/MatMul/ReadVariableOp?4lstm_248/while/lstm_cell_233/MatMul_1/ReadVariableOp?
@lstm_248/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_248/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_248_while_tensorarrayv2read_tensorlistgetitem_lstm_248_tensorarrayunstack_tensorlistfromtensor_0lstm_248_while_placeholderIlstm_248/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_248/while/lstm_cell_233/MatMul/ReadVariableOpReadVariableOp=lstm_248_while_lstm_cell_233_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_248/while/lstm_cell_233/MatMulMatMul9lstm_248/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_248/while/lstm_cell_233/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_248/while/lstm_cell_233/MatMul_1/ReadVariableOpReadVariableOp?lstm_248_while_lstm_cell_233_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_248/while/lstm_cell_233/MatMul_1MatMullstm_248_while_placeholder_2<lstm_248/while/lstm_cell_233/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_248/while/lstm_cell_233/addAddV2-lstm_248/while/lstm_cell_233/MatMul:product:0/lstm_248/while/lstm_cell_233/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_248/while/lstm_cell_233/BiasAdd/ReadVariableOpReadVariableOp>lstm_248_while_lstm_cell_233_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_248/while/lstm_cell_233/BiasAddBiasAdd$lstm_248/while/lstm_cell_233/add:z:0;lstm_248/while/lstm_cell_233/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_248/while/lstm_cell_233/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_248/while/lstm_cell_233/splitSplit5lstm_248/while/lstm_cell_233/split/split_dim:output:0-lstm_248/while/lstm_cell_233/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_248/while/lstm_cell_233/SigmoidSigmoid+lstm_248/while/lstm_cell_233/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_248/while/lstm_cell_233/Sigmoid_1Sigmoid+lstm_248/while/lstm_cell_233/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_248/while/lstm_cell_233/mulMul*lstm_248/while/lstm_cell_233/Sigmoid_1:y:0lstm_248_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_248/while/lstm_cell_233/ReluRelu+lstm_248/while/lstm_cell_233/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_248/while/lstm_cell_233/mul_1Mul(lstm_248/while/lstm_cell_233/Sigmoid:y:0/lstm_248/while/lstm_cell_233/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_248/while/lstm_cell_233/add_1AddV2$lstm_248/while/lstm_cell_233/mul:z:0&lstm_248/while/lstm_cell_233/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_248/while/lstm_cell_233/Sigmoid_2Sigmoid+lstm_248/while/lstm_cell_233/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_248/while/lstm_cell_233/Relu_1Relu&lstm_248/while/lstm_cell_233/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_248/while/lstm_cell_233/mul_2Mul*lstm_248/while/lstm_cell_233/Sigmoid_2:y:01lstm_248/while/lstm_cell_233/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_248/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_248_while_placeholder_1lstm_248_while_placeholder&lstm_248/while/lstm_cell_233/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_248/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_248/while/addAddV2lstm_248_while_placeholderlstm_248/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_248/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_248/while/add_1AddV2*lstm_248_while_lstm_248_while_loop_counterlstm_248/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_248/while/IdentityIdentitylstm_248/while/add_1:z:0^lstm_248/while/NoOp*
T0*
_output_shapes
: ?
lstm_248/while/Identity_1Identity0lstm_248_while_lstm_248_while_maximum_iterations^lstm_248/while/NoOp*
T0*
_output_shapes
: t
lstm_248/while/Identity_2Identitylstm_248/while/add:z:0^lstm_248/while/NoOp*
T0*
_output_shapes
: ?
lstm_248/while/Identity_3IdentityClstm_248/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_248/while/NoOp*
T0*
_output_shapes
: ?
lstm_248/while/Identity_4Identity&lstm_248/while/lstm_cell_233/mul_2:z:0^lstm_248/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_248/while/Identity_5Identity&lstm_248/while/lstm_cell_233/add_1:z:0^lstm_248/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_248/while/NoOpNoOp4^lstm_248/while/lstm_cell_233/BiasAdd/ReadVariableOp3^lstm_248/while/lstm_cell_233/MatMul/ReadVariableOp5^lstm_248/while/lstm_cell_233/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_248_while_identity lstm_248/while/Identity:output:0"?
lstm_248_while_identity_1"lstm_248/while/Identity_1:output:0"?
lstm_248_while_identity_2"lstm_248/while/Identity_2:output:0"?
lstm_248_while_identity_3"lstm_248/while/Identity_3:output:0"?
lstm_248_while_identity_4"lstm_248/while/Identity_4:output:0"?
lstm_248_while_identity_5"lstm_248/while/Identity_5:output:0"T
'lstm_248_while_lstm_248_strided_slice_1)lstm_248_while_lstm_248_strided_slice_1_0"~
<lstm_248_while_lstm_cell_233_biasadd_readvariableop_resource>lstm_248_while_lstm_cell_233_biasadd_readvariableop_resource_0"?
=lstm_248_while_lstm_cell_233_matmul_1_readvariableop_resource?lstm_248_while_lstm_cell_233_matmul_1_readvariableop_resource_0"|
;lstm_248_while_lstm_cell_233_matmul_readvariableop_resource=lstm_248_while_lstm_cell_233_matmul_readvariableop_resource_0"?
clstm_248_while_tensorarrayv2read_tensorlistgetitem_lstm_248_tensorarrayunstack_tensorlistfromtensorelstm_248_while_tensorarrayv2read_tensorlistgetitem_lstm_248_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_248/while/lstm_cell_233/BiasAdd/ReadVariableOp3lstm_248/while/lstm_cell_233/BiasAdd/ReadVariableOp2h
2lstm_248/while/lstm_cell_233/MatMul/ReadVariableOp2lstm_248/while/lstm_cell_233/MatMul/ReadVariableOp2l
4lstm_248/while/lstm_cell_233/MatMul_1/ReadVariableOp4lstm_248/while/lstm_cell_233/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1410397
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1410397___redundant_placeholder05
1while_while_cond_1410397___redundant_placeholder15
1while_while_cond_1410397___redundant_placeholder25
1while_while_cond_1410397___redundant_placeholder3
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
*__inference_dense_82_layer_call_fn_1415151

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
E__inference_dense_82_layer_call_and_return_conditional_losses_1411643o
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
J__inference_lstm_cell_233_layer_call_and_return_conditional_losses_1415423

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
*__inference_lstm_248_layer_call_fn_1414548
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
E__inference_lstm_248_layer_call_and_return_conditional_losses_1411167o
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
J__inference_lstm_cell_233_layer_call_and_return_conditional_losses_1410893

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
/__inference_lstm_cell_232_layer_call_fn_1415276

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
J__inference_lstm_cell_232_layer_call_and_return_conditional_losses_1410543o
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
while_cond_1414914
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1414914___redundant_placeholder05
1while_while_cond_1414914___redundant_placeholder15
1while_while_cond_1414914___redundant_placeholder25
1while_while_cond_1414914___redundant_placeholder3
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
*__inference_lstm_246_layer_call_fn_1413305
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
E__inference_lstm_246_layer_call_and_return_conditional_losses_1410276|
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
?K
?
E__inference_lstm_248_layer_call_and_return_conditional_losses_1414713
inputs_0>
,lstm_cell_233_matmul_readvariableop_resource:2(@
.lstm_cell_233_matmul_1_readvariableop_resource:
(;
-lstm_cell_233_biasadd_readvariableop_resource:(
identity??$lstm_cell_233/BiasAdd/ReadVariableOp?#lstm_cell_233/MatMul/ReadVariableOp?%lstm_cell_233/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_233/MatMul/ReadVariableOpReadVariableOp,lstm_cell_233_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_233/MatMulMatMulstrided_slice_2:output:0+lstm_cell_233/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_233/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_233_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_233/MatMul_1MatMulzeros:output:0-lstm_cell_233/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_233/addAddV2lstm_cell_233/MatMul:product:0 lstm_cell_233/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_233/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_233_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_233/BiasAddBiasAddlstm_cell_233/add:z:0,lstm_cell_233/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_233/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_233/splitSplit&lstm_cell_233/split/split_dim:output:0lstm_cell_233/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_233/SigmoidSigmoidlstm_cell_233/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_233/Sigmoid_1Sigmoidlstm_cell_233/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_233/mulMullstm_cell_233/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_233/ReluRelulstm_cell_233/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_233/mul_1Mullstm_cell_233/Sigmoid:y:0 lstm_cell_233/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_233/add_1AddV2lstm_cell_233/mul:z:0lstm_cell_233/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_233/Sigmoid_2Sigmoidlstm_cell_233/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_233/Relu_1Relulstm_cell_233/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_233/mul_2Mullstm_cell_233/Sigmoid_2:y:0"lstm_cell_233/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_233_matmul_readvariableop_resource.lstm_cell_233_matmul_1_readvariableop_resource-lstm_cell_233_biasadd_readvariableop_resource*
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
while_body_1414629*
condR
while_cond_1414628*K
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
NoOpNoOp%^lstm_cell_233/BiasAdd/ReadVariableOp$^lstm_cell_233/MatMul/ReadVariableOp&^lstm_cell_233/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_233/BiasAdd/ReadVariableOp$lstm_cell_233/BiasAdd/ReadVariableOp2J
#lstm_cell_233/MatMul/ReadVariableOp#lstm_cell_233/MatMul/ReadVariableOp2N
%lstm_cell_233/MatMul_1/ReadVariableOp%lstm_cell_233/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_248_layer_call_and_return_conditional_losses_1415142

inputs>
,lstm_cell_233_matmul_readvariableop_resource:2(@
.lstm_cell_233_matmul_1_readvariableop_resource:
(;
-lstm_cell_233_biasadd_readvariableop_resource:(
identity??$lstm_cell_233/BiasAdd/ReadVariableOp?#lstm_cell_233/MatMul/ReadVariableOp?%lstm_cell_233/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_233/MatMul/ReadVariableOpReadVariableOp,lstm_cell_233_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_233/MatMulMatMulstrided_slice_2:output:0+lstm_cell_233/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_233/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_233_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_233/MatMul_1MatMulzeros:output:0-lstm_cell_233/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_233/addAddV2lstm_cell_233/MatMul:product:0 lstm_cell_233/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_233/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_233_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_233/BiasAddBiasAddlstm_cell_233/add:z:0,lstm_cell_233/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_233/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_233/splitSplit&lstm_cell_233/split/split_dim:output:0lstm_cell_233/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_233/SigmoidSigmoidlstm_cell_233/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_233/Sigmoid_1Sigmoidlstm_cell_233/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_233/mulMullstm_cell_233/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_233/ReluRelulstm_cell_233/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_233/mul_1Mullstm_cell_233/Sigmoid:y:0 lstm_cell_233/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_233/add_1AddV2lstm_cell_233/mul:z:0lstm_cell_233/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_233/Sigmoid_2Sigmoidlstm_cell_233/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_233/Relu_1Relulstm_cell_233/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_233/mul_2Mullstm_cell_233/Sigmoid_2:y:0"lstm_cell_233/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_233_matmul_readvariableop_resource.lstm_cell_233_matmul_1_readvariableop_resource-lstm_cell_233_biasadd_readvariableop_resource*
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
while_body_1415058*
condR
while_cond_1415057*K
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
NoOpNoOp%^lstm_cell_233/BiasAdd/ReadVariableOp$^lstm_cell_233/MatMul/ReadVariableOp&^lstm_cell_233/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_233/BiasAdd/ReadVariableOp$lstm_cell_233/BiasAdd/ReadVariableOp2J
#lstm_cell_233/MatMul/ReadVariableOp#lstm_cell_233/MatMul/ReadVariableOp2N
%lstm_cell_233/MatMul_1/ReadVariableOp%lstm_cell_233/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
lstm_247_while_cond_1412637.
*lstm_247_while_lstm_247_while_loop_counter4
0lstm_247_while_lstm_247_while_maximum_iterations
lstm_247_while_placeholder 
lstm_247_while_placeholder_1 
lstm_247_while_placeholder_2 
lstm_247_while_placeholder_30
,lstm_247_while_less_lstm_247_strided_slice_1G
Clstm_247_while_lstm_247_while_cond_1412637___redundant_placeholder0G
Clstm_247_while_lstm_247_while_cond_1412637___redundant_placeholder1G
Clstm_247_while_lstm_247_while_cond_1412637___redundant_placeholder2G
Clstm_247_while_lstm_247_while_cond_1412637___redundant_placeholder3
lstm_247_while_identity
?
lstm_247/while/LessLesslstm_247_while_placeholder,lstm_247_while_less_lstm_247_strided_slice_1*
T0*
_output_shapes
: ]
lstm_247/while/IdentityIdentitylstm_247/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_247_while_identity lstm_247/while/Identity:output:0*(
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
lstm_248_while_cond_1413203.
*lstm_248_while_lstm_248_while_loop_counter4
0lstm_248_while_lstm_248_while_maximum_iterations
lstm_248_while_placeholder 
lstm_248_while_placeholder_1 
lstm_248_while_placeholder_2 
lstm_248_while_placeholder_30
,lstm_248_while_less_lstm_248_strided_slice_1G
Clstm_248_while_lstm_248_while_cond_1413203___redundant_placeholder0G
Clstm_248_while_lstm_248_while_cond_1413203___redundant_placeholder1G
Clstm_248_while_lstm_248_while_cond_1413203___redundant_placeholder2G
Clstm_248_while_lstm_248_while_cond_1413203___redundant_placeholder3
lstm_248_while_identity
?
lstm_248/while/LessLesslstm_248_while_placeholder,lstm_248_while_less_lstm_248_strided_slice_1*
T0*
_output_shapes
: ]
lstm_248/while/IdentityIdentitylstm_248/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_248_while_identity lstm_248/while/Identity:output:0*(
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
/__inference_sequential_82_layer_call_fn_1412413

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
J__inference_sequential_82_layer_call_and_return_conditional_losses_1411650o
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
?W
?
 __inference__traced_save_1415598
file_prefix.
*savev2_dense_82_kernel_read_readvariableop,
(savev2_dense_82_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_246_lstm_cell_246_kernel_read_readvariableopF
Bsavev2_lstm_246_lstm_cell_246_recurrent_kernel_read_readvariableop:
6savev2_lstm_246_lstm_cell_246_bias_read_readvariableop<
8savev2_lstm_247_lstm_cell_247_kernel_read_readvariableopF
Bsavev2_lstm_247_lstm_cell_247_recurrent_kernel_read_readvariableop:
6savev2_lstm_247_lstm_cell_247_bias_read_readvariableop<
8savev2_lstm_248_lstm_cell_248_kernel_read_readvariableopF
Bsavev2_lstm_248_lstm_cell_248_recurrent_kernel_read_readvariableop:
6savev2_lstm_248_lstm_cell_248_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_82_kernel_m_read_readvariableop3
/savev2_adam_dense_82_bias_m_read_readvariableopC
?savev2_adam_lstm_246_lstm_cell_246_kernel_m_read_readvariableopM
Isavev2_adam_lstm_246_lstm_cell_246_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_246_lstm_cell_246_bias_m_read_readvariableopC
?savev2_adam_lstm_247_lstm_cell_247_kernel_m_read_readvariableopM
Isavev2_adam_lstm_247_lstm_cell_247_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_247_lstm_cell_247_bias_m_read_readvariableopC
?savev2_adam_lstm_248_lstm_cell_248_kernel_m_read_readvariableopM
Isavev2_adam_lstm_248_lstm_cell_248_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_248_lstm_cell_248_bias_m_read_readvariableop5
1savev2_adam_dense_82_kernel_v_read_readvariableop3
/savev2_adam_dense_82_bias_v_read_readvariableopC
?savev2_adam_lstm_246_lstm_cell_246_kernel_v_read_readvariableopM
Isavev2_adam_lstm_246_lstm_cell_246_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_246_lstm_cell_246_bias_v_read_readvariableopC
?savev2_adam_lstm_247_lstm_cell_247_kernel_v_read_readvariableopM
Isavev2_adam_lstm_247_lstm_cell_247_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_247_lstm_cell_247_bias_v_read_readvariableopC
?savev2_adam_lstm_248_lstm_cell_248_kernel_v_read_readvariableopM
Isavev2_adam_lstm_248_lstm_cell_248_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_248_lstm_cell_248_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_82_kernel_read_readvariableop(savev2_dense_82_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_246_lstm_cell_246_kernel_read_readvariableopBsavev2_lstm_246_lstm_cell_246_recurrent_kernel_read_readvariableop6savev2_lstm_246_lstm_cell_246_bias_read_readvariableop8savev2_lstm_247_lstm_cell_247_kernel_read_readvariableopBsavev2_lstm_247_lstm_cell_247_recurrent_kernel_read_readvariableop6savev2_lstm_247_lstm_cell_247_bias_read_readvariableop8savev2_lstm_248_lstm_cell_248_kernel_read_readvariableopBsavev2_lstm_248_lstm_cell_248_recurrent_kernel_read_readvariableop6savev2_lstm_248_lstm_cell_248_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_82_kernel_m_read_readvariableop/savev2_adam_dense_82_bias_m_read_readvariableop?savev2_adam_lstm_246_lstm_cell_246_kernel_m_read_readvariableopIsavev2_adam_lstm_246_lstm_cell_246_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_246_lstm_cell_246_bias_m_read_readvariableop?savev2_adam_lstm_247_lstm_cell_247_kernel_m_read_readvariableopIsavev2_adam_lstm_247_lstm_cell_247_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_247_lstm_cell_247_bias_m_read_readvariableop?savev2_adam_lstm_248_lstm_cell_248_kernel_m_read_readvariableopIsavev2_adam_lstm_248_lstm_cell_248_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_248_lstm_cell_248_bias_m_read_readvariableop1savev2_adam_dense_82_kernel_v_read_readvariableop/savev2_adam_dense_82_bias_v_read_readvariableop?savev2_adam_lstm_246_lstm_cell_246_kernel_v_read_readvariableopIsavev2_adam_lstm_246_lstm_cell_246_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_246_lstm_cell_246_bias_v_read_readvariableop?savev2_adam_lstm_247_lstm_cell_247_kernel_v_read_readvariableopIsavev2_adam_lstm_247_lstm_cell_247_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_247_lstm_cell_247_bias_v_read_readvariableop?savev2_adam_lstm_248_lstm_cell_248_kernel_v_read_readvariableopIsavev2_adam_lstm_248_lstm_cell_248_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_248_lstm_cell_248_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?S
?
)sequential_82_lstm_246_while_body_1409758J
Fsequential_82_lstm_246_while_sequential_82_lstm_246_while_loop_counterP
Lsequential_82_lstm_246_while_sequential_82_lstm_246_while_maximum_iterations,
(sequential_82_lstm_246_while_placeholder.
*sequential_82_lstm_246_while_placeholder_1.
*sequential_82_lstm_246_while_placeholder_2.
*sequential_82_lstm_246_while_placeholder_3I
Esequential_82_lstm_246_while_sequential_82_lstm_246_strided_slice_1_0?
?sequential_82_lstm_246_while_tensorarrayv2read_tensorlistgetitem_sequential_82_lstm_246_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_82_lstm_246_while_lstm_cell_231_matmul_readvariableop_resource_0:	?`
Msequential_82_lstm_246_while_lstm_cell_231_matmul_1_readvariableop_resource_0:	d?[
Lsequential_82_lstm_246_while_lstm_cell_231_biasadd_readvariableop_resource_0:	?)
%sequential_82_lstm_246_while_identity+
'sequential_82_lstm_246_while_identity_1+
'sequential_82_lstm_246_while_identity_2+
'sequential_82_lstm_246_while_identity_3+
'sequential_82_lstm_246_while_identity_4+
'sequential_82_lstm_246_while_identity_5G
Csequential_82_lstm_246_while_sequential_82_lstm_246_strided_slice_1?
sequential_82_lstm_246_while_tensorarrayv2read_tensorlistgetitem_sequential_82_lstm_246_tensorarrayunstack_tensorlistfromtensor\
Isequential_82_lstm_246_while_lstm_cell_231_matmul_readvariableop_resource:	?^
Ksequential_82_lstm_246_while_lstm_cell_231_matmul_1_readvariableop_resource:	d?Y
Jsequential_82_lstm_246_while_lstm_cell_231_biasadd_readvariableop_resource:	???Asequential_82/lstm_246/while/lstm_cell_231/BiasAdd/ReadVariableOp?@sequential_82/lstm_246/while/lstm_cell_231/MatMul/ReadVariableOp?Bsequential_82/lstm_246/while/lstm_cell_231/MatMul_1/ReadVariableOp?
Nsequential_82/lstm_246/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
@sequential_82/lstm_246/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_82_lstm_246_while_tensorarrayv2read_tensorlistgetitem_sequential_82_lstm_246_tensorarrayunstack_tensorlistfromtensor_0(sequential_82_lstm_246_while_placeholderWsequential_82/lstm_246/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
@sequential_82/lstm_246/while/lstm_cell_231/MatMul/ReadVariableOpReadVariableOpKsequential_82_lstm_246_while_lstm_cell_231_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
1sequential_82/lstm_246/while/lstm_cell_231/MatMulMatMulGsequential_82/lstm_246/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_82/lstm_246/while/lstm_cell_231/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_82/lstm_246/while/lstm_cell_231/MatMul_1/ReadVariableOpReadVariableOpMsequential_82_lstm_246_while_lstm_cell_231_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
3sequential_82/lstm_246/while/lstm_cell_231/MatMul_1MatMul*sequential_82_lstm_246_while_placeholder_2Jsequential_82/lstm_246/while/lstm_cell_231/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_82/lstm_246/while/lstm_cell_231/addAddV2;sequential_82/lstm_246/while/lstm_cell_231/MatMul:product:0=sequential_82/lstm_246/while/lstm_cell_231/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_82/lstm_246/while/lstm_cell_231/BiasAdd/ReadVariableOpReadVariableOpLsequential_82_lstm_246_while_lstm_cell_231_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_82/lstm_246/while/lstm_cell_231/BiasAddBiasAdd2sequential_82/lstm_246/while/lstm_cell_231/add:z:0Isequential_82/lstm_246/while/lstm_cell_231/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_82/lstm_246/while/lstm_cell_231/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_82/lstm_246/while/lstm_cell_231/splitSplitCsequential_82/lstm_246/while/lstm_cell_231/split/split_dim:output:0;sequential_82/lstm_246/while/lstm_cell_231/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
2sequential_82/lstm_246/while/lstm_cell_231/SigmoidSigmoid9sequential_82/lstm_246/while/lstm_cell_231/split:output:0*
T0*'
_output_shapes
:?????????d?
4sequential_82/lstm_246/while/lstm_cell_231/Sigmoid_1Sigmoid9sequential_82/lstm_246/while/lstm_cell_231/split:output:1*
T0*'
_output_shapes
:?????????d?
.sequential_82/lstm_246/while/lstm_cell_231/mulMul8sequential_82/lstm_246/while/lstm_cell_231/Sigmoid_1:y:0*sequential_82_lstm_246_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
/sequential_82/lstm_246/while/lstm_cell_231/ReluRelu9sequential_82/lstm_246/while/lstm_cell_231/split:output:2*
T0*'
_output_shapes
:?????????d?
0sequential_82/lstm_246/while/lstm_cell_231/mul_1Mul6sequential_82/lstm_246/while/lstm_cell_231/Sigmoid:y:0=sequential_82/lstm_246/while/lstm_cell_231/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
0sequential_82/lstm_246/while/lstm_cell_231/add_1AddV22sequential_82/lstm_246/while/lstm_cell_231/mul:z:04sequential_82/lstm_246/while/lstm_cell_231/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
4sequential_82/lstm_246/while/lstm_cell_231/Sigmoid_2Sigmoid9sequential_82/lstm_246/while/lstm_cell_231/split:output:3*
T0*'
_output_shapes
:?????????d?
1sequential_82/lstm_246/while/lstm_cell_231/Relu_1Relu4sequential_82/lstm_246/while/lstm_cell_231/add_1:z:0*
T0*'
_output_shapes
:?????????d?
0sequential_82/lstm_246/while/lstm_cell_231/mul_2Mul8sequential_82/lstm_246/while/lstm_cell_231/Sigmoid_2:y:0?sequential_82/lstm_246/while/lstm_cell_231/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Asequential_82/lstm_246/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_82_lstm_246_while_placeholder_1(sequential_82_lstm_246_while_placeholder4sequential_82/lstm_246/while/lstm_cell_231/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_82/lstm_246/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_82/lstm_246/while/addAddV2(sequential_82_lstm_246_while_placeholder+sequential_82/lstm_246/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_82/lstm_246/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_82/lstm_246/while/add_1AddV2Fsequential_82_lstm_246_while_sequential_82_lstm_246_while_loop_counter-sequential_82/lstm_246/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_82/lstm_246/while/IdentityIdentity&sequential_82/lstm_246/while/add_1:z:0"^sequential_82/lstm_246/while/NoOp*
T0*
_output_shapes
: ?
'sequential_82/lstm_246/while/Identity_1IdentityLsequential_82_lstm_246_while_sequential_82_lstm_246_while_maximum_iterations"^sequential_82/lstm_246/while/NoOp*
T0*
_output_shapes
: ?
'sequential_82/lstm_246/while/Identity_2Identity$sequential_82/lstm_246/while/add:z:0"^sequential_82/lstm_246/while/NoOp*
T0*
_output_shapes
: ?
'sequential_82/lstm_246/while/Identity_3IdentityQsequential_82/lstm_246/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_82/lstm_246/while/NoOp*
T0*
_output_shapes
: ?
'sequential_82/lstm_246/while/Identity_4Identity4sequential_82/lstm_246/while/lstm_cell_231/mul_2:z:0"^sequential_82/lstm_246/while/NoOp*
T0*'
_output_shapes
:?????????d?
'sequential_82/lstm_246/while/Identity_5Identity4sequential_82/lstm_246/while/lstm_cell_231/add_1:z:0"^sequential_82/lstm_246/while/NoOp*
T0*'
_output_shapes
:?????????d?
!sequential_82/lstm_246/while/NoOpNoOpB^sequential_82/lstm_246/while/lstm_cell_231/BiasAdd/ReadVariableOpA^sequential_82/lstm_246/while/lstm_cell_231/MatMul/ReadVariableOpC^sequential_82/lstm_246/while/lstm_cell_231/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_82_lstm_246_while_identity.sequential_82/lstm_246/while/Identity:output:0"[
'sequential_82_lstm_246_while_identity_10sequential_82/lstm_246/while/Identity_1:output:0"[
'sequential_82_lstm_246_while_identity_20sequential_82/lstm_246/while/Identity_2:output:0"[
'sequential_82_lstm_246_while_identity_30sequential_82/lstm_246/while/Identity_3:output:0"[
'sequential_82_lstm_246_while_identity_40sequential_82/lstm_246/while/Identity_4:output:0"[
'sequential_82_lstm_246_while_identity_50sequential_82/lstm_246/while/Identity_5:output:0"?
Jsequential_82_lstm_246_while_lstm_cell_231_biasadd_readvariableop_resourceLsequential_82_lstm_246_while_lstm_cell_231_biasadd_readvariableop_resource_0"?
Ksequential_82_lstm_246_while_lstm_cell_231_matmul_1_readvariableop_resourceMsequential_82_lstm_246_while_lstm_cell_231_matmul_1_readvariableop_resource_0"?
Isequential_82_lstm_246_while_lstm_cell_231_matmul_readvariableop_resourceKsequential_82_lstm_246_while_lstm_cell_231_matmul_readvariableop_resource_0"?
Csequential_82_lstm_246_while_sequential_82_lstm_246_strided_slice_1Esequential_82_lstm_246_while_sequential_82_lstm_246_strided_slice_1_0"?
sequential_82_lstm_246_while_tensorarrayv2read_tensorlistgetitem_sequential_82_lstm_246_tensorarrayunstack_tensorlistfromtensor?sequential_82_lstm_246_while_tensorarrayv2read_tensorlistgetitem_sequential_82_lstm_246_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Asequential_82/lstm_246/while/lstm_cell_231/BiasAdd/ReadVariableOpAsequential_82/lstm_246/while/lstm_cell_231/BiasAdd/ReadVariableOp2?
@sequential_82/lstm_246/while/lstm_cell_231/MatMul/ReadVariableOp@sequential_82/lstm_246/while/lstm_cell_231/MatMul/ReadVariableOp2?
Bsequential_82/lstm_246/while/lstm_cell_231/MatMul_1/ReadVariableOpBsequential_82/lstm_246/while/lstm_cell_231/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_82_layer_call_and_return_conditional_losses_1411650

inputs#
lstm_246_1411326:	?#
lstm_246_1411328:	d?
lstm_246_1411330:	?#
lstm_247_1411476:	d?#
lstm_247_1411478:	2?
lstm_247_1411480:	?"
lstm_248_1411626:2("
lstm_248_1411628:
(
lstm_248_1411630:("
dense_82_1411644:

dense_82_1411646:
identity?? dense_82/StatefulPartitionedCall? lstm_246/StatefulPartitionedCall? lstm_247/StatefulPartitionedCall? lstm_248/StatefulPartitionedCall?
 lstm_246/StatefulPartitionedCallStatefulPartitionedCallinputslstm_246_1411326lstm_246_1411328lstm_246_1411330*
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
E__inference_lstm_246_layer_call_and_return_conditional_losses_1411325?
 lstm_247/StatefulPartitionedCallStatefulPartitionedCall)lstm_246/StatefulPartitionedCall:output:0lstm_247_1411476lstm_247_1411478lstm_247_1411480*
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
E__inference_lstm_247_layer_call_and_return_conditional_losses_1411475?
 lstm_248/StatefulPartitionedCallStatefulPartitionedCall)lstm_247/StatefulPartitionedCall:output:0lstm_248_1411626lstm_248_1411628lstm_248_1411630*
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
E__inference_lstm_248_layer_call_and_return_conditional_losses_1411625?
 dense_82/StatefulPartitionedCallStatefulPartitionedCall)lstm_248/StatefulPartitionedCall:output:0dense_82_1411644dense_82_1411646*
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
E__inference_dense_82_layer_call_and_return_conditional_losses_1411643x
IdentityIdentity)dense_82/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_82/StatefulPartitionedCall!^lstm_246/StatefulPartitionedCall!^lstm_247/StatefulPartitionedCall!^lstm_248/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_82/StatefulPartitionedCall dense_82/StatefulPartitionedCall2D
 lstm_246/StatefulPartitionedCall lstm_246/StatefulPartitionedCall2D
 lstm_247/StatefulPartitionedCall lstm_247/StatefulPartitionedCall2D
 lstm_248/StatefulPartitionedCall lstm_248/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_231_layer_call_and_return_conditional_losses_1415227

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
)sequential_82_lstm_248_while_cond_1410035J
Fsequential_82_lstm_248_while_sequential_82_lstm_248_while_loop_counterP
Lsequential_82_lstm_248_while_sequential_82_lstm_248_while_maximum_iterations,
(sequential_82_lstm_248_while_placeholder.
*sequential_82_lstm_248_while_placeholder_1.
*sequential_82_lstm_248_while_placeholder_2.
*sequential_82_lstm_248_while_placeholder_3L
Hsequential_82_lstm_248_while_less_sequential_82_lstm_248_strided_slice_1c
_sequential_82_lstm_248_while_sequential_82_lstm_248_while_cond_1410035___redundant_placeholder0c
_sequential_82_lstm_248_while_sequential_82_lstm_248_while_cond_1410035___redundant_placeholder1c
_sequential_82_lstm_248_while_sequential_82_lstm_248_while_cond_1410035___redundant_placeholder2c
_sequential_82_lstm_248_while_sequential_82_lstm_248_while_cond_1410035___redundant_placeholder3)
%sequential_82_lstm_248_while_identity
?
!sequential_82/lstm_248/while/LessLess(sequential_82_lstm_248_while_placeholderHsequential_82_lstm_248_while_less_sequential_82_lstm_248_strided_slice_1*
T0*
_output_shapes
: y
%sequential_82/lstm_248/while/IdentityIdentity%sequential_82/lstm_248/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_82_lstm_248_while_identity.sequential_82/lstm_248/while/Identity:output:0*(
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
J__inference_sequential_82_layer_call_and_return_conditional_losses_1413294

inputsH
5lstm_246_lstm_cell_231_matmul_readvariableop_resource:	?J
7lstm_246_lstm_cell_231_matmul_1_readvariableop_resource:	d?E
6lstm_246_lstm_cell_231_biasadd_readvariableop_resource:	?H
5lstm_247_lstm_cell_232_matmul_readvariableop_resource:	d?J
7lstm_247_lstm_cell_232_matmul_1_readvariableop_resource:	2?E
6lstm_247_lstm_cell_232_biasadd_readvariableop_resource:	?G
5lstm_248_lstm_cell_233_matmul_readvariableop_resource:2(I
7lstm_248_lstm_cell_233_matmul_1_readvariableop_resource:
(D
6lstm_248_lstm_cell_233_biasadd_readvariableop_resource:(9
'dense_82_matmul_readvariableop_resource:
6
(dense_82_biasadd_readvariableop_resource:
identity??dense_82/BiasAdd/ReadVariableOp?dense_82/MatMul/ReadVariableOp?-lstm_246/lstm_cell_231/BiasAdd/ReadVariableOp?,lstm_246/lstm_cell_231/MatMul/ReadVariableOp?.lstm_246/lstm_cell_231/MatMul_1/ReadVariableOp?lstm_246/while?-lstm_247/lstm_cell_232/BiasAdd/ReadVariableOp?,lstm_247/lstm_cell_232/MatMul/ReadVariableOp?.lstm_247/lstm_cell_232/MatMul_1/ReadVariableOp?lstm_247/while?-lstm_248/lstm_cell_233/BiasAdd/ReadVariableOp?,lstm_248/lstm_cell_233/MatMul/ReadVariableOp?.lstm_248/lstm_cell_233/MatMul_1/ReadVariableOp?lstm_248/whileD
lstm_246/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_246/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_246/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_246/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_246/strided_sliceStridedSlicelstm_246/Shape:output:0%lstm_246/strided_slice/stack:output:0'lstm_246/strided_slice/stack_1:output:0'lstm_246/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_246/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_246/zeros/packedPacklstm_246/strided_slice:output:0 lstm_246/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_246/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_246/zerosFilllstm_246/zeros/packed:output:0lstm_246/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_246/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_246/zeros_1/packedPacklstm_246/strided_slice:output:0"lstm_246/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_246/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_246/zeros_1Fill lstm_246/zeros_1/packed:output:0lstm_246/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_246/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_246/transpose	Transposeinputs lstm_246/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_246/Shape_1Shapelstm_246/transpose:y:0*
T0*
_output_shapes
:h
lstm_246/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_246/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_246/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_246/strided_slice_1StridedSlicelstm_246/Shape_1:output:0'lstm_246/strided_slice_1/stack:output:0)lstm_246/strided_slice_1/stack_1:output:0)lstm_246/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_246/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_246/TensorArrayV2TensorListReserve-lstm_246/TensorArrayV2/element_shape:output:0!lstm_246/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_246/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_246/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_246/transpose:y:0Glstm_246/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_246/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_246/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_246/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_246/strided_slice_2StridedSlicelstm_246/transpose:y:0'lstm_246/strided_slice_2/stack:output:0)lstm_246/strided_slice_2/stack_1:output:0)lstm_246/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_246/lstm_cell_231/MatMul/ReadVariableOpReadVariableOp5lstm_246_lstm_cell_231_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_246/lstm_cell_231/MatMulMatMul!lstm_246/strided_slice_2:output:04lstm_246/lstm_cell_231/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_246/lstm_cell_231/MatMul_1/ReadVariableOpReadVariableOp7lstm_246_lstm_cell_231_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_246/lstm_cell_231/MatMul_1MatMullstm_246/zeros:output:06lstm_246/lstm_cell_231/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_246/lstm_cell_231/addAddV2'lstm_246/lstm_cell_231/MatMul:product:0)lstm_246/lstm_cell_231/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_246/lstm_cell_231/BiasAdd/ReadVariableOpReadVariableOp6lstm_246_lstm_cell_231_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_246/lstm_cell_231/BiasAddBiasAddlstm_246/lstm_cell_231/add:z:05lstm_246/lstm_cell_231/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_246/lstm_cell_231/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_246/lstm_cell_231/splitSplit/lstm_246/lstm_cell_231/split/split_dim:output:0'lstm_246/lstm_cell_231/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_246/lstm_cell_231/SigmoidSigmoid%lstm_246/lstm_cell_231/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_246/lstm_cell_231/Sigmoid_1Sigmoid%lstm_246/lstm_cell_231/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_246/lstm_cell_231/mulMul$lstm_246/lstm_cell_231/Sigmoid_1:y:0lstm_246/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_246/lstm_cell_231/ReluRelu%lstm_246/lstm_cell_231/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_246/lstm_cell_231/mul_1Mul"lstm_246/lstm_cell_231/Sigmoid:y:0)lstm_246/lstm_cell_231/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_246/lstm_cell_231/add_1AddV2lstm_246/lstm_cell_231/mul:z:0 lstm_246/lstm_cell_231/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_246/lstm_cell_231/Sigmoid_2Sigmoid%lstm_246/lstm_cell_231/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_246/lstm_cell_231/Relu_1Relu lstm_246/lstm_cell_231/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_246/lstm_cell_231/mul_2Mul$lstm_246/lstm_cell_231/Sigmoid_2:y:0+lstm_246/lstm_cell_231/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_246/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_246/TensorArrayV2_1TensorListReserve/lstm_246/TensorArrayV2_1/element_shape:output:0!lstm_246/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_246/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_246/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_246/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_246/whileWhile$lstm_246/while/loop_counter:output:0*lstm_246/while/maximum_iterations:output:0lstm_246/time:output:0!lstm_246/TensorArrayV2_1:handle:0lstm_246/zeros:output:0lstm_246/zeros_1:output:0!lstm_246/strided_slice_1:output:0@lstm_246/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_246_lstm_cell_231_matmul_readvariableop_resource7lstm_246_lstm_cell_231_matmul_1_readvariableop_resource6lstm_246_lstm_cell_231_biasadd_readvariableop_resource*
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
lstm_246_while_body_1412926*'
condR
lstm_246_while_cond_1412925*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_246/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_246/TensorArrayV2Stack/TensorListStackTensorListStacklstm_246/while:output:3Blstm_246/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_246/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_246/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_246/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_246/strided_slice_3StridedSlice4lstm_246/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_246/strided_slice_3/stack:output:0)lstm_246/strided_slice_3/stack_1:output:0)lstm_246/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_246/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_246/transpose_1	Transpose4lstm_246/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_246/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_246/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_247/ShapeShapelstm_246/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_247/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_247/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_247/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_247/strided_sliceStridedSlicelstm_247/Shape:output:0%lstm_247/strided_slice/stack:output:0'lstm_247/strided_slice/stack_1:output:0'lstm_247/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_247/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_247/zeros/packedPacklstm_247/strided_slice:output:0 lstm_247/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_247/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_247/zerosFilllstm_247/zeros/packed:output:0lstm_247/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_247/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_247/zeros_1/packedPacklstm_247/strided_slice:output:0"lstm_247/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_247/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_247/zeros_1Fill lstm_247/zeros_1/packed:output:0lstm_247/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_247/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_247/transpose	Transposelstm_246/transpose_1:y:0 lstm_247/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_247/Shape_1Shapelstm_247/transpose:y:0*
T0*
_output_shapes
:h
lstm_247/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_247/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_247/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_247/strided_slice_1StridedSlicelstm_247/Shape_1:output:0'lstm_247/strided_slice_1/stack:output:0)lstm_247/strided_slice_1/stack_1:output:0)lstm_247/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_247/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_247/TensorArrayV2TensorListReserve-lstm_247/TensorArrayV2/element_shape:output:0!lstm_247/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_247/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_247/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_247/transpose:y:0Glstm_247/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_247/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_247/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_247/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_247/strided_slice_2StridedSlicelstm_247/transpose:y:0'lstm_247/strided_slice_2/stack:output:0)lstm_247/strided_slice_2/stack_1:output:0)lstm_247/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_247/lstm_cell_232/MatMul/ReadVariableOpReadVariableOp5lstm_247_lstm_cell_232_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_247/lstm_cell_232/MatMulMatMul!lstm_247/strided_slice_2:output:04lstm_247/lstm_cell_232/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_247/lstm_cell_232/MatMul_1/ReadVariableOpReadVariableOp7lstm_247_lstm_cell_232_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_247/lstm_cell_232/MatMul_1MatMullstm_247/zeros:output:06lstm_247/lstm_cell_232/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_247/lstm_cell_232/addAddV2'lstm_247/lstm_cell_232/MatMul:product:0)lstm_247/lstm_cell_232/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_247/lstm_cell_232/BiasAdd/ReadVariableOpReadVariableOp6lstm_247_lstm_cell_232_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_247/lstm_cell_232/BiasAddBiasAddlstm_247/lstm_cell_232/add:z:05lstm_247/lstm_cell_232/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_247/lstm_cell_232/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_247/lstm_cell_232/splitSplit/lstm_247/lstm_cell_232/split/split_dim:output:0'lstm_247/lstm_cell_232/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_247/lstm_cell_232/SigmoidSigmoid%lstm_247/lstm_cell_232/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_247/lstm_cell_232/Sigmoid_1Sigmoid%lstm_247/lstm_cell_232/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_247/lstm_cell_232/mulMul$lstm_247/lstm_cell_232/Sigmoid_1:y:0lstm_247/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_247/lstm_cell_232/ReluRelu%lstm_247/lstm_cell_232/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_247/lstm_cell_232/mul_1Mul"lstm_247/lstm_cell_232/Sigmoid:y:0)lstm_247/lstm_cell_232/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_247/lstm_cell_232/add_1AddV2lstm_247/lstm_cell_232/mul:z:0 lstm_247/lstm_cell_232/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_247/lstm_cell_232/Sigmoid_2Sigmoid%lstm_247/lstm_cell_232/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_247/lstm_cell_232/Relu_1Relu lstm_247/lstm_cell_232/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_247/lstm_cell_232/mul_2Mul$lstm_247/lstm_cell_232/Sigmoid_2:y:0+lstm_247/lstm_cell_232/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_247/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_247/TensorArrayV2_1TensorListReserve/lstm_247/TensorArrayV2_1/element_shape:output:0!lstm_247/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_247/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_247/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_247/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_247/whileWhile$lstm_247/while/loop_counter:output:0*lstm_247/while/maximum_iterations:output:0lstm_247/time:output:0!lstm_247/TensorArrayV2_1:handle:0lstm_247/zeros:output:0lstm_247/zeros_1:output:0!lstm_247/strided_slice_1:output:0@lstm_247/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_247_lstm_cell_232_matmul_readvariableop_resource7lstm_247_lstm_cell_232_matmul_1_readvariableop_resource6lstm_247_lstm_cell_232_biasadd_readvariableop_resource*
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
lstm_247_while_body_1413065*'
condR
lstm_247_while_cond_1413064*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_247/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_247/TensorArrayV2Stack/TensorListStackTensorListStacklstm_247/while:output:3Blstm_247/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_247/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_247/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_247/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_247/strided_slice_3StridedSlice4lstm_247/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_247/strided_slice_3/stack:output:0)lstm_247/strided_slice_3/stack_1:output:0)lstm_247/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_247/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_247/transpose_1	Transpose4lstm_247/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_247/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_247/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_248/ShapeShapelstm_247/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_248/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_248/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_248/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_248/strided_sliceStridedSlicelstm_248/Shape:output:0%lstm_248/strided_slice/stack:output:0'lstm_248/strided_slice/stack_1:output:0'lstm_248/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_248/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_248/zeros/packedPacklstm_248/strided_slice:output:0 lstm_248/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_248/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_248/zerosFilllstm_248/zeros/packed:output:0lstm_248/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_248/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_248/zeros_1/packedPacklstm_248/strided_slice:output:0"lstm_248/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_248/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_248/zeros_1Fill lstm_248/zeros_1/packed:output:0lstm_248/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_248/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_248/transpose	Transposelstm_247/transpose_1:y:0 lstm_248/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_248/Shape_1Shapelstm_248/transpose:y:0*
T0*
_output_shapes
:h
lstm_248/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_248/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_248/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_248/strided_slice_1StridedSlicelstm_248/Shape_1:output:0'lstm_248/strided_slice_1/stack:output:0)lstm_248/strided_slice_1/stack_1:output:0)lstm_248/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_248/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_248/TensorArrayV2TensorListReserve-lstm_248/TensorArrayV2/element_shape:output:0!lstm_248/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_248/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_248/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_248/transpose:y:0Glstm_248/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_248/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_248/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_248/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_248/strided_slice_2StridedSlicelstm_248/transpose:y:0'lstm_248/strided_slice_2/stack:output:0)lstm_248/strided_slice_2/stack_1:output:0)lstm_248/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_248/lstm_cell_233/MatMul/ReadVariableOpReadVariableOp5lstm_248_lstm_cell_233_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_248/lstm_cell_233/MatMulMatMul!lstm_248/strided_slice_2:output:04lstm_248/lstm_cell_233/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_248/lstm_cell_233/MatMul_1/ReadVariableOpReadVariableOp7lstm_248_lstm_cell_233_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_248/lstm_cell_233/MatMul_1MatMullstm_248/zeros:output:06lstm_248/lstm_cell_233/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_248/lstm_cell_233/addAddV2'lstm_248/lstm_cell_233/MatMul:product:0)lstm_248/lstm_cell_233/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_248/lstm_cell_233/BiasAdd/ReadVariableOpReadVariableOp6lstm_248_lstm_cell_233_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_248/lstm_cell_233/BiasAddBiasAddlstm_248/lstm_cell_233/add:z:05lstm_248/lstm_cell_233/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_248/lstm_cell_233/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_248/lstm_cell_233/splitSplit/lstm_248/lstm_cell_233/split/split_dim:output:0'lstm_248/lstm_cell_233/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_248/lstm_cell_233/SigmoidSigmoid%lstm_248/lstm_cell_233/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_248/lstm_cell_233/Sigmoid_1Sigmoid%lstm_248/lstm_cell_233/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_248/lstm_cell_233/mulMul$lstm_248/lstm_cell_233/Sigmoid_1:y:0lstm_248/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_248/lstm_cell_233/ReluRelu%lstm_248/lstm_cell_233/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_248/lstm_cell_233/mul_1Mul"lstm_248/lstm_cell_233/Sigmoid:y:0)lstm_248/lstm_cell_233/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_248/lstm_cell_233/add_1AddV2lstm_248/lstm_cell_233/mul:z:0 lstm_248/lstm_cell_233/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_248/lstm_cell_233/Sigmoid_2Sigmoid%lstm_248/lstm_cell_233/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_248/lstm_cell_233/Relu_1Relu lstm_248/lstm_cell_233/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_248/lstm_cell_233/mul_2Mul$lstm_248/lstm_cell_233/Sigmoid_2:y:0+lstm_248/lstm_cell_233/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_248/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_248/TensorArrayV2_1TensorListReserve/lstm_248/TensorArrayV2_1/element_shape:output:0!lstm_248/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_248/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_248/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_248/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_248/whileWhile$lstm_248/while/loop_counter:output:0*lstm_248/while/maximum_iterations:output:0lstm_248/time:output:0!lstm_248/TensorArrayV2_1:handle:0lstm_248/zeros:output:0lstm_248/zeros_1:output:0!lstm_248/strided_slice_1:output:0@lstm_248/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_248_lstm_cell_233_matmul_readvariableop_resource7lstm_248_lstm_cell_233_matmul_1_readvariableop_resource6lstm_248_lstm_cell_233_biasadd_readvariableop_resource*
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
lstm_248_while_body_1413204*'
condR
lstm_248_while_cond_1413203*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_248/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_248/TensorArrayV2Stack/TensorListStackTensorListStacklstm_248/while:output:3Blstm_248/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_248/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_248/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_248/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_248/strided_slice_3StridedSlice4lstm_248/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_248/strided_slice_3/stack:output:0)lstm_248/strided_slice_3/stack_1:output:0)lstm_248/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_248/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_248/transpose_1	Transpose4lstm_248/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_248/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_248/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_82/MatMul/ReadVariableOpReadVariableOp'dense_82_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_82/MatMulMatMul!lstm_248/strided_slice_3:output:0&dense_82/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_82/BiasAdd/ReadVariableOpReadVariableOp(dense_82_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_82/BiasAddBiasAdddense_82/MatMul:product:0'dense_82/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_82/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_82/BiasAdd/ReadVariableOp^dense_82/MatMul/ReadVariableOp.^lstm_246/lstm_cell_231/BiasAdd/ReadVariableOp-^lstm_246/lstm_cell_231/MatMul/ReadVariableOp/^lstm_246/lstm_cell_231/MatMul_1/ReadVariableOp^lstm_246/while.^lstm_247/lstm_cell_232/BiasAdd/ReadVariableOp-^lstm_247/lstm_cell_232/MatMul/ReadVariableOp/^lstm_247/lstm_cell_232/MatMul_1/ReadVariableOp^lstm_247/while.^lstm_248/lstm_cell_233/BiasAdd/ReadVariableOp-^lstm_248/lstm_cell_233/MatMul/ReadVariableOp/^lstm_248/lstm_cell_233/MatMul_1/ReadVariableOp^lstm_248/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_82/BiasAdd/ReadVariableOpdense_82/BiasAdd/ReadVariableOp2@
dense_82/MatMul/ReadVariableOpdense_82/MatMul/ReadVariableOp2^
-lstm_246/lstm_cell_231/BiasAdd/ReadVariableOp-lstm_246/lstm_cell_231/BiasAdd/ReadVariableOp2\
,lstm_246/lstm_cell_231/MatMul/ReadVariableOp,lstm_246/lstm_cell_231/MatMul/ReadVariableOp2`
.lstm_246/lstm_cell_231/MatMul_1/ReadVariableOp.lstm_246/lstm_cell_231/MatMul_1/ReadVariableOp2 
lstm_246/whilelstm_246/while2^
-lstm_247/lstm_cell_232/BiasAdd/ReadVariableOp-lstm_247/lstm_cell_232/BiasAdd/ReadVariableOp2\
,lstm_247/lstm_cell_232/MatMul/ReadVariableOp,lstm_247/lstm_cell_232/MatMul/ReadVariableOp2`
.lstm_247/lstm_cell_232/MatMul_1/ReadVariableOp.lstm_247/lstm_cell_232/MatMul_1/ReadVariableOp2 
lstm_247/whilelstm_247/while2^
-lstm_248/lstm_cell_233/BiasAdd/ReadVariableOp-lstm_248/lstm_cell_233/BiasAdd/ReadVariableOp2\
,lstm_248/lstm_cell_233/MatMul/ReadVariableOp,lstm_248/lstm_cell_233/MatMul/ReadVariableOp2`
.lstm_248/lstm_cell_233/MatMul_1/ReadVariableOp.lstm_248/lstm_cell_233/MatMul_1/ReadVariableOp2 
lstm_248/whilelstm_248/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_1411391
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_232_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_232_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_232_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_232_matmul_readvariableop_resource:	d?G
4while_lstm_cell_232_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_232_biasadd_readvariableop_resource:	???*while/lstm_cell_232/BiasAdd/ReadVariableOp?)while/lstm_cell_232/MatMul/ReadVariableOp?+while/lstm_cell_232/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_232/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_232_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_232/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_232/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_232/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_232_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_232/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_232/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_232/addAddV2$while/lstm_cell_232/MatMul:product:0&while/lstm_cell_232/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_232/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_232_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_232/BiasAddBiasAddwhile/lstm_cell_232/add:z:02while/lstm_cell_232/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_232/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_232/splitSplit,while/lstm_cell_232/split/split_dim:output:0$while/lstm_cell_232/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_232/SigmoidSigmoid"while/lstm_cell_232/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_232/Sigmoid_1Sigmoid"while/lstm_cell_232/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_232/mulMul!while/lstm_cell_232/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_232/ReluRelu"while/lstm_cell_232/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_232/mul_1Mulwhile/lstm_cell_232/Sigmoid:y:0&while/lstm_cell_232/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_232/add_1AddV2while/lstm_cell_232/mul:z:0while/lstm_cell_232/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_232/Sigmoid_2Sigmoid"while/lstm_cell_232/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_232/Relu_1Reluwhile/lstm_cell_232/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_232/mul_2Mul!while/lstm_cell_232/Sigmoid_2:y:0(while/lstm_cell_232/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_232/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_232/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_232/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_232/BiasAdd/ReadVariableOp*^while/lstm_cell_232/MatMul/ReadVariableOp,^while/lstm_cell_232/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_232_biasadd_readvariableop_resource5while_lstm_cell_232_biasadd_readvariableop_resource_0"n
4while_lstm_cell_232_matmul_1_readvariableop_resource6while_lstm_cell_232_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_232_matmul_readvariableop_resource4while_lstm_cell_232_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_232/BiasAdd/ReadVariableOp*while/lstm_cell_232/BiasAdd/ReadVariableOp2V
)while/lstm_cell_232/MatMul/ReadVariableOp)while/lstm_cell_232/MatMul/ReadVariableOp2Z
+while/lstm_cell_232/MatMul_1/ReadVariableOp+while/lstm_cell_232/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1414298
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1414298___redundant_placeholder05
1while_while_cond_1414298___redundant_placeholder15
1while_while_cond_1414298___redundant_placeholder25
1while_while_cond_1414298___redundant_placeholder3
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
E__inference_lstm_246_layer_call_and_return_conditional_losses_1413624
inputs_0?
,lstm_cell_231_matmul_readvariableop_resource:	?A
.lstm_cell_231_matmul_1_readvariableop_resource:	d?<
-lstm_cell_231_biasadd_readvariableop_resource:	?
identity??$lstm_cell_231/BiasAdd/ReadVariableOp?#lstm_cell_231/MatMul/ReadVariableOp?%lstm_cell_231/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_231/MatMul/ReadVariableOpReadVariableOp,lstm_cell_231_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_231/MatMulMatMulstrided_slice_2:output:0+lstm_cell_231/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_231/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_231_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_231/MatMul_1MatMulzeros:output:0-lstm_cell_231/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_231/addAddV2lstm_cell_231/MatMul:product:0 lstm_cell_231/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_231/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_231_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_231/BiasAddBiasAddlstm_cell_231/add:z:0,lstm_cell_231/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_231/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_231/splitSplit&lstm_cell_231/split/split_dim:output:0lstm_cell_231/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_231/SigmoidSigmoidlstm_cell_231/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_231/Sigmoid_1Sigmoidlstm_cell_231/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_231/mulMullstm_cell_231/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_231/ReluRelulstm_cell_231/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_231/mul_1Mullstm_cell_231/Sigmoid:y:0 lstm_cell_231/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_231/add_1AddV2lstm_cell_231/mul:z:0lstm_cell_231/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_231/Sigmoid_2Sigmoidlstm_cell_231/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_231/Relu_1Relulstm_cell_231/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_231/mul_2Mullstm_cell_231/Sigmoid_2:y:0"lstm_cell_231/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_231_matmul_readvariableop_resource.lstm_cell_231_matmul_1_readvariableop_resource-lstm_cell_231_biasadd_readvariableop_resource*
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
while_body_1413540*
condR
while_cond_1413539*K
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
NoOpNoOp%^lstm_cell_231/BiasAdd/ReadVariableOp$^lstm_cell_231/MatMul/ReadVariableOp&^lstm_cell_231/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_231/BiasAdd/ReadVariableOp$lstm_cell_231/BiasAdd/ReadVariableOp2J
#lstm_cell_231/MatMul/ReadVariableOp#lstm_cell_231/MatMul/ReadVariableOp2N
%lstm_cell_231/MatMul_1/ReadVariableOp%lstm_cell_231/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_1414771
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1414771___redundant_placeholder05
1while_while_cond_1414771___redundant_placeholder15
1while_while_cond_1414771___redundant_placeholder25
1while_while_cond_1414771___redundant_placeholder3
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
E__inference_lstm_246_layer_call_and_return_conditional_losses_1413910

inputs?
,lstm_cell_231_matmul_readvariableop_resource:	?A
.lstm_cell_231_matmul_1_readvariableop_resource:	d?<
-lstm_cell_231_biasadd_readvariableop_resource:	?
identity??$lstm_cell_231/BiasAdd/ReadVariableOp?#lstm_cell_231/MatMul/ReadVariableOp?%lstm_cell_231/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_231/MatMul/ReadVariableOpReadVariableOp,lstm_cell_231_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_231/MatMulMatMulstrided_slice_2:output:0+lstm_cell_231/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_231/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_231_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_231/MatMul_1MatMulzeros:output:0-lstm_cell_231/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_231/addAddV2lstm_cell_231/MatMul:product:0 lstm_cell_231/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_231/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_231_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_231/BiasAddBiasAddlstm_cell_231/add:z:0,lstm_cell_231/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_231/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_231/splitSplit&lstm_cell_231/split/split_dim:output:0lstm_cell_231/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_231/SigmoidSigmoidlstm_cell_231/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_231/Sigmoid_1Sigmoidlstm_cell_231/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_231/mulMullstm_cell_231/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_231/ReluRelulstm_cell_231/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_231/mul_1Mullstm_cell_231/Sigmoid:y:0 lstm_cell_231/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_231/add_1AddV2lstm_cell_231/mul:z:0lstm_cell_231/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_231/Sigmoid_2Sigmoidlstm_cell_231/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_231/Relu_1Relulstm_cell_231/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_231/mul_2Mullstm_cell_231/Sigmoid_2:y:0"lstm_cell_231/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_231_matmul_readvariableop_resource.lstm_cell_231_matmul_1_readvariableop_resource-lstm_cell_231_biasadd_readvariableop_resource*
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
while_body_1413826*
condR
while_cond_1413825*K
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
NoOpNoOp%^lstm_cell_231/BiasAdd/ReadVariableOp$^lstm_cell_231/MatMul/ReadVariableOp&^lstm_cell_231/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_231/BiasAdd/ReadVariableOp$lstm_cell_231/BiasAdd/ReadVariableOp2J
#lstm_cell_231/MatMul/ReadVariableOp#lstm_cell_231/MatMul/ReadVariableOp2N
%lstm_cell_231/MatMul_1/ReadVariableOp%lstm_cell_231/MatMul_1/ReadVariableOp2
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
lstm_246_input;
 serving_default_lstm_246_input:0?????????<
dense_820
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
2dense_82/kernel
:2dense_82/bias
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
0:.	?2lstm_246/lstm_cell_246/kernel
::8	d?2'lstm_246/lstm_cell_246/recurrent_kernel
*:(?2lstm_246/lstm_cell_246/bias
0:.	d?2lstm_247/lstm_cell_247/kernel
::8	2?2'lstm_247/lstm_cell_247/recurrent_kernel
*:(?2lstm_247/lstm_cell_247/bias
/:-2(2lstm_248/lstm_cell_248/kernel
9:7
(2'lstm_248/lstm_cell_248/recurrent_kernel
):'(2lstm_248/lstm_cell_248/bias
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
2Adam/dense_82/kernel/m
 :2Adam/dense_82/bias/m
5:3	?2$Adam/lstm_246/lstm_cell_246/kernel/m
?:=	d?2.Adam/lstm_246/lstm_cell_246/recurrent_kernel/m
/:-?2"Adam/lstm_246/lstm_cell_246/bias/m
5:3	d?2$Adam/lstm_247/lstm_cell_247/kernel/m
?:=	2?2.Adam/lstm_247/lstm_cell_247/recurrent_kernel/m
/:-?2"Adam/lstm_247/lstm_cell_247/bias/m
4:22(2$Adam/lstm_248/lstm_cell_248/kernel/m
>:<
(2.Adam/lstm_248/lstm_cell_248/recurrent_kernel/m
.:,(2"Adam/lstm_248/lstm_cell_248/bias/m
&:$
2Adam/dense_82/kernel/v
 :2Adam/dense_82/bias/v
5:3	?2$Adam/lstm_246/lstm_cell_246/kernel/v
?:=	d?2.Adam/lstm_246/lstm_cell_246/recurrent_kernel/v
/:-?2"Adam/lstm_246/lstm_cell_246/bias/v
5:3	d?2$Adam/lstm_247/lstm_cell_247/kernel/v
?:=	2?2.Adam/lstm_247/lstm_cell_247/recurrent_kernel/v
/:-?2"Adam/lstm_247/lstm_cell_247/bias/v
4:22(2$Adam/lstm_248/lstm_cell_248/kernel/v
>:<
(2.Adam/lstm_248/lstm_cell_248/recurrent_kernel/v
.:,(2"Adam/lstm_248/lstm_cell_248/bias/v
?2?
/__inference_sequential_82_layer_call_fn_1411675
/__inference_sequential_82_layer_call_fn_1412413
/__inference_sequential_82_layer_call_fn_1412440
/__inference_sequential_82_layer_call_fn_1412291?
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
J__inference_sequential_82_layer_call_and_return_conditional_losses_1412867
J__inference_sequential_82_layer_call_and_return_conditional_losses_1413294
J__inference_sequential_82_layer_call_and_return_conditional_losses_1412321
J__inference_sequential_82_layer_call_and_return_conditional_losses_1412351?
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
"__inference__wrapped_model_1410126lstm_246_input"?
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
*__inference_lstm_246_layer_call_fn_1413305
*__inference_lstm_246_layer_call_fn_1413316
*__inference_lstm_246_layer_call_fn_1413327
*__inference_lstm_246_layer_call_fn_1413338?
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
E__inference_lstm_246_layer_call_and_return_conditional_losses_1413481
E__inference_lstm_246_layer_call_and_return_conditional_losses_1413624
E__inference_lstm_246_layer_call_and_return_conditional_losses_1413767
E__inference_lstm_246_layer_call_and_return_conditional_losses_1413910?
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
*__inference_lstm_247_layer_call_fn_1413921
*__inference_lstm_247_layer_call_fn_1413932
*__inference_lstm_247_layer_call_fn_1413943
*__inference_lstm_247_layer_call_fn_1413954?
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
E__inference_lstm_247_layer_call_and_return_conditional_losses_1414097
E__inference_lstm_247_layer_call_and_return_conditional_losses_1414240
E__inference_lstm_247_layer_call_and_return_conditional_losses_1414383
E__inference_lstm_247_layer_call_and_return_conditional_losses_1414526?
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
*__inference_lstm_248_layer_call_fn_1414537
*__inference_lstm_248_layer_call_fn_1414548
*__inference_lstm_248_layer_call_fn_1414559
*__inference_lstm_248_layer_call_fn_1414570?
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
E__inference_lstm_248_layer_call_and_return_conditional_losses_1414713
E__inference_lstm_248_layer_call_and_return_conditional_losses_1414856
E__inference_lstm_248_layer_call_and_return_conditional_losses_1414999
E__inference_lstm_248_layer_call_and_return_conditional_losses_1415142?
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
*__inference_dense_82_layer_call_fn_1415151?
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
E__inference_dense_82_layer_call_and_return_conditional_losses_1415161?
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
%__inference_signature_wrapper_1412386lstm_246_input"?
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
/__inference_lstm_cell_231_layer_call_fn_1415178
/__inference_lstm_cell_231_layer_call_fn_1415195?
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
J__inference_lstm_cell_231_layer_call_and_return_conditional_losses_1415227
J__inference_lstm_cell_231_layer_call_and_return_conditional_losses_1415259?
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
/__inference_lstm_cell_232_layer_call_fn_1415276
/__inference_lstm_cell_232_layer_call_fn_1415293?
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
J__inference_lstm_cell_232_layer_call_and_return_conditional_losses_1415325
J__inference_lstm_cell_232_layer_call_and_return_conditional_losses_1415357?
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
/__inference_lstm_cell_233_layer_call_fn_1415374
/__inference_lstm_cell_233_layer_call_fn_1415391?
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
J__inference_lstm_cell_233_layer_call_and_return_conditional_losses_1415423
J__inference_lstm_cell_233_layer_call_and_return_conditional_losses_1415455?
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
"__inference__wrapped_model_1410126-./012345!";?8
1?.
,?)
lstm_246_input?????????
? "3?0
.
dense_82"?
dense_82??????????
E__inference_dense_82_layer_call_and_return_conditional_losses_1415161\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_82_layer_call_fn_1415151O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_246_layer_call_and_return_conditional_losses_1413481?-./O?L
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
E__inference_lstm_246_layer_call_and_return_conditional_losses_1413624?-./O?L
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
E__inference_lstm_246_layer_call_and_return_conditional_losses_1413767q-./??<
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
E__inference_lstm_246_layer_call_and_return_conditional_losses_1413910q-./??<
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
*__inference_lstm_246_layer_call_fn_1413305}-./O?L
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
*__inference_lstm_246_layer_call_fn_1413316}-./O?L
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
*__inference_lstm_246_layer_call_fn_1413327d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_246_layer_call_fn_1413338d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_247_layer_call_and_return_conditional_losses_1414097?012O?L
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
E__inference_lstm_247_layer_call_and_return_conditional_losses_1414240?012O?L
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
E__inference_lstm_247_layer_call_and_return_conditional_losses_1414383q012??<
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
E__inference_lstm_247_layer_call_and_return_conditional_losses_1414526q012??<
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
*__inference_lstm_247_layer_call_fn_1413921}012O?L
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
*__inference_lstm_247_layer_call_fn_1413932}012O?L
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
*__inference_lstm_247_layer_call_fn_1413943d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_247_layer_call_fn_1413954d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_248_layer_call_and_return_conditional_losses_1414713}345O?L
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
E__inference_lstm_248_layer_call_and_return_conditional_losses_1414856}345O?L
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
E__inference_lstm_248_layer_call_and_return_conditional_losses_1414999m345??<
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
E__inference_lstm_248_layer_call_and_return_conditional_losses_1415142m345??<
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
*__inference_lstm_248_layer_call_fn_1414537p345O?L
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
*__inference_lstm_248_layer_call_fn_1414548p345O?L
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
*__inference_lstm_248_layer_call_fn_1414559`345??<
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
*__inference_lstm_248_layer_call_fn_1414570`345??<
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
J__inference_lstm_cell_231_layer_call_and_return_conditional_losses_1415227?-./??}
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
J__inference_lstm_cell_231_layer_call_and_return_conditional_losses_1415259?-./??}
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
/__inference_lstm_cell_231_layer_call_fn_1415178?-./??}
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
/__inference_lstm_cell_231_layer_call_fn_1415195?-./??}
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
J__inference_lstm_cell_232_layer_call_and_return_conditional_losses_1415325?012??}
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
J__inference_lstm_cell_232_layer_call_and_return_conditional_losses_1415357?012??}
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
/__inference_lstm_cell_232_layer_call_fn_1415276?012??}
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
/__inference_lstm_cell_232_layer_call_fn_1415293?012??}
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
J__inference_lstm_cell_233_layer_call_and_return_conditional_losses_1415423?345??}
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
J__inference_lstm_cell_233_layer_call_and_return_conditional_losses_1415455?345??}
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
/__inference_lstm_cell_233_layer_call_fn_1415374?345??}
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
/__inference_lstm_cell_233_layer_call_fn_1415391?345??}
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
J__inference_sequential_82_layer_call_and_return_conditional_losses_1412321y-./012345!"C?@
9?6
,?)
lstm_246_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_82_layer_call_and_return_conditional_losses_1412351y-./012345!"C?@
9?6
,?)
lstm_246_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_82_layer_call_and_return_conditional_losses_1412867q-./012345!";?8
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
J__inference_sequential_82_layer_call_and_return_conditional_losses_1413294q-./012345!";?8
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
/__inference_sequential_82_layer_call_fn_1411675l-./012345!"C?@
9?6
,?)
lstm_246_input?????????
p 

 
? "???????????
/__inference_sequential_82_layer_call_fn_1412291l-./012345!"C?@
9?6
,?)
lstm_246_input?????????
p

 
? "???????????
/__inference_sequential_82_layer_call_fn_1412413d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_82_layer_call_fn_1412440d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_1412386?-./012345!"M?J
? 
C?@
>
lstm_246_input,?)
lstm_246_input?????????"3?0
.
dense_82"?
dense_82?????????