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
dense_52/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_52/kernel
s
#dense_52/kernel/Read/ReadVariableOpReadVariableOpdense_52/kernel*
_output_shapes

:
*
dtype0
r
dense_52/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_52/bias
k
!dense_52/bias/Read/ReadVariableOpReadVariableOpdense_52/bias*
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
lstm_156/lstm_cell_156/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_156/lstm_cell_156/kernel
?
1lstm_156/lstm_cell_156/kernel/Read/ReadVariableOpReadVariableOplstm_156/lstm_cell_156/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_156/lstm_cell_156/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_156/lstm_cell_156/recurrent_kernel
?
;lstm_156/lstm_cell_156/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_156/lstm_cell_156/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_156/lstm_cell_156/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_156/lstm_cell_156/bias
?
/lstm_156/lstm_cell_156/bias/Read/ReadVariableOpReadVariableOplstm_156/lstm_cell_156/bias*
_output_shapes	
:?*
dtype0
?
lstm_157/lstm_cell_157/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_157/lstm_cell_157/kernel
?
1lstm_157/lstm_cell_157/kernel/Read/ReadVariableOpReadVariableOplstm_157/lstm_cell_157/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_157/lstm_cell_157/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_157/lstm_cell_157/recurrent_kernel
?
;lstm_157/lstm_cell_157/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_157/lstm_cell_157/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_157/lstm_cell_157/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_157/lstm_cell_157/bias
?
/lstm_157/lstm_cell_157/bias/Read/ReadVariableOpReadVariableOplstm_157/lstm_cell_157/bias*
_output_shapes	
:?*
dtype0
?
lstm_158/lstm_cell_158/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_158/lstm_cell_158/kernel
?
1lstm_158/lstm_cell_158/kernel/Read/ReadVariableOpReadVariableOplstm_158/lstm_cell_158/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_158/lstm_cell_158/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_158/lstm_cell_158/recurrent_kernel
?
;lstm_158/lstm_cell_158/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_158/lstm_cell_158/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_158/lstm_cell_158/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_158/lstm_cell_158/bias
?
/lstm_158/lstm_cell_158/bias/Read/ReadVariableOpReadVariableOplstm_158/lstm_cell_158/bias*
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
Adam/dense_52/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_52/kernel/m
?
*Adam/dense_52/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_52/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_52/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_52/bias/m
y
(Adam/dense_52/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_52/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_156/lstm_cell_156/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_156/lstm_cell_156/kernel/m
?
8Adam/lstm_156/lstm_cell_156/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_156/lstm_cell_156/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_156/lstm_cell_156/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_156/lstm_cell_156/recurrent_kernel/m
?
BAdam/lstm_156/lstm_cell_156/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_156/lstm_cell_156/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_156/lstm_cell_156/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_156/lstm_cell_156/bias/m
?
6Adam/lstm_156/lstm_cell_156/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_156/lstm_cell_156/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_157/lstm_cell_157/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_157/lstm_cell_157/kernel/m
?
8Adam/lstm_157/lstm_cell_157/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_157/lstm_cell_157/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_157/lstm_cell_157/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_157/lstm_cell_157/recurrent_kernel/m
?
BAdam/lstm_157/lstm_cell_157/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_157/lstm_cell_157/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_157/lstm_cell_157/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_157/lstm_cell_157/bias/m
?
6Adam/lstm_157/lstm_cell_157/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_157/lstm_cell_157/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_158/lstm_cell_158/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_158/lstm_cell_158/kernel/m
?
8Adam/lstm_158/lstm_cell_158/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_158/lstm_cell_158/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_158/lstm_cell_158/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_158/lstm_cell_158/recurrent_kernel/m
?
BAdam/lstm_158/lstm_cell_158/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_158/lstm_cell_158/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_158/lstm_cell_158/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_158/lstm_cell_158/bias/m
?
6Adam/lstm_158/lstm_cell_158/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_158/lstm_cell_158/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_52/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_52/kernel/v
?
*Adam/dense_52/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_52/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_52/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_52/bias/v
y
(Adam/dense_52/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_52/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_156/lstm_cell_156/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_156/lstm_cell_156/kernel/v
?
8Adam/lstm_156/lstm_cell_156/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_156/lstm_cell_156/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_156/lstm_cell_156/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_156/lstm_cell_156/recurrent_kernel/v
?
BAdam/lstm_156/lstm_cell_156/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_156/lstm_cell_156/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_156/lstm_cell_156/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_156/lstm_cell_156/bias/v
?
6Adam/lstm_156/lstm_cell_156/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_156/lstm_cell_156/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_157/lstm_cell_157/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_157/lstm_cell_157/kernel/v
?
8Adam/lstm_157/lstm_cell_157/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_157/lstm_cell_157/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_157/lstm_cell_157/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_157/lstm_cell_157/recurrent_kernel/v
?
BAdam/lstm_157/lstm_cell_157/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_157/lstm_cell_157/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_157/lstm_cell_157/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_157/lstm_cell_157/bias/v
?
6Adam/lstm_157/lstm_cell_157/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_157/lstm_cell_157/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_158/lstm_cell_158/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_158/lstm_cell_158/kernel/v
?
8Adam/lstm_158/lstm_cell_158/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_158/lstm_cell_158/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_158/lstm_cell_158/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_158/lstm_cell_158/recurrent_kernel/v
?
BAdam/lstm_158/lstm_cell_158/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_158/lstm_cell_158/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_158/lstm_cell_158/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_158/lstm_cell_158/bias/v
?
6Adam/lstm_158/lstm_cell_158/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_158/lstm_cell_158/bias/v*
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
VARIABLE_VALUEdense_52/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_52/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_156/lstm_cell_156/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_156/lstm_cell_156/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_156/lstm_cell_156/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_157/lstm_cell_157/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_157/lstm_cell_157/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_157/lstm_cell_157/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_158/lstm_cell_158/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_158/lstm_cell_158/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_158/lstm_cell_158/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_52/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_52/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_156/lstm_cell_156/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_156/lstm_cell_156/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_156/lstm_cell_156/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_157/lstm_cell_157/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_157/lstm_cell_157/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_157/lstm_cell_157/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_158/lstm_cell_158/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_158/lstm_cell_158/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_158/lstm_cell_158/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_52/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_52/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_156/lstm_cell_156/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_156/lstm_cell_156/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_156/lstm_cell_156/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_157/lstm_cell_157/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_157/lstm_cell_157/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_157/lstm_cell_157/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_158/lstm_cell_158/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_158/lstm_cell_158/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_158/lstm_cell_158/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_156_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_156_inputlstm_156/lstm_cell_156/kernel'lstm_156/lstm_cell_156/recurrent_kernellstm_156/lstm_cell_156/biaslstm_157/lstm_cell_157/kernel'lstm_157/lstm_cell_157/recurrent_kernellstm_157/lstm_cell_157/biaslstm_158/lstm_cell_158/kernel'lstm_158/lstm_cell_158/recurrent_kernellstm_158/lstm_cell_158/biasdense_52/kerneldense_52/bias*
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
%__inference_signature_wrapper_2155552
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_52/kernel/Read/ReadVariableOp!dense_52/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_156/lstm_cell_156/kernel/Read/ReadVariableOp;lstm_156/lstm_cell_156/recurrent_kernel/Read/ReadVariableOp/lstm_156/lstm_cell_156/bias/Read/ReadVariableOp1lstm_157/lstm_cell_157/kernel/Read/ReadVariableOp;lstm_157/lstm_cell_157/recurrent_kernel/Read/ReadVariableOp/lstm_157/lstm_cell_157/bias/Read/ReadVariableOp1lstm_158/lstm_cell_158/kernel/Read/ReadVariableOp;lstm_158/lstm_cell_158/recurrent_kernel/Read/ReadVariableOp/lstm_158/lstm_cell_158/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_52/kernel/m/Read/ReadVariableOp(Adam/dense_52/bias/m/Read/ReadVariableOp8Adam/lstm_156/lstm_cell_156/kernel/m/Read/ReadVariableOpBAdam/lstm_156/lstm_cell_156/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_156/lstm_cell_156/bias/m/Read/ReadVariableOp8Adam/lstm_157/lstm_cell_157/kernel/m/Read/ReadVariableOpBAdam/lstm_157/lstm_cell_157/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_157/lstm_cell_157/bias/m/Read/ReadVariableOp8Adam/lstm_158/lstm_cell_158/kernel/m/Read/ReadVariableOpBAdam/lstm_158/lstm_cell_158/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_158/lstm_cell_158/bias/m/Read/ReadVariableOp*Adam/dense_52/kernel/v/Read/ReadVariableOp(Adam/dense_52/bias/v/Read/ReadVariableOp8Adam/lstm_156/lstm_cell_156/kernel/v/Read/ReadVariableOpBAdam/lstm_156/lstm_cell_156/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_156/lstm_cell_156/bias/v/Read/ReadVariableOp8Adam/lstm_157/lstm_cell_157/kernel/v/Read/ReadVariableOpBAdam/lstm_157/lstm_cell_157/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_157/lstm_cell_157/bias/v/Read/ReadVariableOp8Adam/lstm_158/lstm_cell_158/kernel/v/Read/ReadVariableOpBAdam/lstm_158/lstm_cell_158/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_158/lstm_cell_158/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_2158764
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_52/kerneldense_52/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_156/lstm_cell_156/kernel'lstm_156/lstm_cell_156/recurrent_kernellstm_156/lstm_cell_156/biaslstm_157/lstm_cell_157/kernel'lstm_157/lstm_cell_157/recurrent_kernellstm_157/lstm_cell_157/biaslstm_158/lstm_cell_158/kernel'lstm_158/lstm_cell_158/recurrent_kernellstm_158/lstm_cell_158/biastotalcountAdam/dense_52/kernel/mAdam/dense_52/bias/m$Adam/lstm_156/lstm_cell_156/kernel/m.Adam/lstm_156/lstm_cell_156/recurrent_kernel/m"Adam/lstm_156/lstm_cell_156/bias/m$Adam/lstm_157/lstm_cell_157/kernel/m.Adam/lstm_157/lstm_cell_157/recurrent_kernel/m"Adam/lstm_157/lstm_cell_157/bias/m$Adam/lstm_158/lstm_cell_158/kernel/m.Adam/lstm_158/lstm_cell_158/recurrent_kernel/m"Adam/lstm_158/lstm_cell_158/bias/mAdam/dense_52/kernel/vAdam/dense_52/bias/v$Adam/lstm_156/lstm_cell_156/kernel/v.Adam/lstm_156/lstm_cell_156/recurrent_kernel/v"Adam/lstm_156/lstm_cell_156/bias/v$Adam/lstm_157/lstm_cell_157/kernel/v.Adam/lstm_157/lstm_cell_157/recurrent_kernel/v"Adam/lstm_157/lstm_cell_157/bias/v$Adam/lstm_158/lstm_cell_158/kernel/v.Adam/lstm_158/lstm_cell_158/recurrent_kernel/v"Adam/lstm_158/lstm_cell_158/bias/v*4
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
#__inference__traced_restore_2158894??+
?J
?
E__inference_lstm_157_layer_call_and_return_conditional_losses_2154641

inputs?
,lstm_cell_355_matmul_readvariableop_resource:	d?A
.lstm_cell_355_matmul_1_readvariableop_resource:	2?<
-lstm_cell_355_biasadd_readvariableop_resource:	?
identity??$lstm_cell_355/BiasAdd/ReadVariableOp?#lstm_cell_355/MatMul/ReadVariableOp?%lstm_cell_355/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_355/MatMul/ReadVariableOpReadVariableOp,lstm_cell_355_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_355/MatMulMatMulstrided_slice_2:output:0+lstm_cell_355/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_355/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_355_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_355/MatMul_1MatMulzeros:output:0-lstm_cell_355/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_355/addAddV2lstm_cell_355/MatMul:product:0 lstm_cell_355/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_355/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_355_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_355/BiasAddBiasAddlstm_cell_355/add:z:0,lstm_cell_355/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_355/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_355/splitSplit&lstm_cell_355/split/split_dim:output:0lstm_cell_355/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_355/SigmoidSigmoidlstm_cell_355/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_355/Sigmoid_1Sigmoidlstm_cell_355/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_355/mulMullstm_cell_355/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_355/ReluRelulstm_cell_355/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_355/mul_1Mullstm_cell_355/Sigmoid:y:0 lstm_cell_355/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_355/add_1AddV2lstm_cell_355/mul:z:0lstm_cell_355/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_355/Sigmoid_2Sigmoidlstm_cell_355/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_355/Relu_1Relulstm_cell_355/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_355/mul_2Mullstm_cell_355/Sigmoid_2:y:0"lstm_cell_355/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_355_matmul_readvariableop_resource.lstm_cell_355_matmul_1_readvariableop_resource-lstm_cell_355_biasadd_readvariableop_resource*
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
while_body_2154557*
condR
while_cond_2154556*K
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
NoOpNoOp%^lstm_cell_355/BiasAdd/ReadVariableOp$^lstm_cell_355/MatMul/ReadVariableOp&^lstm_cell_355/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_355/BiasAdd/ReadVariableOp$lstm_cell_355/BiasAdd/ReadVariableOp2J
#lstm_cell_355/MatMul/ReadVariableOp#lstm_cell_355/MatMul/ReadVariableOp2N
%lstm_cell_355/MatMul_1/ReadVariableOp%lstm_cell_355/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
E__inference_lstm_156_layer_call_and_return_conditional_losses_2153442

inputs(
lstm_cell_354_2153360:	?(
lstm_cell_354_2153362:	d?$
lstm_cell_354_2153364:	?
identity??%lstm_cell_354/StatefulPartitionedCall?while;
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
%lstm_cell_354/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_354_2153360lstm_cell_354_2153362lstm_cell_354_2153364*
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
J__inference_lstm_cell_354_layer_call_and_return_conditional_losses_2153359n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_354_2153360lstm_cell_354_2153362lstm_cell_354_2153364*
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
while_body_2153373*
condR
while_cond_2153372*K
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
NoOpNoOp&^lstm_cell_354/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_354/StatefulPartitionedCall%lstm_cell_354/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_356_layer_call_and_return_conditional_losses_2158589

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
while_body_2156849
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_354_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_354_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_354_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_354_matmul_readvariableop_resource:	?G
4while_lstm_cell_354_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_354_biasadd_readvariableop_resource:	???*while/lstm_cell_354/BiasAdd/ReadVariableOp?)while/lstm_cell_354/MatMul/ReadVariableOp?+while/lstm_cell_354/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_354/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_354_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_354/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_354/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_354/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_354_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_354/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_354/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_354/addAddV2$while/lstm_cell_354/MatMul:product:0&while/lstm_cell_354/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_354/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_354_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_354/BiasAddBiasAddwhile/lstm_cell_354/add:z:02while/lstm_cell_354/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_354/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_354/splitSplit,while/lstm_cell_354/split/split_dim:output:0$while/lstm_cell_354/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_354/SigmoidSigmoid"while/lstm_cell_354/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_354/Sigmoid_1Sigmoid"while/lstm_cell_354/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_354/mulMul!while/lstm_cell_354/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_354/ReluRelu"while/lstm_cell_354/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_354/mul_1Mulwhile/lstm_cell_354/Sigmoid:y:0&while/lstm_cell_354/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_354/add_1AddV2while/lstm_cell_354/mul:z:0while/lstm_cell_354/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_354/Sigmoid_2Sigmoid"while/lstm_cell_354/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_354/Relu_1Reluwhile/lstm_cell_354/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_354/mul_2Mul!while/lstm_cell_354/Sigmoid_2:y:0(while/lstm_cell_354/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_354/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_354/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_354/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_354/BiasAdd/ReadVariableOp*^while/lstm_cell_354/MatMul/ReadVariableOp,^while/lstm_cell_354/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_354_biasadd_readvariableop_resource5while_lstm_cell_354_biasadd_readvariableop_resource_0"n
4while_lstm_cell_354_matmul_1_readvariableop_resource6while_lstm_cell_354_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_354_matmul_readvariableop_resource4while_lstm_cell_354_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_354/BiasAdd/ReadVariableOp*while/lstm_cell_354/BiasAdd/ReadVariableOp2V
)while/lstm_cell_354/MatMul/ReadVariableOp)while/lstm_cell_354/MatMul/ReadVariableOp2Z
+while/lstm_cell_354/MatMul_1/ReadVariableOp+while/lstm_cell_354/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2157464
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2157464___redundant_placeholder05
1while_while_cond_2157464___redundant_placeholder15
1while_while_cond_2157464___redundant_placeholder25
1while_while_cond_2157464___redundant_placeholder3
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
while_cond_2154072
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2154072___redundant_placeholder05
1while_while_cond_2154072___redundant_placeholder15
1while_while_cond_2154072___redundant_placeholder25
1while_while_cond_2154072___redundant_placeholder3
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
E__inference_lstm_156_layer_call_and_return_conditional_losses_2157076

inputs?
,lstm_cell_354_matmul_readvariableop_resource:	?A
.lstm_cell_354_matmul_1_readvariableop_resource:	d?<
-lstm_cell_354_biasadd_readvariableop_resource:	?
identity??$lstm_cell_354/BiasAdd/ReadVariableOp?#lstm_cell_354/MatMul/ReadVariableOp?%lstm_cell_354/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_354/MatMul/ReadVariableOpReadVariableOp,lstm_cell_354_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_354/MatMulMatMulstrided_slice_2:output:0+lstm_cell_354/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_354/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_354_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_354/MatMul_1MatMulzeros:output:0-lstm_cell_354/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_354/addAddV2lstm_cell_354/MatMul:product:0 lstm_cell_354/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_354/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_354_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_354/BiasAddBiasAddlstm_cell_354/add:z:0,lstm_cell_354/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_354/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_354/splitSplit&lstm_cell_354/split/split_dim:output:0lstm_cell_354/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_354/SigmoidSigmoidlstm_cell_354/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_354/Sigmoid_1Sigmoidlstm_cell_354/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_354/mulMullstm_cell_354/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_354/ReluRelulstm_cell_354/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_354/mul_1Mullstm_cell_354/Sigmoid:y:0 lstm_cell_354/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_354/add_1AddV2lstm_cell_354/mul:z:0lstm_cell_354/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_354/Sigmoid_2Sigmoidlstm_cell_354/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_354/Relu_1Relulstm_cell_354/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_354/mul_2Mullstm_cell_354/Sigmoid_2:y:0"lstm_cell_354/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_354_matmul_readvariableop_resource.lstm_cell_354_matmul_1_readvariableop_resource-lstm_cell_354_biasadd_readvariableop_resource*
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
while_body_2156992*
condR
while_cond_2156991*K
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
NoOpNoOp%^lstm_cell_354/BiasAdd/ReadVariableOp$^lstm_cell_354/MatMul/ReadVariableOp&^lstm_cell_354/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_354/BiasAdd/ReadVariableOp$lstm_cell_354/BiasAdd/ReadVariableOp2J
#lstm_cell_354/MatMul/ReadVariableOp#lstm_cell_354/MatMul/ReadVariableOp2N
%lstm_cell_354/MatMul_1/ReadVariableOp%lstm_cell_354/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?S
?
)sequential_52_lstm_158_while_body_2153202J
Fsequential_52_lstm_158_while_sequential_52_lstm_158_while_loop_counterP
Lsequential_52_lstm_158_while_sequential_52_lstm_158_while_maximum_iterations,
(sequential_52_lstm_158_while_placeholder.
*sequential_52_lstm_158_while_placeholder_1.
*sequential_52_lstm_158_while_placeholder_2.
*sequential_52_lstm_158_while_placeholder_3I
Esequential_52_lstm_158_while_sequential_52_lstm_158_strided_slice_1_0?
?sequential_52_lstm_158_while_tensorarrayv2read_tensorlistgetitem_sequential_52_lstm_158_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_52_lstm_158_while_lstm_cell_356_matmul_readvariableop_resource_0:2(_
Msequential_52_lstm_158_while_lstm_cell_356_matmul_1_readvariableop_resource_0:
(Z
Lsequential_52_lstm_158_while_lstm_cell_356_biasadd_readvariableop_resource_0:()
%sequential_52_lstm_158_while_identity+
'sequential_52_lstm_158_while_identity_1+
'sequential_52_lstm_158_while_identity_2+
'sequential_52_lstm_158_while_identity_3+
'sequential_52_lstm_158_while_identity_4+
'sequential_52_lstm_158_while_identity_5G
Csequential_52_lstm_158_while_sequential_52_lstm_158_strided_slice_1?
sequential_52_lstm_158_while_tensorarrayv2read_tensorlistgetitem_sequential_52_lstm_158_tensorarrayunstack_tensorlistfromtensor[
Isequential_52_lstm_158_while_lstm_cell_356_matmul_readvariableop_resource:2(]
Ksequential_52_lstm_158_while_lstm_cell_356_matmul_1_readvariableop_resource:
(X
Jsequential_52_lstm_158_while_lstm_cell_356_biasadd_readvariableop_resource:(??Asequential_52/lstm_158/while/lstm_cell_356/BiasAdd/ReadVariableOp?@sequential_52/lstm_158/while/lstm_cell_356/MatMul/ReadVariableOp?Bsequential_52/lstm_158/while/lstm_cell_356/MatMul_1/ReadVariableOp?
Nsequential_52/lstm_158/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
@sequential_52/lstm_158/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_52_lstm_158_while_tensorarrayv2read_tensorlistgetitem_sequential_52_lstm_158_tensorarrayunstack_tensorlistfromtensor_0(sequential_52_lstm_158_while_placeholderWsequential_52/lstm_158/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
@sequential_52/lstm_158/while/lstm_cell_356/MatMul/ReadVariableOpReadVariableOpKsequential_52_lstm_158_while_lstm_cell_356_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
1sequential_52/lstm_158/while/lstm_cell_356/MatMulMatMulGsequential_52/lstm_158/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_52/lstm_158/while/lstm_cell_356/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Bsequential_52/lstm_158/while/lstm_cell_356/MatMul_1/ReadVariableOpReadVariableOpMsequential_52_lstm_158_while_lstm_cell_356_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
3sequential_52/lstm_158/while/lstm_cell_356/MatMul_1MatMul*sequential_52_lstm_158_while_placeholder_2Jsequential_52/lstm_158/while/lstm_cell_356/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.sequential_52/lstm_158/while/lstm_cell_356/addAddV2;sequential_52/lstm_158/while/lstm_cell_356/MatMul:product:0=sequential_52/lstm_158/while/lstm_cell_356/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Asequential_52/lstm_158/while/lstm_cell_356/BiasAdd/ReadVariableOpReadVariableOpLsequential_52_lstm_158_while_lstm_cell_356_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
2sequential_52/lstm_158/while/lstm_cell_356/BiasAddBiasAdd2sequential_52/lstm_158/while/lstm_cell_356/add:z:0Isequential_52/lstm_158/while/lstm_cell_356/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(|
:sequential_52/lstm_158/while/lstm_cell_356/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_52/lstm_158/while/lstm_cell_356/splitSplitCsequential_52/lstm_158/while/lstm_cell_356/split/split_dim:output:0;sequential_52/lstm_158/while/lstm_cell_356/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
2sequential_52/lstm_158/while/lstm_cell_356/SigmoidSigmoid9sequential_52/lstm_158/while/lstm_cell_356/split:output:0*
T0*'
_output_shapes
:?????????
?
4sequential_52/lstm_158/while/lstm_cell_356/Sigmoid_1Sigmoid9sequential_52/lstm_158/while/lstm_cell_356/split:output:1*
T0*'
_output_shapes
:?????????
?
.sequential_52/lstm_158/while/lstm_cell_356/mulMul8sequential_52/lstm_158/while/lstm_cell_356/Sigmoid_1:y:0*sequential_52_lstm_158_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
/sequential_52/lstm_158/while/lstm_cell_356/ReluRelu9sequential_52/lstm_158/while/lstm_cell_356/split:output:2*
T0*'
_output_shapes
:?????????
?
0sequential_52/lstm_158/while/lstm_cell_356/mul_1Mul6sequential_52/lstm_158/while/lstm_cell_356/Sigmoid:y:0=sequential_52/lstm_158/while/lstm_cell_356/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
0sequential_52/lstm_158/while/lstm_cell_356/add_1AddV22sequential_52/lstm_158/while/lstm_cell_356/mul:z:04sequential_52/lstm_158/while/lstm_cell_356/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
4sequential_52/lstm_158/while/lstm_cell_356/Sigmoid_2Sigmoid9sequential_52/lstm_158/while/lstm_cell_356/split:output:3*
T0*'
_output_shapes
:?????????
?
1sequential_52/lstm_158/while/lstm_cell_356/Relu_1Relu4sequential_52/lstm_158/while/lstm_cell_356/add_1:z:0*
T0*'
_output_shapes
:?????????
?
0sequential_52/lstm_158/while/lstm_cell_356/mul_2Mul8sequential_52/lstm_158/while/lstm_cell_356/Sigmoid_2:y:0?sequential_52/lstm_158/while/lstm_cell_356/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Asequential_52/lstm_158/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_52_lstm_158_while_placeholder_1(sequential_52_lstm_158_while_placeholder4sequential_52/lstm_158/while/lstm_cell_356/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_52/lstm_158/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_52/lstm_158/while/addAddV2(sequential_52_lstm_158_while_placeholder+sequential_52/lstm_158/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_52/lstm_158/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_52/lstm_158/while/add_1AddV2Fsequential_52_lstm_158_while_sequential_52_lstm_158_while_loop_counter-sequential_52/lstm_158/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_52/lstm_158/while/IdentityIdentity&sequential_52/lstm_158/while/add_1:z:0"^sequential_52/lstm_158/while/NoOp*
T0*
_output_shapes
: ?
'sequential_52/lstm_158/while/Identity_1IdentityLsequential_52_lstm_158_while_sequential_52_lstm_158_while_maximum_iterations"^sequential_52/lstm_158/while/NoOp*
T0*
_output_shapes
: ?
'sequential_52/lstm_158/while/Identity_2Identity$sequential_52/lstm_158/while/add:z:0"^sequential_52/lstm_158/while/NoOp*
T0*
_output_shapes
: ?
'sequential_52/lstm_158/while/Identity_3IdentityQsequential_52/lstm_158/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_52/lstm_158/while/NoOp*
T0*
_output_shapes
: ?
'sequential_52/lstm_158/while/Identity_4Identity4sequential_52/lstm_158/while/lstm_cell_356/mul_2:z:0"^sequential_52/lstm_158/while/NoOp*
T0*'
_output_shapes
:?????????
?
'sequential_52/lstm_158/while/Identity_5Identity4sequential_52/lstm_158/while/lstm_cell_356/add_1:z:0"^sequential_52/lstm_158/while/NoOp*
T0*'
_output_shapes
:?????????
?
!sequential_52/lstm_158/while/NoOpNoOpB^sequential_52/lstm_158/while/lstm_cell_356/BiasAdd/ReadVariableOpA^sequential_52/lstm_158/while/lstm_cell_356/MatMul/ReadVariableOpC^sequential_52/lstm_158/while/lstm_cell_356/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_52_lstm_158_while_identity.sequential_52/lstm_158/while/Identity:output:0"[
'sequential_52_lstm_158_while_identity_10sequential_52/lstm_158/while/Identity_1:output:0"[
'sequential_52_lstm_158_while_identity_20sequential_52/lstm_158/while/Identity_2:output:0"[
'sequential_52_lstm_158_while_identity_30sequential_52/lstm_158/while/Identity_3:output:0"[
'sequential_52_lstm_158_while_identity_40sequential_52/lstm_158/while/Identity_4:output:0"[
'sequential_52_lstm_158_while_identity_50sequential_52/lstm_158/while/Identity_5:output:0"?
Jsequential_52_lstm_158_while_lstm_cell_356_biasadd_readvariableop_resourceLsequential_52_lstm_158_while_lstm_cell_356_biasadd_readvariableop_resource_0"?
Ksequential_52_lstm_158_while_lstm_cell_356_matmul_1_readvariableop_resourceMsequential_52_lstm_158_while_lstm_cell_356_matmul_1_readvariableop_resource_0"?
Isequential_52_lstm_158_while_lstm_cell_356_matmul_readvariableop_resourceKsequential_52_lstm_158_while_lstm_cell_356_matmul_readvariableop_resource_0"?
Csequential_52_lstm_158_while_sequential_52_lstm_158_strided_slice_1Esequential_52_lstm_158_while_sequential_52_lstm_158_strided_slice_1_0"?
sequential_52_lstm_158_while_tensorarrayv2read_tensorlistgetitem_sequential_52_lstm_158_tensorarrayunstack_tensorlistfromtensor?sequential_52_lstm_158_while_tensorarrayv2read_tensorlistgetitem_sequential_52_lstm_158_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Asequential_52/lstm_158/while/lstm_cell_356/BiasAdd/ReadVariableOpAsequential_52/lstm_158/while/lstm_cell_356/BiasAdd/ReadVariableOp2?
@sequential_52/lstm_158/while/lstm_cell_356/MatMul/ReadVariableOp@sequential_52/lstm_158/while/lstm_cell_356/MatMul/ReadVariableOp2?
Bsequential_52/lstm_158/while/lstm_cell_356/MatMul_1/ReadVariableOpBsequential_52/lstm_158/while/lstm_cell_356/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)sequential_52_lstm_156_while_body_2152924J
Fsequential_52_lstm_156_while_sequential_52_lstm_156_while_loop_counterP
Lsequential_52_lstm_156_while_sequential_52_lstm_156_while_maximum_iterations,
(sequential_52_lstm_156_while_placeholder.
*sequential_52_lstm_156_while_placeholder_1.
*sequential_52_lstm_156_while_placeholder_2.
*sequential_52_lstm_156_while_placeholder_3I
Esequential_52_lstm_156_while_sequential_52_lstm_156_strided_slice_1_0?
?sequential_52_lstm_156_while_tensorarrayv2read_tensorlistgetitem_sequential_52_lstm_156_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_52_lstm_156_while_lstm_cell_354_matmul_readvariableop_resource_0:	?`
Msequential_52_lstm_156_while_lstm_cell_354_matmul_1_readvariableop_resource_0:	d?[
Lsequential_52_lstm_156_while_lstm_cell_354_biasadd_readvariableop_resource_0:	?)
%sequential_52_lstm_156_while_identity+
'sequential_52_lstm_156_while_identity_1+
'sequential_52_lstm_156_while_identity_2+
'sequential_52_lstm_156_while_identity_3+
'sequential_52_lstm_156_while_identity_4+
'sequential_52_lstm_156_while_identity_5G
Csequential_52_lstm_156_while_sequential_52_lstm_156_strided_slice_1?
sequential_52_lstm_156_while_tensorarrayv2read_tensorlistgetitem_sequential_52_lstm_156_tensorarrayunstack_tensorlistfromtensor\
Isequential_52_lstm_156_while_lstm_cell_354_matmul_readvariableop_resource:	?^
Ksequential_52_lstm_156_while_lstm_cell_354_matmul_1_readvariableop_resource:	d?Y
Jsequential_52_lstm_156_while_lstm_cell_354_biasadd_readvariableop_resource:	???Asequential_52/lstm_156/while/lstm_cell_354/BiasAdd/ReadVariableOp?@sequential_52/lstm_156/while/lstm_cell_354/MatMul/ReadVariableOp?Bsequential_52/lstm_156/while/lstm_cell_354/MatMul_1/ReadVariableOp?
Nsequential_52/lstm_156/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
@sequential_52/lstm_156/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_52_lstm_156_while_tensorarrayv2read_tensorlistgetitem_sequential_52_lstm_156_tensorarrayunstack_tensorlistfromtensor_0(sequential_52_lstm_156_while_placeholderWsequential_52/lstm_156/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
@sequential_52/lstm_156/while/lstm_cell_354/MatMul/ReadVariableOpReadVariableOpKsequential_52_lstm_156_while_lstm_cell_354_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
1sequential_52/lstm_156/while/lstm_cell_354/MatMulMatMulGsequential_52/lstm_156/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_52/lstm_156/while/lstm_cell_354/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_52/lstm_156/while/lstm_cell_354/MatMul_1/ReadVariableOpReadVariableOpMsequential_52_lstm_156_while_lstm_cell_354_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
3sequential_52/lstm_156/while/lstm_cell_354/MatMul_1MatMul*sequential_52_lstm_156_while_placeholder_2Jsequential_52/lstm_156/while/lstm_cell_354/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_52/lstm_156/while/lstm_cell_354/addAddV2;sequential_52/lstm_156/while/lstm_cell_354/MatMul:product:0=sequential_52/lstm_156/while/lstm_cell_354/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_52/lstm_156/while/lstm_cell_354/BiasAdd/ReadVariableOpReadVariableOpLsequential_52_lstm_156_while_lstm_cell_354_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_52/lstm_156/while/lstm_cell_354/BiasAddBiasAdd2sequential_52/lstm_156/while/lstm_cell_354/add:z:0Isequential_52/lstm_156/while/lstm_cell_354/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_52/lstm_156/while/lstm_cell_354/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_52/lstm_156/while/lstm_cell_354/splitSplitCsequential_52/lstm_156/while/lstm_cell_354/split/split_dim:output:0;sequential_52/lstm_156/while/lstm_cell_354/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
2sequential_52/lstm_156/while/lstm_cell_354/SigmoidSigmoid9sequential_52/lstm_156/while/lstm_cell_354/split:output:0*
T0*'
_output_shapes
:?????????d?
4sequential_52/lstm_156/while/lstm_cell_354/Sigmoid_1Sigmoid9sequential_52/lstm_156/while/lstm_cell_354/split:output:1*
T0*'
_output_shapes
:?????????d?
.sequential_52/lstm_156/while/lstm_cell_354/mulMul8sequential_52/lstm_156/while/lstm_cell_354/Sigmoid_1:y:0*sequential_52_lstm_156_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
/sequential_52/lstm_156/while/lstm_cell_354/ReluRelu9sequential_52/lstm_156/while/lstm_cell_354/split:output:2*
T0*'
_output_shapes
:?????????d?
0sequential_52/lstm_156/while/lstm_cell_354/mul_1Mul6sequential_52/lstm_156/while/lstm_cell_354/Sigmoid:y:0=sequential_52/lstm_156/while/lstm_cell_354/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
0sequential_52/lstm_156/while/lstm_cell_354/add_1AddV22sequential_52/lstm_156/while/lstm_cell_354/mul:z:04sequential_52/lstm_156/while/lstm_cell_354/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
4sequential_52/lstm_156/while/lstm_cell_354/Sigmoid_2Sigmoid9sequential_52/lstm_156/while/lstm_cell_354/split:output:3*
T0*'
_output_shapes
:?????????d?
1sequential_52/lstm_156/while/lstm_cell_354/Relu_1Relu4sequential_52/lstm_156/while/lstm_cell_354/add_1:z:0*
T0*'
_output_shapes
:?????????d?
0sequential_52/lstm_156/while/lstm_cell_354/mul_2Mul8sequential_52/lstm_156/while/lstm_cell_354/Sigmoid_2:y:0?sequential_52/lstm_156/while/lstm_cell_354/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Asequential_52/lstm_156/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_52_lstm_156_while_placeholder_1(sequential_52_lstm_156_while_placeholder4sequential_52/lstm_156/while/lstm_cell_354/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_52/lstm_156/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_52/lstm_156/while/addAddV2(sequential_52_lstm_156_while_placeholder+sequential_52/lstm_156/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_52/lstm_156/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_52/lstm_156/while/add_1AddV2Fsequential_52_lstm_156_while_sequential_52_lstm_156_while_loop_counter-sequential_52/lstm_156/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_52/lstm_156/while/IdentityIdentity&sequential_52/lstm_156/while/add_1:z:0"^sequential_52/lstm_156/while/NoOp*
T0*
_output_shapes
: ?
'sequential_52/lstm_156/while/Identity_1IdentityLsequential_52_lstm_156_while_sequential_52_lstm_156_while_maximum_iterations"^sequential_52/lstm_156/while/NoOp*
T0*
_output_shapes
: ?
'sequential_52/lstm_156/while/Identity_2Identity$sequential_52/lstm_156/while/add:z:0"^sequential_52/lstm_156/while/NoOp*
T0*
_output_shapes
: ?
'sequential_52/lstm_156/while/Identity_3IdentityQsequential_52/lstm_156/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_52/lstm_156/while/NoOp*
T0*
_output_shapes
: ?
'sequential_52/lstm_156/while/Identity_4Identity4sequential_52/lstm_156/while/lstm_cell_354/mul_2:z:0"^sequential_52/lstm_156/while/NoOp*
T0*'
_output_shapes
:?????????d?
'sequential_52/lstm_156/while/Identity_5Identity4sequential_52/lstm_156/while/lstm_cell_354/add_1:z:0"^sequential_52/lstm_156/while/NoOp*
T0*'
_output_shapes
:?????????d?
!sequential_52/lstm_156/while/NoOpNoOpB^sequential_52/lstm_156/while/lstm_cell_354/BiasAdd/ReadVariableOpA^sequential_52/lstm_156/while/lstm_cell_354/MatMul/ReadVariableOpC^sequential_52/lstm_156/while/lstm_cell_354/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_52_lstm_156_while_identity.sequential_52/lstm_156/while/Identity:output:0"[
'sequential_52_lstm_156_while_identity_10sequential_52/lstm_156/while/Identity_1:output:0"[
'sequential_52_lstm_156_while_identity_20sequential_52/lstm_156/while/Identity_2:output:0"[
'sequential_52_lstm_156_while_identity_30sequential_52/lstm_156/while/Identity_3:output:0"[
'sequential_52_lstm_156_while_identity_40sequential_52/lstm_156/while/Identity_4:output:0"[
'sequential_52_lstm_156_while_identity_50sequential_52/lstm_156/while/Identity_5:output:0"?
Jsequential_52_lstm_156_while_lstm_cell_354_biasadd_readvariableop_resourceLsequential_52_lstm_156_while_lstm_cell_354_biasadd_readvariableop_resource_0"?
Ksequential_52_lstm_156_while_lstm_cell_354_matmul_1_readvariableop_resourceMsequential_52_lstm_156_while_lstm_cell_354_matmul_1_readvariableop_resource_0"?
Isequential_52_lstm_156_while_lstm_cell_354_matmul_readvariableop_resourceKsequential_52_lstm_156_while_lstm_cell_354_matmul_readvariableop_resource_0"?
Csequential_52_lstm_156_while_sequential_52_lstm_156_strided_slice_1Esequential_52_lstm_156_while_sequential_52_lstm_156_strided_slice_1_0"?
sequential_52_lstm_156_while_tensorarrayv2read_tensorlistgetitem_sequential_52_lstm_156_tensorarrayunstack_tensorlistfromtensor?sequential_52_lstm_156_while_tensorarrayv2read_tensorlistgetitem_sequential_52_lstm_156_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Asequential_52/lstm_156/while/lstm_cell_354/BiasAdd/ReadVariableOpAsequential_52/lstm_156/while/lstm_cell_354/BiasAdd/ReadVariableOp2?
@sequential_52/lstm_156/while/lstm_cell_354/MatMul/ReadVariableOp@sequential_52/lstm_156/while/lstm_cell_354/MatMul/ReadVariableOp2?
Bsequential_52/lstm_156/while/lstm_cell_354/MatMul_1/ReadVariableOpBsequential_52/lstm_156/while/lstm_cell_354/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_354_layer_call_and_return_conditional_losses_2153359

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
while_body_2157465
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_355_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_355_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_355_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_355_matmul_readvariableop_resource:	d?G
4while_lstm_cell_355_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_355_biasadd_readvariableop_resource:	???*while/lstm_cell_355/BiasAdd/ReadVariableOp?)while/lstm_cell_355/MatMul/ReadVariableOp?+while/lstm_cell_355/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_355/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_355_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_355/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_355/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_355/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_355_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_355/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_355/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_355/addAddV2$while/lstm_cell_355/MatMul:product:0&while/lstm_cell_355/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_355/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_355_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_355/BiasAddBiasAddwhile/lstm_cell_355/add:z:02while/lstm_cell_355/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_355/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_355/splitSplit,while/lstm_cell_355/split/split_dim:output:0$while/lstm_cell_355/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_355/SigmoidSigmoid"while/lstm_cell_355/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_355/Sigmoid_1Sigmoid"while/lstm_cell_355/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_355/mulMul!while/lstm_cell_355/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_355/ReluRelu"while/lstm_cell_355/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_355/mul_1Mulwhile/lstm_cell_355/Sigmoid:y:0&while/lstm_cell_355/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_355/add_1AddV2while/lstm_cell_355/mul:z:0while/lstm_cell_355/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_355/Sigmoid_2Sigmoid"while/lstm_cell_355/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_355/Relu_1Reluwhile/lstm_cell_355/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_355/mul_2Mul!while/lstm_cell_355/Sigmoid_2:y:0(while/lstm_cell_355/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_355/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_355/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_355/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_355/BiasAdd/ReadVariableOp*^while/lstm_cell_355/MatMul/ReadVariableOp,^while/lstm_cell_355/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_355_biasadd_readvariableop_resource5while_lstm_cell_355_biasadd_readvariableop_resource_0"n
4while_lstm_cell_355_matmul_1_readvariableop_resource6while_lstm_cell_355_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_355_matmul_readvariableop_resource4while_lstm_cell_355_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_355/BiasAdd/ReadVariableOp*while/lstm_cell_355/BiasAdd/ReadVariableOp2V
)while/lstm_cell_355/MatMul/ReadVariableOp)while/lstm_cell_355/MatMul/ReadVariableOp2Z
+while/lstm_cell_355/MatMul_1/ReadVariableOp+while/lstm_cell_355/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_157_layer_call_and_return_conditional_losses_2157549

inputs?
,lstm_cell_355_matmul_readvariableop_resource:	d?A
.lstm_cell_355_matmul_1_readvariableop_resource:	2?<
-lstm_cell_355_biasadd_readvariableop_resource:	?
identity??$lstm_cell_355/BiasAdd/ReadVariableOp?#lstm_cell_355/MatMul/ReadVariableOp?%lstm_cell_355/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_355/MatMul/ReadVariableOpReadVariableOp,lstm_cell_355_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_355/MatMulMatMulstrided_slice_2:output:0+lstm_cell_355/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_355/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_355_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_355/MatMul_1MatMulzeros:output:0-lstm_cell_355/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_355/addAddV2lstm_cell_355/MatMul:product:0 lstm_cell_355/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_355/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_355_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_355/BiasAddBiasAddlstm_cell_355/add:z:0,lstm_cell_355/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_355/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_355/splitSplit&lstm_cell_355/split/split_dim:output:0lstm_cell_355/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_355/SigmoidSigmoidlstm_cell_355/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_355/Sigmoid_1Sigmoidlstm_cell_355/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_355/mulMullstm_cell_355/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_355/ReluRelulstm_cell_355/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_355/mul_1Mullstm_cell_355/Sigmoid:y:0 lstm_cell_355/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_355/add_1AddV2lstm_cell_355/mul:z:0lstm_cell_355/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_355/Sigmoid_2Sigmoidlstm_cell_355/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_355/Relu_1Relulstm_cell_355/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_355/mul_2Mullstm_cell_355/Sigmoid_2:y:0"lstm_cell_355/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_355_matmul_readvariableop_resource.lstm_cell_355_matmul_1_readvariableop_resource-lstm_cell_355_biasadd_readvariableop_resource*
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
while_body_2157465*
condR
while_cond_2157464*K
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
NoOpNoOp%^lstm_cell_355/BiasAdd/ReadVariableOp$^lstm_cell_355/MatMul/ReadVariableOp&^lstm_cell_355/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_355/BiasAdd/ReadVariableOp$lstm_cell_355/BiasAdd/ReadVariableOp2J
#lstm_cell_355/MatMul/ReadVariableOp#lstm_cell_355/MatMul/ReadVariableOp2N
%lstm_cell_355/MatMul_1/ReadVariableOp%lstm_cell_355/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_2155088
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_355_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_355_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_355_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_355_matmul_readvariableop_resource:	d?G
4while_lstm_cell_355_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_355_biasadd_readvariableop_resource:	???*while/lstm_cell_355/BiasAdd/ReadVariableOp?)while/lstm_cell_355/MatMul/ReadVariableOp?+while/lstm_cell_355/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_355/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_355_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_355/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_355/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_355/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_355_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_355/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_355/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_355/addAddV2$while/lstm_cell_355/MatMul:product:0&while/lstm_cell_355/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_355/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_355_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_355/BiasAddBiasAddwhile/lstm_cell_355/add:z:02while/lstm_cell_355/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_355/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_355/splitSplit,while/lstm_cell_355/split/split_dim:output:0$while/lstm_cell_355/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_355/SigmoidSigmoid"while/lstm_cell_355/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_355/Sigmoid_1Sigmoid"while/lstm_cell_355/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_355/mulMul!while/lstm_cell_355/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_355/ReluRelu"while/lstm_cell_355/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_355/mul_1Mulwhile/lstm_cell_355/Sigmoid:y:0&while/lstm_cell_355/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_355/add_1AddV2while/lstm_cell_355/mul:z:0while/lstm_cell_355/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_355/Sigmoid_2Sigmoid"while/lstm_cell_355/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_355/Relu_1Reluwhile/lstm_cell_355/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_355/mul_2Mul!while/lstm_cell_355/Sigmoid_2:y:0(while/lstm_cell_355/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_355/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_355/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_355/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_355/BiasAdd/ReadVariableOp*^while/lstm_cell_355/MatMul/ReadVariableOp,^while/lstm_cell_355/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_355_biasadd_readvariableop_resource5while_lstm_cell_355_biasadd_readvariableop_resource_0"n
4while_lstm_cell_355_matmul_1_readvariableop_resource6while_lstm_cell_355_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_355_matmul_readvariableop_resource4while_lstm_cell_355_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_355/BiasAdd/ReadVariableOp*while/lstm_cell_355/BiasAdd/ReadVariableOp2V
)while/lstm_cell_355/MatMul/ReadVariableOp)while/lstm_cell_355/MatMul/ReadVariableOp2Z
+while/lstm_cell_355/MatMul_1/ReadVariableOp+while/lstm_cell_355/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_158_layer_call_and_return_conditional_losses_2155007

inputs>
,lstm_cell_356_matmul_readvariableop_resource:2(@
.lstm_cell_356_matmul_1_readvariableop_resource:
(;
-lstm_cell_356_biasadd_readvariableop_resource:(
identity??$lstm_cell_356/BiasAdd/ReadVariableOp?#lstm_cell_356/MatMul/ReadVariableOp?%lstm_cell_356/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_356/MatMul/ReadVariableOpReadVariableOp,lstm_cell_356_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_356/MatMulMatMulstrided_slice_2:output:0+lstm_cell_356/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_356/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_356_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_356/MatMul_1MatMulzeros:output:0-lstm_cell_356/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_356/addAddV2lstm_cell_356/MatMul:product:0 lstm_cell_356/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_356/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_356_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_356/BiasAddBiasAddlstm_cell_356/add:z:0,lstm_cell_356/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_356/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_356/splitSplit&lstm_cell_356/split/split_dim:output:0lstm_cell_356/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_356/SigmoidSigmoidlstm_cell_356/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_356/Sigmoid_1Sigmoidlstm_cell_356/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_356/mulMullstm_cell_356/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_356/ReluRelulstm_cell_356/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_356/mul_1Mullstm_cell_356/Sigmoid:y:0 lstm_cell_356/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_356/add_1AddV2lstm_cell_356/mul:z:0lstm_cell_356/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_356/Sigmoid_2Sigmoidlstm_cell_356/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_356/Relu_1Relulstm_cell_356/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_356/mul_2Mullstm_cell_356/Sigmoid_2:y:0"lstm_cell_356/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_356_matmul_readvariableop_resource.lstm_cell_356_matmul_1_readvariableop_resource-lstm_cell_356_biasadd_readvariableop_resource*
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
while_body_2154923*
condR
while_cond_2154922*K
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
NoOpNoOp%^lstm_cell_356/BiasAdd/ReadVariableOp$^lstm_cell_356/MatMul/ReadVariableOp&^lstm_cell_356/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_356/BiasAdd/ReadVariableOp$lstm_cell_356/BiasAdd/ReadVariableOp2J
#lstm_cell_356/MatMul/ReadVariableOp#lstm_cell_356/MatMul/ReadVariableOp2N
%lstm_cell_356/MatMul_1/ReadVariableOp%lstm_cell_356/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_157_layer_call_fn_2157098
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
E__inference_lstm_157_layer_call_and_return_conditional_losses_2153983|
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
J__inference_lstm_cell_355_layer_call_and_return_conditional_losses_2158523

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
)sequential_52_lstm_158_while_cond_2153201J
Fsequential_52_lstm_158_while_sequential_52_lstm_158_while_loop_counterP
Lsequential_52_lstm_158_while_sequential_52_lstm_158_while_maximum_iterations,
(sequential_52_lstm_158_while_placeholder.
*sequential_52_lstm_158_while_placeholder_1.
*sequential_52_lstm_158_while_placeholder_2.
*sequential_52_lstm_158_while_placeholder_3L
Hsequential_52_lstm_158_while_less_sequential_52_lstm_158_strided_slice_1c
_sequential_52_lstm_158_while_sequential_52_lstm_158_while_cond_2153201___redundant_placeholder0c
_sequential_52_lstm_158_while_sequential_52_lstm_158_while_cond_2153201___redundant_placeholder1c
_sequential_52_lstm_158_while_sequential_52_lstm_158_while_cond_2153201___redundant_placeholder2c
_sequential_52_lstm_158_while_sequential_52_lstm_158_while_cond_2153201___redundant_placeholder3)
%sequential_52_lstm_158_while_identity
?
!sequential_52/lstm_158/while/LessLess(sequential_52_lstm_158_while_placeholderHsequential_52_lstm_158_while_less_sequential_52_lstm_158_strided_slice_1*
T0*
_output_shapes
: y
%sequential_52/lstm_158/while/IdentityIdentity%sequential_52/lstm_158/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_52_lstm_158_while_identity.sequential_52/lstm_158/while/Identity:output:0*(
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
while_body_2156992
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_354_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_354_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_354_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_354_matmul_readvariableop_resource:	?G
4while_lstm_cell_354_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_354_biasadd_readvariableop_resource:	???*while/lstm_cell_354/BiasAdd/ReadVariableOp?)while/lstm_cell_354/MatMul/ReadVariableOp?+while/lstm_cell_354/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_354/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_354_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_354/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_354/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_354/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_354_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_354/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_354/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_354/addAddV2$while/lstm_cell_354/MatMul:product:0&while/lstm_cell_354/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_354/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_354_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_354/BiasAddBiasAddwhile/lstm_cell_354/add:z:02while/lstm_cell_354/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_354/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_354/splitSplit,while/lstm_cell_354/split/split_dim:output:0$while/lstm_cell_354/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_354/SigmoidSigmoid"while/lstm_cell_354/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_354/Sigmoid_1Sigmoid"while/lstm_cell_354/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_354/mulMul!while/lstm_cell_354/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_354/ReluRelu"while/lstm_cell_354/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_354/mul_1Mulwhile/lstm_cell_354/Sigmoid:y:0&while/lstm_cell_354/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_354/add_1AddV2while/lstm_cell_354/mul:z:0while/lstm_cell_354/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_354/Sigmoid_2Sigmoid"while/lstm_cell_354/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_354/Relu_1Reluwhile/lstm_cell_354/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_354/mul_2Mul!while/lstm_cell_354/Sigmoid_2:y:0(while/lstm_cell_354/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_354/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_354/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_354/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_354/BiasAdd/ReadVariableOp*^while/lstm_cell_354/MatMul/ReadVariableOp,^while/lstm_cell_354/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_354_biasadd_readvariableop_resource5while_lstm_cell_354_biasadd_readvariableop_resource_0"n
4while_lstm_cell_354_matmul_1_readvariableop_resource6while_lstm_cell_354_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_354_matmul_readvariableop_resource4while_lstm_cell_354_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_354/BiasAdd/ReadVariableOp*while/lstm_cell_354/BiasAdd/ReadVariableOp2V
)while/lstm_cell_354/MatMul/ReadVariableOp)while/lstm_cell_354/MatMul/ReadVariableOp2Z
+while/lstm_cell_354/MatMul_1/ReadVariableOp+while/lstm_cell_354/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_356_layer_call_fn_2158540

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
J__inference_lstm_cell_356_layer_call_and_return_conditional_losses_2154059o
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
*__inference_lstm_158_layer_call_fn_2157714
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
E__inference_lstm_158_layer_call_and_return_conditional_losses_2154333o
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
%__inference_signature_wrapper_2155552
lstm_156_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_156_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_2153292o
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
_user_specified_namelstm_156_input
?
?
J__inference_sequential_52_layer_call_and_return_conditional_losses_2154816

inputs#
lstm_156_2154492:	?#
lstm_156_2154494:	d?
lstm_156_2154496:	?#
lstm_157_2154642:	d?#
lstm_157_2154644:	2?
lstm_157_2154646:	?"
lstm_158_2154792:2("
lstm_158_2154794:
(
lstm_158_2154796:("
dense_52_2154810:

dense_52_2154812:
identity?? dense_52/StatefulPartitionedCall? lstm_156/StatefulPartitionedCall? lstm_157/StatefulPartitionedCall? lstm_158/StatefulPartitionedCall?
 lstm_156/StatefulPartitionedCallStatefulPartitionedCallinputslstm_156_2154492lstm_156_2154494lstm_156_2154496*
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
E__inference_lstm_156_layer_call_and_return_conditional_losses_2154491?
 lstm_157/StatefulPartitionedCallStatefulPartitionedCall)lstm_156/StatefulPartitionedCall:output:0lstm_157_2154642lstm_157_2154644lstm_157_2154646*
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
E__inference_lstm_157_layer_call_and_return_conditional_losses_2154641?
 lstm_158/StatefulPartitionedCallStatefulPartitionedCall)lstm_157/StatefulPartitionedCall:output:0lstm_158_2154792lstm_158_2154794lstm_158_2154796*
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
E__inference_lstm_158_layer_call_and_return_conditional_losses_2154791?
 dense_52/StatefulPartitionedCallStatefulPartitionedCall)lstm_158/StatefulPartitionedCall:output:0dense_52_2154810dense_52_2154812*
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
E__inference_dense_52_layer_call_and_return_conditional_losses_2154809x
IdentityIdentity)dense_52/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_52/StatefulPartitionedCall!^lstm_156/StatefulPartitionedCall!^lstm_157/StatefulPartitionedCall!^lstm_158/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_52/StatefulPartitionedCall dense_52/StatefulPartitionedCall2D
 lstm_156/StatefulPartitionedCall lstm_156/StatefulPartitionedCall2D
 lstm_157/StatefulPartitionedCall lstm_157/StatefulPartitionedCall2D
 lstm_158/StatefulPartitionedCall lstm_158/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_354_layer_call_and_return_conditional_losses_2158393

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
/__inference_sequential_52_layer_call_fn_2154841
lstm_156_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_156_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_52_layer_call_and_return_conditional_losses_2154816o
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
_user_specified_namelstm_156_input
?8
?
while_body_2157938
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_356_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_356_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_356_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_356_matmul_readvariableop_resource:2(F
4while_lstm_cell_356_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_356_biasadd_readvariableop_resource:(??*while/lstm_cell_356/BiasAdd/ReadVariableOp?)while/lstm_cell_356/MatMul/ReadVariableOp?+while/lstm_cell_356/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_356/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_356_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_356/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_356/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_356/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_356_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_356/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_356/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_356/addAddV2$while/lstm_cell_356/MatMul:product:0&while/lstm_cell_356/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_356/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_356_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_356/BiasAddBiasAddwhile/lstm_cell_356/add:z:02while/lstm_cell_356/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_356/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_356/splitSplit,while/lstm_cell_356/split/split_dim:output:0$while/lstm_cell_356/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_356/SigmoidSigmoid"while/lstm_cell_356/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_356/Sigmoid_1Sigmoid"while/lstm_cell_356/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_356/mulMul!while/lstm_cell_356/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_356/ReluRelu"while/lstm_cell_356/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_356/mul_1Mulwhile/lstm_cell_356/Sigmoid:y:0&while/lstm_cell_356/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_356/add_1AddV2while/lstm_cell_356/mul:z:0while/lstm_cell_356/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_356/Sigmoid_2Sigmoid"while/lstm_cell_356/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_356/Relu_1Reluwhile/lstm_cell_356/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_356/mul_2Mul!while/lstm_cell_356/Sigmoid_2:y:0(while/lstm_cell_356/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_356/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_356/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_356/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_356/BiasAdd/ReadVariableOp*^while/lstm_cell_356/MatMul/ReadVariableOp,^while/lstm_cell_356/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_356_biasadd_readvariableop_resource5while_lstm_cell_356_biasadd_readvariableop_resource_0"n
4while_lstm_cell_356_matmul_1_readvariableop_resource6while_lstm_cell_356_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_356_matmul_readvariableop_resource4while_lstm_cell_356_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_356/BiasAdd/ReadVariableOp*while/lstm_cell_356/BiasAdd/ReadVariableOp2V
)while/lstm_cell_356/MatMul/ReadVariableOp)while/lstm_cell_356/MatMul/ReadVariableOp2Z
+while/lstm_cell_356/MatMul_1/ReadVariableOp+while/lstm_cell_356/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2158080
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2158080___redundant_placeholder05
1while_while_cond_2158080___redundant_placeholder15
1while_while_cond_2158080___redundant_placeholder25
1while_while_cond_2158080___redundant_placeholder3
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
E__inference_lstm_158_layer_call_and_return_conditional_losses_2158022
inputs_0>
,lstm_cell_356_matmul_readvariableop_resource:2(@
.lstm_cell_356_matmul_1_readvariableop_resource:
(;
-lstm_cell_356_biasadd_readvariableop_resource:(
identity??$lstm_cell_356/BiasAdd/ReadVariableOp?#lstm_cell_356/MatMul/ReadVariableOp?%lstm_cell_356/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_356/MatMul/ReadVariableOpReadVariableOp,lstm_cell_356_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_356/MatMulMatMulstrided_slice_2:output:0+lstm_cell_356/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_356/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_356_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_356/MatMul_1MatMulzeros:output:0-lstm_cell_356/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_356/addAddV2lstm_cell_356/MatMul:product:0 lstm_cell_356/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_356/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_356_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_356/BiasAddBiasAddlstm_cell_356/add:z:0,lstm_cell_356/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_356/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_356/splitSplit&lstm_cell_356/split/split_dim:output:0lstm_cell_356/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_356/SigmoidSigmoidlstm_cell_356/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_356/Sigmoid_1Sigmoidlstm_cell_356/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_356/mulMullstm_cell_356/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_356/ReluRelulstm_cell_356/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_356/mul_1Mullstm_cell_356/Sigmoid:y:0 lstm_cell_356/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_356/add_1AddV2lstm_cell_356/mul:z:0lstm_cell_356/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_356/Sigmoid_2Sigmoidlstm_cell_356/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_356/Relu_1Relulstm_cell_356/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_356/mul_2Mullstm_cell_356/Sigmoid_2:y:0"lstm_cell_356/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_356_matmul_readvariableop_resource.lstm_cell_356_matmul_1_readvariableop_resource-lstm_cell_356_biasadd_readvariableop_resource*
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
while_body_2157938*
condR
while_cond_2157937*K
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
NoOpNoOp%^lstm_cell_356/BiasAdd/ReadVariableOp$^lstm_cell_356/MatMul/ReadVariableOp&^lstm_cell_356/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_356/BiasAdd/ReadVariableOp$lstm_cell_356/BiasAdd/ReadVariableOp2J
#lstm_cell_356/MatMul/ReadVariableOp#lstm_cell_356/MatMul/ReadVariableOp2N
%lstm_cell_356/MatMul_1/ReadVariableOp%lstm_cell_356/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
??
?
#__inference__traced_restore_2158894
file_prefix2
 assignvariableop_dense_52_kernel:
.
 assignvariableop_1_dense_52_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_156_lstm_cell_156_kernel:	?M
:assignvariableop_8_lstm_156_lstm_cell_156_recurrent_kernel:	d?=
.assignvariableop_9_lstm_156_lstm_cell_156_bias:	?D
1assignvariableop_10_lstm_157_lstm_cell_157_kernel:	d?N
;assignvariableop_11_lstm_157_lstm_cell_157_recurrent_kernel:	2?>
/assignvariableop_12_lstm_157_lstm_cell_157_bias:	?C
1assignvariableop_13_lstm_158_lstm_cell_158_kernel:2(M
;assignvariableop_14_lstm_158_lstm_cell_158_recurrent_kernel:
(=
/assignvariableop_15_lstm_158_lstm_cell_158_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_52_kernel_m:
6
(assignvariableop_19_adam_dense_52_bias_m:K
8assignvariableop_20_adam_lstm_156_lstm_cell_156_kernel_m:	?U
Bassignvariableop_21_adam_lstm_156_lstm_cell_156_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_156_lstm_cell_156_bias_m:	?K
8assignvariableop_23_adam_lstm_157_lstm_cell_157_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_157_lstm_cell_157_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_157_lstm_cell_157_bias_m:	?J
8assignvariableop_26_adam_lstm_158_lstm_cell_158_kernel_m:2(T
Bassignvariableop_27_adam_lstm_158_lstm_cell_158_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_158_lstm_cell_158_bias_m:(<
*assignvariableop_29_adam_dense_52_kernel_v:
6
(assignvariableop_30_adam_dense_52_bias_v:K
8assignvariableop_31_adam_lstm_156_lstm_cell_156_kernel_v:	?U
Bassignvariableop_32_adam_lstm_156_lstm_cell_156_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_156_lstm_cell_156_bias_v:	?K
8assignvariableop_34_adam_lstm_157_lstm_cell_157_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_157_lstm_cell_157_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_157_lstm_cell_157_bias_v:	?J
8assignvariableop_37_adam_lstm_158_lstm_cell_158_kernel_v:2(T
Bassignvariableop_38_adam_lstm_158_lstm_cell_158_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_158_lstm_cell_158_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_52_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_52_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_156_lstm_cell_156_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_156_lstm_cell_156_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_156_lstm_cell_156_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_157_lstm_cell_157_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_157_lstm_cell_157_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_157_lstm_cell_157_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_158_lstm_cell_158_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_158_lstm_cell_158_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_158_lstm_cell_158_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_52_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_52_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_156_lstm_cell_156_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_156_lstm_cell_156_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_156_lstm_cell_156_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_157_lstm_cell_157_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_157_lstm_cell_157_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_157_lstm_cell_157_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_158_lstm_cell_158_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_158_lstm_cell_158_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_158_lstm_cell_158_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_52_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_52_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_156_lstm_cell_156_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_156_lstm_cell_156_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_156_lstm_cell_156_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_157_lstm_cell_157_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_157_lstm_cell_157_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_157_lstm_cell_157_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_158_lstm_cell_158_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_158_lstm_cell_158_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_158_lstm_cell_158_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_cond_2158223
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2158223___redundant_placeholder05
1while_while_cond_2158223___redundant_placeholder15
1while_while_cond_2158223___redundant_placeholder25
1while_while_cond_2158223___redundant_placeholder3
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
J__inference_lstm_cell_354_layer_call_and_return_conditional_losses_2158425

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
?#
?
while_body_2154264
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_356_2154288_0:2(/
while_lstm_cell_356_2154290_0:
(+
while_lstm_cell_356_2154292_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_356_2154288:2(-
while_lstm_cell_356_2154290:
()
while_lstm_cell_356_2154292:(??+while/lstm_cell_356/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_356/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_356_2154288_0while_lstm_cell_356_2154290_0while_lstm_cell_356_2154292_0*
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
J__inference_lstm_cell_356_layer_call_and_return_conditional_losses_2154205?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_356/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_356/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_356/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_356/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_356_2154288while_lstm_cell_356_2154288_0"<
while_lstm_cell_356_2154290while_lstm_cell_356_2154290_0"<
while_lstm_cell_356_2154292while_lstm_cell_356_2154292_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_356/StatefulPartitionedCall+while/lstm_cell_356/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_2156991
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2156991___redundant_placeholder05
1while_while_cond_2156991___redundant_placeholder15
1while_while_cond_2156991___redundant_placeholder25
1while_while_cond_2156991___redundant_placeholder3
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
while_cond_2154406
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2154406___redundant_placeholder05
1while_while_cond_2154406___redundant_placeholder15
1while_while_cond_2154406___redundant_placeholder25
1while_while_cond_2154406___redundant_placeholder3
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
*__inference_lstm_157_layer_call_fn_2157109

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
E__inference_lstm_157_layer_call_and_return_conditional_losses_2154641s
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
/__inference_lstm_cell_356_layer_call_fn_2158557

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
J__inference_lstm_cell_356_layer_call_and_return_conditional_losses_2154205o
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
lstm_157_while_cond_2155803.
*lstm_157_while_lstm_157_while_loop_counter4
0lstm_157_while_lstm_157_while_maximum_iterations
lstm_157_while_placeholder 
lstm_157_while_placeholder_1 
lstm_157_while_placeholder_2 
lstm_157_while_placeholder_30
,lstm_157_while_less_lstm_157_strided_slice_1G
Clstm_157_while_lstm_157_while_cond_2155803___redundant_placeholder0G
Clstm_157_while_lstm_157_while_cond_2155803___redundant_placeholder1G
Clstm_157_while_lstm_157_while_cond_2155803___redundant_placeholder2G
Clstm_157_while_lstm_157_while_cond_2155803___redundant_placeholder3
lstm_157_while_identity
?
lstm_157/while/LessLesslstm_157_while_placeholder,lstm_157_while_less_lstm_157_strided_slice_1*
T0*
_output_shapes
: ]
lstm_157/while/IdentityIdentitylstm_157/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_157_while_identity lstm_157/while/Identity:output:0*(
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
while_cond_2154922
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2154922___redundant_placeholder05
1while_while_cond_2154922___redundant_placeholder15
1while_while_cond_2154922___redundant_placeholder25
1while_while_cond_2154922___redundant_placeholder3
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
while_body_2154073
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_356_2154097_0:2(/
while_lstm_cell_356_2154099_0:
(+
while_lstm_cell_356_2154101_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_356_2154097:2(-
while_lstm_cell_356_2154099:
()
while_lstm_cell_356_2154101:(??+while/lstm_cell_356/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_356/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_356_2154097_0while_lstm_cell_356_2154099_0while_lstm_cell_356_2154101_0*
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
J__inference_lstm_cell_356_layer_call_and_return_conditional_losses_2154059?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_356/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_356/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_356/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_356/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_356_2154097while_lstm_cell_356_2154097_0"<
while_lstm_cell_356_2154099while_lstm_cell_356_2154099_0"<
while_lstm_cell_356_2154101while_lstm_cell_356_2154101_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_356/StatefulPartitionedCall+while/lstm_cell_356/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_2153373
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_354_2153397_0:	?0
while_lstm_cell_354_2153399_0:	d?,
while_lstm_cell_354_2153401_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_354_2153397:	?.
while_lstm_cell_354_2153399:	d?*
while_lstm_cell_354_2153401:	???+while/lstm_cell_354/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_354/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_354_2153397_0while_lstm_cell_354_2153399_0while_lstm_cell_354_2153401_0*
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
J__inference_lstm_cell_354_layer_call_and_return_conditional_losses_2153359?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_354/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_354/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_354/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_354/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_354_2153397while_lstm_cell_354_2153397_0"<
while_lstm_cell_354_2153399while_lstm_cell_354_2153399_0"<
while_lstm_cell_354_2153401while_lstm_cell_354_2153401_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_354/StatefulPartitionedCall+while/lstm_cell_354/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
)sequential_52_lstm_157_while_body_2153063J
Fsequential_52_lstm_157_while_sequential_52_lstm_157_while_loop_counterP
Lsequential_52_lstm_157_while_sequential_52_lstm_157_while_maximum_iterations,
(sequential_52_lstm_157_while_placeholder.
*sequential_52_lstm_157_while_placeholder_1.
*sequential_52_lstm_157_while_placeholder_2.
*sequential_52_lstm_157_while_placeholder_3I
Esequential_52_lstm_157_while_sequential_52_lstm_157_strided_slice_1_0?
?sequential_52_lstm_157_while_tensorarrayv2read_tensorlistgetitem_sequential_52_lstm_157_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_52_lstm_157_while_lstm_cell_355_matmul_readvariableop_resource_0:	d?`
Msequential_52_lstm_157_while_lstm_cell_355_matmul_1_readvariableop_resource_0:	2?[
Lsequential_52_lstm_157_while_lstm_cell_355_biasadd_readvariableop_resource_0:	?)
%sequential_52_lstm_157_while_identity+
'sequential_52_lstm_157_while_identity_1+
'sequential_52_lstm_157_while_identity_2+
'sequential_52_lstm_157_while_identity_3+
'sequential_52_lstm_157_while_identity_4+
'sequential_52_lstm_157_while_identity_5G
Csequential_52_lstm_157_while_sequential_52_lstm_157_strided_slice_1?
sequential_52_lstm_157_while_tensorarrayv2read_tensorlistgetitem_sequential_52_lstm_157_tensorarrayunstack_tensorlistfromtensor\
Isequential_52_lstm_157_while_lstm_cell_355_matmul_readvariableop_resource:	d?^
Ksequential_52_lstm_157_while_lstm_cell_355_matmul_1_readvariableop_resource:	2?Y
Jsequential_52_lstm_157_while_lstm_cell_355_biasadd_readvariableop_resource:	???Asequential_52/lstm_157/while/lstm_cell_355/BiasAdd/ReadVariableOp?@sequential_52/lstm_157/while/lstm_cell_355/MatMul/ReadVariableOp?Bsequential_52/lstm_157/while/lstm_cell_355/MatMul_1/ReadVariableOp?
Nsequential_52/lstm_157/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
@sequential_52/lstm_157/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_52_lstm_157_while_tensorarrayv2read_tensorlistgetitem_sequential_52_lstm_157_tensorarrayunstack_tensorlistfromtensor_0(sequential_52_lstm_157_while_placeholderWsequential_52/lstm_157/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
@sequential_52/lstm_157/while/lstm_cell_355/MatMul/ReadVariableOpReadVariableOpKsequential_52_lstm_157_while_lstm_cell_355_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
1sequential_52/lstm_157/while/lstm_cell_355/MatMulMatMulGsequential_52/lstm_157/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_52/lstm_157/while/lstm_cell_355/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_52/lstm_157/while/lstm_cell_355/MatMul_1/ReadVariableOpReadVariableOpMsequential_52_lstm_157_while_lstm_cell_355_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
3sequential_52/lstm_157/while/lstm_cell_355/MatMul_1MatMul*sequential_52_lstm_157_while_placeholder_2Jsequential_52/lstm_157/while/lstm_cell_355/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_52/lstm_157/while/lstm_cell_355/addAddV2;sequential_52/lstm_157/while/lstm_cell_355/MatMul:product:0=sequential_52/lstm_157/while/lstm_cell_355/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_52/lstm_157/while/lstm_cell_355/BiasAdd/ReadVariableOpReadVariableOpLsequential_52_lstm_157_while_lstm_cell_355_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_52/lstm_157/while/lstm_cell_355/BiasAddBiasAdd2sequential_52/lstm_157/while/lstm_cell_355/add:z:0Isequential_52/lstm_157/while/lstm_cell_355/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_52/lstm_157/while/lstm_cell_355/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_52/lstm_157/while/lstm_cell_355/splitSplitCsequential_52/lstm_157/while/lstm_cell_355/split/split_dim:output:0;sequential_52/lstm_157/while/lstm_cell_355/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
2sequential_52/lstm_157/while/lstm_cell_355/SigmoidSigmoid9sequential_52/lstm_157/while/lstm_cell_355/split:output:0*
T0*'
_output_shapes
:?????????2?
4sequential_52/lstm_157/while/lstm_cell_355/Sigmoid_1Sigmoid9sequential_52/lstm_157/while/lstm_cell_355/split:output:1*
T0*'
_output_shapes
:?????????2?
.sequential_52/lstm_157/while/lstm_cell_355/mulMul8sequential_52/lstm_157/while/lstm_cell_355/Sigmoid_1:y:0*sequential_52_lstm_157_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
/sequential_52/lstm_157/while/lstm_cell_355/ReluRelu9sequential_52/lstm_157/while/lstm_cell_355/split:output:2*
T0*'
_output_shapes
:?????????2?
0sequential_52/lstm_157/while/lstm_cell_355/mul_1Mul6sequential_52/lstm_157/while/lstm_cell_355/Sigmoid:y:0=sequential_52/lstm_157/while/lstm_cell_355/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
0sequential_52/lstm_157/while/lstm_cell_355/add_1AddV22sequential_52/lstm_157/while/lstm_cell_355/mul:z:04sequential_52/lstm_157/while/lstm_cell_355/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
4sequential_52/lstm_157/while/lstm_cell_355/Sigmoid_2Sigmoid9sequential_52/lstm_157/while/lstm_cell_355/split:output:3*
T0*'
_output_shapes
:?????????2?
1sequential_52/lstm_157/while/lstm_cell_355/Relu_1Relu4sequential_52/lstm_157/while/lstm_cell_355/add_1:z:0*
T0*'
_output_shapes
:?????????2?
0sequential_52/lstm_157/while/lstm_cell_355/mul_2Mul8sequential_52/lstm_157/while/lstm_cell_355/Sigmoid_2:y:0?sequential_52/lstm_157/while/lstm_cell_355/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Asequential_52/lstm_157/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_52_lstm_157_while_placeholder_1(sequential_52_lstm_157_while_placeholder4sequential_52/lstm_157/while/lstm_cell_355/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_52/lstm_157/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_52/lstm_157/while/addAddV2(sequential_52_lstm_157_while_placeholder+sequential_52/lstm_157/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_52/lstm_157/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_52/lstm_157/while/add_1AddV2Fsequential_52_lstm_157_while_sequential_52_lstm_157_while_loop_counter-sequential_52/lstm_157/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_52/lstm_157/while/IdentityIdentity&sequential_52/lstm_157/while/add_1:z:0"^sequential_52/lstm_157/while/NoOp*
T0*
_output_shapes
: ?
'sequential_52/lstm_157/while/Identity_1IdentityLsequential_52_lstm_157_while_sequential_52_lstm_157_while_maximum_iterations"^sequential_52/lstm_157/while/NoOp*
T0*
_output_shapes
: ?
'sequential_52/lstm_157/while/Identity_2Identity$sequential_52/lstm_157/while/add:z:0"^sequential_52/lstm_157/while/NoOp*
T0*
_output_shapes
: ?
'sequential_52/lstm_157/while/Identity_3IdentityQsequential_52/lstm_157/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_52/lstm_157/while/NoOp*
T0*
_output_shapes
: ?
'sequential_52/lstm_157/while/Identity_4Identity4sequential_52/lstm_157/while/lstm_cell_355/mul_2:z:0"^sequential_52/lstm_157/while/NoOp*
T0*'
_output_shapes
:?????????2?
'sequential_52/lstm_157/while/Identity_5Identity4sequential_52/lstm_157/while/lstm_cell_355/add_1:z:0"^sequential_52/lstm_157/while/NoOp*
T0*'
_output_shapes
:?????????2?
!sequential_52/lstm_157/while/NoOpNoOpB^sequential_52/lstm_157/while/lstm_cell_355/BiasAdd/ReadVariableOpA^sequential_52/lstm_157/while/lstm_cell_355/MatMul/ReadVariableOpC^sequential_52/lstm_157/while/lstm_cell_355/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_52_lstm_157_while_identity.sequential_52/lstm_157/while/Identity:output:0"[
'sequential_52_lstm_157_while_identity_10sequential_52/lstm_157/while/Identity_1:output:0"[
'sequential_52_lstm_157_while_identity_20sequential_52/lstm_157/while/Identity_2:output:0"[
'sequential_52_lstm_157_while_identity_30sequential_52/lstm_157/while/Identity_3:output:0"[
'sequential_52_lstm_157_while_identity_40sequential_52/lstm_157/while/Identity_4:output:0"[
'sequential_52_lstm_157_while_identity_50sequential_52/lstm_157/while/Identity_5:output:0"?
Jsequential_52_lstm_157_while_lstm_cell_355_biasadd_readvariableop_resourceLsequential_52_lstm_157_while_lstm_cell_355_biasadd_readvariableop_resource_0"?
Ksequential_52_lstm_157_while_lstm_cell_355_matmul_1_readvariableop_resourceMsequential_52_lstm_157_while_lstm_cell_355_matmul_1_readvariableop_resource_0"?
Isequential_52_lstm_157_while_lstm_cell_355_matmul_readvariableop_resourceKsequential_52_lstm_157_while_lstm_cell_355_matmul_readvariableop_resource_0"?
Csequential_52_lstm_157_while_sequential_52_lstm_157_strided_slice_1Esequential_52_lstm_157_while_sequential_52_lstm_157_strided_slice_1_0"?
sequential_52_lstm_157_while_tensorarrayv2read_tensorlistgetitem_sequential_52_lstm_157_tensorarrayunstack_tensorlistfromtensor?sequential_52_lstm_157_while_tensorarrayv2read_tensorlistgetitem_sequential_52_lstm_157_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Asequential_52/lstm_157/while/lstm_cell_355/BiasAdd/ReadVariableOpAsequential_52/lstm_157/while/lstm_cell_355/BiasAdd/ReadVariableOp2?
@sequential_52/lstm_157/while/lstm_cell_355/MatMul/ReadVariableOp@sequential_52/lstm_157/while/lstm_cell_355/MatMul/ReadVariableOp2?
Bsequential_52/lstm_157/while/lstm_cell_355/MatMul_1/ReadVariableOpBsequential_52/lstm_157/while/lstm_cell_355/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)sequential_52_lstm_157_while_cond_2153062J
Fsequential_52_lstm_157_while_sequential_52_lstm_157_while_loop_counterP
Lsequential_52_lstm_157_while_sequential_52_lstm_157_while_maximum_iterations,
(sequential_52_lstm_157_while_placeholder.
*sequential_52_lstm_157_while_placeholder_1.
*sequential_52_lstm_157_while_placeholder_2.
*sequential_52_lstm_157_while_placeholder_3L
Hsequential_52_lstm_157_while_less_sequential_52_lstm_157_strided_slice_1c
_sequential_52_lstm_157_while_sequential_52_lstm_157_while_cond_2153062___redundant_placeholder0c
_sequential_52_lstm_157_while_sequential_52_lstm_157_while_cond_2153062___redundant_placeholder1c
_sequential_52_lstm_157_while_sequential_52_lstm_157_while_cond_2153062___redundant_placeholder2c
_sequential_52_lstm_157_while_sequential_52_lstm_157_while_cond_2153062___redundant_placeholder3)
%sequential_52_lstm_157_while_identity
?
!sequential_52/lstm_157/while/LessLess(sequential_52_lstm_157_while_placeholderHsequential_52_lstm_157_while_less_sequential_52_lstm_157_strided_slice_1*
T0*
_output_shapes
: y
%sequential_52/lstm_157/while/IdentityIdentity%sequential_52/lstm_157/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_52_lstm_157_while_identity.sequential_52/lstm_157/while/Identity:output:0*(
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
while_body_2157795
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_356_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_356_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_356_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_356_matmul_readvariableop_resource:2(F
4while_lstm_cell_356_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_356_biasadd_readvariableop_resource:(??*while/lstm_cell_356/BiasAdd/ReadVariableOp?)while/lstm_cell_356/MatMul/ReadVariableOp?+while/lstm_cell_356/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_356/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_356_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_356/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_356/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_356/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_356_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_356/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_356/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_356/addAddV2$while/lstm_cell_356/MatMul:product:0&while/lstm_cell_356/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_356/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_356_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_356/BiasAddBiasAddwhile/lstm_cell_356/add:z:02while/lstm_cell_356/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_356/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_356/splitSplit,while/lstm_cell_356/split/split_dim:output:0$while/lstm_cell_356/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_356/SigmoidSigmoid"while/lstm_cell_356/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_356/Sigmoid_1Sigmoid"while/lstm_cell_356/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_356/mulMul!while/lstm_cell_356/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_356/ReluRelu"while/lstm_cell_356/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_356/mul_1Mulwhile/lstm_cell_356/Sigmoid:y:0&while/lstm_cell_356/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_356/add_1AddV2while/lstm_cell_356/mul:z:0while/lstm_cell_356/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_356/Sigmoid_2Sigmoid"while/lstm_cell_356/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_356/Relu_1Reluwhile/lstm_cell_356/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_356/mul_2Mul!while/lstm_cell_356/Sigmoid_2:y:0(while/lstm_cell_356/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_356/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_356/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_356/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_356/BiasAdd/ReadVariableOp*^while/lstm_cell_356/MatMul/ReadVariableOp,^while/lstm_cell_356/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_356_biasadd_readvariableop_resource5while_lstm_cell_356_biasadd_readvariableop_resource_0"n
4while_lstm_cell_356_matmul_1_readvariableop_resource6while_lstm_cell_356_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_356_matmul_readvariableop_resource4while_lstm_cell_356_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_356/BiasAdd/ReadVariableOp*while/lstm_cell_356/BiasAdd/ReadVariableOp2V
)while/lstm_cell_356/MatMul/ReadVariableOp)while/lstm_cell_356/MatMul/ReadVariableOp2Z
+while/lstm_cell_356/MatMul_1/ReadVariableOp+while/lstm_cell_356/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2153913
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2153913___redundant_placeholder05
1while_while_cond_2153913___redundant_placeholder15
1while_while_cond_2153913___redundant_placeholder25
1while_while_cond_2153913___redundant_placeholder3
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
J__inference_lstm_cell_355_layer_call_and_return_conditional_losses_2158491

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
while_body_2156563
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_354_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_354_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_354_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_354_matmul_readvariableop_resource:	?G
4while_lstm_cell_354_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_354_biasadd_readvariableop_resource:	???*while/lstm_cell_354/BiasAdd/ReadVariableOp?)while/lstm_cell_354/MatMul/ReadVariableOp?+while/lstm_cell_354/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_354/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_354_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_354/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_354/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_354/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_354_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_354/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_354/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_354/addAddV2$while/lstm_cell_354/MatMul:product:0&while/lstm_cell_354/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_354/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_354_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_354/BiasAddBiasAddwhile/lstm_cell_354/add:z:02while/lstm_cell_354/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_354/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_354/splitSplit,while/lstm_cell_354/split/split_dim:output:0$while/lstm_cell_354/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_354/SigmoidSigmoid"while/lstm_cell_354/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_354/Sigmoid_1Sigmoid"while/lstm_cell_354/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_354/mulMul!while/lstm_cell_354/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_354/ReluRelu"while/lstm_cell_354/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_354/mul_1Mulwhile/lstm_cell_354/Sigmoid:y:0&while/lstm_cell_354/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_354/add_1AddV2while/lstm_cell_354/mul:z:0while/lstm_cell_354/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_354/Sigmoid_2Sigmoid"while/lstm_cell_354/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_354/Relu_1Reluwhile/lstm_cell_354/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_354/mul_2Mul!while/lstm_cell_354/Sigmoid_2:y:0(while/lstm_cell_354/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_354/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_354/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_354/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_354/BiasAdd/ReadVariableOp*^while/lstm_cell_354/MatMul/ReadVariableOp,^while/lstm_cell_354/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_354_biasadd_readvariableop_resource5while_lstm_cell_354_biasadd_readvariableop_resource_0"n
4while_lstm_cell_354_matmul_1_readvariableop_resource6while_lstm_cell_354_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_354_matmul_readvariableop_resource4while_lstm_cell_354_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_354/BiasAdd/ReadVariableOp*while/lstm_cell_354/BiasAdd/ReadVariableOp2V
)while/lstm_cell_354/MatMul/ReadVariableOp)while/lstm_cell_354/MatMul/ReadVariableOp2Z
+while/lstm_cell_354/MatMul_1/ReadVariableOp+while/lstm_cell_354/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2154556
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2154556___redundant_placeholder05
1while_while_cond_2154556___redundant_placeholder15
1while_while_cond_2154556___redundant_placeholder25
1while_while_cond_2154556___redundant_placeholder3
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
lstm_156_while_cond_2155664.
*lstm_156_while_lstm_156_while_loop_counter4
0lstm_156_while_lstm_156_while_maximum_iterations
lstm_156_while_placeholder 
lstm_156_while_placeholder_1 
lstm_156_while_placeholder_2 
lstm_156_while_placeholder_30
,lstm_156_while_less_lstm_156_strided_slice_1G
Clstm_156_while_lstm_156_while_cond_2155664___redundant_placeholder0G
Clstm_156_while_lstm_156_while_cond_2155664___redundant_placeholder1G
Clstm_156_while_lstm_156_while_cond_2155664___redundant_placeholder2G
Clstm_156_while_lstm_156_while_cond_2155664___redundant_placeholder3
lstm_156_while_identity
?
lstm_156/while/LessLesslstm_156_while_placeholder,lstm_156_while_less_lstm_156_strided_slice_1*
T0*
_output_shapes
: ]
lstm_156/while/IdentityIdentitylstm_156/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_156_while_identity lstm_156/while/Identity:output:0*(
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
while_cond_2154263
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2154263___redundant_placeholder05
1while_while_cond_2154263___redundant_placeholder15
1while_while_cond_2154263___redundant_placeholder25
1while_while_cond_2154263___redundant_placeholder3
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
*__inference_dense_52_layer_call_fn_2158317

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
E__inference_dense_52_layer_call_and_return_conditional_losses_2154809o
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
while_body_2153914
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_355_2153938_0:	d?0
while_lstm_cell_355_2153940_0:	2?,
while_lstm_cell_355_2153942_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_355_2153938:	d?.
while_lstm_cell_355_2153940:	2?*
while_lstm_cell_355_2153942:	???+while/lstm_cell_355/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_355/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_355_2153938_0while_lstm_cell_355_2153940_0while_lstm_cell_355_2153942_0*
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
J__inference_lstm_cell_355_layer_call_and_return_conditional_losses_2153855?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_355/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_355/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_355/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_355/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_355_2153938while_lstm_cell_355_2153938_0"<
while_lstm_cell_355_2153940while_lstm_cell_355_2153940_0"<
while_lstm_cell_355_2153942while_lstm_cell_355_2153942_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_355/StatefulPartitionedCall+while/lstm_cell_355/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_158_layer_call_fn_2157736

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
E__inference_lstm_158_layer_call_and_return_conditional_losses_2155007o
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
while_cond_2157321
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2157321___redundant_placeholder05
1while_while_cond_2157321___redundant_placeholder15
1while_while_cond_2157321___redundant_placeholder25
1while_while_cond_2157321___redundant_placeholder3
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
)sequential_52_lstm_156_while_cond_2152923J
Fsequential_52_lstm_156_while_sequential_52_lstm_156_while_loop_counterP
Lsequential_52_lstm_156_while_sequential_52_lstm_156_while_maximum_iterations,
(sequential_52_lstm_156_while_placeholder.
*sequential_52_lstm_156_while_placeholder_1.
*sequential_52_lstm_156_while_placeholder_2.
*sequential_52_lstm_156_while_placeholder_3L
Hsequential_52_lstm_156_while_less_sequential_52_lstm_156_strided_slice_1c
_sequential_52_lstm_156_while_sequential_52_lstm_156_while_cond_2152923___redundant_placeholder0c
_sequential_52_lstm_156_while_sequential_52_lstm_156_while_cond_2152923___redundant_placeholder1c
_sequential_52_lstm_156_while_sequential_52_lstm_156_while_cond_2152923___redundant_placeholder2c
_sequential_52_lstm_156_while_sequential_52_lstm_156_while_cond_2152923___redundant_placeholder3)
%sequential_52_lstm_156_while_identity
?
!sequential_52/lstm_156/while/LessLess(sequential_52_lstm_156_while_placeholderHsequential_52_lstm_156_while_less_sequential_52_lstm_156_strided_slice_1*
T0*
_output_shapes
: y
%sequential_52/lstm_156/while/IdentityIdentity%sequential_52/lstm_156/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_52_lstm_156_while_identity.sequential_52/lstm_156/while/Identity:output:0*(
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
*__inference_lstm_157_layer_call_fn_2157120

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
E__inference_lstm_157_layer_call_and_return_conditional_losses_2155172s
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
/__inference_sequential_52_layer_call_fn_2155606

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
J__inference_sequential_52_layer_call_and_return_conditional_losses_2155405o
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
?C
?

lstm_156_while_body_2156092.
*lstm_156_while_lstm_156_while_loop_counter4
0lstm_156_while_lstm_156_while_maximum_iterations
lstm_156_while_placeholder 
lstm_156_while_placeholder_1 
lstm_156_while_placeholder_2 
lstm_156_while_placeholder_3-
)lstm_156_while_lstm_156_strided_slice_1_0i
elstm_156_while_tensorarrayv2read_tensorlistgetitem_lstm_156_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_156_while_lstm_cell_354_matmul_readvariableop_resource_0:	?R
?lstm_156_while_lstm_cell_354_matmul_1_readvariableop_resource_0:	d?M
>lstm_156_while_lstm_cell_354_biasadd_readvariableop_resource_0:	?
lstm_156_while_identity
lstm_156_while_identity_1
lstm_156_while_identity_2
lstm_156_while_identity_3
lstm_156_while_identity_4
lstm_156_while_identity_5+
'lstm_156_while_lstm_156_strided_slice_1g
clstm_156_while_tensorarrayv2read_tensorlistgetitem_lstm_156_tensorarrayunstack_tensorlistfromtensorN
;lstm_156_while_lstm_cell_354_matmul_readvariableop_resource:	?P
=lstm_156_while_lstm_cell_354_matmul_1_readvariableop_resource:	d?K
<lstm_156_while_lstm_cell_354_biasadd_readvariableop_resource:	???3lstm_156/while/lstm_cell_354/BiasAdd/ReadVariableOp?2lstm_156/while/lstm_cell_354/MatMul/ReadVariableOp?4lstm_156/while/lstm_cell_354/MatMul_1/ReadVariableOp?
@lstm_156/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_156/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_156_while_tensorarrayv2read_tensorlistgetitem_lstm_156_tensorarrayunstack_tensorlistfromtensor_0lstm_156_while_placeholderIlstm_156/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_156/while/lstm_cell_354/MatMul/ReadVariableOpReadVariableOp=lstm_156_while_lstm_cell_354_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_156/while/lstm_cell_354/MatMulMatMul9lstm_156/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_156/while/lstm_cell_354/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_156/while/lstm_cell_354/MatMul_1/ReadVariableOpReadVariableOp?lstm_156_while_lstm_cell_354_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_156/while/lstm_cell_354/MatMul_1MatMullstm_156_while_placeholder_2<lstm_156/while/lstm_cell_354/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_156/while/lstm_cell_354/addAddV2-lstm_156/while/lstm_cell_354/MatMul:product:0/lstm_156/while/lstm_cell_354/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_156/while/lstm_cell_354/BiasAdd/ReadVariableOpReadVariableOp>lstm_156_while_lstm_cell_354_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_156/while/lstm_cell_354/BiasAddBiasAdd$lstm_156/while/lstm_cell_354/add:z:0;lstm_156/while/lstm_cell_354/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_156/while/lstm_cell_354/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_156/while/lstm_cell_354/splitSplit5lstm_156/while/lstm_cell_354/split/split_dim:output:0-lstm_156/while/lstm_cell_354/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_156/while/lstm_cell_354/SigmoidSigmoid+lstm_156/while/lstm_cell_354/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_156/while/lstm_cell_354/Sigmoid_1Sigmoid+lstm_156/while/lstm_cell_354/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_156/while/lstm_cell_354/mulMul*lstm_156/while/lstm_cell_354/Sigmoid_1:y:0lstm_156_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_156/while/lstm_cell_354/ReluRelu+lstm_156/while/lstm_cell_354/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_156/while/lstm_cell_354/mul_1Mul(lstm_156/while/lstm_cell_354/Sigmoid:y:0/lstm_156/while/lstm_cell_354/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_156/while/lstm_cell_354/add_1AddV2$lstm_156/while/lstm_cell_354/mul:z:0&lstm_156/while/lstm_cell_354/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_156/while/lstm_cell_354/Sigmoid_2Sigmoid+lstm_156/while/lstm_cell_354/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_156/while/lstm_cell_354/Relu_1Relu&lstm_156/while/lstm_cell_354/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_156/while/lstm_cell_354/mul_2Mul*lstm_156/while/lstm_cell_354/Sigmoid_2:y:01lstm_156/while/lstm_cell_354/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_156/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_156_while_placeholder_1lstm_156_while_placeholder&lstm_156/while/lstm_cell_354/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_156/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_156/while/addAddV2lstm_156_while_placeholderlstm_156/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_156/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_156/while/add_1AddV2*lstm_156_while_lstm_156_while_loop_counterlstm_156/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_156/while/IdentityIdentitylstm_156/while/add_1:z:0^lstm_156/while/NoOp*
T0*
_output_shapes
: ?
lstm_156/while/Identity_1Identity0lstm_156_while_lstm_156_while_maximum_iterations^lstm_156/while/NoOp*
T0*
_output_shapes
: t
lstm_156/while/Identity_2Identitylstm_156/while/add:z:0^lstm_156/while/NoOp*
T0*
_output_shapes
: ?
lstm_156/while/Identity_3IdentityClstm_156/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_156/while/NoOp*
T0*
_output_shapes
: ?
lstm_156/while/Identity_4Identity&lstm_156/while/lstm_cell_354/mul_2:z:0^lstm_156/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_156/while/Identity_5Identity&lstm_156/while/lstm_cell_354/add_1:z:0^lstm_156/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_156/while/NoOpNoOp4^lstm_156/while/lstm_cell_354/BiasAdd/ReadVariableOp3^lstm_156/while/lstm_cell_354/MatMul/ReadVariableOp5^lstm_156/while/lstm_cell_354/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_156_while_identity lstm_156/while/Identity:output:0"?
lstm_156_while_identity_1"lstm_156/while/Identity_1:output:0"?
lstm_156_while_identity_2"lstm_156/while/Identity_2:output:0"?
lstm_156_while_identity_3"lstm_156/while/Identity_3:output:0"?
lstm_156_while_identity_4"lstm_156/while/Identity_4:output:0"?
lstm_156_while_identity_5"lstm_156/while/Identity_5:output:0"T
'lstm_156_while_lstm_156_strided_slice_1)lstm_156_while_lstm_156_strided_slice_1_0"~
<lstm_156_while_lstm_cell_354_biasadd_readvariableop_resource>lstm_156_while_lstm_cell_354_biasadd_readvariableop_resource_0"?
=lstm_156_while_lstm_cell_354_matmul_1_readvariableop_resource?lstm_156_while_lstm_cell_354_matmul_1_readvariableop_resource_0"|
;lstm_156_while_lstm_cell_354_matmul_readvariableop_resource=lstm_156_while_lstm_cell_354_matmul_readvariableop_resource_0"?
clstm_156_while_tensorarrayv2read_tensorlistgetitem_lstm_156_tensorarrayunstack_tensorlistfromtensorelstm_156_while_tensorarrayv2read_tensorlistgetitem_lstm_156_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_156/while/lstm_cell_354/BiasAdd/ReadVariableOp3lstm_156/while/lstm_cell_354/BiasAdd/ReadVariableOp2h
2lstm_156/while/lstm_cell_354/MatMul/ReadVariableOp2lstm_156/while/lstm_cell_354/MatMul/ReadVariableOp2l
4lstm_156/while/lstm_cell_354/MatMul_1/ReadVariableOp4lstm_156/while/lstm_cell_354/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_156_layer_call_and_return_conditional_losses_2156647
inputs_0?
,lstm_cell_354_matmul_readvariableop_resource:	?A
.lstm_cell_354_matmul_1_readvariableop_resource:	d?<
-lstm_cell_354_biasadd_readvariableop_resource:	?
identity??$lstm_cell_354/BiasAdd/ReadVariableOp?#lstm_cell_354/MatMul/ReadVariableOp?%lstm_cell_354/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_354/MatMul/ReadVariableOpReadVariableOp,lstm_cell_354_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_354/MatMulMatMulstrided_slice_2:output:0+lstm_cell_354/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_354/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_354_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_354/MatMul_1MatMulzeros:output:0-lstm_cell_354/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_354/addAddV2lstm_cell_354/MatMul:product:0 lstm_cell_354/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_354/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_354_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_354/BiasAddBiasAddlstm_cell_354/add:z:0,lstm_cell_354/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_354/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_354/splitSplit&lstm_cell_354/split/split_dim:output:0lstm_cell_354/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_354/SigmoidSigmoidlstm_cell_354/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_354/Sigmoid_1Sigmoidlstm_cell_354/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_354/mulMullstm_cell_354/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_354/ReluRelulstm_cell_354/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_354/mul_1Mullstm_cell_354/Sigmoid:y:0 lstm_cell_354/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_354/add_1AddV2lstm_cell_354/mul:z:0lstm_cell_354/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_354/Sigmoid_2Sigmoidlstm_cell_354/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_354/Relu_1Relulstm_cell_354/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_354/mul_2Mullstm_cell_354/Sigmoid_2:y:0"lstm_cell_354/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_354_matmul_readvariableop_resource.lstm_cell_354_matmul_1_readvariableop_resource-lstm_cell_354_biasadd_readvariableop_resource*
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
while_body_2156563*
condR
while_cond_2156562*K
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
NoOpNoOp%^lstm_cell_354/BiasAdd/ReadVariableOp$^lstm_cell_354/MatMul/ReadVariableOp&^lstm_cell_354/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_354/BiasAdd/ReadVariableOp$lstm_cell_354/BiasAdd/ReadVariableOp2J
#lstm_cell_354/MatMul/ReadVariableOp#lstm_cell_354/MatMul/ReadVariableOp2N
%lstm_cell_354/MatMul_1/ReadVariableOp%lstm_cell_354/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_158_layer_call_and_return_conditional_losses_2154791

inputs>
,lstm_cell_356_matmul_readvariableop_resource:2(@
.lstm_cell_356_matmul_1_readvariableop_resource:
(;
-lstm_cell_356_biasadd_readvariableop_resource:(
identity??$lstm_cell_356/BiasAdd/ReadVariableOp?#lstm_cell_356/MatMul/ReadVariableOp?%lstm_cell_356/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_356/MatMul/ReadVariableOpReadVariableOp,lstm_cell_356_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_356/MatMulMatMulstrided_slice_2:output:0+lstm_cell_356/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_356/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_356_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_356/MatMul_1MatMulzeros:output:0-lstm_cell_356/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_356/addAddV2lstm_cell_356/MatMul:product:0 lstm_cell_356/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_356/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_356_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_356/BiasAddBiasAddlstm_cell_356/add:z:0,lstm_cell_356/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_356/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_356/splitSplit&lstm_cell_356/split/split_dim:output:0lstm_cell_356/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_356/SigmoidSigmoidlstm_cell_356/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_356/Sigmoid_1Sigmoidlstm_cell_356/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_356/mulMullstm_cell_356/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_356/ReluRelulstm_cell_356/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_356/mul_1Mullstm_cell_356/Sigmoid:y:0 lstm_cell_356/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_356/add_1AddV2lstm_cell_356/mul:z:0lstm_cell_356/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_356/Sigmoid_2Sigmoidlstm_cell_356/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_356/Relu_1Relulstm_cell_356/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_356/mul_2Mullstm_cell_356/Sigmoid_2:y:0"lstm_cell_356/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_356_matmul_readvariableop_resource.lstm_cell_356_matmul_1_readvariableop_resource-lstm_cell_356_biasadd_readvariableop_resource*
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
while_body_2154707*
condR
while_cond_2154706*K
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
NoOpNoOp%^lstm_cell_356/BiasAdd/ReadVariableOp$^lstm_cell_356/MatMul/ReadVariableOp&^lstm_cell_356/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_356/BiasAdd/ReadVariableOp$lstm_cell_356/BiasAdd/ReadVariableOp2J
#lstm_cell_356/MatMul/ReadVariableOp#lstm_cell_356/MatMul/ReadVariableOp2N
%lstm_cell_356/MatMul_1/ReadVariableOp%lstm_cell_356/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?C
?

lstm_156_while_body_2155665.
*lstm_156_while_lstm_156_while_loop_counter4
0lstm_156_while_lstm_156_while_maximum_iterations
lstm_156_while_placeholder 
lstm_156_while_placeholder_1 
lstm_156_while_placeholder_2 
lstm_156_while_placeholder_3-
)lstm_156_while_lstm_156_strided_slice_1_0i
elstm_156_while_tensorarrayv2read_tensorlistgetitem_lstm_156_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_156_while_lstm_cell_354_matmul_readvariableop_resource_0:	?R
?lstm_156_while_lstm_cell_354_matmul_1_readvariableop_resource_0:	d?M
>lstm_156_while_lstm_cell_354_biasadd_readvariableop_resource_0:	?
lstm_156_while_identity
lstm_156_while_identity_1
lstm_156_while_identity_2
lstm_156_while_identity_3
lstm_156_while_identity_4
lstm_156_while_identity_5+
'lstm_156_while_lstm_156_strided_slice_1g
clstm_156_while_tensorarrayv2read_tensorlistgetitem_lstm_156_tensorarrayunstack_tensorlistfromtensorN
;lstm_156_while_lstm_cell_354_matmul_readvariableop_resource:	?P
=lstm_156_while_lstm_cell_354_matmul_1_readvariableop_resource:	d?K
<lstm_156_while_lstm_cell_354_biasadd_readvariableop_resource:	???3lstm_156/while/lstm_cell_354/BiasAdd/ReadVariableOp?2lstm_156/while/lstm_cell_354/MatMul/ReadVariableOp?4lstm_156/while/lstm_cell_354/MatMul_1/ReadVariableOp?
@lstm_156/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_156/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_156_while_tensorarrayv2read_tensorlistgetitem_lstm_156_tensorarrayunstack_tensorlistfromtensor_0lstm_156_while_placeholderIlstm_156/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_156/while/lstm_cell_354/MatMul/ReadVariableOpReadVariableOp=lstm_156_while_lstm_cell_354_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_156/while/lstm_cell_354/MatMulMatMul9lstm_156/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_156/while/lstm_cell_354/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_156/while/lstm_cell_354/MatMul_1/ReadVariableOpReadVariableOp?lstm_156_while_lstm_cell_354_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_156/while/lstm_cell_354/MatMul_1MatMullstm_156_while_placeholder_2<lstm_156/while/lstm_cell_354/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_156/while/lstm_cell_354/addAddV2-lstm_156/while/lstm_cell_354/MatMul:product:0/lstm_156/while/lstm_cell_354/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_156/while/lstm_cell_354/BiasAdd/ReadVariableOpReadVariableOp>lstm_156_while_lstm_cell_354_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_156/while/lstm_cell_354/BiasAddBiasAdd$lstm_156/while/lstm_cell_354/add:z:0;lstm_156/while/lstm_cell_354/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_156/while/lstm_cell_354/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_156/while/lstm_cell_354/splitSplit5lstm_156/while/lstm_cell_354/split/split_dim:output:0-lstm_156/while/lstm_cell_354/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_156/while/lstm_cell_354/SigmoidSigmoid+lstm_156/while/lstm_cell_354/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_156/while/lstm_cell_354/Sigmoid_1Sigmoid+lstm_156/while/lstm_cell_354/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_156/while/lstm_cell_354/mulMul*lstm_156/while/lstm_cell_354/Sigmoid_1:y:0lstm_156_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_156/while/lstm_cell_354/ReluRelu+lstm_156/while/lstm_cell_354/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_156/while/lstm_cell_354/mul_1Mul(lstm_156/while/lstm_cell_354/Sigmoid:y:0/lstm_156/while/lstm_cell_354/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_156/while/lstm_cell_354/add_1AddV2$lstm_156/while/lstm_cell_354/mul:z:0&lstm_156/while/lstm_cell_354/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_156/while/lstm_cell_354/Sigmoid_2Sigmoid+lstm_156/while/lstm_cell_354/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_156/while/lstm_cell_354/Relu_1Relu&lstm_156/while/lstm_cell_354/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_156/while/lstm_cell_354/mul_2Mul*lstm_156/while/lstm_cell_354/Sigmoid_2:y:01lstm_156/while/lstm_cell_354/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_156/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_156_while_placeholder_1lstm_156_while_placeholder&lstm_156/while/lstm_cell_354/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_156/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_156/while/addAddV2lstm_156_while_placeholderlstm_156/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_156/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_156/while/add_1AddV2*lstm_156_while_lstm_156_while_loop_counterlstm_156/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_156/while/IdentityIdentitylstm_156/while/add_1:z:0^lstm_156/while/NoOp*
T0*
_output_shapes
: ?
lstm_156/while/Identity_1Identity0lstm_156_while_lstm_156_while_maximum_iterations^lstm_156/while/NoOp*
T0*
_output_shapes
: t
lstm_156/while/Identity_2Identitylstm_156/while/add:z:0^lstm_156/while/NoOp*
T0*
_output_shapes
: ?
lstm_156/while/Identity_3IdentityClstm_156/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_156/while/NoOp*
T0*
_output_shapes
: ?
lstm_156/while/Identity_4Identity&lstm_156/while/lstm_cell_354/mul_2:z:0^lstm_156/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_156/while/Identity_5Identity&lstm_156/while/lstm_cell_354/add_1:z:0^lstm_156/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_156/while/NoOpNoOp4^lstm_156/while/lstm_cell_354/BiasAdd/ReadVariableOp3^lstm_156/while/lstm_cell_354/MatMul/ReadVariableOp5^lstm_156/while/lstm_cell_354/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_156_while_identity lstm_156/while/Identity:output:0"?
lstm_156_while_identity_1"lstm_156/while/Identity_1:output:0"?
lstm_156_while_identity_2"lstm_156/while/Identity_2:output:0"?
lstm_156_while_identity_3"lstm_156/while/Identity_3:output:0"?
lstm_156_while_identity_4"lstm_156/while/Identity_4:output:0"?
lstm_156_while_identity_5"lstm_156/while/Identity_5:output:0"T
'lstm_156_while_lstm_156_strided_slice_1)lstm_156_while_lstm_156_strided_slice_1_0"~
<lstm_156_while_lstm_cell_354_biasadd_readvariableop_resource>lstm_156_while_lstm_cell_354_biasadd_readvariableop_resource_0"?
=lstm_156_while_lstm_cell_354_matmul_1_readvariableop_resource?lstm_156_while_lstm_cell_354_matmul_1_readvariableop_resource_0"|
;lstm_156_while_lstm_cell_354_matmul_readvariableop_resource=lstm_156_while_lstm_cell_354_matmul_readvariableop_resource_0"?
clstm_156_while_tensorarrayv2read_tensorlistgetitem_lstm_156_tensorarrayunstack_tensorlistfromtensorelstm_156_while_tensorarrayv2read_tensorlistgetitem_lstm_156_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_156/while/lstm_cell_354/BiasAdd/ReadVariableOp3lstm_156/while/lstm_cell_354/BiasAdd/ReadVariableOp2h
2lstm_156/while/lstm_cell_354/MatMul/ReadVariableOp2lstm_156/while/lstm_cell_354/MatMul/ReadVariableOp2l
4lstm_156/while/lstm_cell_354/MatMul_1/ReadVariableOp4lstm_156/while/lstm_cell_354/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_157_while_body_2156231.
*lstm_157_while_lstm_157_while_loop_counter4
0lstm_157_while_lstm_157_while_maximum_iterations
lstm_157_while_placeholder 
lstm_157_while_placeholder_1 
lstm_157_while_placeholder_2 
lstm_157_while_placeholder_3-
)lstm_157_while_lstm_157_strided_slice_1_0i
elstm_157_while_tensorarrayv2read_tensorlistgetitem_lstm_157_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_157_while_lstm_cell_355_matmul_readvariableop_resource_0:	d?R
?lstm_157_while_lstm_cell_355_matmul_1_readvariableop_resource_0:	2?M
>lstm_157_while_lstm_cell_355_biasadd_readvariableop_resource_0:	?
lstm_157_while_identity
lstm_157_while_identity_1
lstm_157_while_identity_2
lstm_157_while_identity_3
lstm_157_while_identity_4
lstm_157_while_identity_5+
'lstm_157_while_lstm_157_strided_slice_1g
clstm_157_while_tensorarrayv2read_tensorlistgetitem_lstm_157_tensorarrayunstack_tensorlistfromtensorN
;lstm_157_while_lstm_cell_355_matmul_readvariableop_resource:	d?P
=lstm_157_while_lstm_cell_355_matmul_1_readvariableop_resource:	2?K
<lstm_157_while_lstm_cell_355_biasadd_readvariableop_resource:	???3lstm_157/while/lstm_cell_355/BiasAdd/ReadVariableOp?2lstm_157/while/lstm_cell_355/MatMul/ReadVariableOp?4lstm_157/while/lstm_cell_355/MatMul_1/ReadVariableOp?
@lstm_157/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_157/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_157_while_tensorarrayv2read_tensorlistgetitem_lstm_157_tensorarrayunstack_tensorlistfromtensor_0lstm_157_while_placeholderIlstm_157/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_157/while/lstm_cell_355/MatMul/ReadVariableOpReadVariableOp=lstm_157_while_lstm_cell_355_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_157/while/lstm_cell_355/MatMulMatMul9lstm_157/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_157/while/lstm_cell_355/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_157/while/lstm_cell_355/MatMul_1/ReadVariableOpReadVariableOp?lstm_157_while_lstm_cell_355_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_157/while/lstm_cell_355/MatMul_1MatMullstm_157_while_placeholder_2<lstm_157/while/lstm_cell_355/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_157/while/lstm_cell_355/addAddV2-lstm_157/while/lstm_cell_355/MatMul:product:0/lstm_157/while/lstm_cell_355/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_157/while/lstm_cell_355/BiasAdd/ReadVariableOpReadVariableOp>lstm_157_while_lstm_cell_355_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_157/while/lstm_cell_355/BiasAddBiasAdd$lstm_157/while/lstm_cell_355/add:z:0;lstm_157/while/lstm_cell_355/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_157/while/lstm_cell_355/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_157/while/lstm_cell_355/splitSplit5lstm_157/while/lstm_cell_355/split/split_dim:output:0-lstm_157/while/lstm_cell_355/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_157/while/lstm_cell_355/SigmoidSigmoid+lstm_157/while/lstm_cell_355/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_157/while/lstm_cell_355/Sigmoid_1Sigmoid+lstm_157/while/lstm_cell_355/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_157/while/lstm_cell_355/mulMul*lstm_157/while/lstm_cell_355/Sigmoid_1:y:0lstm_157_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_157/while/lstm_cell_355/ReluRelu+lstm_157/while/lstm_cell_355/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_157/while/lstm_cell_355/mul_1Mul(lstm_157/while/lstm_cell_355/Sigmoid:y:0/lstm_157/while/lstm_cell_355/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_157/while/lstm_cell_355/add_1AddV2$lstm_157/while/lstm_cell_355/mul:z:0&lstm_157/while/lstm_cell_355/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_157/while/lstm_cell_355/Sigmoid_2Sigmoid+lstm_157/while/lstm_cell_355/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_157/while/lstm_cell_355/Relu_1Relu&lstm_157/while/lstm_cell_355/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_157/while/lstm_cell_355/mul_2Mul*lstm_157/while/lstm_cell_355/Sigmoid_2:y:01lstm_157/while/lstm_cell_355/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_157/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_157_while_placeholder_1lstm_157_while_placeholder&lstm_157/while/lstm_cell_355/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_157/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_157/while/addAddV2lstm_157_while_placeholderlstm_157/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_157/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_157/while/add_1AddV2*lstm_157_while_lstm_157_while_loop_counterlstm_157/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_157/while/IdentityIdentitylstm_157/while/add_1:z:0^lstm_157/while/NoOp*
T0*
_output_shapes
: ?
lstm_157/while/Identity_1Identity0lstm_157_while_lstm_157_while_maximum_iterations^lstm_157/while/NoOp*
T0*
_output_shapes
: t
lstm_157/while/Identity_2Identitylstm_157/while/add:z:0^lstm_157/while/NoOp*
T0*
_output_shapes
: ?
lstm_157/while/Identity_3IdentityClstm_157/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_157/while/NoOp*
T0*
_output_shapes
: ?
lstm_157/while/Identity_4Identity&lstm_157/while/lstm_cell_355/mul_2:z:0^lstm_157/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_157/while/Identity_5Identity&lstm_157/while/lstm_cell_355/add_1:z:0^lstm_157/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_157/while/NoOpNoOp4^lstm_157/while/lstm_cell_355/BiasAdd/ReadVariableOp3^lstm_157/while/lstm_cell_355/MatMul/ReadVariableOp5^lstm_157/while/lstm_cell_355/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_157_while_identity lstm_157/while/Identity:output:0"?
lstm_157_while_identity_1"lstm_157/while/Identity_1:output:0"?
lstm_157_while_identity_2"lstm_157/while/Identity_2:output:0"?
lstm_157_while_identity_3"lstm_157/while/Identity_3:output:0"?
lstm_157_while_identity_4"lstm_157/while/Identity_4:output:0"?
lstm_157_while_identity_5"lstm_157/while/Identity_5:output:0"T
'lstm_157_while_lstm_157_strided_slice_1)lstm_157_while_lstm_157_strided_slice_1_0"~
<lstm_157_while_lstm_cell_355_biasadd_readvariableop_resource>lstm_157_while_lstm_cell_355_biasadd_readvariableop_resource_0"?
=lstm_157_while_lstm_cell_355_matmul_1_readvariableop_resource?lstm_157_while_lstm_cell_355_matmul_1_readvariableop_resource_0"|
;lstm_157_while_lstm_cell_355_matmul_readvariableop_resource=lstm_157_while_lstm_cell_355_matmul_readvariableop_resource_0"?
clstm_157_while_tensorarrayv2read_tensorlistgetitem_lstm_157_tensorarrayunstack_tensorlistfromtensorelstm_157_while_tensorarrayv2read_tensorlistgetitem_lstm_157_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_157/while/lstm_cell_355/BiasAdd/ReadVariableOp3lstm_157/while/lstm_cell_355/BiasAdd/ReadVariableOp2h
2lstm_157/while/lstm_cell_355/MatMul/ReadVariableOp2lstm_157/while/lstm_cell_355/MatMul/ReadVariableOp2l
4lstm_157/while/lstm_cell_355/MatMul_1/ReadVariableOp4lstm_157/while/lstm_cell_355/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_157_layer_call_and_return_conditional_losses_2157406
inputs_0?
,lstm_cell_355_matmul_readvariableop_resource:	d?A
.lstm_cell_355_matmul_1_readvariableop_resource:	2?<
-lstm_cell_355_biasadd_readvariableop_resource:	?
identity??$lstm_cell_355/BiasAdd/ReadVariableOp?#lstm_cell_355/MatMul/ReadVariableOp?%lstm_cell_355/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_355/MatMul/ReadVariableOpReadVariableOp,lstm_cell_355_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_355/MatMulMatMulstrided_slice_2:output:0+lstm_cell_355/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_355/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_355_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_355/MatMul_1MatMulzeros:output:0-lstm_cell_355/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_355/addAddV2lstm_cell_355/MatMul:product:0 lstm_cell_355/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_355/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_355_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_355/BiasAddBiasAddlstm_cell_355/add:z:0,lstm_cell_355/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_355/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_355/splitSplit&lstm_cell_355/split/split_dim:output:0lstm_cell_355/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_355/SigmoidSigmoidlstm_cell_355/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_355/Sigmoid_1Sigmoidlstm_cell_355/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_355/mulMullstm_cell_355/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_355/ReluRelulstm_cell_355/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_355/mul_1Mullstm_cell_355/Sigmoid:y:0 lstm_cell_355/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_355/add_1AddV2lstm_cell_355/mul:z:0lstm_cell_355/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_355/Sigmoid_2Sigmoidlstm_cell_355/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_355/Relu_1Relulstm_cell_355/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_355/mul_2Mullstm_cell_355/Sigmoid_2:y:0"lstm_cell_355/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_355_matmul_readvariableop_resource.lstm_cell_355_matmul_1_readvariableop_resource-lstm_cell_355_biasadd_readvariableop_resource*
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
while_body_2157322*
condR
while_cond_2157321*K
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
NoOpNoOp%^lstm_cell_355/BiasAdd/ReadVariableOp$^lstm_cell_355/MatMul/ReadVariableOp&^lstm_cell_355/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_355/BiasAdd/ReadVariableOp$lstm_cell_355/BiasAdd/ReadVariableOp2J
#lstm_cell_355/MatMul/ReadVariableOp#lstm_cell_355/MatMul/ReadVariableOp2N
%lstm_cell_355/MatMul_1/ReadVariableOp%lstm_cell_355/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_158_layer_call_and_return_conditional_losses_2158165

inputs>
,lstm_cell_356_matmul_readvariableop_resource:2(@
.lstm_cell_356_matmul_1_readvariableop_resource:
(;
-lstm_cell_356_biasadd_readvariableop_resource:(
identity??$lstm_cell_356/BiasAdd/ReadVariableOp?#lstm_cell_356/MatMul/ReadVariableOp?%lstm_cell_356/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_356/MatMul/ReadVariableOpReadVariableOp,lstm_cell_356_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_356/MatMulMatMulstrided_slice_2:output:0+lstm_cell_356/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_356/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_356_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_356/MatMul_1MatMulzeros:output:0-lstm_cell_356/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_356/addAddV2lstm_cell_356/MatMul:product:0 lstm_cell_356/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_356/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_356_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_356/BiasAddBiasAddlstm_cell_356/add:z:0,lstm_cell_356/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_356/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_356/splitSplit&lstm_cell_356/split/split_dim:output:0lstm_cell_356/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_356/SigmoidSigmoidlstm_cell_356/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_356/Sigmoid_1Sigmoidlstm_cell_356/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_356/mulMullstm_cell_356/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_356/ReluRelulstm_cell_356/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_356/mul_1Mullstm_cell_356/Sigmoid:y:0 lstm_cell_356/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_356/add_1AddV2lstm_cell_356/mul:z:0lstm_cell_356/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_356/Sigmoid_2Sigmoidlstm_cell_356/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_356/Relu_1Relulstm_cell_356/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_356/mul_2Mullstm_cell_356/Sigmoid_2:y:0"lstm_cell_356/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_356_matmul_readvariableop_resource.lstm_cell_356_matmul_1_readvariableop_resource-lstm_cell_356_biasadd_readvariableop_resource*
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
while_body_2158081*
condR
while_cond_2158080*K
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
NoOpNoOp%^lstm_cell_356/BiasAdd/ReadVariableOp$^lstm_cell_356/MatMul/ReadVariableOp&^lstm_cell_356/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_356/BiasAdd/ReadVariableOp$lstm_cell_356/BiasAdd/ReadVariableOp2J
#lstm_cell_356/MatMul/ReadVariableOp#lstm_cell_356/MatMul/ReadVariableOp2N
%lstm_cell_356/MatMul_1/ReadVariableOp%lstm_cell_356/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_2153563
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2153563___redundant_placeholder05
1while_while_cond_2153563___redundant_placeholder15
1while_while_cond_2153563___redundant_placeholder25
1while_while_cond_2153563___redundant_placeholder3
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
*__inference_lstm_158_layer_call_fn_2157703
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
E__inference_lstm_158_layer_call_and_return_conditional_losses_2154142o
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
E__inference_lstm_156_layer_call_and_return_conditional_losses_2154491

inputs?
,lstm_cell_354_matmul_readvariableop_resource:	?A
.lstm_cell_354_matmul_1_readvariableop_resource:	d?<
-lstm_cell_354_biasadd_readvariableop_resource:	?
identity??$lstm_cell_354/BiasAdd/ReadVariableOp?#lstm_cell_354/MatMul/ReadVariableOp?%lstm_cell_354/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_354/MatMul/ReadVariableOpReadVariableOp,lstm_cell_354_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_354/MatMulMatMulstrided_slice_2:output:0+lstm_cell_354/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_354/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_354_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_354/MatMul_1MatMulzeros:output:0-lstm_cell_354/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_354/addAddV2lstm_cell_354/MatMul:product:0 lstm_cell_354/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_354/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_354_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_354/BiasAddBiasAddlstm_cell_354/add:z:0,lstm_cell_354/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_354/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_354/splitSplit&lstm_cell_354/split/split_dim:output:0lstm_cell_354/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_354/SigmoidSigmoidlstm_cell_354/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_354/Sigmoid_1Sigmoidlstm_cell_354/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_354/mulMullstm_cell_354/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_354/ReluRelulstm_cell_354/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_354/mul_1Mullstm_cell_354/Sigmoid:y:0 lstm_cell_354/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_354/add_1AddV2lstm_cell_354/mul:z:0lstm_cell_354/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_354/Sigmoid_2Sigmoidlstm_cell_354/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_354/Relu_1Relulstm_cell_354/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_354/mul_2Mullstm_cell_354/Sigmoid_2:y:0"lstm_cell_354/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_354_matmul_readvariableop_resource.lstm_cell_354_matmul_1_readvariableop_resource-lstm_cell_354_biasadd_readvariableop_resource*
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
while_body_2154407*
condR
while_cond_2154406*K
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
NoOpNoOp%^lstm_cell_354/BiasAdd/ReadVariableOp$^lstm_cell_354/MatMul/ReadVariableOp&^lstm_cell_354/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_354/BiasAdd/ReadVariableOp$lstm_cell_354/BiasAdd/ReadVariableOp2J
#lstm_cell_354/MatMul/ReadVariableOp#lstm_cell_354/MatMul/ReadVariableOp2N
%lstm_cell_354/MatMul_1/ReadVariableOp%lstm_cell_354/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_2156706
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_354_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_354_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_354_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_354_matmul_readvariableop_resource:	?G
4while_lstm_cell_354_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_354_biasadd_readvariableop_resource:	???*while/lstm_cell_354/BiasAdd/ReadVariableOp?)while/lstm_cell_354/MatMul/ReadVariableOp?+while/lstm_cell_354/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_354/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_354_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_354/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_354/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_354/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_354_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_354/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_354/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_354/addAddV2$while/lstm_cell_354/MatMul:product:0&while/lstm_cell_354/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_354/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_354_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_354/BiasAddBiasAddwhile/lstm_cell_354/add:z:02while/lstm_cell_354/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_354/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_354/splitSplit,while/lstm_cell_354/split/split_dim:output:0$while/lstm_cell_354/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_354/SigmoidSigmoid"while/lstm_cell_354/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_354/Sigmoid_1Sigmoid"while/lstm_cell_354/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_354/mulMul!while/lstm_cell_354/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_354/ReluRelu"while/lstm_cell_354/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_354/mul_1Mulwhile/lstm_cell_354/Sigmoid:y:0&while/lstm_cell_354/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_354/add_1AddV2while/lstm_cell_354/mul:z:0while/lstm_cell_354/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_354/Sigmoid_2Sigmoid"while/lstm_cell_354/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_354/Relu_1Reluwhile/lstm_cell_354/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_354/mul_2Mul!while/lstm_cell_354/Sigmoid_2:y:0(while/lstm_cell_354/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_354/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_354/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_354/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_354/BiasAdd/ReadVariableOp*^while/lstm_cell_354/MatMul/ReadVariableOp,^while/lstm_cell_354/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_354_biasadd_readvariableop_resource5while_lstm_cell_354_biasadd_readvariableop_resource_0"n
4while_lstm_cell_354_matmul_1_readvariableop_resource6while_lstm_cell_354_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_354_matmul_readvariableop_resource4while_lstm_cell_354_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_354/BiasAdd/ReadVariableOp*while/lstm_cell_354/BiasAdd/ReadVariableOp2V
)while/lstm_cell_354/MatMul/ReadVariableOp)while/lstm_cell_354/MatMul/ReadVariableOp2Z
+while/lstm_cell_354/MatMul_1/ReadVariableOp+while/lstm_cell_354/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_157_layer_call_fn_2157087
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
E__inference_lstm_157_layer_call_and_return_conditional_losses_2153792|
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
while_body_2154557
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_355_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_355_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_355_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_355_matmul_readvariableop_resource:	d?G
4while_lstm_cell_355_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_355_biasadd_readvariableop_resource:	???*while/lstm_cell_355/BiasAdd/ReadVariableOp?)while/lstm_cell_355/MatMul/ReadVariableOp?+while/lstm_cell_355/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_355/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_355_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_355/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_355/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_355/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_355_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_355/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_355/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_355/addAddV2$while/lstm_cell_355/MatMul:product:0&while/lstm_cell_355/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_355/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_355_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_355/BiasAddBiasAddwhile/lstm_cell_355/add:z:02while/lstm_cell_355/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_355/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_355/splitSplit,while/lstm_cell_355/split/split_dim:output:0$while/lstm_cell_355/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_355/SigmoidSigmoid"while/lstm_cell_355/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_355/Sigmoid_1Sigmoid"while/lstm_cell_355/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_355/mulMul!while/lstm_cell_355/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_355/ReluRelu"while/lstm_cell_355/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_355/mul_1Mulwhile/lstm_cell_355/Sigmoid:y:0&while/lstm_cell_355/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_355/add_1AddV2while/lstm_cell_355/mul:z:0while/lstm_cell_355/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_355/Sigmoid_2Sigmoid"while/lstm_cell_355/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_355/Relu_1Reluwhile/lstm_cell_355/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_355/mul_2Mul!while/lstm_cell_355/Sigmoid_2:y:0(while/lstm_cell_355/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_355/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_355/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_355/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_355/BiasAdd/ReadVariableOp*^while/lstm_cell_355/MatMul/ReadVariableOp,^while/lstm_cell_355/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_355_biasadd_readvariableop_resource5while_lstm_cell_355_biasadd_readvariableop_resource_0"n
4while_lstm_cell_355_matmul_1_readvariableop_resource6while_lstm_cell_355_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_355_matmul_readvariableop_resource4while_lstm_cell_355_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_355/BiasAdd/ReadVariableOp*while/lstm_cell_355/BiasAdd/ReadVariableOp2V
)while/lstm_cell_355/MatMul/ReadVariableOp)while/lstm_cell_355/MatMul/ReadVariableOp2Z
+while/lstm_cell_355/MatMul_1/ReadVariableOp+while/lstm_cell_355/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_52_layer_call_and_return_conditional_losses_2156033

inputsH
5lstm_156_lstm_cell_354_matmul_readvariableop_resource:	?J
7lstm_156_lstm_cell_354_matmul_1_readvariableop_resource:	d?E
6lstm_156_lstm_cell_354_biasadd_readvariableop_resource:	?H
5lstm_157_lstm_cell_355_matmul_readvariableop_resource:	d?J
7lstm_157_lstm_cell_355_matmul_1_readvariableop_resource:	2?E
6lstm_157_lstm_cell_355_biasadd_readvariableop_resource:	?G
5lstm_158_lstm_cell_356_matmul_readvariableop_resource:2(I
7lstm_158_lstm_cell_356_matmul_1_readvariableop_resource:
(D
6lstm_158_lstm_cell_356_biasadd_readvariableop_resource:(9
'dense_52_matmul_readvariableop_resource:
6
(dense_52_biasadd_readvariableop_resource:
identity??dense_52/BiasAdd/ReadVariableOp?dense_52/MatMul/ReadVariableOp?-lstm_156/lstm_cell_354/BiasAdd/ReadVariableOp?,lstm_156/lstm_cell_354/MatMul/ReadVariableOp?.lstm_156/lstm_cell_354/MatMul_1/ReadVariableOp?lstm_156/while?-lstm_157/lstm_cell_355/BiasAdd/ReadVariableOp?,lstm_157/lstm_cell_355/MatMul/ReadVariableOp?.lstm_157/lstm_cell_355/MatMul_1/ReadVariableOp?lstm_157/while?-lstm_158/lstm_cell_356/BiasAdd/ReadVariableOp?,lstm_158/lstm_cell_356/MatMul/ReadVariableOp?.lstm_158/lstm_cell_356/MatMul_1/ReadVariableOp?lstm_158/whileD
lstm_156/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_156/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_156/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_156/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_156/strided_sliceStridedSlicelstm_156/Shape:output:0%lstm_156/strided_slice/stack:output:0'lstm_156/strided_slice/stack_1:output:0'lstm_156/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_156/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_156/zeros/packedPacklstm_156/strided_slice:output:0 lstm_156/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_156/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_156/zerosFilllstm_156/zeros/packed:output:0lstm_156/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_156/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_156/zeros_1/packedPacklstm_156/strided_slice:output:0"lstm_156/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_156/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_156/zeros_1Fill lstm_156/zeros_1/packed:output:0lstm_156/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_156/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_156/transpose	Transposeinputs lstm_156/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_156/Shape_1Shapelstm_156/transpose:y:0*
T0*
_output_shapes
:h
lstm_156/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_156/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_156/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_156/strided_slice_1StridedSlicelstm_156/Shape_1:output:0'lstm_156/strided_slice_1/stack:output:0)lstm_156/strided_slice_1/stack_1:output:0)lstm_156/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_156/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_156/TensorArrayV2TensorListReserve-lstm_156/TensorArrayV2/element_shape:output:0!lstm_156/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_156/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_156/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_156/transpose:y:0Glstm_156/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_156/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_156/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_156/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_156/strided_slice_2StridedSlicelstm_156/transpose:y:0'lstm_156/strided_slice_2/stack:output:0)lstm_156/strided_slice_2/stack_1:output:0)lstm_156/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_156/lstm_cell_354/MatMul/ReadVariableOpReadVariableOp5lstm_156_lstm_cell_354_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_156/lstm_cell_354/MatMulMatMul!lstm_156/strided_slice_2:output:04lstm_156/lstm_cell_354/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_156/lstm_cell_354/MatMul_1/ReadVariableOpReadVariableOp7lstm_156_lstm_cell_354_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_156/lstm_cell_354/MatMul_1MatMullstm_156/zeros:output:06lstm_156/lstm_cell_354/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_156/lstm_cell_354/addAddV2'lstm_156/lstm_cell_354/MatMul:product:0)lstm_156/lstm_cell_354/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_156/lstm_cell_354/BiasAdd/ReadVariableOpReadVariableOp6lstm_156_lstm_cell_354_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_156/lstm_cell_354/BiasAddBiasAddlstm_156/lstm_cell_354/add:z:05lstm_156/lstm_cell_354/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_156/lstm_cell_354/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_156/lstm_cell_354/splitSplit/lstm_156/lstm_cell_354/split/split_dim:output:0'lstm_156/lstm_cell_354/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_156/lstm_cell_354/SigmoidSigmoid%lstm_156/lstm_cell_354/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_156/lstm_cell_354/Sigmoid_1Sigmoid%lstm_156/lstm_cell_354/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_156/lstm_cell_354/mulMul$lstm_156/lstm_cell_354/Sigmoid_1:y:0lstm_156/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_156/lstm_cell_354/ReluRelu%lstm_156/lstm_cell_354/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_156/lstm_cell_354/mul_1Mul"lstm_156/lstm_cell_354/Sigmoid:y:0)lstm_156/lstm_cell_354/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_156/lstm_cell_354/add_1AddV2lstm_156/lstm_cell_354/mul:z:0 lstm_156/lstm_cell_354/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_156/lstm_cell_354/Sigmoid_2Sigmoid%lstm_156/lstm_cell_354/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_156/lstm_cell_354/Relu_1Relu lstm_156/lstm_cell_354/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_156/lstm_cell_354/mul_2Mul$lstm_156/lstm_cell_354/Sigmoid_2:y:0+lstm_156/lstm_cell_354/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_156/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_156/TensorArrayV2_1TensorListReserve/lstm_156/TensorArrayV2_1/element_shape:output:0!lstm_156/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_156/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_156/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_156/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_156/whileWhile$lstm_156/while/loop_counter:output:0*lstm_156/while/maximum_iterations:output:0lstm_156/time:output:0!lstm_156/TensorArrayV2_1:handle:0lstm_156/zeros:output:0lstm_156/zeros_1:output:0!lstm_156/strided_slice_1:output:0@lstm_156/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_156_lstm_cell_354_matmul_readvariableop_resource7lstm_156_lstm_cell_354_matmul_1_readvariableop_resource6lstm_156_lstm_cell_354_biasadd_readvariableop_resource*
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
lstm_156_while_body_2155665*'
condR
lstm_156_while_cond_2155664*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_156/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_156/TensorArrayV2Stack/TensorListStackTensorListStacklstm_156/while:output:3Blstm_156/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_156/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_156/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_156/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_156/strided_slice_3StridedSlice4lstm_156/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_156/strided_slice_3/stack:output:0)lstm_156/strided_slice_3/stack_1:output:0)lstm_156/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_156/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_156/transpose_1	Transpose4lstm_156/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_156/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_156/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_157/ShapeShapelstm_156/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_157/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_157/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_157/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_157/strided_sliceStridedSlicelstm_157/Shape:output:0%lstm_157/strided_slice/stack:output:0'lstm_157/strided_slice/stack_1:output:0'lstm_157/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_157/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_157/zeros/packedPacklstm_157/strided_slice:output:0 lstm_157/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_157/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_157/zerosFilllstm_157/zeros/packed:output:0lstm_157/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_157/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_157/zeros_1/packedPacklstm_157/strided_slice:output:0"lstm_157/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_157/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_157/zeros_1Fill lstm_157/zeros_1/packed:output:0lstm_157/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_157/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_157/transpose	Transposelstm_156/transpose_1:y:0 lstm_157/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_157/Shape_1Shapelstm_157/transpose:y:0*
T0*
_output_shapes
:h
lstm_157/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_157/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_157/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_157/strided_slice_1StridedSlicelstm_157/Shape_1:output:0'lstm_157/strided_slice_1/stack:output:0)lstm_157/strided_slice_1/stack_1:output:0)lstm_157/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_157/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_157/TensorArrayV2TensorListReserve-lstm_157/TensorArrayV2/element_shape:output:0!lstm_157/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_157/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_157/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_157/transpose:y:0Glstm_157/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_157/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_157/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_157/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_157/strided_slice_2StridedSlicelstm_157/transpose:y:0'lstm_157/strided_slice_2/stack:output:0)lstm_157/strided_slice_2/stack_1:output:0)lstm_157/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_157/lstm_cell_355/MatMul/ReadVariableOpReadVariableOp5lstm_157_lstm_cell_355_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_157/lstm_cell_355/MatMulMatMul!lstm_157/strided_slice_2:output:04lstm_157/lstm_cell_355/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_157/lstm_cell_355/MatMul_1/ReadVariableOpReadVariableOp7lstm_157_lstm_cell_355_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_157/lstm_cell_355/MatMul_1MatMullstm_157/zeros:output:06lstm_157/lstm_cell_355/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_157/lstm_cell_355/addAddV2'lstm_157/lstm_cell_355/MatMul:product:0)lstm_157/lstm_cell_355/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_157/lstm_cell_355/BiasAdd/ReadVariableOpReadVariableOp6lstm_157_lstm_cell_355_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_157/lstm_cell_355/BiasAddBiasAddlstm_157/lstm_cell_355/add:z:05lstm_157/lstm_cell_355/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_157/lstm_cell_355/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_157/lstm_cell_355/splitSplit/lstm_157/lstm_cell_355/split/split_dim:output:0'lstm_157/lstm_cell_355/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_157/lstm_cell_355/SigmoidSigmoid%lstm_157/lstm_cell_355/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_157/lstm_cell_355/Sigmoid_1Sigmoid%lstm_157/lstm_cell_355/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_157/lstm_cell_355/mulMul$lstm_157/lstm_cell_355/Sigmoid_1:y:0lstm_157/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_157/lstm_cell_355/ReluRelu%lstm_157/lstm_cell_355/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_157/lstm_cell_355/mul_1Mul"lstm_157/lstm_cell_355/Sigmoid:y:0)lstm_157/lstm_cell_355/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_157/lstm_cell_355/add_1AddV2lstm_157/lstm_cell_355/mul:z:0 lstm_157/lstm_cell_355/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_157/lstm_cell_355/Sigmoid_2Sigmoid%lstm_157/lstm_cell_355/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_157/lstm_cell_355/Relu_1Relu lstm_157/lstm_cell_355/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_157/lstm_cell_355/mul_2Mul$lstm_157/lstm_cell_355/Sigmoid_2:y:0+lstm_157/lstm_cell_355/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_157/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_157/TensorArrayV2_1TensorListReserve/lstm_157/TensorArrayV2_1/element_shape:output:0!lstm_157/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_157/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_157/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_157/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_157/whileWhile$lstm_157/while/loop_counter:output:0*lstm_157/while/maximum_iterations:output:0lstm_157/time:output:0!lstm_157/TensorArrayV2_1:handle:0lstm_157/zeros:output:0lstm_157/zeros_1:output:0!lstm_157/strided_slice_1:output:0@lstm_157/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_157_lstm_cell_355_matmul_readvariableop_resource7lstm_157_lstm_cell_355_matmul_1_readvariableop_resource6lstm_157_lstm_cell_355_biasadd_readvariableop_resource*
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
lstm_157_while_body_2155804*'
condR
lstm_157_while_cond_2155803*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_157/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_157/TensorArrayV2Stack/TensorListStackTensorListStacklstm_157/while:output:3Blstm_157/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_157/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_157/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_157/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_157/strided_slice_3StridedSlice4lstm_157/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_157/strided_slice_3/stack:output:0)lstm_157/strided_slice_3/stack_1:output:0)lstm_157/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_157/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_157/transpose_1	Transpose4lstm_157/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_157/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_157/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_158/ShapeShapelstm_157/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_158/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_158/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_158/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_158/strided_sliceStridedSlicelstm_158/Shape:output:0%lstm_158/strided_slice/stack:output:0'lstm_158/strided_slice/stack_1:output:0'lstm_158/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_158/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_158/zeros/packedPacklstm_158/strided_slice:output:0 lstm_158/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_158/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_158/zerosFilllstm_158/zeros/packed:output:0lstm_158/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_158/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_158/zeros_1/packedPacklstm_158/strided_slice:output:0"lstm_158/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_158/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_158/zeros_1Fill lstm_158/zeros_1/packed:output:0lstm_158/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_158/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_158/transpose	Transposelstm_157/transpose_1:y:0 lstm_158/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_158/Shape_1Shapelstm_158/transpose:y:0*
T0*
_output_shapes
:h
lstm_158/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_158/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_158/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_158/strided_slice_1StridedSlicelstm_158/Shape_1:output:0'lstm_158/strided_slice_1/stack:output:0)lstm_158/strided_slice_1/stack_1:output:0)lstm_158/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_158/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_158/TensorArrayV2TensorListReserve-lstm_158/TensorArrayV2/element_shape:output:0!lstm_158/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_158/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_158/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_158/transpose:y:0Glstm_158/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_158/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_158/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_158/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_158/strided_slice_2StridedSlicelstm_158/transpose:y:0'lstm_158/strided_slice_2/stack:output:0)lstm_158/strided_slice_2/stack_1:output:0)lstm_158/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_158/lstm_cell_356/MatMul/ReadVariableOpReadVariableOp5lstm_158_lstm_cell_356_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_158/lstm_cell_356/MatMulMatMul!lstm_158/strided_slice_2:output:04lstm_158/lstm_cell_356/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_158/lstm_cell_356/MatMul_1/ReadVariableOpReadVariableOp7lstm_158_lstm_cell_356_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_158/lstm_cell_356/MatMul_1MatMullstm_158/zeros:output:06lstm_158/lstm_cell_356/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_158/lstm_cell_356/addAddV2'lstm_158/lstm_cell_356/MatMul:product:0)lstm_158/lstm_cell_356/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_158/lstm_cell_356/BiasAdd/ReadVariableOpReadVariableOp6lstm_158_lstm_cell_356_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_158/lstm_cell_356/BiasAddBiasAddlstm_158/lstm_cell_356/add:z:05lstm_158/lstm_cell_356/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_158/lstm_cell_356/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_158/lstm_cell_356/splitSplit/lstm_158/lstm_cell_356/split/split_dim:output:0'lstm_158/lstm_cell_356/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_158/lstm_cell_356/SigmoidSigmoid%lstm_158/lstm_cell_356/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_158/lstm_cell_356/Sigmoid_1Sigmoid%lstm_158/lstm_cell_356/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_158/lstm_cell_356/mulMul$lstm_158/lstm_cell_356/Sigmoid_1:y:0lstm_158/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_158/lstm_cell_356/ReluRelu%lstm_158/lstm_cell_356/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_158/lstm_cell_356/mul_1Mul"lstm_158/lstm_cell_356/Sigmoid:y:0)lstm_158/lstm_cell_356/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_158/lstm_cell_356/add_1AddV2lstm_158/lstm_cell_356/mul:z:0 lstm_158/lstm_cell_356/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_158/lstm_cell_356/Sigmoid_2Sigmoid%lstm_158/lstm_cell_356/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_158/lstm_cell_356/Relu_1Relu lstm_158/lstm_cell_356/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_158/lstm_cell_356/mul_2Mul$lstm_158/lstm_cell_356/Sigmoid_2:y:0+lstm_158/lstm_cell_356/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_158/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_158/TensorArrayV2_1TensorListReserve/lstm_158/TensorArrayV2_1/element_shape:output:0!lstm_158/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_158/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_158/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_158/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_158/whileWhile$lstm_158/while/loop_counter:output:0*lstm_158/while/maximum_iterations:output:0lstm_158/time:output:0!lstm_158/TensorArrayV2_1:handle:0lstm_158/zeros:output:0lstm_158/zeros_1:output:0!lstm_158/strided_slice_1:output:0@lstm_158/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_158_lstm_cell_356_matmul_readvariableop_resource7lstm_158_lstm_cell_356_matmul_1_readvariableop_resource6lstm_158_lstm_cell_356_biasadd_readvariableop_resource*
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
lstm_158_while_body_2155943*'
condR
lstm_158_while_cond_2155942*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_158/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_158/TensorArrayV2Stack/TensorListStackTensorListStacklstm_158/while:output:3Blstm_158/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_158/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_158/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_158/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_158/strided_slice_3StridedSlice4lstm_158/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_158/strided_slice_3/stack:output:0)lstm_158/strided_slice_3/stack_1:output:0)lstm_158/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_158/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_158/transpose_1	Transpose4lstm_158/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_158/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_158/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_52/MatMul/ReadVariableOpReadVariableOp'dense_52_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_52/MatMulMatMul!lstm_158/strided_slice_3:output:0&dense_52/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_52/BiasAdd/ReadVariableOpReadVariableOp(dense_52_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_52/BiasAddBiasAdddense_52/MatMul:product:0'dense_52/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_52/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_52/BiasAdd/ReadVariableOp^dense_52/MatMul/ReadVariableOp.^lstm_156/lstm_cell_354/BiasAdd/ReadVariableOp-^lstm_156/lstm_cell_354/MatMul/ReadVariableOp/^lstm_156/lstm_cell_354/MatMul_1/ReadVariableOp^lstm_156/while.^lstm_157/lstm_cell_355/BiasAdd/ReadVariableOp-^lstm_157/lstm_cell_355/MatMul/ReadVariableOp/^lstm_157/lstm_cell_355/MatMul_1/ReadVariableOp^lstm_157/while.^lstm_158/lstm_cell_356/BiasAdd/ReadVariableOp-^lstm_158/lstm_cell_356/MatMul/ReadVariableOp/^lstm_158/lstm_cell_356/MatMul_1/ReadVariableOp^lstm_158/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_52/BiasAdd/ReadVariableOpdense_52/BiasAdd/ReadVariableOp2@
dense_52/MatMul/ReadVariableOpdense_52/MatMul/ReadVariableOp2^
-lstm_156/lstm_cell_354/BiasAdd/ReadVariableOp-lstm_156/lstm_cell_354/BiasAdd/ReadVariableOp2\
,lstm_156/lstm_cell_354/MatMul/ReadVariableOp,lstm_156/lstm_cell_354/MatMul/ReadVariableOp2`
.lstm_156/lstm_cell_354/MatMul_1/ReadVariableOp.lstm_156/lstm_cell_354/MatMul_1/ReadVariableOp2 
lstm_156/whilelstm_156/while2^
-lstm_157/lstm_cell_355/BiasAdd/ReadVariableOp-lstm_157/lstm_cell_355/BiasAdd/ReadVariableOp2\
,lstm_157/lstm_cell_355/MatMul/ReadVariableOp,lstm_157/lstm_cell_355/MatMul/ReadVariableOp2`
.lstm_157/lstm_cell_355/MatMul_1/ReadVariableOp.lstm_157/lstm_cell_355/MatMul_1/ReadVariableOp2 
lstm_157/whilelstm_157/while2^
-lstm_158/lstm_cell_356/BiasAdd/ReadVariableOp-lstm_158/lstm_cell_356/BiasAdd/ReadVariableOp2\
,lstm_158/lstm_cell_356/MatMul/ReadVariableOp,lstm_158/lstm_cell_356/MatMul/ReadVariableOp2`
.lstm_158/lstm_cell_356/MatMul_1/ReadVariableOp.lstm_158/lstm_cell_356/MatMul_1/ReadVariableOp2 
lstm_158/whilelstm_158/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_157_layer_call_and_return_conditional_losses_2153792

inputs(
lstm_cell_355_2153710:	d?(
lstm_cell_355_2153712:	2?$
lstm_cell_355_2153714:	?
identity??%lstm_cell_355/StatefulPartitionedCall?while;
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
%lstm_cell_355/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_355_2153710lstm_cell_355_2153712lstm_cell_355_2153714*
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
J__inference_lstm_cell_355_layer_call_and_return_conditional_losses_2153709n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_355_2153710lstm_cell_355_2153712lstm_cell_355_2153714*
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
while_body_2153723*
condR
while_cond_2153722*K
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
NoOpNoOp&^lstm_cell_355/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_355/StatefulPartitionedCall%lstm_cell_355/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_156_layer_call_fn_2156482
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
E__inference_lstm_156_layer_call_and_return_conditional_losses_2153633|
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
while_cond_2157937
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2157937___redundant_placeholder05
1while_while_cond_2157937___redundant_placeholder15
1while_while_cond_2157937___redundant_placeholder25
1while_while_cond_2157937___redundant_placeholder3
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
E__inference_lstm_157_layer_call_and_return_conditional_losses_2157263
inputs_0?
,lstm_cell_355_matmul_readvariableop_resource:	d?A
.lstm_cell_355_matmul_1_readvariableop_resource:	2?<
-lstm_cell_355_biasadd_readvariableop_resource:	?
identity??$lstm_cell_355/BiasAdd/ReadVariableOp?#lstm_cell_355/MatMul/ReadVariableOp?%lstm_cell_355/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_355/MatMul/ReadVariableOpReadVariableOp,lstm_cell_355_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_355/MatMulMatMulstrided_slice_2:output:0+lstm_cell_355/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_355/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_355_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_355/MatMul_1MatMulzeros:output:0-lstm_cell_355/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_355/addAddV2lstm_cell_355/MatMul:product:0 lstm_cell_355/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_355/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_355_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_355/BiasAddBiasAddlstm_cell_355/add:z:0,lstm_cell_355/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_355/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_355/splitSplit&lstm_cell_355/split/split_dim:output:0lstm_cell_355/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_355/SigmoidSigmoidlstm_cell_355/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_355/Sigmoid_1Sigmoidlstm_cell_355/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_355/mulMullstm_cell_355/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_355/ReluRelulstm_cell_355/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_355/mul_1Mullstm_cell_355/Sigmoid:y:0 lstm_cell_355/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_355/add_1AddV2lstm_cell_355/mul:z:0lstm_cell_355/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_355/Sigmoid_2Sigmoidlstm_cell_355/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_355/Relu_1Relulstm_cell_355/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_355/mul_2Mullstm_cell_355/Sigmoid_2:y:0"lstm_cell_355/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_355_matmul_readvariableop_resource.lstm_cell_355_matmul_1_readvariableop_resource-lstm_cell_355_biasadd_readvariableop_resource*
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
while_body_2157179*
condR
while_cond_2157178*K
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
NoOpNoOp%^lstm_cell_355/BiasAdd/ReadVariableOp$^lstm_cell_355/MatMul/ReadVariableOp&^lstm_cell_355/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_355/BiasAdd/ReadVariableOp$lstm_cell_355/BiasAdd/ReadVariableOp2J
#lstm_cell_355/MatMul/ReadVariableOp#lstm_cell_355/MatMul/ReadVariableOp2N
%lstm_cell_355/MatMul_1/ReadVariableOp%lstm_cell_355/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
??
?
"__inference__wrapped_model_2153292
lstm_156_inputV
Csequential_52_lstm_156_lstm_cell_354_matmul_readvariableop_resource:	?X
Esequential_52_lstm_156_lstm_cell_354_matmul_1_readvariableop_resource:	d?S
Dsequential_52_lstm_156_lstm_cell_354_biasadd_readvariableop_resource:	?V
Csequential_52_lstm_157_lstm_cell_355_matmul_readvariableop_resource:	d?X
Esequential_52_lstm_157_lstm_cell_355_matmul_1_readvariableop_resource:	2?S
Dsequential_52_lstm_157_lstm_cell_355_biasadd_readvariableop_resource:	?U
Csequential_52_lstm_158_lstm_cell_356_matmul_readvariableop_resource:2(W
Esequential_52_lstm_158_lstm_cell_356_matmul_1_readvariableop_resource:
(R
Dsequential_52_lstm_158_lstm_cell_356_biasadd_readvariableop_resource:(G
5sequential_52_dense_52_matmul_readvariableop_resource:
D
6sequential_52_dense_52_biasadd_readvariableop_resource:
identity??-sequential_52/dense_52/BiasAdd/ReadVariableOp?,sequential_52/dense_52/MatMul/ReadVariableOp?;sequential_52/lstm_156/lstm_cell_354/BiasAdd/ReadVariableOp?:sequential_52/lstm_156/lstm_cell_354/MatMul/ReadVariableOp?<sequential_52/lstm_156/lstm_cell_354/MatMul_1/ReadVariableOp?sequential_52/lstm_156/while?;sequential_52/lstm_157/lstm_cell_355/BiasAdd/ReadVariableOp?:sequential_52/lstm_157/lstm_cell_355/MatMul/ReadVariableOp?<sequential_52/lstm_157/lstm_cell_355/MatMul_1/ReadVariableOp?sequential_52/lstm_157/while?;sequential_52/lstm_158/lstm_cell_356/BiasAdd/ReadVariableOp?:sequential_52/lstm_158/lstm_cell_356/MatMul/ReadVariableOp?<sequential_52/lstm_158/lstm_cell_356/MatMul_1/ReadVariableOp?sequential_52/lstm_158/whileZ
sequential_52/lstm_156/ShapeShapelstm_156_input*
T0*
_output_shapes
:t
*sequential_52/lstm_156/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_52/lstm_156/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_52/lstm_156/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_52/lstm_156/strided_sliceStridedSlice%sequential_52/lstm_156/Shape:output:03sequential_52/lstm_156/strided_slice/stack:output:05sequential_52/lstm_156/strided_slice/stack_1:output:05sequential_52/lstm_156/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_52/lstm_156/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
#sequential_52/lstm_156/zeros/packedPack-sequential_52/lstm_156/strided_slice:output:0.sequential_52/lstm_156/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_52/lstm_156/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_52/lstm_156/zerosFill,sequential_52/lstm_156/zeros/packed:output:0+sequential_52/lstm_156/zeros/Const:output:0*
T0*'
_output_shapes
:?????????di
'sequential_52/lstm_156/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
%sequential_52/lstm_156/zeros_1/packedPack-sequential_52/lstm_156/strided_slice:output:00sequential_52/lstm_156/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_52/lstm_156/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_52/lstm_156/zeros_1Fill.sequential_52/lstm_156/zeros_1/packed:output:0-sequential_52/lstm_156/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dz
%sequential_52/lstm_156/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_52/lstm_156/transpose	Transposelstm_156_input.sequential_52/lstm_156/transpose/perm:output:0*
T0*+
_output_shapes
:?????????r
sequential_52/lstm_156/Shape_1Shape$sequential_52/lstm_156/transpose:y:0*
T0*
_output_shapes
:v
,sequential_52/lstm_156/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_52/lstm_156/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_52/lstm_156/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_52/lstm_156/strided_slice_1StridedSlice'sequential_52/lstm_156/Shape_1:output:05sequential_52/lstm_156/strided_slice_1/stack:output:07sequential_52/lstm_156/strided_slice_1/stack_1:output:07sequential_52/lstm_156/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_52/lstm_156/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_52/lstm_156/TensorArrayV2TensorListReserve;sequential_52/lstm_156/TensorArrayV2/element_shape:output:0/sequential_52/lstm_156/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_52/lstm_156/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
>sequential_52/lstm_156/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_52/lstm_156/transpose:y:0Usequential_52/lstm_156/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_52/lstm_156/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_52/lstm_156/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_52/lstm_156/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_52/lstm_156/strided_slice_2StridedSlice$sequential_52/lstm_156/transpose:y:05sequential_52/lstm_156/strided_slice_2/stack:output:07sequential_52/lstm_156/strided_slice_2/stack_1:output:07sequential_52/lstm_156/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
:sequential_52/lstm_156/lstm_cell_354/MatMul/ReadVariableOpReadVariableOpCsequential_52_lstm_156_lstm_cell_354_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
+sequential_52/lstm_156/lstm_cell_354/MatMulMatMul/sequential_52/lstm_156/strided_slice_2:output:0Bsequential_52/lstm_156/lstm_cell_354/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_52/lstm_156/lstm_cell_354/MatMul_1/ReadVariableOpReadVariableOpEsequential_52_lstm_156_lstm_cell_354_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
-sequential_52/lstm_156/lstm_cell_354/MatMul_1MatMul%sequential_52/lstm_156/zeros:output:0Dsequential_52/lstm_156/lstm_cell_354/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_52/lstm_156/lstm_cell_354/addAddV25sequential_52/lstm_156/lstm_cell_354/MatMul:product:07sequential_52/lstm_156/lstm_cell_354/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_52/lstm_156/lstm_cell_354/BiasAdd/ReadVariableOpReadVariableOpDsequential_52_lstm_156_lstm_cell_354_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_52/lstm_156/lstm_cell_354/BiasAddBiasAdd,sequential_52/lstm_156/lstm_cell_354/add:z:0Csequential_52/lstm_156/lstm_cell_354/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_52/lstm_156/lstm_cell_354/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_52/lstm_156/lstm_cell_354/splitSplit=sequential_52/lstm_156/lstm_cell_354/split/split_dim:output:05sequential_52/lstm_156/lstm_cell_354/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
,sequential_52/lstm_156/lstm_cell_354/SigmoidSigmoid3sequential_52/lstm_156/lstm_cell_354/split:output:0*
T0*'
_output_shapes
:?????????d?
.sequential_52/lstm_156/lstm_cell_354/Sigmoid_1Sigmoid3sequential_52/lstm_156/lstm_cell_354/split:output:1*
T0*'
_output_shapes
:?????????d?
(sequential_52/lstm_156/lstm_cell_354/mulMul2sequential_52/lstm_156/lstm_cell_354/Sigmoid_1:y:0'sequential_52/lstm_156/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
)sequential_52/lstm_156/lstm_cell_354/ReluRelu3sequential_52/lstm_156/lstm_cell_354/split:output:2*
T0*'
_output_shapes
:?????????d?
*sequential_52/lstm_156/lstm_cell_354/mul_1Mul0sequential_52/lstm_156/lstm_cell_354/Sigmoid:y:07sequential_52/lstm_156/lstm_cell_354/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
*sequential_52/lstm_156/lstm_cell_354/add_1AddV2,sequential_52/lstm_156/lstm_cell_354/mul:z:0.sequential_52/lstm_156/lstm_cell_354/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
.sequential_52/lstm_156/lstm_cell_354/Sigmoid_2Sigmoid3sequential_52/lstm_156/lstm_cell_354/split:output:3*
T0*'
_output_shapes
:?????????d?
+sequential_52/lstm_156/lstm_cell_354/Relu_1Relu.sequential_52/lstm_156/lstm_cell_354/add_1:z:0*
T0*'
_output_shapes
:?????????d?
*sequential_52/lstm_156/lstm_cell_354/mul_2Mul2sequential_52/lstm_156/lstm_cell_354/Sigmoid_2:y:09sequential_52/lstm_156/lstm_cell_354/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
4sequential_52/lstm_156/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
&sequential_52/lstm_156/TensorArrayV2_1TensorListReserve=sequential_52/lstm_156/TensorArrayV2_1/element_shape:output:0/sequential_52/lstm_156/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_52/lstm_156/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_52/lstm_156/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_52/lstm_156/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_52/lstm_156/whileWhile2sequential_52/lstm_156/while/loop_counter:output:08sequential_52/lstm_156/while/maximum_iterations:output:0$sequential_52/lstm_156/time:output:0/sequential_52/lstm_156/TensorArrayV2_1:handle:0%sequential_52/lstm_156/zeros:output:0'sequential_52/lstm_156/zeros_1:output:0/sequential_52/lstm_156/strided_slice_1:output:0Nsequential_52/lstm_156/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_52_lstm_156_lstm_cell_354_matmul_readvariableop_resourceEsequential_52_lstm_156_lstm_cell_354_matmul_1_readvariableop_resourceDsequential_52_lstm_156_lstm_cell_354_biasadd_readvariableop_resource*
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
)sequential_52_lstm_156_while_body_2152924*5
cond-R+
)sequential_52_lstm_156_while_cond_2152923*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Gsequential_52/lstm_156/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
9sequential_52/lstm_156/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_52/lstm_156/while:output:3Psequential_52/lstm_156/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0
,sequential_52/lstm_156/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_52/lstm_156/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_52/lstm_156/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_52/lstm_156/strided_slice_3StridedSliceBsequential_52/lstm_156/TensorArrayV2Stack/TensorListStack:tensor:05sequential_52/lstm_156/strided_slice_3/stack:output:07sequential_52/lstm_156/strided_slice_3/stack_1:output:07sequential_52/lstm_156/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask|
'sequential_52/lstm_156/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_52/lstm_156/transpose_1	TransposeBsequential_52/lstm_156/TensorArrayV2Stack/TensorListStack:tensor:00sequential_52/lstm_156/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_52/lstm_156/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_52/lstm_157/ShapeShape&sequential_52/lstm_156/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_52/lstm_157/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_52/lstm_157/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_52/lstm_157/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_52/lstm_157/strided_sliceStridedSlice%sequential_52/lstm_157/Shape:output:03sequential_52/lstm_157/strided_slice/stack:output:05sequential_52/lstm_157/strided_slice/stack_1:output:05sequential_52/lstm_157/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_52/lstm_157/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
#sequential_52/lstm_157/zeros/packedPack-sequential_52/lstm_157/strided_slice:output:0.sequential_52/lstm_157/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_52/lstm_157/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_52/lstm_157/zerosFill,sequential_52/lstm_157/zeros/packed:output:0+sequential_52/lstm_157/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2i
'sequential_52/lstm_157/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
%sequential_52/lstm_157/zeros_1/packedPack-sequential_52/lstm_157/strided_slice:output:00sequential_52/lstm_157/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_52/lstm_157/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_52/lstm_157/zeros_1Fill.sequential_52/lstm_157/zeros_1/packed:output:0-sequential_52/lstm_157/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2z
%sequential_52/lstm_157/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_52/lstm_157/transpose	Transpose&sequential_52/lstm_156/transpose_1:y:0.sequential_52/lstm_157/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_52/lstm_157/Shape_1Shape$sequential_52/lstm_157/transpose:y:0*
T0*
_output_shapes
:v
,sequential_52/lstm_157/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_52/lstm_157/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_52/lstm_157/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_52/lstm_157/strided_slice_1StridedSlice'sequential_52/lstm_157/Shape_1:output:05sequential_52/lstm_157/strided_slice_1/stack:output:07sequential_52/lstm_157/strided_slice_1/stack_1:output:07sequential_52/lstm_157/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_52/lstm_157/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_52/lstm_157/TensorArrayV2TensorListReserve;sequential_52/lstm_157/TensorArrayV2/element_shape:output:0/sequential_52/lstm_157/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_52/lstm_157/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
>sequential_52/lstm_157/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_52/lstm_157/transpose:y:0Usequential_52/lstm_157/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_52/lstm_157/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_52/lstm_157/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_52/lstm_157/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_52/lstm_157/strided_slice_2StridedSlice$sequential_52/lstm_157/transpose:y:05sequential_52/lstm_157/strided_slice_2/stack:output:07sequential_52/lstm_157/strided_slice_2/stack_1:output:07sequential_52/lstm_157/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
:sequential_52/lstm_157/lstm_cell_355/MatMul/ReadVariableOpReadVariableOpCsequential_52_lstm_157_lstm_cell_355_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
+sequential_52/lstm_157/lstm_cell_355/MatMulMatMul/sequential_52/lstm_157/strided_slice_2:output:0Bsequential_52/lstm_157/lstm_cell_355/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_52/lstm_157/lstm_cell_355/MatMul_1/ReadVariableOpReadVariableOpEsequential_52_lstm_157_lstm_cell_355_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
-sequential_52/lstm_157/lstm_cell_355/MatMul_1MatMul%sequential_52/lstm_157/zeros:output:0Dsequential_52/lstm_157/lstm_cell_355/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_52/lstm_157/lstm_cell_355/addAddV25sequential_52/lstm_157/lstm_cell_355/MatMul:product:07sequential_52/lstm_157/lstm_cell_355/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_52/lstm_157/lstm_cell_355/BiasAdd/ReadVariableOpReadVariableOpDsequential_52_lstm_157_lstm_cell_355_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_52/lstm_157/lstm_cell_355/BiasAddBiasAdd,sequential_52/lstm_157/lstm_cell_355/add:z:0Csequential_52/lstm_157/lstm_cell_355/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_52/lstm_157/lstm_cell_355/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_52/lstm_157/lstm_cell_355/splitSplit=sequential_52/lstm_157/lstm_cell_355/split/split_dim:output:05sequential_52/lstm_157/lstm_cell_355/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
,sequential_52/lstm_157/lstm_cell_355/SigmoidSigmoid3sequential_52/lstm_157/lstm_cell_355/split:output:0*
T0*'
_output_shapes
:?????????2?
.sequential_52/lstm_157/lstm_cell_355/Sigmoid_1Sigmoid3sequential_52/lstm_157/lstm_cell_355/split:output:1*
T0*'
_output_shapes
:?????????2?
(sequential_52/lstm_157/lstm_cell_355/mulMul2sequential_52/lstm_157/lstm_cell_355/Sigmoid_1:y:0'sequential_52/lstm_157/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
)sequential_52/lstm_157/lstm_cell_355/ReluRelu3sequential_52/lstm_157/lstm_cell_355/split:output:2*
T0*'
_output_shapes
:?????????2?
*sequential_52/lstm_157/lstm_cell_355/mul_1Mul0sequential_52/lstm_157/lstm_cell_355/Sigmoid:y:07sequential_52/lstm_157/lstm_cell_355/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
*sequential_52/lstm_157/lstm_cell_355/add_1AddV2,sequential_52/lstm_157/lstm_cell_355/mul:z:0.sequential_52/lstm_157/lstm_cell_355/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
.sequential_52/lstm_157/lstm_cell_355/Sigmoid_2Sigmoid3sequential_52/lstm_157/lstm_cell_355/split:output:3*
T0*'
_output_shapes
:?????????2?
+sequential_52/lstm_157/lstm_cell_355/Relu_1Relu.sequential_52/lstm_157/lstm_cell_355/add_1:z:0*
T0*'
_output_shapes
:?????????2?
*sequential_52/lstm_157/lstm_cell_355/mul_2Mul2sequential_52/lstm_157/lstm_cell_355/Sigmoid_2:y:09sequential_52/lstm_157/lstm_cell_355/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
4sequential_52/lstm_157/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
&sequential_52/lstm_157/TensorArrayV2_1TensorListReserve=sequential_52/lstm_157/TensorArrayV2_1/element_shape:output:0/sequential_52/lstm_157/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_52/lstm_157/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_52/lstm_157/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_52/lstm_157/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_52/lstm_157/whileWhile2sequential_52/lstm_157/while/loop_counter:output:08sequential_52/lstm_157/while/maximum_iterations:output:0$sequential_52/lstm_157/time:output:0/sequential_52/lstm_157/TensorArrayV2_1:handle:0%sequential_52/lstm_157/zeros:output:0'sequential_52/lstm_157/zeros_1:output:0/sequential_52/lstm_157/strided_slice_1:output:0Nsequential_52/lstm_157/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_52_lstm_157_lstm_cell_355_matmul_readvariableop_resourceEsequential_52_lstm_157_lstm_cell_355_matmul_1_readvariableop_resourceDsequential_52_lstm_157_lstm_cell_355_biasadd_readvariableop_resource*
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
)sequential_52_lstm_157_while_body_2153063*5
cond-R+
)sequential_52_lstm_157_while_cond_2153062*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Gsequential_52/lstm_157/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
9sequential_52/lstm_157/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_52/lstm_157/while:output:3Psequential_52/lstm_157/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0
,sequential_52/lstm_157/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_52/lstm_157/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_52/lstm_157/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_52/lstm_157/strided_slice_3StridedSliceBsequential_52/lstm_157/TensorArrayV2Stack/TensorListStack:tensor:05sequential_52/lstm_157/strided_slice_3/stack:output:07sequential_52/lstm_157/strided_slice_3/stack_1:output:07sequential_52/lstm_157/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask|
'sequential_52/lstm_157/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_52/lstm_157/transpose_1	TransposeBsequential_52/lstm_157/TensorArrayV2Stack/TensorListStack:tensor:00sequential_52/lstm_157/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_52/lstm_157/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_52/lstm_158/ShapeShape&sequential_52/lstm_157/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_52/lstm_158/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_52/lstm_158/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_52/lstm_158/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_52/lstm_158/strided_sliceStridedSlice%sequential_52/lstm_158/Shape:output:03sequential_52/lstm_158/strided_slice/stack:output:05sequential_52/lstm_158/strided_slice/stack_1:output:05sequential_52/lstm_158/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_52/lstm_158/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
#sequential_52/lstm_158/zeros/packedPack-sequential_52/lstm_158/strided_slice:output:0.sequential_52/lstm_158/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_52/lstm_158/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_52/lstm_158/zerosFill,sequential_52/lstm_158/zeros/packed:output:0+sequential_52/lstm_158/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
i
'sequential_52/lstm_158/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
%sequential_52/lstm_158/zeros_1/packedPack-sequential_52/lstm_158/strided_slice:output:00sequential_52/lstm_158/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_52/lstm_158/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_52/lstm_158/zeros_1Fill.sequential_52/lstm_158/zeros_1/packed:output:0-sequential_52/lstm_158/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
z
%sequential_52/lstm_158/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_52/lstm_158/transpose	Transpose&sequential_52/lstm_157/transpose_1:y:0.sequential_52/lstm_158/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_52/lstm_158/Shape_1Shape$sequential_52/lstm_158/transpose:y:0*
T0*
_output_shapes
:v
,sequential_52/lstm_158/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_52/lstm_158/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_52/lstm_158/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_52/lstm_158/strided_slice_1StridedSlice'sequential_52/lstm_158/Shape_1:output:05sequential_52/lstm_158/strided_slice_1/stack:output:07sequential_52/lstm_158/strided_slice_1/stack_1:output:07sequential_52/lstm_158/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_52/lstm_158/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_52/lstm_158/TensorArrayV2TensorListReserve;sequential_52/lstm_158/TensorArrayV2/element_shape:output:0/sequential_52/lstm_158/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_52/lstm_158/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
>sequential_52/lstm_158/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_52/lstm_158/transpose:y:0Usequential_52/lstm_158/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_52/lstm_158/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_52/lstm_158/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_52/lstm_158/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_52/lstm_158/strided_slice_2StridedSlice$sequential_52/lstm_158/transpose:y:05sequential_52/lstm_158/strided_slice_2/stack:output:07sequential_52/lstm_158/strided_slice_2/stack_1:output:07sequential_52/lstm_158/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
:sequential_52/lstm_158/lstm_cell_356/MatMul/ReadVariableOpReadVariableOpCsequential_52_lstm_158_lstm_cell_356_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
+sequential_52/lstm_158/lstm_cell_356/MatMulMatMul/sequential_52/lstm_158/strided_slice_2:output:0Bsequential_52/lstm_158/lstm_cell_356/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
<sequential_52/lstm_158/lstm_cell_356/MatMul_1/ReadVariableOpReadVariableOpEsequential_52_lstm_158_lstm_cell_356_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
-sequential_52/lstm_158/lstm_cell_356/MatMul_1MatMul%sequential_52/lstm_158/zeros:output:0Dsequential_52/lstm_158/lstm_cell_356/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
(sequential_52/lstm_158/lstm_cell_356/addAddV25sequential_52/lstm_158/lstm_cell_356/MatMul:product:07sequential_52/lstm_158/lstm_cell_356/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
;sequential_52/lstm_158/lstm_cell_356/BiasAdd/ReadVariableOpReadVariableOpDsequential_52_lstm_158_lstm_cell_356_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
,sequential_52/lstm_158/lstm_cell_356/BiasAddBiasAdd,sequential_52/lstm_158/lstm_cell_356/add:z:0Csequential_52/lstm_158/lstm_cell_356/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(v
4sequential_52/lstm_158/lstm_cell_356/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_52/lstm_158/lstm_cell_356/splitSplit=sequential_52/lstm_158/lstm_cell_356/split/split_dim:output:05sequential_52/lstm_158/lstm_cell_356/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
,sequential_52/lstm_158/lstm_cell_356/SigmoidSigmoid3sequential_52/lstm_158/lstm_cell_356/split:output:0*
T0*'
_output_shapes
:?????????
?
.sequential_52/lstm_158/lstm_cell_356/Sigmoid_1Sigmoid3sequential_52/lstm_158/lstm_cell_356/split:output:1*
T0*'
_output_shapes
:?????????
?
(sequential_52/lstm_158/lstm_cell_356/mulMul2sequential_52/lstm_158/lstm_cell_356/Sigmoid_1:y:0'sequential_52/lstm_158/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
)sequential_52/lstm_158/lstm_cell_356/ReluRelu3sequential_52/lstm_158/lstm_cell_356/split:output:2*
T0*'
_output_shapes
:?????????
?
*sequential_52/lstm_158/lstm_cell_356/mul_1Mul0sequential_52/lstm_158/lstm_cell_356/Sigmoid:y:07sequential_52/lstm_158/lstm_cell_356/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
*sequential_52/lstm_158/lstm_cell_356/add_1AddV2,sequential_52/lstm_158/lstm_cell_356/mul:z:0.sequential_52/lstm_158/lstm_cell_356/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
.sequential_52/lstm_158/lstm_cell_356/Sigmoid_2Sigmoid3sequential_52/lstm_158/lstm_cell_356/split:output:3*
T0*'
_output_shapes
:?????????
?
+sequential_52/lstm_158/lstm_cell_356/Relu_1Relu.sequential_52/lstm_158/lstm_cell_356/add_1:z:0*
T0*'
_output_shapes
:?????????
?
*sequential_52/lstm_158/lstm_cell_356/mul_2Mul2sequential_52/lstm_158/lstm_cell_356/Sigmoid_2:y:09sequential_52/lstm_158/lstm_cell_356/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
4sequential_52/lstm_158/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
&sequential_52/lstm_158/TensorArrayV2_1TensorListReserve=sequential_52/lstm_158/TensorArrayV2_1/element_shape:output:0/sequential_52/lstm_158/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_52/lstm_158/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_52/lstm_158/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_52/lstm_158/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_52/lstm_158/whileWhile2sequential_52/lstm_158/while/loop_counter:output:08sequential_52/lstm_158/while/maximum_iterations:output:0$sequential_52/lstm_158/time:output:0/sequential_52/lstm_158/TensorArrayV2_1:handle:0%sequential_52/lstm_158/zeros:output:0'sequential_52/lstm_158/zeros_1:output:0/sequential_52/lstm_158/strided_slice_1:output:0Nsequential_52/lstm_158/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_52_lstm_158_lstm_cell_356_matmul_readvariableop_resourceEsequential_52_lstm_158_lstm_cell_356_matmul_1_readvariableop_resourceDsequential_52_lstm_158_lstm_cell_356_biasadd_readvariableop_resource*
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
)sequential_52_lstm_158_while_body_2153202*5
cond-R+
)sequential_52_lstm_158_while_cond_2153201*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Gsequential_52/lstm_158/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
9sequential_52/lstm_158/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_52/lstm_158/while:output:3Psequential_52/lstm_158/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0
,sequential_52/lstm_158/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_52/lstm_158/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_52/lstm_158/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_52/lstm_158/strided_slice_3StridedSliceBsequential_52/lstm_158/TensorArrayV2Stack/TensorListStack:tensor:05sequential_52/lstm_158/strided_slice_3/stack:output:07sequential_52/lstm_158/strided_slice_3/stack_1:output:07sequential_52/lstm_158/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask|
'sequential_52/lstm_158/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_52/lstm_158/transpose_1	TransposeBsequential_52/lstm_158/TensorArrayV2Stack/TensorListStack:tensor:00sequential_52/lstm_158/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
r
sequential_52/lstm_158/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_52/dense_52/MatMul/ReadVariableOpReadVariableOp5sequential_52_dense_52_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_52/dense_52/MatMulMatMul/sequential_52/lstm_158/strided_slice_3:output:04sequential_52/dense_52/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_52/dense_52/BiasAdd/ReadVariableOpReadVariableOp6sequential_52_dense_52_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_52/dense_52/BiasAddBiasAdd'sequential_52/dense_52/MatMul:product:05sequential_52/dense_52/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_52/dense_52/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_52/dense_52/BiasAdd/ReadVariableOp-^sequential_52/dense_52/MatMul/ReadVariableOp<^sequential_52/lstm_156/lstm_cell_354/BiasAdd/ReadVariableOp;^sequential_52/lstm_156/lstm_cell_354/MatMul/ReadVariableOp=^sequential_52/lstm_156/lstm_cell_354/MatMul_1/ReadVariableOp^sequential_52/lstm_156/while<^sequential_52/lstm_157/lstm_cell_355/BiasAdd/ReadVariableOp;^sequential_52/lstm_157/lstm_cell_355/MatMul/ReadVariableOp=^sequential_52/lstm_157/lstm_cell_355/MatMul_1/ReadVariableOp^sequential_52/lstm_157/while<^sequential_52/lstm_158/lstm_cell_356/BiasAdd/ReadVariableOp;^sequential_52/lstm_158/lstm_cell_356/MatMul/ReadVariableOp=^sequential_52/lstm_158/lstm_cell_356/MatMul_1/ReadVariableOp^sequential_52/lstm_158/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2^
-sequential_52/dense_52/BiasAdd/ReadVariableOp-sequential_52/dense_52/BiasAdd/ReadVariableOp2\
,sequential_52/dense_52/MatMul/ReadVariableOp,sequential_52/dense_52/MatMul/ReadVariableOp2z
;sequential_52/lstm_156/lstm_cell_354/BiasAdd/ReadVariableOp;sequential_52/lstm_156/lstm_cell_354/BiasAdd/ReadVariableOp2x
:sequential_52/lstm_156/lstm_cell_354/MatMul/ReadVariableOp:sequential_52/lstm_156/lstm_cell_354/MatMul/ReadVariableOp2|
<sequential_52/lstm_156/lstm_cell_354/MatMul_1/ReadVariableOp<sequential_52/lstm_156/lstm_cell_354/MatMul_1/ReadVariableOp2<
sequential_52/lstm_156/whilesequential_52/lstm_156/while2z
;sequential_52/lstm_157/lstm_cell_355/BiasAdd/ReadVariableOp;sequential_52/lstm_157/lstm_cell_355/BiasAdd/ReadVariableOp2x
:sequential_52/lstm_157/lstm_cell_355/MatMul/ReadVariableOp:sequential_52/lstm_157/lstm_cell_355/MatMul/ReadVariableOp2|
<sequential_52/lstm_157/lstm_cell_355/MatMul_1/ReadVariableOp<sequential_52/lstm_157/lstm_cell_355/MatMul_1/ReadVariableOp2<
sequential_52/lstm_157/whilesequential_52/lstm_157/while2z
;sequential_52/lstm_158/lstm_cell_356/BiasAdd/ReadVariableOp;sequential_52/lstm_158/lstm_cell_356/BiasAdd/ReadVariableOp2x
:sequential_52/lstm_158/lstm_cell_356/MatMul/ReadVariableOp:sequential_52/lstm_158/lstm_cell_356/MatMul/ReadVariableOp2|
<sequential_52/lstm_158/lstm_cell_356/MatMul_1/ReadVariableOp<sequential_52/lstm_158/lstm_cell_356/MatMul_1/ReadVariableOp2<
sequential_52/lstm_158/whilesequential_52/lstm_158/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_156_input
?
?
J__inference_sequential_52_layer_call_and_return_conditional_losses_2155405

inputs#
lstm_156_2155378:	?#
lstm_156_2155380:	d?
lstm_156_2155382:	?#
lstm_157_2155385:	d?#
lstm_157_2155387:	2?
lstm_157_2155389:	?"
lstm_158_2155392:2("
lstm_158_2155394:
(
lstm_158_2155396:("
dense_52_2155399:

dense_52_2155401:
identity?? dense_52/StatefulPartitionedCall? lstm_156/StatefulPartitionedCall? lstm_157/StatefulPartitionedCall? lstm_158/StatefulPartitionedCall?
 lstm_156/StatefulPartitionedCallStatefulPartitionedCallinputslstm_156_2155378lstm_156_2155380lstm_156_2155382*
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
E__inference_lstm_156_layer_call_and_return_conditional_losses_2155337?
 lstm_157/StatefulPartitionedCallStatefulPartitionedCall)lstm_156/StatefulPartitionedCall:output:0lstm_157_2155385lstm_157_2155387lstm_157_2155389*
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
E__inference_lstm_157_layer_call_and_return_conditional_losses_2155172?
 lstm_158/StatefulPartitionedCallStatefulPartitionedCall)lstm_157/StatefulPartitionedCall:output:0lstm_158_2155392lstm_158_2155394lstm_158_2155396*
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
E__inference_lstm_158_layer_call_and_return_conditional_losses_2155007?
 dense_52/StatefulPartitionedCallStatefulPartitionedCall)lstm_158/StatefulPartitionedCall:output:0dense_52_2155399dense_52_2155401*
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
E__inference_dense_52_layer_call_and_return_conditional_losses_2154809x
IdentityIdentity)dense_52/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_52/StatefulPartitionedCall!^lstm_156/StatefulPartitionedCall!^lstm_157/StatefulPartitionedCall!^lstm_158/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_52/StatefulPartitionedCall dense_52/StatefulPartitionedCall2D
 lstm_156/StatefulPartitionedCall lstm_156/StatefulPartitionedCall2D
 lstm_157/StatefulPartitionedCall lstm_157/StatefulPartitionedCall2D
 lstm_158/StatefulPartitionedCall lstm_158/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_158_while_cond_2155942.
*lstm_158_while_lstm_158_while_loop_counter4
0lstm_158_while_lstm_158_while_maximum_iterations
lstm_158_while_placeholder 
lstm_158_while_placeholder_1 
lstm_158_while_placeholder_2 
lstm_158_while_placeholder_30
,lstm_158_while_less_lstm_158_strided_slice_1G
Clstm_158_while_lstm_158_while_cond_2155942___redundant_placeholder0G
Clstm_158_while_lstm_158_while_cond_2155942___redundant_placeholder1G
Clstm_158_while_lstm_158_while_cond_2155942___redundant_placeholder2G
Clstm_158_while_lstm_158_while_cond_2155942___redundant_placeholder3
lstm_158_while_identity
?
lstm_158/while/LessLesslstm_158_while_placeholder,lstm_158_while_less_lstm_158_strided_slice_1*
T0*
_output_shapes
: ]
lstm_158/while/IdentityIdentitylstm_158/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_158_while_identity lstm_158/while/Identity:output:0*(
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
E__inference_dense_52_layer_call_and_return_conditional_losses_2154809

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
/__inference_lstm_cell_355_layer_call_fn_2158459

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
J__inference_lstm_cell_355_layer_call_and_return_conditional_losses_2153855o
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
while_cond_2154706
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2154706___redundant_placeholder05
1while_while_cond_2154706___redundant_placeholder15
1while_while_cond_2154706___redundant_placeholder25
1while_while_cond_2154706___redundant_placeholder3
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
J__inference_lstm_cell_356_layer_call_and_return_conditional_losses_2158621

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

?
lstm_158_while_cond_2156369.
*lstm_158_while_lstm_158_while_loop_counter4
0lstm_158_while_lstm_158_while_maximum_iterations
lstm_158_while_placeholder 
lstm_158_while_placeholder_1 
lstm_158_while_placeholder_2 
lstm_158_while_placeholder_30
,lstm_158_while_less_lstm_158_strided_slice_1G
Clstm_158_while_lstm_158_while_cond_2156369___redundant_placeholder0G
Clstm_158_while_lstm_158_while_cond_2156369___redundant_placeholder1G
Clstm_158_while_lstm_158_while_cond_2156369___redundant_placeholder2G
Clstm_158_while_lstm_158_while_cond_2156369___redundant_placeholder3
lstm_158_while_identity
?
lstm_158/while/LessLesslstm_158_while_placeholder,lstm_158_while_less_lstm_158_strided_slice_1*
T0*
_output_shapes
: ]
lstm_158/while/IdentityIdentitylstm_158/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_158_while_identity lstm_158/while/Identity:output:0*(
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
while_body_2158224
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_356_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_356_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_356_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_356_matmul_readvariableop_resource:2(F
4while_lstm_cell_356_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_356_biasadd_readvariableop_resource:(??*while/lstm_cell_356/BiasAdd/ReadVariableOp?)while/lstm_cell_356/MatMul/ReadVariableOp?+while/lstm_cell_356/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_356/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_356_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_356/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_356/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_356/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_356_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_356/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_356/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_356/addAddV2$while/lstm_cell_356/MatMul:product:0&while/lstm_cell_356/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_356/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_356_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_356/BiasAddBiasAddwhile/lstm_cell_356/add:z:02while/lstm_cell_356/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_356/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_356/splitSplit,while/lstm_cell_356/split/split_dim:output:0$while/lstm_cell_356/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_356/SigmoidSigmoid"while/lstm_cell_356/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_356/Sigmoid_1Sigmoid"while/lstm_cell_356/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_356/mulMul!while/lstm_cell_356/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_356/ReluRelu"while/lstm_cell_356/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_356/mul_1Mulwhile/lstm_cell_356/Sigmoid:y:0&while/lstm_cell_356/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_356/add_1AddV2while/lstm_cell_356/mul:z:0while/lstm_cell_356/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_356/Sigmoid_2Sigmoid"while/lstm_cell_356/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_356/Relu_1Reluwhile/lstm_cell_356/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_356/mul_2Mul!while/lstm_cell_356/Sigmoid_2:y:0(while/lstm_cell_356/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_356/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_356/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_356/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_356/BiasAdd/ReadVariableOp*^while/lstm_cell_356/MatMul/ReadVariableOp,^while/lstm_cell_356/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_356_biasadd_readvariableop_resource5while_lstm_cell_356_biasadd_readvariableop_resource_0"n
4while_lstm_cell_356_matmul_1_readvariableop_resource6while_lstm_cell_356_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_356_matmul_readvariableop_resource4while_lstm_cell_356_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_356/BiasAdd/ReadVariableOp*while/lstm_cell_356/BiasAdd/ReadVariableOp2V
)while/lstm_cell_356/MatMul/ReadVariableOp)while/lstm_cell_356/MatMul/ReadVariableOp2Z
+while/lstm_cell_356/MatMul_1/ReadVariableOp+while/lstm_cell_356/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2155253
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_354_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_354_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_354_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_354_matmul_readvariableop_resource:	?G
4while_lstm_cell_354_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_354_biasadd_readvariableop_resource:	???*while/lstm_cell_354/BiasAdd/ReadVariableOp?)while/lstm_cell_354/MatMul/ReadVariableOp?+while/lstm_cell_354/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_354/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_354_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_354/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_354/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_354/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_354_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_354/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_354/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_354/addAddV2$while/lstm_cell_354/MatMul:product:0&while/lstm_cell_354/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_354/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_354_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_354/BiasAddBiasAddwhile/lstm_cell_354/add:z:02while/lstm_cell_354/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_354/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_354/splitSplit,while/lstm_cell_354/split/split_dim:output:0$while/lstm_cell_354/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_354/SigmoidSigmoid"while/lstm_cell_354/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_354/Sigmoid_1Sigmoid"while/lstm_cell_354/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_354/mulMul!while/lstm_cell_354/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_354/ReluRelu"while/lstm_cell_354/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_354/mul_1Mulwhile/lstm_cell_354/Sigmoid:y:0&while/lstm_cell_354/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_354/add_1AddV2while/lstm_cell_354/mul:z:0while/lstm_cell_354/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_354/Sigmoid_2Sigmoid"while/lstm_cell_354/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_354/Relu_1Reluwhile/lstm_cell_354/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_354/mul_2Mul!while/lstm_cell_354/Sigmoid_2:y:0(while/lstm_cell_354/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_354/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_354/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_354/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_354/BiasAdd/ReadVariableOp*^while/lstm_cell_354/MatMul/ReadVariableOp,^while/lstm_cell_354/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_354_biasadd_readvariableop_resource5while_lstm_cell_354_biasadd_readvariableop_resource_0"n
4while_lstm_cell_354_matmul_1_readvariableop_resource6while_lstm_cell_354_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_354_matmul_readvariableop_resource4while_lstm_cell_354_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_354/BiasAdd/ReadVariableOp*while/lstm_cell_354/BiasAdd/ReadVariableOp2V
)while/lstm_cell_354/MatMul/ReadVariableOp)while/lstm_cell_354/MatMul/ReadVariableOp2Z
+while/lstm_cell_354/MatMul_1/ReadVariableOp+while/lstm_cell_354/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2153372
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2153372___redundant_placeholder05
1while_while_cond_2153372___redundant_placeholder15
1while_while_cond_2153372___redundant_placeholder25
1while_while_cond_2153372___redundant_placeholder3
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
J__inference_sequential_52_layer_call_and_return_conditional_losses_2155517
lstm_156_input#
lstm_156_2155490:	?#
lstm_156_2155492:	d?
lstm_156_2155494:	?#
lstm_157_2155497:	d?#
lstm_157_2155499:	2?
lstm_157_2155501:	?"
lstm_158_2155504:2("
lstm_158_2155506:
(
lstm_158_2155508:("
dense_52_2155511:

dense_52_2155513:
identity?? dense_52/StatefulPartitionedCall? lstm_156/StatefulPartitionedCall? lstm_157/StatefulPartitionedCall? lstm_158/StatefulPartitionedCall?
 lstm_156/StatefulPartitionedCallStatefulPartitionedCalllstm_156_inputlstm_156_2155490lstm_156_2155492lstm_156_2155494*
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
E__inference_lstm_156_layer_call_and_return_conditional_losses_2155337?
 lstm_157/StatefulPartitionedCallStatefulPartitionedCall)lstm_156/StatefulPartitionedCall:output:0lstm_157_2155497lstm_157_2155499lstm_157_2155501*
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
E__inference_lstm_157_layer_call_and_return_conditional_losses_2155172?
 lstm_158/StatefulPartitionedCallStatefulPartitionedCall)lstm_157/StatefulPartitionedCall:output:0lstm_158_2155504lstm_158_2155506lstm_158_2155508*
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
E__inference_lstm_158_layer_call_and_return_conditional_losses_2155007?
 dense_52/StatefulPartitionedCallStatefulPartitionedCall)lstm_158/StatefulPartitionedCall:output:0dense_52_2155511dense_52_2155513*
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
E__inference_dense_52_layer_call_and_return_conditional_losses_2154809x
IdentityIdentity)dense_52/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_52/StatefulPartitionedCall!^lstm_156/StatefulPartitionedCall!^lstm_157/StatefulPartitionedCall!^lstm_158/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_52/StatefulPartitionedCall dense_52/StatefulPartitionedCall2D
 lstm_156/StatefulPartitionedCall lstm_156/StatefulPartitionedCall2D
 lstm_157/StatefulPartitionedCall lstm_157/StatefulPartitionedCall2D
 lstm_158/StatefulPartitionedCall lstm_158/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_156_input
?8
?
while_body_2157608
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_355_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_355_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_355_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_355_matmul_readvariableop_resource:	d?G
4while_lstm_cell_355_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_355_biasadd_readvariableop_resource:	???*while/lstm_cell_355/BiasAdd/ReadVariableOp?)while/lstm_cell_355/MatMul/ReadVariableOp?+while/lstm_cell_355/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_355/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_355_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_355/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_355/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_355/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_355_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_355/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_355/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_355/addAddV2$while/lstm_cell_355/MatMul:product:0&while/lstm_cell_355/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_355/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_355_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_355/BiasAddBiasAddwhile/lstm_cell_355/add:z:02while/lstm_cell_355/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_355/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_355/splitSplit,while/lstm_cell_355/split/split_dim:output:0$while/lstm_cell_355/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_355/SigmoidSigmoid"while/lstm_cell_355/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_355/Sigmoid_1Sigmoid"while/lstm_cell_355/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_355/mulMul!while/lstm_cell_355/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_355/ReluRelu"while/lstm_cell_355/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_355/mul_1Mulwhile/lstm_cell_355/Sigmoid:y:0&while/lstm_cell_355/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_355/add_1AddV2while/lstm_cell_355/mul:z:0while/lstm_cell_355/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_355/Sigmoid_2Sigmoid"while/lstm_cell_355/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_355/Relu_1Reluwhile/lstm_cell_355/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_355/mul_2Mul!while/lstm_cell_355/Sigmoid_2:y:0(while/lstm_cell_355/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_355/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_355/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_355/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_355/BiasAdd/ReadVariableOp*^while/lstm_cell_355/MatMul/ReadVariableOp,^while/lstm_cell_355/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_355_biasadd_readvariableop_resource5while_lstm_cell_355_biasadd_readvariableop_resource_0"n
4while_lstm_cell_355_matmul_1_readvariableop_resource6while_lstm_cell_355_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_355_matmul_readvariableop_resource4while_lstm_cell_355_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_355/BiasAdd/ReadVariableOp*while/lstm_cell_355/BiasAdd/ReadVariableOp2V
)while/lstm_cell_355/MatMul/ReadVariableOp)while/lstm_cell_355/MatMul/ReadVariableOp2Z
+while/lstm_cell_355/MatMul_1/ReadVariableOp+while/lstm_cell_355/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2157794
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2157794___redundant_placeholder05
1while_while_cond_2157794___redundant_placeholder15
1while_while_cond_2157794___redundant_placeholder25
1while_while_cond_2157794___redundant_placeholder3
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

lstm_158_while_body_2155943.
*lstm_158_while_lstm_158_while_loop_counter4
0lstm_158_while_lstm_158_while_maximum_iterations
lstm_158_while_placeholder 
lstm_158_while_placeholder_1 
lstm_158_while_placeholder_2 
lstm_158_while_placeholder_3-
)lstm_158_while_lstm_158_strided_slice_1_0i
elstm_158_while_tensorarrayv2read_tensorlistgetitem_lstm_158_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_158_while_lstm_cell_356_matmul_readvariableop_resource_0:2(Q
?lstm_158_while_lstm_cell_356_matmul_1_readvariableop_resource_0:
(L
>lstm_158_while_lstm_cell_356_biasadd_readvariableop_resource_0:(
lstm_158_while_identity
lstm_158_while_identity_1
lstm_158_while_identity_2
lstm_158_while_identity_3
lstm_158_while_identity_4
lstm_158_while_identity_5+
'lstm_158_while_lstm_158_strided_slice_1g
clstm_158_while_tensorarrayv2read_tensorlistgetitem_lstm_158_tensorarrayunstack_tensorlistfromtensorM
;lstm_158_while_lstm_cell_356_matmul_readvariableop_resource:2(O
=lstm_158_while_lstm_cell_356_matmul_1_readvariableop_resource:
(J
<lstm_158_while_lstm_cell_356_biasadd_readvariableop_resource:(??3lstm_158/while/lstm_cell_356/BiasAdd/ReadVariableOp?2lstm_158/while/lstm_cell_356/MatMul/ReadVariableOp?4lstm_158/while/lstm_cell_356/MatMul_1/ReadVariableOp?
@lstm_158/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_158/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_158_while_tensorarrayv2read_tensorlistgetitem_lstm_158_tensorarrayunstack_tensorlistfromtensor_0lstm_158_while_placeholderIlstm_158/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_158/while/lstm_cell_356/MatMul/ReadVariableOpReadVariableOp=lstm_158_while_lstm_cell_356_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_158/while/lstm_cell_356/MatMulMatMul9lstm_158/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_158/while/lstm_cell_356/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_158/while/lstm_cell_356/MatMul_1/ReadVariableOpReadVariableOp?lstm_158_while_lstm_cell_356_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_158/while/lstm_cell_356/MatMul_1MatMullstm_158_while_placeholder_2<lstm_158/while/lstm_cell_356/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_158/while/lstm_cell_356/addAddV2-lstm_158/while/lstm_cell_356/MatMul:product:0/lstm_158/while/lstm_cell_356/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_158/while/lstm_cell_356/BiasAdd/ReadVariableOpReadVariableOp>lstm_158_while_lstm_cell_356_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_158/while/lstm_cell_356/BiasAddBiasAdd$lstm_158/while/lstm_cell_356/add:z:0;lstm_158/while/lstm_cell_356/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_158/while/lstm_cell_356/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_158/while/lstm_cell_356/splitSplit5lstm_158/while/lstm_cell_356/split/split_dim:output:0-lstm_158/while/lstm_cell_356/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_158/while/lstm_cell_356/SigmoidSigmoid+lstm_158/while/lstm_cell_356/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_158/while/lstm_cell_356/Sigmoid_1Sigmoid+lstm_158/while/lstm_cell_356/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_158/while/lstm_cell_356/mulMul*lstm_158/while/lstm_cell_356/Sigmoid_1:y:0lstm_158_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_158/while/lstm_cell_356/ReluRelu+lstm_158/while/lstm_cell_356/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_158/while/lstm_cell_356/mul_1Mul(lstm_158/while/lstm_cell_356/Sigmoid:y:0/lstm_158/while/lstm_cell_356/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_158/while/lstm_cell_356/add_1AddV2$lstm_158/while/lstm_cell_356/mul:z:0&lstm_158/while/lstm_cell_356/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_158/while/lstm_cell_356/Sigmoid_2Sigmoid+lstm_158/while/lstm_cell_356/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_158/while/lstm_cell_356/Relu_1Relu&lstm_158/while/lstm_cell_356/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_158/while/lstm_cell_356/mul_2Mul*lstm_158/while/lstm_cell_356/Sigmoid_2:y:01lstm_158/while/lstm_cell_356/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_158/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_158_while_placeholder_1lstm_158_while_placeholder&lstm_158/while/lstm_cell_356/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_158/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_158/while/addAddV2lstm_158_while_placeholderlstm_158/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_158/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_158/while/add_1AddV2*lstm_158_while_lstm_158_while_loop_counterlstm_158/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_158/while/IdentityIdentitylstm_158/while/add_1:z:0^lstm_158/while/NoOp*
T0*
_output_shapes
: ?
lstm_158/while/Identity_1Identity0lstm_158_while_lstm_158_while_maximum_iterations^lstm_158/while/NoOp*
T0*
_output_shapes
: t
lstm_158/while/Identity_2Identitylstm_158/while/add:z:0^lstm_158/while/NoOp*
T0*
_output_shapes
: ?
lstm_158/while/Identity_3IdentityClstm_158/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_158/while/NoOp*
T0*
_output_shapes
: ?
lstm_158/while/Identity_4Identity&lstm_158/while/lstm_cell_356/mul_2:z:0^lstm_158/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_158/while/Identity_5Identity&lstm_158/while/lstm_cell_356/add_1:z:0^lstm_158/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_158/while/NoOpNoOp4^lstm_158/while/lstm_cell_356/BiasAdd/ReadVariableOp3^lstm_158/while/lstm_cell_356/MatMul/ReadVariableOp5^lstm_158/while/lstm_cell_356/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_158_while_identity lstm_158/while/Identity:output:0"?
lstm_158_while_identity_1"lstm_158/while/Identity_1:output:0"?
lstm_158_while_identity_2"lstm_158/while/Identity_2:output:0"?
lstm_158_while_identity_3"lstm_158/while/Identity_3:output:0"?
lstm_158_while_identity_4"lstm_158/while/Identity_4:output:0"?
lstm_158_while_identity_5"lstm_158/while/Identity_5:output:0"T
'lstm_158_while_lstm_158_strided_slice_1)lstm_158_while_lstm_158_strided_slice_1_0"~
<lstm_158_while_lstm_cell_356_biasadd_readvariableop_resource>lstm_158_while_lstm_cell_356_biasadd_readvariableop_resource_0"?
=lstm_158_while_lstm_cell_356_matmul_1_readvariableop_resource?lstm_158_while_lstm_cell_356_matmul_1_readvariableop_resource_0"|
;lstm_158_while_lstm_cell_356_matmul_readvariableop_resource=lstm_158_while_lstm_cell_356_matmul_readvariableop_resource_0"?
clstm_158_while_tensorarrayv2read_tensorlistgetitem_lstm_158_tensorarrayunstack_tensorlistfromtensorelstm_158_while_tensorarrayv2read_tensorlistgetitem_lstm_158_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_158/while/lstm_cell_356/BiasAdd/ReadVariableOp3lstm_158/while/lstm_cell_356/BiasAdd/ReadVariableOp2h
2lstm_158/while/lstm_cell_356/MatMul/ReadVariableOp2lstm_158/while/lstm_cell_356/MatMul/ReadVariableOp2l
4lstm_158/while/lstm_cell_356/MatMul_1/ReadVariableOp4lstm_158/while/lstm_cell_356/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2158081
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_356_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_356_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_356_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_356_matmul_readvariableop_resource:2(F
4while_lstm_cell_356_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_356_biasadd_readvariableop_resource:(??*while/lstm_cell_356/BiasAdd/ReadVariableOp?)while/lstm_cell_356/MatMul/ReadVariableOp?+while/lstm_cell_356/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_356/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_356_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_356/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_356/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_356/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_356_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_356/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_356/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_356/addAddV2$while/lstm_cell_356/MatMul:product:0&while/lstm_cell_356/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_356/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_356_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_356/BiasAddBiasAddwhile/lstm_cell_356/add:z:02while/lstm_cell_356/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_356/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_356/splitSplit,while/lstm_cell_356/split/split_dim:output:0$while/lstm_cell_356/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_356/SigmoidSigmoid"while/lstm_cell_356/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_356/Sigmoid_1Sigmoid"while/lstm_cell_356/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_356/mulMul!while/lstm_cell_356/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_356/ReluRelu"while/lstm_cell_356/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_356/mul_1Mulwhile/lstm_cell_356/Sigmoid:y:0&while/lstm_cell_356/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_356/add_1AddV2while/lstm_cell_356/mul:z:0while/lstm_cell_356/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_356/Sigmoid_2Sigmoid"while/lstm_cell_356/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_356/Relu_1Reluwhile/lstm_cell_356/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_356/mul_2Mul!while/lstm_cell_356/Sigmoid_2:y:0(while/lstm_cell_356/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_356/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_356/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_356/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_356/BiasAdd/ReadVariableOp*^while/lstm_cell_356/MatMul/ReadVariableOp,^while/lstm_cell_356/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_356_biasadd_readvariableop_resource5while_lstm_cell_356_biasadd_readvariableop_resource_0"n
4while_lstm_cell_356_matmul_1_readvariableop_resource6while_lstm_cell_356_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_356_matmul_readvariableop_resource4while_lstm_cell_356_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_356/BiasAdd/ReadVariableOp*while/lstm_cell_356/BiasAdd/ReadVariableOp2V
)while/lstm_cell_356/MatMul/ReadVariableOp)while/lstm_cell_356/MatMul/ReadVariableOp2Z
+while/lstm_cell_356/MatMul_1/ReadVariableOp+while/lstm_cell_356/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2157322
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_355_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_355_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_355_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_355_matmul_readvariableop_resource:	d?G
4while_lstm_cell_355_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_355_biasadd_readvariableop_resource:	???*while/lstm_cell_355/BiasAdd/ReadVariableOp?)while/lstm_cell_355/MatMul/ReadVariableOp?+while/lstm_cell_355/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_355/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_355_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_355/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_355/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_355/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_355_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_355/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_355/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_355/addAddV2$while/lstm_cell_355/MatMul:product:0&while/lstm_cell_355/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_355/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_355_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_355/BiasAddBiasAddwhile/lstm_cell_355/add:z:02while/lstm_cell_355/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_355/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_355/splitSplit,while/lstm_cell_355/split/split_dim:output:0$while/lstm_cell_355/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_355/SigmoidSigmoid"while/lstm_cell_355/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_355/Sigmoid_1Sigmoid"while/lstm_cell_355/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_355/mulMul!while/lstm_cell_355/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_355/ReluRelu"while/lstm_cell_355/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_355/mul_1Mulwhile/lstm_cell_355/Sigmoid:y:0&while/lstm_cell_355/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_355/add_1AddV2while/lstm_cell_355/mul:z:0while/lstm_cell_355/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_355/Sigmoid_2Sigmoid"while/lstm_cell_355/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_355/Relu_1Reluwhile/lstm_cell_355/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_355/mul_2Mul!while/lstm_cell_355/Sigmoid_2:y:0(while/lstm_cell_355/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_355/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_355/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_355/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_355/BiasAdd/ReadVariableOp*^while/lstm_cell_355/MatMul/ReadVariableOp,^while/lstm_cell_355/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_355_biasadd_readvariableop_resource5while_lstm_cell_355_biasadd_readvariableop_resource_0"n
4while_lstm_cell_355_matmul_1_readvariableop_resource6while_lstm_cell_355_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_355_matmul_readvariableop_resource4while_lstm_cell_355_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_355/BiasAdd/ReadVariableOp*while/lstm_cell_355/BiasAdd/ReadVariableOp2V
)while/lstm_cell_355/MatMul/ReadVariableOp)while/lstm_cell_355/MatMul/ReadVariableOp2Z
+while/lstm_cell_355/MatMul_1/ReadVariableOp+while/lstm_cell_355/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2154407
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_354_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_354_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_354_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_354_matmul_readvariableop_resource:	?G
4while_lstm_cell_354_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_354_biasadd_readvariableop_resource:	???*while/lstm_cell_354/BiasAdd/ReadVariableOp?)while/lstm_cell_354/MatMul/ReadVariableOp?+while/lstm_cell_354/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_354/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_354_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_354/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_354/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_354/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_354_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_354/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_354/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_354/addAddV2$while/lstm_cell_354/MatMul:product:0&while/lstm_cell_354/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_354/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_354_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_354/BiasAddBiasAddwhile/lstm_cell_354/add:z:02while/lstm_cell_354/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_354/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_354/splitSplit,while/lstm_cell_354/split/split_dim:output:0$while/lstm_cell_354/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_354/SigmoidSigmoid"while/lstm_cell_354/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_354/Sigmoid_1Sigmoid"while/lstm_cell_354/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_354/mulMul!while/lstm_cell_354/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_354/ReluRelu"while/lstm_cell_354/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_354/mul_1Mulwhile/lstm_cell_354/Sigmoid:y:0&while/lstm_cell_354/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_354/add_1AddV2while/lstm_cell_354/mul:z:0while/lstm_cell_354/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_354/Sigmoid_2Sigmoid"while/lstm_cell_354/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_354/Relu_1Reluwhile/lstm_cell_354/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_354/mul_2Mul!while/lstm_cell_354/Sigmoid_2:y:0(while/lstm_cell_354/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_354/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_354/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_354/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_354/BiasAdd/ReadVariableOp*^while/lstm_cell_354/MatMul/ReadVariableOp,^while/lstm_cell_354/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_354_biasadd_readvariableop_resource5while_lstm_cell_354_biasadd_readvariableop_resource_0"n
4while_lstm_cell_354_matmul_1_readvariableop_resource6while_lstm_cell_354_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_354_matmul_readvariableop_resource4while_lstm_cell_354_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_354/BiasAdd/ReadVariableOp*while/lstm_cell_354/BiasAdd/ReadVariableOp2V
)while/lstm_cell_354/MatMul/ReadVariableOp)while/lstm_cell_354/MatMul/ReadVariableOp2Z
+while/lstm_cell_354/MatMul_1/ReadVariableOp+while/lstm_cell_354/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_sequential_52_layer_call_fn_2155579

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
J__inference_sequential_52_layer_call_and_return_conditional_losses_2154816o
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
?C
?

lstm_157_while_body_2155804.
*lstm_157_while_lstm_157_while_loop_counter4
0lstm_157_while_lstm_157_while_maximum_iterations
lstm_157_while_placeholder 
lstm_157_while_placeholder_1 
lstm_157_while_placeholder_2 
lstm_157_while_placeholder_3-
)lstm_157_while_lstm_157_strided_slice_1_0i
elstm_157_while_tensorarrayv2read_tensorlistgetitem_lstm_157_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_157_while_lstm_cell_355_matmul_readvariableop_resource_0:	d?R
?lstm_157_while_lstm_cell_355_matmul_1_readvariableop_resource_0:	2?M
>lstm_157_while_lstm_cell_355_biasadd_readvariableop_resource_0:	?
lstm_157_while_identity
lstm_157_while_identity_1
lstm_157_while_identity_2
lstm_157_while_identity_3
lstm_157_while_identity_4
lstm_157_while_identity_5+
'lstm_157_while_lstm_157_strided_slice_1g
clstm_157_while_tensorarrayv2read_tensorlistgetitem_lstm_157_tensorarrayunstack_tensorlistfromtensorN
;lstm_157_while_lstm_cell_355_matmul_readvariableop_resource:	d?P
=lstm_157_while_lstm_cell_355_matmul_1_readvariableop_resource:	2?K
<lstm_157_while_lstm_cell_355_biasadd_readvariableop_resource:	???3lstm_157/while/lstm_cell_355/BiasAdd/ReadVariableOp?2lstm_157/while/lstm_cell_355/MatMul/ReadVariableOp?4lstm_157/while/lstm_cell_355/MatMul_1/ReadVariableOp?
@lstm_157/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_157/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_157_while_tensorarrayv2read_tensorlistgetitem_lstm_157_tensorarrayunstack_tensorlistfromtensor_0lstm_157_while_placeholderIlstm_157/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_157/while/lstm_cell_355/MatMul/ReadVariableOpReadVariableOp=lstm_157_while_lstm_cell_355_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_157/while/lstm_cell_355/MatMulMatMul9lstm_157/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_157/while/lstm_cell_355/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_157/while/lstm_cell_355/MatMul_1/ReadVariableOpReadVariableOp?lstm_157_while_lstm_cell_355_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_157/while/lstm_cell_355/MatMul_1MatMullstm_157_while_placeholder_2<lstm_157/while/lstm_cell_355/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_157/while/lstm_cell_355/addAddV2-lstm_157/while/lstm_cell_355/MatMul:product:0/lstm_157/while/lstm_cell_355/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_157/while/lstm_cell_355/BiasAdd/ReadVariableOpReadVariableOp>lstm_157_while_lstm_cell_355_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_157/while/lstm_cell_355/BiasAddBiasAdd$lstm_157/while/lstm_cell_355/add:z:0;lstm_157/while/lstm_cell_355/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_157/while/lstm_cell_355/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_157/while/lstm_cell_355/splitSplit5lstm_157/while/lstm_cell_355/split/split_dim:output:0-lstm_157/while/lstm_cell_355/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_157/while/lstm_cell_355/SigmoidSigmoid+lstm_157/while/lstm_cell_355/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_157/while/lstm_cell_355/Sigmoid_1Sigmoid+lstm_157/while/lstm_cell_355/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_157/while/lstm_cell_355/mulMul*lstm_157/while/lstm_cell_355/Sigmoid_1:y:0lstm_157_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_157/while/lstm_cell_355/ReluRelu+lstm_157/while/lstm_cell_355/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_157/while/lstm_cell_355/mul_1Mul(lstm_157/while/lstm_cell_355/Sigmoid:y:0/lstm_157/while/lstm_cell_355/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_157/while/lstm_cell_355/add_1AddV2$lstm_157/while/lstm_cell_355/mul:z:0&lstm_157/while/lstm_cell_355/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_157/while/lstm_cell_355/Sigmoid_2Sigmoid+lstm_157/while/lstm_cell_355/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_157/while/lstm_cell_355/Relu_1Relu&lstm_157/while/lstm_cell_355/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_157/while/lstm_cell_355/mul_2Mul*lstm_157/while/lstm_cell_355/Sigmoid_2:y:01lstm_157/while/lstm_cell_355/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_157/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_157_while_placeholder_1lstm_157_while_placeholder&lstm_157/while/lstm_cell_355/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_157/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_157/while/addAddV2lstm_157_while_placeholderlstm_157/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_157/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_157/while/add_1AddV2*lstm_157_while_lstm_157_while_loop_counterlstm_157/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_157/while/IdentityIdentitylstm_157/while/add_1:z:0^lstm_157/while/NoOp*
T0*
_output_shapes
: ?
lstm_157/while/Identity_1Identity0lstm_157_while_lstm_157_while_maximum_iterations^lstm_157/while/NoOp*
T0*
_output_shapes
: t
lstm_157/while/Identity_2Identitylstm_157/while/add:z:0^lstm_157/while/NoOp*
T0*
_output_shapes
: ?
lstm_157/while/Identity_3IdentityClstm_157/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_157/while/NoOp*
T0*
_output_shapes
: ?
lstm_157/while/Identity_4Identity&lstm_157/while/lstm_cell_355/mul_2:z:0^lstm_157/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_157/while/Identity_5Identity&lstm_157/while/lstm_cell_355/add_1:z:0^lstm_157/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_157/while/NoOpNoOp4^lstm_157/while/lstm_cell_355/BiasAdd/ReadVariableOp3^lstm_157/while/lstm_cell_355/MatMul/ReadVariableOp5^lstm_157/while/lstm_cell_355/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_157_while_identity lstm_157/while/Identity:output:0"?
lstm_157_while_identity_1"lstm_157/while/Identity_1:output:0"?
lstm_157_while_identity_2"lstm_157/while/Identity_2:output:0"?
lstm_157_while_identity_3"lstm_157/while/Identity_3:output:0"?
lstm_157_while_identity_4"lstm_157/while/Identity_4:output:0"?
lstm_157_while_identity_5"lstm_157/while/Identity_5:output:0"T
'lstm_157_while_lstm_157_strided_slice_1)lstm_157_while_lstm_157_strided_slice_1_0"~
<lstm_157_while_lstm_cell_355_biasadd_readvariableop_resource>lstm_157_while_lstm_cell_355_biasadd_readvariableop_resource_0"?
=lstm_157_while_lstm_cell_355_matmul_1_readvariableop_resource?lstm_157_while_lstm_cell_355_matmul_1_readvariableop_resource_0"|
;lstm_157_while_lstm_cell_355_matmul_readvariableop_resource=lstm_157_while_lstm_cell_355_matmul_readvariableop_resource_0"?
clstm_157_while_tensorarrayv2read_tensorlistgetitem_lstm_157_tensorarrayunstack_tensorlistfromtensorelstm_157_while_tensorarrayv2read_tensorlistgetitem_lstm_157_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_157/while/lstm_cell_355/BiasAdd/ReadVariableOp3lstm_157/while/lstm_cell_355/BiasAdd/ReadVariableOp2h
2lstm_157/while/lstm_cell_355/MatMul/ReadVariableOp2lstm_157/while/lstm_cell_355/MatMul/ReadVariableOp2l
4lstm_157/while/lstm_cell_355/MatMul_1/ReadVariableOp4lstm_157/while/lstm_cell_355/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2157179
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_355_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_355_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_355_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_355_matmul_readvariableop_resource:	d?G
4while_lstm_cell_355_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_355_biasadd_readvariableop_resource:	???*while/lstm_cell_355/BiasAdd/ReadVariableOp?)while/lstm_cell_355/MatMul/ReadVariableOp?+while/lstm_cell_355/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_355/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_355_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_355/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_355/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_355/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_355_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_355/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_355/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_355/addAddV2$while/lstm_cell_355/MatMul:product:0&while/lstm_cell_355/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_355/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_355_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_355/BiasAddBiasAddwhile/lstm_cell_355/add:z:02while/lstm_cell_355/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_355/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_355/splitSplit,while/lstm_cell_355/split/split_dim:output:0$while/lstm_cell_355/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_355/SigmoidSigmoid"while/lstm_cell_355/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_355/Sigmoid_1Sigmoid"while/lstm_cell_355/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_355/mulMul!while/lstm_cell_355/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_355/ReluRelu"while/lstm_cell_355/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_355/mul_1Mulwhile/lstm_cell_355/Sigmoid:y:0&while/lstm_cell_355/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_355/add_1AddV2while/lstm_cell_355/mul:z:0while/lstm_cell_355/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_355/Sigmoid_2Sigmoid"while/lstm_cell_355/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_355/Relu_1Reluwhile/lstm_cell_355/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_355/mul_2Mul!while/lstm_cell_355/Sigmoid_2:y:0(while/lstm_cell_355/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_355/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_355/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_355/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_355/BiasAdd/ReadVariableOp*^while/lstm_cell_355/MatMul/ReadVariableOp,^while/lstm_cell_355/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_355_biasadd_readvariableop_resource5while_lstm_cell_355_biasadd_readvariableop_resource_0"n
4while_lstm_cell_355_matmul_1_readvariableop_resource6while_lstm_cell_355_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_355_matmul_readvariableop_resource4while_lstm_cell_355_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_355/BiasAdd/ReadVariableOp*while/lstm_cell_355/BiasAdd/ReadVariableOp2V
)while/lstm_cell_355/MatMul/ReadVariableOp)while/lstm_cell_355/MatMul/ReadVariableOp2Z
+while/lstm_cell_355/MatMul_1/ReadVariableOp+while/lstm_cell_355/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2154923
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_356_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_356_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_356_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_356_matmul_readvariableop_resource:2(F
4while_lstm_cell_356_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_356_biasadd_readvariableop_resource:(??*while/lstm_cell_356/BiasAdd/ReadVariableOp?)while/lstm_cell_356/MatMul/ReadVariableOp?+while/lstm_cell_356/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_356/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_356_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_356/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_356/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_356/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_356_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_356/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_356/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_356/addAddV2$while/lstm_cell_356/MatMul:product:0&while/lstm_cell_356/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_356/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_356_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_356/BiasAddBiasAddwhile/lstm_cell_356/add:z:02while/lstm_cell_356/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_356/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_356/splitSplit,while/lstm_cell_356/split/split_dim:output:0$while/lstm_cell_356/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_356/SigmoidSigmoid"while/lstm_cell_356/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_356/Sigmoid_1Sigmoid"while/lstm_cell_356/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_356/mulMul!while/lstm_cell_356/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_356/ReluRelu"while/lstm_cell_356/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_356/mul_1Mulwhile/lstm_cell_356/Sigmoid:y:0&while/lstm_cell_356/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_356/add_1AddV2while/lstm_cell_356/mul:z:0while/lstm_cell_356/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_356/Sigmoid_2Sigmoid"while/lstm_cell_356/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_356/Relu_1Reluwhile/lstm_cell_356/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_356/mul_2Mul!while/lstm_cell_356/Sigmoid_2:y:0(while/lstm_cell_356/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_356/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_356/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_356/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_356/BiasAdd/ReadVariableOp*^while/lstm_cell_356/MatMul/ReadVariableOp,^while/lstm_cell_356/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_356_biasadd_readvariableop_resource5while_lstm_cell_356_biasadd_readvariableop_resource_0"n
4while_lstm_cell_356_matmul_1_readvariableop_resource6while_lstm_cell_356_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_356_matmul_readvariableop_resource4while_lstm_cell_356_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_356/BiasAdd/ReadVariableOp*while/lstm_cell_356/BiasAdd/ReadVariableOp2V
)while/lstm_cell_356/MatMul/ReadVariableOp)while/lstm_cell_356/MatMul/ReadVariableOp2Z
+while/lstm_cell_356/MatMul_1/ReadVariableOp+while/lstm_cell_356/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_157_layer_call_and_return_conditional_losses_2157692

inputs?
,lstm_cell_355_matmul_readvariableop_resource:	d?A
.lstm_cell_355_matmul_1_readvariableop_resource:	2?<
-lstm_cell_355_biasadd_readvariableop_resource:	?
identity??$lstm_cell_355/BiasAdd/ReadVariableOp?#lstm_cell_355/MatMul/ReadVariableOp?%lstm_cell_355/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_355/MatMul/ReadVariableOpReadVariableOp,lstm_cell_355_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_355/MatMulMatMulstrided_slice_2:output:0+lstm_cell_355/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_355/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_355_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_355/MatMul_1MatMulzeros:output:0-lstm_cell_355/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_355/addAddV2lstm_cell_355/MatMul:product:0 lstm_cell_355/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_355/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_355_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_355/BiasAddBiasAddlstm_cell_355/add:z:0,lstm_cell_355/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_355/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_355/splitSplit&lstm_cell_355/split/split_dim:output:0lstm_cell_355/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_355/SigmoidSigmoidlstm_cell_355/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_355/Sigmoid_1Sigmoidlstm_cell_355/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_355/mulMullstm_cell_355/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_355/ReluRelulstm_cell_355/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_355/mul_1Mullstm_cell_355/Sigmoid:y:0 lstm_cell_355/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_355/add_1AddV2lstm_cell_355/mul:z:0lstm_cell_355/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_355/Sigmoid_2Sigmoidlstm_cell_355/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_355/Relu_1Relulstm_cell_355/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_355/mul_2Mullstm_cell_355/Sigmoid_2:y:0"lstm_cell_355/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_355_matmul_readvariableop_resource.lstm_cell_355_matmul_1_readvariableop_resource-lstm_cell_355_biasadd_readvariableop_resource*
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
while_body_2157608*
condR
while_cond_2157607*K
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
NoOpNoOp%^lstm_cell_355/BiasAdd/ReadVariableOp$^lstm_cell_355/MatMul/ReadVariableOp&^lstm_cell_355/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_355/BiasAdd/ReadVariableOp$lstm_cell_355/BiasAdd/ReadVariableOp2J
#lstm_cell_355/MatMul/ReadVariableOp#lstm_cell_355/MatMul/ReadVariableOp2N
%lstm_cell_355/MatMul_1/ReadVariableOp%lstm_cell_355/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_156_layer_call_and_return_conditional_losses_2155337

inputs?
,lstm_cell_354_matmul_readvariableop_resource:	?A
.lstm_cell_354_matmul_1_readvariableop_resource:	d?<
-lstm_cell_354_biasadd_readvariableop_resource:	?
identity??$lstm_cell_354/BiasAdd/ReadVariableOp?#lstm_cell_354/MatMul/ReadVariableOp?%lstm_cell_354/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_354/MatMul/ReadVariableOpReadVariableOp,lstm_cell_354_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_354/MatMulMatMulstrided_slice_2:output:0+lstm_cell_354/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_354/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_354_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_354/MatMul_1MatMulzeros:output:0-lstm_cell_354/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_354/addAddV2lstm_cell_354/MatMul:product:0 lstm_cell_354/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_354/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_354_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_354/BiasAddBiasAddlstm_cell_354/add:z:0,lstm_cell_354/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_354/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_354/splitSplit&lstm_cell_354/split/split_dim:output:0lstm_cell_354/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_354/SigmoidSigmoidlstm_cell_354/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_354/Sigmoid_1Sigmoidlstm_cell_354/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_354/mulMullstm_cell_354/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_354/ReluRelulstm_cell_354/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_354/mul_1Mullstm_cell_354/Sigmoid:y:0 lstm_cell_354/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_354/add_1AddV2lstm_cell_354/mul:z:0lstm_cell_354/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_354/Sigmoid_2Sigmoidlstm_cell_354/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_354/Relu_1Relulstm_cell_354/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_354/mul_2Mullstm_cell_354/Sigmoid_2:y:0"lstm_cell_354/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_354_matmul_readvariableop_resource.lstm_cell_354_matmul_1_readvariableop_resource-lstm_cell_354_biasadd_readvariableop_resource*
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
while_body_2155253*
condR
while_cond_2155252*K
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
NoOpNoOp%^lstm_cell_354/BiasAdd/ReadVariableOp$^lstm_cell_354/MatMul/ReadVariableOp&^lstm_cell_354/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_354/BiasAdd/ReadVariableOp$lstm_cell_354/BiasAdd/ReadVariableOp2J
#lstm_cell_354/MatMul/ReadVariableOp#lstm_cell_354/MatMul/ReadVariableOp2N
%lstm_cell_354/MatMul_1/ReadVariableOp%lstm_cell_354/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_2155087
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2155087___redundant_placeholder05
1while_while_cond_2155087___redundant_placeholder15
1while_while_cond_2155087___redundant_placeholder25
1while_while_cond_2155087___redundant_placeholder3
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
while_cond_2156705
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2156705___redundant_placeholder05
1while_while_cond_2156705___redundant_placeholder15
1while_while_cond_2156705___redundant_placeholder25
1while_while_cond_2156705___redundant_placeholder3
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
*__inference_lstm_158_layer_call_fn_2157725

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
E__inference_lstm_158_layer_call_and_return_conditional_losses_2154791o
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
?
E__inference_lstm_158_layer_call_and_return_conditional_losses_2154142

inputs'
lstm_cell_356_2154060:2('
lstm_cell_356_2154062:
(#
lstm_cell_356_2154064:(
identity??%lstm_cell_356/StatefulPartitionedCall?while;
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
%lstm_cell_356/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_356_2154060lstm_cell_356_2154062lstm_cell_356_2154064*
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
J__inference_lstm_cell_356_layer_call_and_return_conditional_losses_2154059n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_356_2154060lstm_cell_356_2154062lstm_cell_356_2154064*
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
while_body_2154073*
condR
while_cond_2154072*K
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
NoOpNoOp&^lstm_cell_356/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_356/StatefulPartitionedCall%lstm_cell_356/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?C
?

lstm_158_while_body_2156370.
*lstm_158_while_lstm_158_while_loop_counter4
0lstm_158_while_lstm_158_while_maximum_iterations
lstm_158_while_placeholder 
lstm_158_while_placeholder_1 
lstm_158_while_placeholder_2 
lstm_158_while_placeholder_3-
)lstm_158_while_lstm_158_strided_slice_1_0i
elstm_158_while_tensorarrayv2read_tensorlistgetitem_lstm_158_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_158_while_lstm_cell_356_matmul_readvariableop_resource_0:2(Q
?lstm_158_while_lstm_cell_356_matmul_1_readvariableop_resource_0:
(L
>lstm_158_while_lstm_cell_356_biasadd_readvariableop_resource_0:(
lstm_158_while_identity
lstm_158_while_identity_1
lstm_158_while_identity_2
lstm_158_while_identity_3
lstm_158_while_identity_4
lstm_158_while_identity_5+
'lstm_158_while_lstm_158_strided_slice_1g
clstm_158_while_tensorarrayv2read_tensorlistgetitem_lstm_158_tensorarrayunstack_tensorlistfromtensorM
;lstm_158_while_lstm_cell_356_matmul_readvariableop_resource:2(O
=lstm_158_while_lstm_cell_356_matmul_1_readvariableop_resource:
(J
<lstm_158_while_lstm_cell_356_biasadd_readvariableop_resource:(??3lstm_158/while/lstm_cell_356/BiasAdd/ReadVariableOp?2lstm_158/while/lstm_cell_356/MatMul/ReadVariableOp?4lstm_158/while/lstm_cell_356/MatMul_1/ReadVariableOp?
@lstm_158/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_158/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_158_while_tensorarrayv2read_tensorlistgetitem_lstm_158_tensorarrayunstack_tensorlistfromtensor_0lstm_158_while_placeholderIlstm_158/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_158/while/lstm_cell_356/MatMul/ReadVariableOpReadVariableOp=lstm_158_while_lstm_cell_356_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_158/while/lstm_cell_356/MatMulMatMul9lstm_158/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_158/while/lstm_cell_356/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_158/while/lstm_cell_356/MatMul_1/ReadVariableOpReadVariableOp?lstm_158_while_lstm_cell_356_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_158/while/lstm_cell_356/MatMul_1MatMullstm_158_while_placeholder_2<lstm_158/while/lstm_cell_356/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_158/while/lstm_cell_356/addAddV2-lstm_158/while/lstm_cell_356/MatMul:product:0/lstm_158/while/lstm_cell_356/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_158/while/lstm_cell_356/BiasAdd/ReadVariableOpReadVariableOp>lstm_158_while_lstm_cell_356_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_158/while/lstm_cell_356/BiasAddBiasAdd$lstm_158/while/lstm_cell_356/add:z:0;lstm_158/while/lstm_cell_356/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_158/while/lstm_cell_356/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_158/while/lstm_cell_356/splitSplit5lstm_158/while/lstm_cell_356/split/split_dim:output:0-lstm_158/while/lstm_cell_356/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_158/while/lstm_cell_356/SigmoidSigmoid+lstm_158/while/lstm_cell_356/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_158/while/lstm_cell_356/Sigmoid_1Sigmoid+lstm_158/while/lstm_cell_356/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_158/while/lstm_cell_356/mulMul*lstm_158/while/lstm_cell_356/Sigmoid_1:y:0lstm_158_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_158/while/lstm_cell_356/ReluRelu+lstm_158/while/lstm_cell_356/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_158/while/lstm_cell_356/mul_1Mul(lstm_158/while/lstm_cell_356/Sigmoid:y:0/lstm_158/while/lstm_cell_356/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_158/while/lstm_cell_356/add_1AddV2$lstm_158/while/lstm_cell_356/mul:z:0&lstm_158/while/lstm_cell_356/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_158/while/lstm_cell_356/Sigmoid_2Sigmoid+lstm_158/while/lstm_cell_356/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_158/while/lstm_cell_356/Relu_1Relu&lstm_158/while/lstm_cell_356/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_158/while/lstm_cell_356/mul_2Mul*lstm_158/while/lstm_cell_356/Sigmoid_2:y:01lstm_158/while/lstm_cell_356/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_158/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_158_while_placeholder_1lstm_158_while_placeholder&lstm_158/while/lstm_cell_356/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_158/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_158/while/addAddV2lstm_158_while_placeholderlstm_158/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_158/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_158/while/add_1AddV2*lstm_158_while_lstm_158_while_loop_counterlstm_158/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_158/while/IdentityIdentitylstm_158/while/add_1:z:0^lstm_158/while/NoOp*
T0*
_output_shapes
: ?
lstm_158/while/Identity_1Identity0lstm_158_while_lstm_158_while_maximum_iterations^lstm_158/while/NoOp*
T0*
_output_shapes
: t
lstm_158/while/Identity_2Identitylstm_158/while/add:z:0^lstm_158/while/NoOp*
T0*
_output_shapes
: ?
lstm_158/while/Identity_3IdentityClstm_158/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_158/while/NoOp*
T0*
_output_shapes
: ?
lstm_158/while/Identity_4Identity&lstm_158/while/lstm_cell_356/mul_2:z:0^lstm_158/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_158/while/Identity_5Identity&lstm_158/while/lstm_cell_356/add_1:z:0^lstm_158/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_158/while/NoOpNoOp4^lstm_158/while/lstm_cell_356/BiasAdd/ReadVariableOp3^lstm_158/while/lstm_cell_356/MatMul/ReadVariableOp5^lstm_158/while/lstm_cell_356/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_158_while_identity lstm_158/while/Identity:output:0"?
lstm_158_while_identity_1"lstm_158/while/Identity_1:output:0"?
lstm_158_while_identity_2"lstm_158/while/Identity_2:output:0"?
lstm_158_while_identity_3"lstm_158/while/Identity_3:output:0"?
lstm_158_while_identity_4"lstm_158/while/Identity_4:output:0"?
lstm_158_while_identity_5"lstm_158/while/Identity_5:output:0"T
'lstm_158_while_lstm_158_strided_slice_1)lstm_158_while_lstm_158_strided_slice_1_0"~
<lstm_158_while_lstm_cell_356_biasadd_readvariableop_resource>lstm_158_while_lstm_cell_356_biasadd_readvariableop_resource_0"?
=lstm_158_while_lstm_cell_356_matmul_1_readvariableop_resource?lstm_158_while_lstm_cell_356_matmul_1_readvariableop_resource_0"|
;lstm_158_while_lstm_cell_356_matmul_readvariableop_resource=lstm_158_while_lstm_cell_356_matmul_readvariableop_resource_0"?
clstm_158_while_tensorarrayv2read_tensorlistgetitem_lstm_158_tensorarrayunstack_tensorlistfromtensorelstm_158_while_tensorarrayv2read_tensorlistgetitem_lstm_158_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_158/while/lstm_cell_356/BiasAdd/ReadVariableOp3lstm_158/while/lstm_cell_356/BiasAdd/ReadVariableOp2h
2lstm_158/while/lstm_cell_356/MatMul/ReadVariableOp2lstm_158/while/lstm_cell_356/MatMul/ReadVariableOp2l
4lstm_158/while/lstm_cell_356/MatMul_1/ReadVariableOp4lstm_158/while/lstm_cell_356/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_sequential_52_layer_call_fn_2155457
lstm_156_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_156_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_52_layer_call_and_return_conditional_losses_2155405o
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
_user_specified_namelstm_156_input
?
?
while_cond_2156562
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2156562___redundant_placeholder05
1while_while_cond_2156562___redundant_placeholder15
1while_while_cond_2156562___redundant_placeholder25
1while_while_cond_2156562___redundant_placeholder3
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
J__inference_lstm_cell_355_layer_call_and_return_conditional_losses_2153709

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
/__inference_lstm_cell_354_layer_call_fn_2158344

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
J__inference_lstm_cell_354_layer_call_and_return_conditional_losses_2153359o
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
/__inference_lstm_cell_354_layer_call_fn_2158361

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
J__inference_lstm_cell_354_layer_call_and_return_conditional_losses_2153505o
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
while_cond_2155252
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2155252___redundant_placeholder05
1while_while_cond_2155252___redundant_placeholder15
1while_while_cond_2155252___redundant_placeholder25
1while_while_cond_2155252___redundant_placeholder3
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
while_body_2153564
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_354_2153588_0:	?0
while_lstm_cell_354_2153590_0:	d?,
while_lstm_cell_354_2153592_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_354_2153588:	?.
while_lstm_cell_354_2153590:	d?*
while_lstm_cell_354_2153592:	???+while/lstm_cell_354/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_354/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_354_2153588_0while_lstm_cell_354_2153590_0while_lstm_cell_354_2153592_0*
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
J__inference_lstm_cell_354_layer_call_and_return_conditional_losses_2153505?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_354/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_354/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_354/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_354/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_354_2153588while_lstm_cell_354_2153588_0"<
while_lstm_cell_354_2153590while_lstm_cell_354_2153590_0"<
while_lstm_cell_354_2153592while_lstm_cell_354_2153592_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_354/StatefulPartitionedCall+while/lstm_cell_354/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_dense_52_layer_call_and_return_conditional_losses_2158327

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
E__inference_lstm_156_layer_call_and_return_conditional_losses_2156933

inputs?
,lstm_cell_354_matmul_readvariableop_resource:	?A
.lstm_cell_354_matmul_1_readvariableop_resource:	d?<
-lstm_cell_354_biasadd_readvariableop_resource:	?
identity??$lstm_cell_354/BiasAdd/ReadVariableOp?#lstm_cell_354/MatMul/ReadVariableOp?%lstm_cell_354/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_354/MatMul/ReadVariableOpReadVariableOp,lstm_cell_354_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_354/MatMulMatMulstrided_slice_2:output:0+lstm_cell_354/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_354/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_354_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_354/MatMul_1MatMulzeros:output:0-lstm_cell_354/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_354/addAddV2lstm_cell_354/MatMul:product:0 lstm_cell_354/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_354/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_354_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_354/BiasAddBiasAddlstm_cell_354/add:z:0,lstm_cell_354/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_354/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_354/splitSplit&lstm_cell_354/split/split_dim:output:0lstm_cell_354/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_354/SigmoidSigmoidlstm_cell_354/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_354/Sigmoid_1Sigmoidlstm_cell_354/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_354/mulMullstm_cell_354/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_354/ReluRelulstm_cell_354/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_354/mul_1Mullstm_cell_354/Sigmoid:y:0 lstm_cell_354/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_354/add_1AddV2lstm_cell_354/mul:z:0lstm_cell_354/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_354/Sigmoid_2Sigmoidlstm_cell_354/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_354/Relu_1Relulstm_cell_354/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_354/mul_2Mullstm_cell_354/Sigmoid_2:y:0"lstm_cell_354/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_354_matmul_readvariableop_resource.lstm_cell_354_matmul_1_readvariableop_resource-lstm_cell_354_biasadd_readvariableop_resource*
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
while_body_2156849*
condR
while_cond_2156848*K
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
NoOpNoOp%^lstm_cell_354/BiasAdd/ReadVariableOp$^lstm_cell_354/MatMul/ReadVariableOp&^lstm_cell_354/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_354/BiasAdd/ReadVariableOp$lstm_cell_354/BiasAdd/ReadVariableOp2J
#lstm_cell_354/MatMul/ReadVariableOp#lstm_cell_354/MatMul/ReadVariableOp2N
%lstm_cell_354/MatMul_1/ReadVariableOp%lstm_cell_354/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_2157178
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2157178___redundant_placeholder05
1while_while_cond_2157178___redundant_placeholder15
1while_while_cond_2157178___redundant_placeholder25
1while_while_cond_2157178___redundant_placeholder3
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
*__inference_lstm_156_layer_call_fn_2156471
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
E__inference_lstm_156_layer_call_and_return_conditional_losses_2153442|
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
J__inference_lstm_cell_356_layer_call_and_return_conditional_losses_2154205

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
J__inference_lstm_cell_356_layer_call_and_return_conditional_losses_2154059

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
E__inference_lstm_158_layer_call_and_return_conditional_losses_2158308

inputs>
,lstm_cell_356_matmul_readvariableop_resource:2(@
.lstm_cell_356_matmul_1_readvariableop_resource:
(;
-lstm_cell_356_biasadd_readvariableop_resource:(
identity??$lstm_cell_356/BiasAdd/ReadVariableOp?#lstm_cell_356/MatMul/ReadVariableOp?%lstm_cell_356/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_356/MatMul/ReadVariableOpReadVariableOp,lstm_cell_356_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_356/MatMulMatMulstrided_slice_2:output:0+lstm_cell_356/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_356/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_356_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_356/MatMul_1MatMulzeros:output:0-lstm_cell_356/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_356/addAddV2lstm_cell_356/MatMul:product:0 lstm_cell_356/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_356/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_356_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_356/BiasAddBiasAddlstm_cell_356/add:z:0,lstm_cell_356/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_356/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_356/splitSplit&lstm_cell_356/split/split_dim:output:0lstm_cell_356/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_356/SigmoidSigmoidlstm_cell_356/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_356/Sigmoid_1Sigmoidlstm_cell_356/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_356/mulMullstm_cell_356/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_356/ReluRelulstm_cell_356/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_356/mul_1Mullstm_cell_356/Sigmoid:y:0 lstm_cell_356/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_356/add_1AddV2lstm_cell_356/mul:z:0lstm_cell_356/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_356/Sigmoid_2Sigmoidlstm_cell_356/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_356/Relu_1Relulstm_cell_356/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_356/mul_2Mullstm_cell_356/Sigmoid_2:y:0"lstm_cell_356/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_356_matmul_readvariableop_resource.lstm_cell_356_matmul_1_readvariableop_resource-lstm_cell_356_biasadd_readvariableop_resource*
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
while_body_2158224*
condR
while_cond_2158223*K
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
NoOpNoOp%^lstm_cell_356/BiasAdd/ReadVariableOp$^lstm_cell_356/MatMul/ReadVariableOp&^lstm_cell_356/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_356/BiasAdd/ReadVariableOp$lstm_cell_356/BiasAdd/ReadVariableOp2J
#lstm_cell_356/MatMul/ReadVariableOp#lstm_cell_356/MatMul/ReadVariableOp2N
%lstm_cell_356/MatMul_1/ReadVariableOp%lstm_cell_356/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_2157607
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2157607___redundant_placeholder05
1while_while_cond_2157607___redundant_placeholder15
1while_while_cond_2157607___redundant_placeholder25
1while_while_cond_2157607___redundant_placeholder3
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
while_body_2153723
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_355_2153747_0:	d?0
while_lstm_cell_355_2153749_0:	2?,
while_lstm_cell_355_2153751_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_355_2153747:	d?.
while_lstm_cell_355_2153749:	2?*
while_lstm_cell_355_2153751:	???+while/lstm_cell_355/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_355/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_355_2153747_0while_lstm_cell_355_2153749_0while_lstm_cell_355_2153751_0*
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
J__inference_lstm_cell_355_layer_call_and_return_conditional_losses_2153709?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_355/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_355/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_355/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_355/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_355_2153747while_lstm_cell_355_2153747_0"<
while_lstm_cell_355_2153749while_lstm_cell_355_2153749_0"<
while_lstm_cell_355_2153751while_lstm_cell_355_2153751_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_355/StatefulPartitionedCall+while/lstm_cell_355/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_52_layer_call_and_return_conditional_losses_2155487
lstm_156_input#
lstm_156_2155460:	?#
lstm_156_2155462:	d?
lstm_156_2155464:	?#
lstm_157_2155467:	d?#
lstm_157_2155469:	2?
lstm_157_2155471:	?"
lstm_158_2155474:2("
lstm_158_2155476:
(
lstm_158_2155478:("
dense_52_2155481:

dense_52_2155483:
identity?? dense_52/StatefulPartitionedCall? lstm_156/StatefulPartitionedCall? lstm_157/StatefulPartitionedCall? lstm_158/StatefulPartitionedCall?
 lstm_156/StatefulPartitionedCallStatefulPartitionedCalllstm_156_inputlstm_156_2155460lstm_156_2155462lstm_156_2155464*
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
E__inference_lstm_156_layer_call_and_return_conditional_losses_2154491?
 lstm_157/StatefulPartitionedCallStatefulPartitionedCall)lstm_156/StatefulPartitionedCall:output:0lstm_157_2155467lstm_157_2155469lstm_157_2155471*
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
E__inference_lstm_157_layer_call_and_return_conditional_losses_2154641?
 lstm_158/StatefulPartitionedCallStatefulPartitionedCall)lstm_157/StatefulPartitionedCall:output:0lstm_158_2155474lstm_158_2155476lstm_158_2155478*
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
E__inference_lstm_158_layer_call_and_return_conditional_losses_2154791?
 dense_52/StatefulPartitionedCallStatefulPartitionedCall)lstm_158/StatefulPartitionedCall:output:0dense_52_2155481dense_52_2155483*
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
E__inference_dense_52_layer_call_and_return_conditional_losses_2154809x
IdentityIdentity)dense_52/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_52/StatefulPartitionedCall!^lstm_156/StatefulPartitionedCall!^lstm_157/StatefulPartitionedCall!^lstm_158/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_52/StatefulPartitionedCall dense_52/StatefulPartitionedCall2D
 lstm_156/StatefulPartitionedCall lstm_156/StatefulPartitionedCall2D
 lstm_157/StatefulPartitionedCall lstm_157/StatefulPartitionedCall2D
 lstm_158/StatefulPartitionedCall lstm_158/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_156_input
?8
?
while_body_2154707
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_356_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_356_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_356_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_356_matmul_readvariableop_resource:2(F
4while_lstm_cell_356_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_356_biasadd_readvariableop_resource:(??*while/lstm_cell_356/BiasAdd/ReadVariableOp?)while/lstm_cell_356/MatMul/ReadVariableOp?+while/lstm_cell_356/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_356/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_356_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_356/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_356/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_356/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_356_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_356/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_356/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_356/addAddV2$while/lstm_cell_356/MatMul:product:0&while/lstm_cell_356/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_356/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_356_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_356/BiasAddBiasAddwhile/lstm_cell_356/add:z:02while/lstm_cell_356/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_356/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_356/splitSplit,while/lstm_cell_356/split/split_dim:output:0$while/lstm_cell_356/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_356/SigmoidSigmoid"while/lstm_cell_356/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_356/Sigmoid_1Sigmoid"while/lstm_cell_356/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_356/mulMul!while/lstm_cell_356/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_356/ReluRelu"while/lstm_cell_356/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_356/mul_1Mulwhile/lstm_cell_356/Sigmoid:y:0&while/lstm_cell_356/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_356/add_1AddV2while/lstm_cell_356/mul:z:0while/lstm_cell_356/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_356/Sigmoid_2Sigmoid"while/lstm_cell_356/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_356/Relu_1Reluwhile/lstm_cell_356/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_356/mul_2Mul!while/lstm_cell_356/Sigmoid_2:y:0(while/lstm_cell_356/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_356/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_356/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_356/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_356/BiasAdd/ReadVariableOp*^while/lstm_cell_356/MatMul/ReadVariableOp,^while/lstm_cell_356/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_356_biasadd_readvariableop_resource5while_lstm_cell_356_biasadd_readvariableop_resource_0"n
4while_lstm_cell_356_matmul_1_readvariableop_resource6while_lstm_cell_356_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_356_matmul_readvariableop_resource4while_lstm_cell_356_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_356/BiasAdd/ReadVariableOp*while/lstm_cell_356/BiasAdd/ReadVariableOp2V
)while/lstm_cell_356/MatMul/ReadVariableOp)while/lstm_cell_356/MatMul/ReadVariableOp2Z
+while/lstm_cell_356/MatMul_1/ReadVariableOp+while/lstm_cell_356/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_52_layer_call_and_return_conditional_losses_2156460

inputsH
5lstm_156_lstm_cell_354_matmul_readvariableop_resource:	?J
7lstm_156_lstm_cell_354_matmul_1_readvariableop_resource:	d?E
6lstm_156_lstm_cell_354_biasadd_readvariableop_resource:	?H
5lstm_157_lstm_cell_355_matmul_readvariableop_resource:	d?J
7lstm_157_lstm_cell_355_matmul_1_readvariableop_resource:	2?E
6lstm_157_lstm_cell_355_biasadd_readvariableop_resource:	?G
5lstm_158_lstm_cell_356_matmul_readvariableop_resource:2(I
7lstm_158_lstm_cell_356_matmul_1_readvariableop_resource:
(D
6lstm_158_lstm_cell_356_biasadd_readvariableop_resource:(9
'dense_52_matmul_readvariableop_resource:
6
(dense_52_biasadd_readvariableop_resource:
identity??dense_52/BiasAdd/ReadVariableOp?dense_52/MatMul/ReadVariableOp?-lstm_156/lstm_cell_354/BiasAdd/ReadVariableOp?,lstm_156/lstm_cell_354/MatMul/ReadVariableOp?.lstm_156/lstm_cell_354/MatMul_1/ReadVariableOp?lstm_156/while?-lstm_157/lstm_cell_355/BiasAdd/ReadVariableOp?,lstm_157/lstm_cell_355/MatMul/ReadVariableOp?.lstm_157/lstm_cell_355/MatMul_1/ReadVariableOp?lstm_157/while?-lstm_158/lstm_cell_356/BiasAdd/ReadVariableOp?,lstm_158/lstm_cell_356/MatMul/ReadVariableOp?.lstm_158/lstm_cell_356/MatMul_1/ReadVariableOp?lstm_158/whileD
lstm_156/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_156/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_156/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_156/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_156/strided_sliceStridedSlicelstm_156/Shape:output:0%lstm_156/strided_slice/stack:output:0'lstm_156/strided_slice/stack_1:output:0'lstm_156/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_156/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_156/zeros/packedPacklstm_156/strided_slice:output:0 lstm_156/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_156/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_156/zerosFilllstm_156/zeros/packed:output:0lstm_156/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_156/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_156/zeros_1/packedPacklstm_156/strided_slice:output:0"lstm_156/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_156/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_156/zeros_1Fill lstm_156/zeros_1/packed:output:0lstm_156/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_156/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_156/transpose	Transposeinputs lstm_156/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_156/Shape_1Shapelstm_156/transpose:y:0*
T0*
_output_shapes
:h
lstm_156/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_156/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_156/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_156/strided_slice_1StridedSlicelstm_156/Shape_1:output:0'lstm_156/strided_slice_1/stack:output:0)lstm_156/strided_slice_1/stack_1:output:0)lstm_156/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_156/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_156/TensorArrayV2TensorListReserve-lstm_156/TensorArrayV2/element_shape:output:0!lstm_156/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_156/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_156/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_156/transpose:y:0Glstm_156/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_156/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_156/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_156/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_156/strided_slice_2StridedSlicelstm_156/transpose:y:0'lstm_156/strided_slice_2/stack:output:0)lstm_156/strided_slice_2/stack_1:output:0)lstm_156/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_156/lstm_cell_354/MatMul/ReadVariableOpReadVariableOp5lstm_156_lstm_cell_354_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_156/lstm_cell_354/MatMulMatMul!lstm_156/strided_slice_2:output:04lstm_156/lstm_cell_354/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_156/lstm_cell_354/MatMul_1/ReadVariableOpReadVariableOp7lstm_156_lstm_cell_354_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_156/lstm_cell_354/MatMul_1MatMullstm_156/zeros:output:06lstm_156/lstm_cell_354/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_156/lstm_cell_354/addAddV2'lstm_156/lstm_cell_354/MatMul:product:0)lstm_156/lstm_cell_354/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_156/lstm_cell_354/BiasAdd/ReadVariableOpReadVariableOp6lstm_156_lstm_cell_354_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_156/lstm_cell_354/BiasAddBiasAddlstm_156/lstm_cell_354/add:z:05lstm_156/lstm_cell_354/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_156/lstm_cell_354/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_156/lstm_cell_354/splitSplit/lstm_156/lstm_cell_354/split/split_dim:output:0'lstm_156/lstm_cell_354/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_156/lstm_cell_354/SigmoidSigmoid%lstm_156/lstm_cell_354/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_156/lstm_cell_354/Sigmoid_1Sigmoid%lstm_156/lstm_cell_354/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_156/lstm_cell_354/mulMul$lstm_156/lstm_cell_354/Sigmoid_1:y:0lstm_156/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_156/lstm_cell_354/ReluRelu%lstm_156/lstm_cell_354/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_156/lstm_cell_354/mul_1Mul"lstm_156/lstm_cell_354/Sigmoid:y:0)lstm_156/lstm_cell_354/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_156/lstm_cell_354/add_1AddV2lstm_156/lstm_cell_354/mul:z:0 lstm_156/lstm_cell_354/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_156/lstm_cell_354/Sigmoid_2Sigmoid%lstm_156/lstm_cell_354/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_156/lstm_cell_354/Relu_1Relu lstm_156/lstm_cell_354/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_156/lstm_cell_354/mul_2Mul$lstm_156/lstm_cell_354/Sigmoid_2:y:0+lstm_156/lstm_cell_354/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_156/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_156/TensorArrayV2_1TensorListReserve/lstm_156/TensorArrayV2_1/element_shape:output:0!lstm_156/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_156/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_156/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_156/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_156/whileWhile$lstm_156/while/loop_counter:output:0*lstm_156/while/maximum_iterations:output:0lstm_156/time:output:0!lstm_156/TensorArrayV2_1:handle:0lstm_156/zeros:output:0lstm_156/zeros_1:output:0!lstm_156/strided_slice_1:output:0@lstm_156/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_156_lstm_cell_354_matmul_readvariableop_resource7lstm_156_lstm_cell_354_matmul_1_readvariableop_resource6lstm_156_lstm_cell_354_biasadd_readvariableop_resource*
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
lstm_156_while_body_2156092*'
condR
lstm_156_while_cond_2156091*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_156/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_156/TensorArrayV2Stack/TensorListStackTensorListStacklstm_156/while:output:3Blstm_156/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_156/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_156/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_156/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_156/strided_slice_3StridedSlice4lstm_156/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_156/strided_slice_3/stack:output:0)lstm_156/strided_slice_3/stack_1:output:0)lstm_156/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_156/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_156/transpose_1	Transpose4lstm_156/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_156/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_156/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_157/ShapeShapelstm_156/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_157/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_157/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_157/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_157/strided_sliceStridedSlicelstm_157/Shape:output:0%lstm_157/strided_slice/stack:output:0'lstm_157/strided_slice/stack_1:output:0'lstm_157/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_157/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_157/zeros/packedPacklstm_157/strided_slice:output:0 lstm_157/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_157/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_157/zerosFilllstm_157/zeros/packed:output:0lstm_157/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_157/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_157/zeros_1/packedPacklstm_157/strided_slice:output:0"lstm_157/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_157/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_157/zeros_1Fill lstm_157/zeros_1/packed:output:0lstm_157/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_157/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_157/transpose	Transposelstm_156/transpose_1:y:0 lstm_157/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_157/Shape_1Shapelstm_157/transpose:y:0*
T0*
_output_shapes
:h
lstm_157/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_157/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_157/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_157/strided_slice_1StridedSlicelstm_157/Shape_1:output:0'lstm_157/strided_slice_1/stack:output:0)lstm_157/strided_slice_1/stack_1:output:0)lstm_157/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_157/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_157/TensorArrayV2TensorListReserve-lstm_157/TensorArrayV2/element_shape:output:0!lstm_157/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_157/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_157/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_157/transpose:y:0Glstm_157/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_157/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_157/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_157/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_157/strided_slice_2StridedSlicelstm_157/transpose:y:0'lstm_157/strided_slice_2/stack:output:0)lstm_157/strided_slice_2/stack_1:output:0)lstm_157/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_157/lstm_cell_355/MatMul/ReadVariableOpReadVariableOp5lstm_157_lstm_cell_355_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_157/lstm_cell_355/MatMulMatMul!lstm_157/strided_slice_2:output:04lstm_157/lstm_cell_355/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_157/lstm_cell_355/MatMul_1/ReadVariableOpReadVariableOp7lstm_157_lstm_cell_355_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_157/lstm_cell_355/MatMul_1MatMullstm_157/zeros:output:06lstm_157/lstm_cell_355/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_157/lstm_cell_355/addAddV2'lstm_157/lstm_cell_355/MatMul:product:0)lstm_157/lstm_cell_355/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_157/lstm_cell_355/BiasAdd/ReadVariableOpReadVariableOp6lstm_157_lstm_cell_355_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_157/lstm_cell_355/BiasAddBiasAddlstm_157/lstm_cell_355/add:z:05lstm_157/lstm_cell_355/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_157/lstm_cell_355/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_157/lstm_cell_355/splitSplit/lstm_157/lstm_cell_355/split/split_dim:output:0'lstm_157/lstm_cell_355/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_157/lstm_cell_355/SigmoidSigmoid%lstm_157/lstm_cell_355/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_157/lstm_cell_355/Sigmoid_1Sigmoid%lstm_157/lstm_cell_355/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_157/lstm_cell_355/mulMul$lstm_157/lstm_cell_355/Sigmoid_1:y:0lstm_157/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_157/lstm_cell_355/ReluRelu%lstm_157/lstm_cell_355/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_157/lstm_cell_355/mul_1Mul"lstm_157/lstm_cell_355/Sigmoid:y:0)lstm_157/lstm_cell_355/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_157/lstm_cell_355/add_1AddV2lstm_157/lstm_cell_355/mul:z:0 lstm_157/lstm_cell_355/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_157/lstm_cell_355/Sigmoid_2Sigmoid%lstm_157/lstm_cell_355/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_157/lstm_cell_355/Relu_1Relu lstm_157/lstm_cell_355/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_157/lstm_cell_355/mul_2Mul$lstm_157/lstm_cell_355/Sigmoid_2:y:0+lstm_157/lstm_cell_355/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_157/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_157/TensorArrayV2_1TensorListReserve/lstm_157/TensorArrayV2_1/element_shape:output:0!lstm_157/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_157/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_157/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_157/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_157/whileWhile$lstm_157/while/loop_counter:output:0*lstm_157/while/maximum_iterations:output:0lstm_157/time:output:0!lstm_157/TensorArrayV2_1:handle:0lstm_157/zeros:output:0lstm_157/zeros_1:output:0!lstm_157/strided_slice_1:output:0@lstm_157/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_157_lstm_cell_355_matmul_readvariableop_resource7lstm_157_lstm_cell_355_matmul_1_readvariableop_resource6lstm_157_lstm_cell_355_biasadd_readvariableop_resource*
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
lstm_157_while_body_2156231*'
condR
lstm_157_while_cond_2156230*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_157/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_157/TensorArrayV2Stack/TensorListStackTensorListStacklstm_157/while:output:3Blstm_157/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_157/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_157/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_157/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_157/strided_slice_3StridedSlice4lstm_157/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_157/strided_slice_3/stack:output:0)lstm_157/strided_slice_3/stack_1:output:0)lstm_157/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_157/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_157/transpose_1	Transpose4lstm_157/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_157/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_157/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_158/ShapeShapelstm_157/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_158/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_158/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_158/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_158/strided_sliceStridedSlicelstm_158/Shape:output:0%lstm_158/strided_slice/stack:output:0'lstm_158/strided_slice/stack_1:output:0'lstm_158/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_158/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_158/zeros/packedPacklstm_158/strided_slice:output:0 lstm_158/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_158/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_158/zerosFilllstm_158/zeros/packed:output:0lstm_158/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_158/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_158/zeros_1/packedPacklstm_158/strided_slice:output:0"lstm_158/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_158/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_158/zeros_1Fill lstm_158/zeros_1/packed:output:0lstm_158/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_158/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_158/transpose	Transposelstm_157/transpose_1:y:0 lstm_158/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_158/Shape_1Shapelstm_158/transpose:y:0*
T0*
_output_shapes
:h
lstm_158/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_158/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_158/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_158/strided_slice_1StridedSlicelstm_158/Shape_1:output:0'lstm_158/strided_slice_1/stack:output:0)lstm_158/strided_slice_1/stack_1:output:0)lstm_158/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_158/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_158/TensorArrayV2TensorListReserve-lstm_158/TensorArrayV2/element_shape:output:0!lstm_158/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_158/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_158/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_158/transpose:y:0Glstm_158/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_158/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_158/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_158/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_158/strided_slice_2StridedSlicelstm_158/transpose:y:0'lstm_158/strided_slice_2/stack:output:0)lstm_158/strided_slice_2/stack_1:output:0)lstm_158/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_158/lstm_cell_356/MatMul/ReadVariableOpReadVariableOp5lstm_158_lstm_cell_356_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_158/lstm_cell_356/MatMulMatMul!lstm_158/strided_slice_2:output:04lstm_158/lstm_cell_356/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_158/lstm_cell_356/MatMul_1/ReadVariableOpReadVariableOp7lstm_158_lstm_cell_356_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_158/lstm_cell_356/MatMul_1MatMullstm_158/zeros:output:06lstm_158/lstm_cell_356/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_158/lstm_cell_356/addAddV2'lstm_158/lstm_cell_356/MatMul:product:0)lstm_158/lstm_cell_356/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_158/lstm_cell_356/BiasAdd/ReadVariableOpReadVariableOp6lstm_158_lstm_cell_356_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_158/lstm_cell_356/BiasAddBiasAddlstm_158/lstm_cell_356/add:z:05lstm_158/lstm_cell_356/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_158/lstm_cell_356/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_158/lstm_cell_356/splitSplit/lstm_158/lstm_cell_356/split/split_dim:output:0'lstm_158/lstm_cell_356/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_158/lstm_cell_356/SigmoidSigmoid%lstm_158/lstm_cell_356/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_158/lstm_cell_356/Sigmoid_1Sigmoid%lstm_158/lstm_cell_356/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_158/lstm_cell_356/mulMul$lstm_158/lstm_cell_356/Sigmoid_1:y:0lstm_158/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_158/lstm_cell_356/ReluRelu%lstm_158/lstm_cell_356/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_158/lstm_cell_356/mul_1Mul"lstm_158/lstm_cell_356/Sigmoid:y:0)lstm_158/lstm_cell_356/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_158/lstm_cell_356/add_1AddV2lstm_158/lstm_cell_356/mul:z:0 lstm_158/lstm_cell_356/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_158/lstm_cell_356/Sigmoid_2Sigmoid%lstm_158/lstm_cell_356/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_158/lstm_cell_356/Relu_1Relu lstm_158/lstm_cell_356/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_158/lstm_cell_356/mul_2Mul$lstm_158/lstm_cell_356/Sigmoid_2:y:0+lstm_158/lstm_cell_356/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_158/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_158/TensorArrayV2_1TensorListReserve/lstm_158/TensorArrayV2_1/element_shape:output:0!lstm_158/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_158/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_158/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_158/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_158/whileWhile$lstm_158/while/loop_counter:output:0*lstm_158/while/maximum_iterations:output:0lstm_158/time:output:0!lstm_158/TensorArrayV2_1:handle:0lstm_158/zeros:output:0lstm_158/zeros_1:output:0!lstm_158/strided_slice_1:output:0@lstm_158/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_158_lstm_cell_356_matmul_readvariableop_resource7lstm_158_lstm_cell_356_matmul_1_readvariableop_resource6lstm_158_lstm_cell_356_biasadd_readvariableop_resource*
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
lstm_158_while_body_2156370*'
condR
lstm_158_while_cond_2156369*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_158/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_158/TensorArrayV2Stack/TensorListStackTensorListStacklstm_158/while:output:3Blstm_158/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_158/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_158/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_158/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_158/strided_slice_3StridedSlice4lstm_158/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_158/strided_slice_3/stack:output:0)lstm_158/strided_slice_3/stack_1:output:0)lstm_158/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_158/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_158/transpose_1	Transpose4lstm_158/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_158/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_158/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_52/MatMul/ReadVariableOpReadVariableOp'dense_52_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_52/MatMulMatMul!lstm_158/strided_slice_3:output:0&dense_52/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_52/BiasAdd/ReadVariableOpReadVariableOp(dense_52_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_52/BiasAddBiasAdddense_52/MatMul:product:0'dense_52/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_52/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_52/BiasAdd/ReadVariableOp^dense_52/MatMul/ReadVariableOp.^lstm_156/lstm_cell_354/BiasAdd/ReadVariableOp-^lstm_156/lstm_cell_354/MatMul/ReadVariableOp/^lstm_156/lstm_cell_354/MatMul_1/ReadVariableOp^lstm_156/while.^lstm_157/lstm_cell_355/BiasAdd/ReadVariableOp-^lstm_157/lstm_cell_355/MatMul/ReadVariableOp/^lstm_157/lstm_cell_355/MatMul_1/ReadVariableOp^lstm_157/while.^lstm_158/lstm_cell_356/BiasAdd/ReadVariableOp-^lstm_158/lstm_cell_356/MatMul/ReadVariableOp/^lstm_158/lstm_cell_356/MatMul_1/ReadVariableOp^lstm_158/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_52/BiasAdd/ReadVariableOpdense_52/BiasAdd/ReadVariableOp2@
dense_52/MatMul/ReadVariableOpdense_52/MatMul/ReadVariableOp2^
-lstm_156/lstm_cell_354/BiasAdd/ReadVariableOp-lstm_156/lstm_cell_354/BiasAdd/ReadVariableOp2\
,lstm_156/lstm_cell_354/MatMul/ReadVariableOp,lstm_156/lstm_cell_354/MatMul/ReadVariableOp2`
.lstm_156/lstm_cell_354/MatMul_1/ReadVariableOp.lstm_156/lstm_cell_354/MatMul_1/ReadVariableOp2 
lstm_156/whilelstm_156/while2^
-lstm_157/lstm_cell_355/BiasAdd/ReadVariableOp-lstm_157/lstm_cell_355/BiasAdd/ReadVariableOp2\
,lstm_157/lstm_cell_355/MatMul/ReadVariableOp,lstm_157/lstm_cell_355/MatMul/ReadVariableOp2`
.lstm_157/lstm_cell_355/MatMul_1/ReadVariableOp.lstm_157/lstm_cell_355/MatMul_1/ReadVariableOp2 
lstm_157/whilelstm_157/while2^
-lstm_158/lstm_cell_356/BiasAdd/ReadVariableOp-lstm_158/lstm_cell_356/BiasAdd/ReadVariableOp2\
,lstm_158/lstm_cell_356/MatMul/ReadVariableOp,lstm_158/lstm_cell_356/MatMul/ReadVariableOp2`
.lstm_158/lstm_cell_356/MatMul_1/ReadVariableOp.lstm_158/lstm_cell_356/MatMul_1/ReadVariableOp2 
lstm_158/whilelstm_158/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_156_layer_call_fn_2156504

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
E__inference_lstm_156_layer_call_and_return_conditional_losses_2155337s
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
E__inference_lstm_158_layer_call_and_return_conditional_losses_2154333

inputs'
lstm_cell_356_2154251:2('
lstm_cell_356_2154253:
(#
lstm_cell_356_2154255:(
identity??%lstm_cell_356/StatefulPartitionedCall?while;
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
%lstm_cell_356/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_356_2154251lstm_cell_356_2154253lstm_cell_356_2154255*
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
J__inference_lstm_cell_356_layer_call_and_return_conditional_losses_2154205n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_356_2154251lstm_cell_356_2154253lstm_cell_356_2154255*
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
while_body_2154264*
condR
while_cond_2154263*K
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
NoOpNoOp&^lstm_cell_356/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_356/StatefulPartitionedCall%lstm_cell_356/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_156_layer_call_fn_2156493

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
E__inference_lstm_156_layer_call_and_return_conditional_losses_2154491s
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
while_cond_2153722
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2153722___redundant_placeholder05
1while_while_cond_2153722___redundant_placeholder15
1while_while_cond_2153722___redundant_placeholder25
1while_while_cond_2153722___redundant_placeholder3
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
lstm_157_while_cond_2156230.
*lstm_157_while_lstm_157_while_loop_counter4
0lstm_157_while_lstm_157_while_maximum_iterations
lstm_157_while_placeholder 
lstm_157_while_placeholder_1 
lstm_157_while_placeholder_2 
lstm_157_while_placeholder_30
,lstm_157_while_less_lstm_157_strided_slice_1G
Clstm_157_while_lstm_157_while_cond_2156230___redundant_placeholder0G
Clstm_157_while_lstm_157_while_cond_2156230___redundant_placeholder1G
Clstm_157_while_lstm_157_while_cond_2156230___redundant_placeholder2G
Clstm_157_while_lstm_157_while_cond_2156230___redundant_placeholder3
lstm_157_while_identity
?
lstm_157/while/LessLesslstm_157_while_placeholder,lstm_157_while_less_lstm_157_strided_slice_1*
T0*
_output_shapes
: ]
lstm_157/while/IdentityIdentitylstm_157/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_157_while_identity lstm_157/while/Identity:output:0*(
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
E__inference_lstm_157_layer_call_and_return_conditional_losses_2155172

inputs?
,lstm_cell_355_matmul_readvariableop_resource:	d?A
.lstm_cell_355_matmul_1_readvariableop_resource:	2?<
-lstm_cell_355_biasadd_readvariableop_resource:	?
identity??$lstm_cell_355/BiasAdd/ReadVariableOp?#lstm_cell_355/MatMul/ReadVariableOp?%lstm_cell_355/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_355/MatMul/ReadVariableOpReadVariableOp,lstm_cell_355_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_355/MatMulMatMulstrided_slice_2:output:0+lstm_cell_355/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_355/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_355_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_355/MatMul_1MatMulzeros:output:0-lstm_cell_355/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_355/addAddV2lstm_cell_355/MatMul:product:0 lstm_cell_355/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_355/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_355_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_355/BiasAddBiasAddlstm_cell_355/add:z:0,lstm_cell_355/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_355/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_355/splitSplit&lstm_cell_355/split/split_dim:output:0lstm_cell_355/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_355/SigmoidSigmoidlstm_cell_355/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_355/Sigmoid_1Sigmoidlstm_cell_355/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_355/mulMullstm_cell_355/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_355/ReluRelulstm_cell_355/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_355/mul_1Mullstm_cell_355/Sigmoid:y:0 lstm_cell_355/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_355/add_1AddV2lstm_cell_355/mul:z:0lstm_cell_355/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_355/Sigmoid_2Sigmoidlstm_cell_355/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_355/Relu_1Relulstm_cell_355/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_355/mul_2Mullstm_cell_355/Sigmoid_2:y:0"lstm_cell_355/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_355_matmul_readvariableop_resource.lstm_cell_355_matmul_1_readvariableop_resource-lstm_cell_355_biasadd_readvariableop_resource*
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
while_body_2155088*
condR
while_cond_2155087*K
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
NoOpNoOp%^lstm_cell_355/BiasAdd/ReadVariableOp$^lstm_cell_355/MatMul/ReadVariableOp&^lstm_cell_355/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_355/BiasAdd/ReadVariableOp$lstm_cell_355/BiasAdd/ReadVariableOp2J
#lstm_cell_355/MatMul/ReadVariableOp#lstm_cell_355/MatMul/ReadVariableOp2N
%lstm_cell_355/MatMul_1/ReadVariableOp%lstm_cell_355/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_354_layer_call_and_return_conditional_losses_2153505

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
?W
?
 __inference__traced_save_2158764
file_prefix.
*savev2_dense_52_kernel_read_readvariableop,
(savev2_dense_52_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_156_lstm_cell_156_kernel_read_readvariableopF
Bsavev2_lstm_156_lstm_cell_156_recurrent_kernel_read_readvariableop:
6savev2_lstm_156_lstm_cell_156_bias_read_readvariableop<
8savev2_lstm_157_lstm_cell_157_kernel_read_readvariableopF
Bsavev2_lstm_157_lstm_cell_157_recurrent_kernel_read_readvariableop:
6savev2_lstm_157_lstm_cell_157_bias_read_readvariableop<
8savev2_lstm_158_lstm_cell_158_kernel_read_readvariableopF
Bsavev2_lstm_158_lstm_cell_158_recurrent_kernel_read_readvariableop:
6savev2_lstm_158_lstm_cell_158_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_52_kernel_m_read_readvariableop3
/savev2_adam_dense_52_bias_m_read_readvariableopC
?savev2_adam_lstm_156_lstm_cell_156_kernel_m_read_readvariableopM
Isavev2_adam_lstm_156_lstm_cell_156_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_156_lstm_cell_156_bias_m_read_readvariableopC
?savev2_adam_lstm_157_lstm_cell_157_kernel_m_read_readvariableopM
Isavev2_adam_lstm_157_lstm_cell_157_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_157_lstm_cell_157_bias_m_read_readvariableopC
?savev2_adam_lstm_158_lstm_cell_158_kernel_m_read_readvariableopM
Isavev2_adam_lstm_158_lstm_cell_158_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_158_lstm_cell_158_bias_m_read_readvariableop5
1savev2_adam_dense_52_kernel_v_read_readvariableop3
/savev2_adam_dense_52_bias_v_read_readvariableopC
?savev2_adam_lstm_156_lstm_cell_156_kernel_v_read_readvariableopM
Isavev2_adam_lstm_156_lstm_cell_156_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_156_lstm_cell_156_bias_v_read_readvariableopC
?savev2_adam_lstm_157_lstm_cell_157_kernel_v_read_readvariableopM
Isavev2_adam_lstm_157_lstm_cell_157_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_157_lstm_cell_157_bias_v_read_readvariableopC
?savev2_adam_lstm_158_lstm_cell_158_kernel_v_read_readvariableopM
Isavev2_adam_lstm_158_lstm_cell_158_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_158_lstm_cell_158_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_52_kernel_read_readvariableop(savev2_dense_52_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_156_lstm_cell_156_kernel_read_readvariableopBsavev2_lstm_156_lstm_cell_156_recurrent_kernel_read_readvariableop6savev2_lstm_156_lstm_cell_156_bias_read_readvariableop8savev2_lstm_157_lstm_cell_157_kernel_read_readvariableopBsavev2_lstm_157_lstm_cell_157_recurrent_kernel_read_readvariableop6savev2_lstm_157_lstm_cell_157_bias_read_readvariableop8savev2_lstm_158_lstm_cell_158_kernel_read_readvariableopBsavev2_lstm_158_lstm_cell_158_recurrent_kernel_read_readvariableop6savev2_lstm_158_lstm_cell_158_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_52_kernel_m_read_readvariableop/savev2_adam_dense_52_bias_m_read_readvariableop?savev2_adam_lstm_156_lstm_cell_156_kernel_m_read_readvariableopIsavev2_adam_lstm_156_lstm_cell_156_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_156_lstm_cell_156_bias_m_read_readvariableop?savev2_adam_lstm_157_lstm_cell_157_kernel_m_read_readvariableopIsavev2_adam_lstm_157_lstm_cell_157_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_157_lstm_cell_157_bias_m_read_readvariableop?savev2_adam_lstm_158_lstm_cell_158_kernel_m_read_readvariableopIsavev2_adam_lstm_158_lstm_cell_158_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_158_lstm_cell_158_bias_m_read_readvariableop1savev2_adam_dense_52_kernel_v_read_readvariableop/savev2_adam_dense_52_bias_v_read_readvariableop?savev2_adam_lstm_156_lstm_cell_156_kernel_v_read_readvariableopIsavev2_adam_lstm_156_lstm_cell_156_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_156_lstm_cell_156_bias_v_read_readvariableop?savev2_adam_lstm_157_lstm_cell_157_kernel_v_read_readvariableopIsavev2_adam_lstm_157_lstm_cell_157_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_157_lstm_cell_157_bias_v_read_readvariableop?savev2_adam_lstm_158_lstm_cell_158_kernel_v_read_readvariableopIsavev2_adam_lstm_158_lstm_cell_158_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_158_lstm_cell_158_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
E__inference_lstm_157_layer_call_and_return_conditional_losses_2153983

inputs(
lstm_cell_355_2153901:	d?(
lstm_cell_355_2153903:	2?$
lstm_cell_355_2153905:	?
identity??%lstm_cell_355/StatefulPartitionedCall?while;
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
%lstm_cell_355/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_355_2153901lstm_cell_355_2153903lstm_cell_355_2153905*
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
J__inference_lstm_cell_355_layer_call_and_return_conditional_losses_2153855n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_355_2153901lstm_cell_355_2153903lstm_cell_355_2153905*
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
while_body_2153914*
condR
while_cond_2153913*K
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
NoOpNoOp&^lstm_cell_355/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_355/StatefulPartitionedCall%lstm_cell_355/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_355_layer_call_fn_2158442

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
J__inference_lstm_cell_355_layer_call_and_return_conditional_losses_2153709o
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
E__inference_lstm_158_layer_call_and_return_conditional_losses_2157879
inputs_0>
,lstm_cell_356_matmul_readvariableop_resource:2(@
.lstm_cell_356_matmul_1_readvariableop_resource:
(;
-lstm_cell_356_biasadd_readvariableop_resource:(
identity??$lstm_cell_356/BiasAdd/ReadVariableOp?#lstm_cell_356/MatMul/ReadVariableOp?%lstm_cell_356/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_356/MatMul/ReadVariableOpReadVariableOp,lstm_cell_356_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_356/MatMulMatMulstrided_slice_2:output:0+lstm_cell_356/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_356/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_356_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_356/MatMul_1MatMulzeros:output:0-lstm_cell_356/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_356/addAddV2lstm_cell_356/MatMul:product:0 lstm_cell_356/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_356/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_356_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_356/BiasAddBiasAddlstm_cell_356/add:z:0,lstm_cell_356/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_356/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_356/splitSplit&lstm_cell_356/split/split_dim:output:0lstm_cell_356/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_356/SigmoidSigmoidlstm_cell_356/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_356/Sigmoid_1Sigmoidlstm_cell_356/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_356/mulMullstm_cell_356/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_356/ReluRelulstm_cell_356/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_356/mul_1Mullstm_cell_356/Sigmoid:y:0 lstm_cell_356/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_356/add_1AddV2lstm_cell_356/mul:z:0lstm_cell_356/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_356/Sigmoid_2Sigmoidlstm_cell_356/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_356/Relu_1Relulstm_cell_356/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_356/mul_2Mullstm_cell_356/Sigmoid_2:y:0"lstm_cell_356/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_356_matmul_readvariableop_resource.lstm_cell_356_matmul_1_readvariableop_resource-lstm_cell_356_biasadd_readvariableop_resource*
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
while_body_2157795*
condR
while_cond_2157794*K
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
NoOpNoOp%^lstm_cell_356/BiasAdd/ReadVariableOp$^lstm_cell_356/MatMul/ReadVariableOp&^lstm_cell_356/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_356/BiasAdd/ReadVariableOp$lstm_cell_356/BiasAdd/ReadVariableOp2J
#lstm_cell_356/MatMul/ReadVariableOp#lstm_cell_356/MatMul/ReadVariableOp2N
%lstm_cell_356/MatMul_1/ReadVariableOp%lstm_cell_356/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
E__inference_lstm_156_layer_call_and_return_conditional_losses_2153633

inputs(
lstm_cell_354_2153551:	?(
lstm_cell_354_2153553:	d?$
lstm_cell_354_2153555:	?
identity??%lstm_cell_354/StatefulPartitionedCall?while;
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
%lstm_cell_354/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_354_2153551lstm_cell_354_2153553lstm_cell_354_2153555*
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
J__inference_lstm_cell_354_layer_call_and_return_conditional_losses_2153505n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_354_2153551lstm_cell_354_2153553lstm_cell_354_2153555*
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
while_body_2153564*
condR
while_cond_2153563*K
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
NoOpNoOp&^lstm_cell_354/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_354/StatefulPartitionedCall%lstm_cell_354/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_355_layer_call_and_return_conditional_losses_2153855

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

?
lstm_156_while_cond_2156091.
*lstm_156_while_lstm_156_while_loop_counter4
0lstm_156_while_lstm_156_while_maximum_iterations
lstm_156_while_placeholder 
lstm_156_while_placeholder_1 
lstm_156_while_placeholder_2 
lstm_156_while_placeholder_30
,lstm_156_while_less_lstm_156_strided_slice_1G
Clstm_156_while_lstm_156_while_cond_2156091___redundant_placeholder0G
Clstm_156_while_lstm_156_while_cond_2156091___redundant_placeholder1G
Clstm_156_while_lstm_156_while_cond_2156091___redundant_placeholder2G
Clstm_156_while_lstm_156_while_cond_2156091___redundant_placeholder3
lstm_156_while_identity
?
lstm_156/while/LessLesslstm_156_while_placeholder,lstm_156_while_less_lstm_156_strided_slice_1*
T0*
_output_shapes
: ]
lstm_156/while/IdentityIdentitylstm_156/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_156_while_identity lstm_156/while/Identity:output:0*(
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
E__inference_lstm_156_layer_call_and_return_conditional_losses_2156790
inputs_0?
,lstm_cell_354_matmul_readvariableop_resource:	?A
.lstm_cell_354_matmul_1_readvariableop_resource:	d?<
-lstm_cell_354_biasadd_readvariableop_resource:	?
identity??$lstm_cell_354/BiasAdd/ReadVariableOp?#lstm_cell_354/MatMul/ReadVariableOp?%lstm_cell_354/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_354/MatMul/ReadVariableOpReadVariableOp,lstm_cell_354_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_354/MatMulMatMulstrided_slice_2:output:0+lstm_cell_354/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_354/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_354_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_354/MatMul_1MatMulzeros:output:0-lstm_cell_354/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_354/addAddV2lstm_cell_354/MatMul:product:0 lstm_cell_354/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_354/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_354_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_354/BiasAddBiasAddlstm_cell_354/add:z:0,lstm_cell_354/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_354/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_354/splitSplit&lstm_cell_354/split/split_dim:output:0lstm_cell_354/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_354/SigmoidSigmoidlstm_cell_354/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_354/Sigmoid_1Sigmoidlstm_cell_354/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_354/mulMullstm_cell_354/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_354/ReluRelulstm_cell_354/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_354/mul_1Mullstm_cell_354/Sigmoid:y:0 lstm_cell_354/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_354/add_1AddV2lstm_cell_354/mul:z:0lstm_cell_354/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_354/Sigmoid_2Sigmoidlstm_cell_354/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_354/Relu_1Relulstm_cell_354/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_354/mul_2Mullstm_cell_354/Sigmoid_2:y:0"lstm_cell_354/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_354_matmul_readvariableop_resource.lstm_cell_354_matmul_1_readvariableop_resource-lstm_cell_354_biasadd_readvariableop_resource*
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
while_body_2156706*
condR
while_cond_2156705*K
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
NoOpNoOp%^lstm_cell_354/BiasAdd/ReadVariableOp$^lstm_cell_354/MatMul/ReadVariableOp&^lstm_cell_354/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_354/BiasAdd/ReadVariableOp$lstm_cell_354/BiasAdd/ReadVariableOp2J
#lstm_cell_354/MatMul/ReadVariableOp#lstm_cell_354/MatMul/ReadVariableOp2N
%lstm_cell_354/MatMul_1/ReadVariableOp%lstm_cell_354/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_2156848
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2156848___redundant_placeholder05
1while_while_cond_2156848___redundant_placeholder15
1while_while_cond_2156848___redundant_placeholder25
1while_while_cond_2156848___redundant_placeholder3
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
:"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_156_input;
 serving_default_lstm_156_input:0?????????<
dense_520
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
2dense_52/kernel
:2dense_52/bias
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
0:.	?2lstm_156/lstm_cell_156/kernel
::8	d?2'lstm_156/lstm_cell_156/recurrent_kernel
*:(?2lstm_156/lstm_cell_156/bias
0:.	d?2lstm_157/lstm_cell_157/kernel
::8	2?2'lstm_157/lstm_cell_157/recurrent_kernel
*:(?2lstm_157/lstm_cell_157/bias
/:-2(2lstm_158/lstm_cell_158/kernel
9:7
(2'lstm_158/lstm_cell_158/recurrent_kernel
):'(2lstm_158/lstm_cell_158/bias
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
2Adam/dense_52/kernel/m
 :2Adam/dense_52/bias/m
5:3	?2$Adam/lstm_156/lstm_cell_156/kernel/m
?:=	d?2.Adam/lstm_156/lstm_cell_156/recurrent_kernel/m
/:-?2"Adam/lstm_156/lstm_cell_156/bias/m
5:3	d?2$Adam/lstm_157/lstm_cell_157/kernel/m
?:=	2?2.Adam/lstm_157/lstm_cell_157/recurrent_kernel/m
/:-?2"Adam/lstm_157/lstm_cell_157/bias/m
4:22(2$Adam/lstm_158/lstm_cell_158/kernel/m
>:<
(2.Adam/lstm_158/lstm_cell_158/recurrent_kernel/m
.:,(2"Adam/lstm_158/lstm_cell_158/bias/m
&:$
2Adam/dense_52/kernel/v
 :2Adam/dense_52/bias/v
5:3	?2$Adam/lstm_156/lstm_cell_156/kernel/v
?:=	d?2.Adam/lstm_156/lstm_cell_156/recurrent_kernel/v
/:-?2"Adam/lstm_156/lstm_cell_156/bias/v
5:3	d?2$Adam/lstm_157/lstm_cell_157/kernel/v
?:=	2?2.Adam/lstm_157/lstm_cell_157/recurrent_kernel/v
/:-?2"Adam/lstm_157/lstm_cell_157/bias/v
4:22(2$Adam/lstm_158/lstm_cell_158/kernel/v
>:<
(2.Adam/lstm_158/lstm_cell_158/recurrent_kernel/v
.:,(2"Adam/lstm_158/lstm_cell_158/bias/v
?2?
/__inference_sequential_52_layer_call_fn_2154841
/__inference_sequential_52_layer_call_fn_2155579
/__inference_sequential_52_layer_call_fn_2155606
/__inference_sequential_52_layer_call_fn_2155457?
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
J__inference_sequential_52_layer_call_and_return_conditional_losses_2156033
J__inference_sequential_52_layer_call_and_return_conditional_losses_2156460
J__inference_sequential_52_layer_call_and_return_conditional_losses_2155487
J__inference_sequential_52_layer_call_and_return_conditional_losses_2155517?
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
"__inference__wrapped_model_2153292lstm_156_input"?
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
*__inference_lstm_156_layer_call_fn_2156471
*__inference_lstm_156_layer_call_fn_2156482
*__inference_lstm_156_layer_call_fn_2156493
*__inference_lstm_156_layer_call_fn_2156504?
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
E__inference_lstm_156_layer_call_and_return_conditional_losses_2156647
E__inference_lstm_156_layer_call_and_return_conditional_losses_2156790
E__inference_lstm_156_layer_call_and_return_conditional_losses_2156933
E__inference_lstm_156_layer_call_and_return_conditional_losses_2157076?
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
*__inference_lstm_157_layer_call_fn_2157087
*__inference_lstm_157_layer_call_fn_2157098
*__inference_lstm_157_layer_call_fn_2157109
*__inference_lstm_157_layer_call_fn_2157120?
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
E__inference_lstm_157_layer_call_and_return_conditional_losses_2157263
E__inference_lstm_157_layer_call_and_return_conditional_losses_2157406
E__inference_lstm_157_layer_call_and_return_conditional_losses_2157549
E__inference_lstm_157_layer_call_and_return_conditional_losses_2157692?
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
*__inference_lstm_158_layer_call_fn_2157703
*__inference_lstm_158_layer_call_fn_2157714
*__inference_lstm_158_layer_call_fn_2157725
*__inference_lstm_158_layer_call_fn_2157736?
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
E__inference_lstm_158_layer_call_and_return_conditional_losses_2157879
E__inference_lstm_158_layer_call_and_return_conditional_losses_2158022
E__inference_lstm_158_layer_call_and_return_conditional_losses_2158165
E__inference_lstm_158_layer_call_and_return_conditional_losses_2158308?
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
*__inference_dense_52_layer_call_fn_2158317?
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
E__inference_dense_52_layer_call_and_return_conditional_losses_2158327?
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
%__inference_signature_wrapper_2155552lstm_156_input"?
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
/__inference_lstm_cell_354_layer_call_fn_2158344
/__inference_lstm_cell_354_layer_call_fn_2158361?
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
J__inference_lstm_cell_354_layer_call_and_return_conditional_losses_2158393
J__inference_lstm_cell_354_layer_call_and_return_conditional_losses_2158425?
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
/__inference_lstm_cell_355_layer_call_fn_2158442
/__inference_lstm_cell_355_layer_call_fn_2158459?
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
J__inference_lstm_cell_355_layer_call_and_return_conditional_losses_2158491
J__inference_lstm_cell_355_layer_call_and_return_conditional_losses_2158523?
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
/__inference_lstm_cell_356_layer_call_fn_2158540
/__inference_lstm_cell_356_layer_call_fn_2158557?
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
J__inference_lstm_cell_356_layer_call_and_return_conditional_losses_2158589
J__inference_lstm_cell_356_layer_call_and_return_conditional_losses_2158621?
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
"__inference__wrapped_model_2153292-./012345!";?8
1?.
,?)
lstm_156_input?????????
? "3?0
.
dense_52"?
dense_52??????????
E__inference_dense_52_layer_call_and_return_conditional_losses_2158327\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_52_layer_call_fn_2158317O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_156_layer_call_and_return_conditional_losses_2156647?-./O?L
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
E__inference_lstm_156_layer_call_and_return_conditional_losses_2156790?-./O?L
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
E__inference_lstm_156_layer_call_and_return_conditional_losses_2156933q-./??<
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
E__inference_lstm_156_layer_call_and_return_conditional_losses_2157076q-./??<
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
*__inference_lstm_156_layer_call_fn_2156471}-./O?L
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
*__inference_lstm_156_layer_call_fn_2156482}-./O?L
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
*__inference_lstm_156_layer_call_fn_2156493d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_156_layer_call_fn_2156504d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_157_layer_call_and_return_conditional_losses_2157263?012O?L
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
E__inference_lstm_157_layer_call_and_return_conditional_losses_2157406?012O?L
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
E__inference_lstm_157_layer_call_and_return_conditional_losses_2157549q012??<
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
E__inference_lstm_157_layer_call_and_return_conditional_losses_2157692q012??<
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
*__inference_lstm_157_layer_call_fn_2157087}012O?L
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
*__inference_lstm_157_layer_call_fn_2157098}012O?L
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
*__inference_lstm_157_layer_call_fn_2157109d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_157_layer_call_fn_2157120d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_158_layer_call_and_return_conditional_losses_2157879}345O?L
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
E__inference_lstm_158_layer_call_and_return_conditional_losses_2158022}345O?L
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
E__inference_lstm_158_layer_call_and_return_conditional_losses_2158165m345??<
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
E__inference_lstm_158_layer_call_and_return_conditional_losses_2158308m345??<
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
*__inference_lstm_158_layer_call_fn_2157703p345O?L
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
*__inference_lstm_158_layer_call_fn_2157714p345O?L
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
*__inference_lstm_158_layer_call_fn_2157725`345??<
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
*__inference_lstm_158_layer_call_fn_2157736`345??<
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
J__inference_lstm_cell_354_layer_call_and_return_conditional_losses_2158393?-./??}
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
J__inference_lstm_cell_354_layer_call_and_return_conditional_losses_2158425?-./??}
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
/__inference_lstm_cell_354_layer_call_fn_2158344?-./??}
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
/__inference_lstm_cell_354_layer_call_fn_2158361?-./??}
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
J__inference_lstm_cell_355_layer_call_and_return_conditional_losses_2158491?012??}
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
J__inference_lstm_cell_355_layer_call_and_return_conditional_losses_2158523?012??}
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
/__inference_lstm_cell_355_layer_call_fn_2158442?012??}
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
/__inference_lstm_cell_355_layer_call_fn_2158459?012??}
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
J__inference_lstm_cell_356_layer_call_and_return_conditional_losses_2158589?345??}
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
J__inference_lstm_cell_356_layer_call_and_return_conditional_losses_2158621?345??}
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
/__inference_lstm_cell_356_layer_call_fn_2158540?345??}
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
/__inference_lstm_cell_356_layer_call_fn_2158557?345??}
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
J__inference_sequential_52_layer_call_and_return_conditional_losses_2155487y-./012345!"C?@
9?6
,?)
lstm_156_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_52_layer_call_and_return_conditional_losses_2155517y-./012345!"C?@
9?6
,?)
lstm_156_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_52_layer_call_and_return_conditional_losses_2156033q-./012345!";?8
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
J__inference_sequential_52_layer_call_and_return_conditional_losses_2156460q-./012345!";?8
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
/__inference_sequential_52_layer_call_fn_2154841l-./012345!"C?@
9?6
,?)
lstm_156_input?????????
p 

 
? "???????????
/__inference_sequential_52_layer_call_fn_2155457l-./012345!"C?@
9?6
,?)
lstm_156_input?????????
p

 
? "???????????
/__inference_sequential_52_layer_call_fn_2155579d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_52_layer_call_fn_2155606d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_2155552?-./012345!"M?J
? 
C?@
>
lstm_156_input,?)
lstm_156_input?????????"3?0
.
dense_52"?
dense_52?????????