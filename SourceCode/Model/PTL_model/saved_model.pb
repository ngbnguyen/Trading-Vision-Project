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
dense_68/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_68/kernel
s
#dense_68/kernel/Read/ReadVariableOpReadVariableOpdense_68/kernel*
_output_shapes

:
*
dtype0
r
dense_68/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_68/bias
k
!dense_68/bias/Read/ReadVariableOpReadVariableOpdense_68/bias*
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
lstm_204/lstm_cell_204/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_204/lstm_cell_204/kernel
?
1lstm_204/lstm_cell_204/kernel/Read/ReadVariableOpReadVariableOplstm_204/lstm_cell_204/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_204/lstm_cell_204/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_204/lstm_cell_204/recurrent_kernel
?
;lstm_204/lstm_cell_204/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_204/lstm_cell_204/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_204/lstm_cell_204/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_204/lstm_cell_204/bias
?
/lstm_204/lstm_cell_204/bias/Read/ReadVariableOpReadVariableOplstm_204/lstm_cell_204/bias*
_output_shapes	
:?*
dtype0
?
lstm_205/lstm_cell_205/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_205/lstm_cell_205/kernel
?
1lstm_205/lstm_cell_205/kernel/Read/ReadVariableOpReadVariableOplstm_205/lstm_cell_205/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_205/lstm_cell_205/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_205/lstm_cell_205/recurrent_kernel
?
;lstm_205/lstm_cell_205/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_205/lstm_cell_205/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_205/lstm_cell_205/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_205/lstm_cell_205/bias
?
/lstm_205/lstm_cell_205/bias/Read/ReadVariableOpReadVariableOplstm_205/lstm_cell_205/bias*
_output_shapes	
:?*
dtype0
?
lstm_206/lstm_cell_206/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_206/lstm_cell_206/kernel
?
1lstm_206/lstm_cell_206/kernel/Read/ReadVariableOpReadVariableOplstm_206/lstm_cell_206/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_206/lstm_cell_206/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_206/lstm_cell_206/recurrent_kernel
?
;lstm_206/lstm_cell_206/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_206/lstm_cell_206/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_206/lstm_cell_206/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_206/lstm_cell_206/bias
?
/lstm_206/lstm_cell_206/bias/Read/ReadVariableOpReadVariableOplstm_206/lstm_cell_206/bias*
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
Adam/dense_68/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_68/kernel/m
?
*Adam/dense_68/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_68/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_68/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_68/bias/m
y
(Adam/dense_68/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_68/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_204/lstm_cell_204/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_204/lstm_cell_204/kernel/m
?
8Adam/lstm_204/lstm_cell_204/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_204/lstm_cell_204/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_204/lstm_cell_204/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_204/lstm_cell_204/recurrent_kernel/m
?
BAdam/lstm_204/lstm_cell_204/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_204/lstm_cell_204/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_204/lstm_cell_204/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_204/lstm_cell_204/bias/m
?
6Adam/lstm_204/lstm_cell_204/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_204/lstm_cell_204/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_205/lstm_cell_205/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_205/lstm_cell_205/kernel/m
?
8Adam/lstm_205/lstm_cell_205/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_205/lstm_cell_205/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_205/lstm_cell_205/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_205/lstm_cell_205/recurrent_kernel/m
?
BAdam/lstm_205/lstm_cell_205/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_205/lstm_cell_205/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_205/lstm_cell_205/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_205/lstm_cell_205/bias/m
?
6Adam/lstm_205/lstm_cell_205/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_205/lstm_cell_205/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_206/lstm_cell_206/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_206/lstm_cell_206/kernel/m
?
8Adam/lstm_206/lstm_cell_206/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_206/lstm_cell_206/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_206/lstm_cell_206/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_206/lstm_cell_206/recurrent_kernel/m
?
BAdam/lstm_206/lstm_cell_206/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_206/lstm_cell_206/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_206/lstm_cell_206/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_206/lstm_cell_206/bias/m
?
6Adam/lstm_206/lstm_cell_206/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_206/lstm_cell_206/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_68/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_68/kernel/v
?
*Adam/dense_68/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_68/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_68/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_68/bias/v
y
(Adam/dense_68/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_68/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_204/lstm_cell_204/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_204/lstm_cell_204/kernel/v
?
8Adam/lstm_204/lstm_cell_204/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_204/lstm_cell_204/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_204/lstm_cell_204/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_204/lstm_cell_204/recurrent_kernel/v
?
BAdam/lstm_204/lstm_cell_204/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_204/lstm_cell_204/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_204/lstm_cell_204/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_204/lstm_cell_204/bias/v
?
6Adam/lstm_204/lstm_cell_204/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_204/lstm_cell_204/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_205/lstm_cell_205/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_205/lstm_cell_205/kernel/v
?
8Adam/lstm_205/lstm_cell_205/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_205/lstm_cell_205/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_205/lstm_cell_205/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_205/lstm_cell_205/recurrent_kernel/v
?
BAdam/lstm_205/lstm_cell_205/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_205/lstm_cell_205/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_205/lstm_cell_205/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_205/lstm_cell_205/bias/v
?
6Adam/lstm_205/lstm_cell_205/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_205/lstm_cell_205/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_206/lstm_cell_206/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_206/lstm_cell_206/kernel/v
?
8Adam/lstm_206/lstm_cell_206/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_206/lstm_cell_206/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_206/lstm_cell_206/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_206/lstm_cell_206/recurrent_kernel/v
?
BAdam/lstm_206/lstm_cell_206/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_206/lstm_cell_206/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_206/lstm_cell_206/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_206/lstm_cell_206/bias/v
?
6Adam/lstm_206/lstm_cell_206/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_206/lstm_cell_206/bias/v*
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
VARIABLE_VALUEdense_68/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_68/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_204/lstm_cell_204/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_204/lstm_cell_204/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_204/lstm_cell_204/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_205/lstm_cell_205/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_205/lstm_cell_205/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_205/lstm_cell_205/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_206/lstm_cell_206/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_206/lstm_cell_206/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_206/lstm_cell_206/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_68/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_68/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_204/lstm_cell_204/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_204/lstm_cell_204/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_204/lstm_cell_204/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_205/lstm_cell_205/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_205/lstm_cell_205/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_205/lstm_cell_205/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_206/lstm_cell_206/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_206/lstm_cell_206/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_206/lstm_cell_206/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_68/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_68/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_204/lstm_cell_204/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_204/lstm_cell_204/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_204/lstm_cell_204/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_205/lstm_cell_205/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_205/lstm_cell_205/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_205/lstm_cell_205/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_206/lstm_cell_206/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_206/lstm_cell_206/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_206/lstm_cell_206/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_204_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_204_inputlstm_204/lstm_cell_204/kernel'lstm_204/lstm_cell_204/recurrent_kernellstm_204/lstm_cell_204/biaslstm_205/lstm_cell_205/kernel'lstm_205/lstm_cell_205/recurrent_kernellstm_205/lstm_cell_205/biaslstm_206/lstm_cell_206/kernel'lstm_206/lstm_cell_206/recurrent_kernellstm_206/lstm_cell_206/biasdense_68/kerneldense_68/bias*
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
%__inference_signature_wrapper_1357844
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_68/kernel/Read/ReadVariableOp!dense_68/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_204/lstm_cell_204/kernel/Read/ReadVariableOp;lstm_204/lstm_cell_204/recurrent_kernel/Read/ReadVariableOp/lstm_204/lstm_cell_204/bias/Read/ReadVariableOp1lstm_205/lstm_cell_205/kernel/Read/ReadVariableOp;lstm_205/lstm_cell_205/recurrent_kernel/Read/ReadVariableOp/lstm_205/lstm_cell_205/bias/Read/ReadVariableOp1lstm_206/lstm_cell_206/kernel/Read/ReadVariableOp;lstm_206/lstm_cell_206/recurrent_kernel/Read/ReadVariableOp/lstm_206/lstm_cell_206/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_68/kernel/m/Read/ReadVariableOp(Adam/dense_68/bias/m/Read/ReadVariableOp8Adam/lstm_204/lstm_cell_204/kernel/m/Read/ReadVariableOpBAdam/lstm_204/lstm_cell_204/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_204/lstm_cell_204/bias/m/Read/ReadVariableOp8Adam/lstm_205/lstm_cell_205/kernel/m/Read/ReadVariableOpBAdam/lstm_205/lstm_cell_205/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_205/lstm_cell_205/bias/m/Read/ReadVariableOp8Adam/lstm_206/lstm_cell_206/kernel/m/Read/ReadVariableOpBAdam/lstm_206/lstm_cell_206/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_206/lstm_cell_206/bias/m/Read/ReadVariableOp*Adam/dense_68/kernel/v/Read/ReadVariableOp(Adam/dense_68/bias/v/Read/ReadVariableOp8Adam/lstm_204/lstm_cell_204/kernel/v/Read/ReadVariableOpBAdam/lstm_204/lstm_cell_204/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_204/lstm_cell_204/bias/v/Read/ReadVariableOp8Adam/lstm_205/lstm_cell_205/kernel/v/Read/ReadVariableOpBAdam/lstm_205/lstm_cell_205/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_205/lstm_cell_205/bias/v/Read/ReadVariableOp8Adam/lstm_206/lstm_cell_206/kernel/v/Read/ReadVariableOpBAdam/lstm_206/lstm_cell_206/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_206/lstm_cell_206/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_1361056
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_68/kerneldense_68/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_204/lstm_cell_204/kernel'lstm_204/lstm_cell_204/recurrent_kernellstm_204/lstm_cell_204/biaslstm_205/lstm_cell_205/kernel'lstm_205/lstm_cell_205/recurrent_kernellstm_205/lstm_cell_205/biaslstm_206/lstm_cell_206/kernel'lstm_206/lstm_cell_206/recurrent_kernellstm_206/lstm_cell_206/biastotalcountAdam/dense_68/kernel/mAdam/dense_68/bias/m$Adam/lstm_204/lstm_cell_204/kernel/m.Adam/lstm_204/lstm_cell_204/recurrent_kernel/m"Adam/lstm_204/lstm_cell_204/bias/m$Adam/lstm_205/lstm_cell_205/kernel/m.Adam/lstm_205/lstm_cell_205/recurrent_kernel/m"Adam/lstm_205/lstm_cell_205/bias/m$Adam/lstm_206/lstm_cell_206/kernel/m.Adam/lstm_206/lstm_cell_206/recurrent_kernel/m"Adam/lstm_206/lstm_cell_206/bias/mAdam/dense_68/kernel/vAdam/dense_68/bias/v$Adam/lstm_204/lstm_cell_204/kernel/v.Adam/lstm_204/lstm_cell_204/recurrent_kernel/v"Adam/lstm_204/lstm_cell_204/bias/v$Adam/lstm_205/lstm_cell_205/kernel/v.Adam/lstm_205/lstm_cell_205/recurrent_kernel/v"Adam/lstm_205/lstm_cell_205/bias/v$Adam/lstm_206/lstm_cell_206/kernel/v.Adam/lstm_206/lstm_cell_206/recurrent_kernel/v"Adam/lstm_206/lstm_cell_206/bias/v*4
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
#__inference__traced_restore_1361186??+
?	
?
E__inference_dense_68_layer_call_and_return_conditional_losses_1360619

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
/__inference_lstm_cell_224_layer_call_fn_1360849

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
J__inference_lstm_cell_224_layer_call_and_return_conditional_losses_1356497o
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
while_body_1359141
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_222_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_222_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_222_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_222_matmul_readvariableop_resource:	?G
4while_lstm_cell_222_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_222_biasadd_readvariableop_resource:	???*while/lstm_cell_222/BiasAdd/ReadVariableOp?)while/lstm_cell_222/MatMul/ReadVariableOp?+while/lstm_cell_222/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_222/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_222_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_222/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_222/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_222/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_222_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_222/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_222/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_222/addAddV2$while/lstm_cell_222/MatMul:product:0&while/lstm_cell_222/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_222/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_222_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_222/BiasAddBiasAddwhile/lstm_cell_222/add:z:02while/lstm_cell_222/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_222/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_222/splitSplit,while/lstm_cell_222/split/split_dim:output:0$while/lstm_cell_222/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_222/SigmoidSigmoid"while/lstm_cell_222/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_222/Sigmoid_1Sigmoid"while/lstm_cell_222/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_222/mulMul!while/lstm_cell_222/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_222/ReluRelu"while/lstm_cell_222/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_222/mul_1Mulwhile/lstm_cell_222/Sigmoid:y:0&while/lstm_cell_222/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_222/add_1AddV2while/lstm_cell_222/mul:z:0while/lstm_cell_222/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_222/Sigmoid_2Sigmoid"while/lstm_cell_222/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_222/Relu_1Reluwhile/lstm_cell_222/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_222/mul_2Mul!while/lstm_cell_222/Sigmoid_2:y:0(while/lstm_cell_222/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_222/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_222/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_222/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_222/BiasAdd/ReadVariableOp*^while/lstm_cell_222/MatMul/ReadVariableOp,^while/lstm_cell_222/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_222_biasadd_readvariableop_resource5while_lstm_cell_222_biasadd_readvariableop_resource_0"n
4while_lstm_cell_222_matmul_1_readvariableop_resource6while_lstm_cell_222_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_222_matmul_readvariableop_resource4while_lstm_cell_222_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_222/BiasAdd/ReadVariableOp*while/lstm_cell_222/BiasAdd/ReadVariableOp2V
)while/lstm_cell_222/MatMul/ReadVariableOp)while/lstm_cell_222/MatMul/ReadVariableOp2Z
+while/lstm_cell_222/MatMul_1/ReadVariableOp+while/lstm_cell_222/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_222_layer_call_and_return_conditional_losses_1360717

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
?
?
J__inference_sequential_68_layer_call_and_return_conditional_losses_1357697

inputs#
lstm_204_1357670:	?#
lstm_204_1357672:	d?
lstm_204_1357674:	?#
lstm_205_1357677:	d?#
lstm_205_1357679:	2?
lstm_205_1357681:	?"
lstm_206_1357684:2("
lstm_206_1357686:
(
lstm_206_1357688:("
dense_68_1357691:

dense_68_1357693:
identity?? dense_68/StatefulPartitionedCall? lstm_204/StatefulPartitionedCall? lstm_205/StatefulPartitionedCall? lstm_206/StatefulPartitionedCall?
 lstm_204/StatefulPartitionedCallStatefulPartitionedCallinputslstm_204_1357670lstm_204_1357672lstm_204_1357674*
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
E__inference_lstm_204_layer_call_and_return_conditional_losses_1357629?
 lstm_205/StatefulPartitionedCallStatefulPartitionedCall)lstm_204/StatefulPartitionedCall:output:0lstm_205_1357677lstm_205_1357679lstm_205_1357681*
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
E__inference_lstm_205_layer_call_and_return_conditional_losses_1357464?
 lstm_206/StatefulPartitionedCallStatefulPartitionedCall)lstm_205/StatefulPartitionedCall:output:0lstm_206_1357684lstm_206_1357686lstm_206_1357688*
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
E__inference_lstm_206_layer_call_and_return_conditional_losses_1357299?
 dense_68/StatefulPartitionedCallStatefulPartitionedCall)lstm_206/StatefulPartitionedCall:output:0dense_68_1357691dense_68_1357693*
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
E__inference_dense_68_layer_call_and_return_conditional_losses_1357101x
IdentityIdentity)dense_68/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_68/StatefulPartitionedCall!^lstm_204/StatefulPartitionedCall!^lstm_205/StatefulPartitionedCall!^lstm_206/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_68/StatefulPartitionedCall dense_68/StatefulPartitionedCall2D
 lstm_204/StatefulPartitionedCall lstm_204/StatefulPartitionedCall2D
 lstm_205/StatefulPartitionedCall lstm_205/StatefulPartitionedCall2D
 lstm_206/StatefulPartitionedCall lstm_206/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_1358855
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_222_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_222_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_222_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_222_matmul_readvariableop_resource:	?G
4while_lstm_cell_222_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_222_biasadd_readvariableop_resource:	???*while/lstm_cell_222/BiasAdd/ReadVariableOp?)while/lstm_cell_222/MatMul/ReadVariableOp?+while/lstm_cell_222/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_222/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_222_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_222/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_222/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_222/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_222_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_222/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_222/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_222/addAddV2$while/lstm_cell_222/MatMul:product:0&while/lstm_cell_222/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_222/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_222_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_222/BiasAddBiasAddwhile/lstm_cell_222/add:z:02while/lstm_cell_222/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_222/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_222/splitSplit,while/lstm_cell_222/split/split_dim:output:0$while/lstm_cell_222/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_222/SigmoidSigmoid"while/lstm_cell_222/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_222/Sigmoid_1Sigmoid"while/lstm_cell_222/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_222/mulMul!while/lstm_cell_222/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_222/ReluRelu"while/lstm_cell_222/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_222/mul_1Mulwhile/lstm_cell_222/Sigmoid:y:0&while/lstm_cell_222/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_222/add_1AddV2while/lstm_cell_222/mul:z:0while/lstm_cell_222/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_222/Sigmoid_2Sigmoid"while/lstm_cell_222/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_222/Relu_1Reluwhile/lstm_cell_222/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_222/mul_2Mul!while/lstm_cell_222/Sigmoid_2:y:0(while/lstm_cell_222/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_222/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_222/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_222/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_222/BiasAdd/ReadVariableOp*^while/lstm_cell_222/MatMul/ReadVariableOp,^while/lstm_cell_222/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_222_biasadd_readvariableop_resource5while_lstm_cell_222_biasadd_readvariableop_resource_0"n
4while_lstm_cell_222_matmul_1_readvariableop_resource6while_lstm_cell_222_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_222_matmul_readvariableop_resource4while_lstm_cell_222_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_222/BiasAdd/ReadVariableOp*while/lstm_cell_222/BiasAdd/ReadVariableOp2V
)while/lstm_cell_222/MatMul/ReadVariableOp)while/lstm_cell_222/MatMul/ReadVariableOp2Z
+while/lstm_cell_222/MatMul_1/ReadVariableOp+while/lstm_cell_222/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_204_layer_call_and_return_conditional_losses_1356783

inputs?
,lstm_cell_222_matmul_readvariableop_resource:	?A
.lstm_cell_222_matmul_1_readvariableop_resource:	d?<
-lstm_cell_222_biasadd_readvariableop_resource:	?
identity??$lstm_cell_222/BiasAdd/ReadVariableOp?#lstm_cell_222/MatMul/ReadVariableOp?%lstm_cell_222/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_222/MatMul/ReadVariableOpReadVariableOp,lstm_cell_222_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_222/MatMulMatMulstrided_slice_2:output:0+lstm_cell_222/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_222/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_222_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_222/MatMul_1MatMulzeros:output:0-lstm_cell_222/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_222/addAddV2lstm_cell_222/MatMul:product:0 lstm_cell_222/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_222/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_222_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_222/BiasAddBiasAddlstm_cell_222/add:z:0,lstm_cell_222/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_222/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_222/splitSplit&lstm_cell_222/split/split_dim:output:0lstm_cell_222/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_222/SigmoidSigmoidlstm_cell_222/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_222/Sigmoid_1Sigmoidlstm_cell_222/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_222/mulMullstm_cell_222/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_222/ReluRelulstm_cell_222/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_222/mul_1Mullstm_cell_222/Sigmoid:y:0 lstm_cell_222/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_222/add_1AddV2lstm_cell_222/mul:z:0lstm_cell_222/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_222/Sigmoid_2Sigmoidlstm_cell_222/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_222/Relu_1Relulstm_cell_222/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_222/mul_2Mullstm_cell_222/Sigmoid_2:y:0"lstm_cell_222/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_222_matmul_readvariableop_resource.lstm_cell_222_matmul_1_readvariableop_resource-lstm_cell_222_biasadd_readvariableop_resource*
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
while_body_1356699*
condR
while_cond_1356698*K
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
NoOpNoOp%^lstm_cell_222/BiasAdd/ReadVariableOp$^lstm_cell_222/MatMul/ReadVariableOp&^lstm_cell_222/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_222/BiasAdd/ReadVariableOp$lstm_cell_222/BiasAdd/ReadVariableOp2J
#lstm_cell_222/MatMul/ReadVariableOp#lstm_cell_222/MatMul/ReadVariableOp2N
%lstm_cell_222/MatMul_1/ReadVariableOp%lstm_cell_222/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1359283
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1359283___redundant_placeholder05
1while_while_cond_1359283___redundant_placeholder15
1while_while_cond_1359283___redundant_placeholder25
1while_while_cond_1359283___redundant_placeholder3
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
while_body_1356849
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_223_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_223_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_223_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_223_matmul_readvariableop_resource:	d?G
4while_lstm_cell_223_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_223_biasadd_readvariableop_resource:	???*while/lstm_cell_223/BiasAdd/ReadVariableOp?)while/lstm_cell_223/MatMul/ReadVariableOp?+while/lstm_cell_223/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_223/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_223_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_223/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_223/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_223/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_223_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_223/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_223/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_223/addAddV2$while/lstm_cell_223/MatMul:product:0&while/lstm_cell_223/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_223/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_223_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_223/BiasAddBiasAddwhile/lstm_cell_223/add:z:02while/lstm_cell_223/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_223/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_223/splitSplit,while/lstm_cell_223/split/split_dim:output:0$while/lstm_cell_223/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_223/SigmoidSigmoid"while/lstm_cell_223/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_223/Sigmoid_1Sigmoid"while/lstm_cell_223/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_223/mulMul!while/lstm_cell_223/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_223/ReluRelu"while/lstm_cell_223/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_223/mul_1Mulwhile/lstm_cell_223/Sigmoid:y:0&while/lstm_cell_223/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_223/add_1AddV2while/lstm_cell_223/mul:z:0while/lstm_cell_223/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_223/Sigmoid_2Sigmoid"while/lstm_cell_223/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_223/Relu_1Reluwhile/lstm_cell_223/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_223/mul_2Mul!while/lstm_cell_223/Sigmoid_2:y:0(while/lstm_cell_223/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_223/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_223/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_223/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_223/BiasAdd/ReadVariableOp*^while/lstm_cell_223/MatMul/ReadVariableOp,^while/lstm_cell_223/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_223_biasadd_readvariableop_resource5while_lstm_cell_223_biasadd_readvariableop_resource_0"n
4while_lstm_cell_223_matmul_1_readvariableop_resource6while_lstm_cell_223_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_223_matmul_readvariableop_resource4while_lstm_cell_223_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_223/BiasAdd/ReadVariableOp*while/lstm_cell_223/BiasAdd/ReadVariableOp2V
)while/lstm_cell_223/MatMul/ReadVariableOp)while/lstm_cell_223/MatMul/ReadVariableOp2Z
+while/lstm_cell_223/MatMul_1/ReadVariableOp+while/lstm_cell_223/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_68_layer_call_and_return_conditional_losses_1357779
lstm_204_input#
lstm_204_1357752:	?#
lstm_204_1357754:	d?
lstm_204_1357756:	?#
lstm_205_1357759:	d?#
lstm_205_1357761:	2?
lstm_205_1357763:	?"
lstm_206_1357766:2("
lstm_206_1357768:
(
lstm_206_1357770:("
dense_68_1357773:

dense_68_1357775:
identity?? dense_68/StatefulPartitionedCall? lstm_204/StatefulPartitionedCall? lstm_205/StatefulPartitionedCall? lstm_206/StatefulPartitionedCall?
 lstm_204/StatefulPartitionedCallStatefulPartitionedCalllstm_204_inputlstm_204_1357752lstm_204_1357754lstm_204_1357756*
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
E__inference_lstm_204_layer_call_and_return_conditional_losses_1356783?
 lstm_205/StatefulPartitionedCallStatefulPartitionedCall)lstm_204/StatefulPartitionedCall:output:0lstm_205_1357759lstm_205_1357761lstm_205_1357763*
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
E__inference_lstm_205_layer_call_and_return_conditional_losses_1356933?
 lstm_206/StatefulPartitionedCallStatefulPartitionedCall)lstm_205/StatefulPartitionedCall:output:0lstm_206_1357766lstm_206_1357768lstm_206_1357770*
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
E__inference_lstm_206_layer_call_and_return_conditional_losses_1357083?
 dense_68/StatefulPartitionedCallStatefulPartitionedCall)lstm_206/StatefulPartitionedCall:output:0dense_68_1357773dense_68_1357775*
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
E__inference_dense_68_layer_call_and_return_conditional_losses_1357101x
IdentityIdentity)dense_68/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_68/StatefulPartitionedCall!^lstm_204/StatefulPartitionedCall!^lstm_205/StatefulPartitionedCall!^lstm_206/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_68/StatefulPartitionedCall dense_68/StatefulPartitionedCall2D
 lstm_204/StatefulPartitionedCall lstm_204/StatefulPartitionedCall2D
 lstm_205/StatefulPartitionedCall lstm_205/StatefulPartitionedCall2D
 lstm_206/StatefulPartitionedCall lstm_206/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_204_input
?
?
while_cond_1359899
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1359899___redundant_placeholder05
1while_while_cond_1359899___redundant_placeholder15
1while_while_cond_1359899___redundant_placeholder25
1while_while_cond_1359899___redundant_placeholder3
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
while_body_1356999
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_224_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_224_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_224_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_224_matmul_readvariableop_resource:2(F
4while_lstm_cell_224_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_224_biasadd_readvariableop_resource:(??*while/lstm_cell_224/BiasAdd/ReadVariableOp?)while/lstm_cell_224/MatMul/ReadVariableOp?+while/lstm_cell_224/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_224/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_224_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_224/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_224/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_224/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_224_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_224/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_224/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_224/addAddV2$while/lstm_cell_224/MatMul:product:0&while/lstm_cell_224/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_224/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_224_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_224/BiasAddBiasAddwhile/lstm_cell_224/add:z:02while/lstm_cell_224/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_224/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_224/splitSplit,while/lstm_cell_224/split/split_dim:output:0$while/lstm_cell_224/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_224/SigmoidSigmoid"while/lstm_cell_224/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_224/Sigmoid_1Sigmoid"while/lstm_cell_224/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_224/mulMul!while/lstm_cell_224/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_224/ReluRelu"while/lstm_cell_224/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_224/mul_1Mulwhile/lstm_cell_224/Sigmoid:y:0&while/lstm_cell_224/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_224/add_1AddV2while/lstm_cell_224/mul:z:0while/lstm_cell_224/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_224/Sigmoid_2Sigmoid"while/lstm_cell_224/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_224/Relu_1Reluwhile/lstm_cell_224/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_224/mul_2Mul!while/lstm_cell_224/Sigmoid_2:y:0(while/lstm_cell_224/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_224/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_224/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_224/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_224/BiasAdd/ReadVariableOp*^while/lstm_cell_224/MatMul/ReadVariableOp,^while/lstm_cell_224/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_224_biasadd_readvariableop_resource5while_lstm_cell_224_biasadd_readvariableop_resource_0"n
4while_lstm_cell_224_matmul_1_readvariableop_resource6while_lstm_cell_224_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_224_matmul_readvariableop_resource4while_lstm_cell_224_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_224/BiasAdd/ReadVariableOp*while/lstm_cell_224/BiasAdd/ReadVariableOp2V
)while/lstm_cell_224/MatMul/ReadVariableOp)while/lstm_cell_224/MatMul/ReadVariableOp2Z
+while/lstm_cell_224/MatMul_1/ReadVariableOp+while/lstm_cell_224/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
 __inference__traced_save_1361056
file_prefix.
*savev2_dense_68_kernel_read_readvariableop,
(savev2_dense_68_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_204_lstm_cell_204_kernel_read_readvariableopF
Bsavev2_lstm_204_lstm_cell_204_recurrent_kernel_read_readvariableop:
6savev2_lstm_204_lstm_cell_204_bias_read_readvariableop<
8savev2_lstm_205_lstm_cell_205_kernel_read_readvariableopF
Bsavev2_lstm_205_lstm_cell_205_recurrent_kernel_read_readvariableop:
6savev2_lstm_205_lstm_cell_205_bias_read_readvariableop<
8savev2_lstm_206_lstm_cell_206_kernel_read_readvariableopF
Bsavev2_lstm_206_lstm_cell_206_recurrent_kernel_read_readvariableop:
6savev2_lstm_206_lstm_cell_206_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_68_kernel_m_read_readvariableop3
/savev2_adam_dense_68_bias_m_read_readvariableopC
?savev2_adam_lstm_204_lstm_cell_204_kernel_m_read_readvariableopM
Isavev2_adam_lstm_204_lstm_cell_204_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_204_lstm_cell_204_bias_m_read_readvariableopC
?savev2_adam_lstm_205_lstm_cell_205_kernel_m_read_readvariableopM
Isavev2_adam_lstm_205_lstm_cell_205_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_205_lstm_cell_205_bias_m_read_readvariableopC
?savev2_adam_lstm_206_lstm_cell_206_kernel_m_read_readvariableopM
Isavev2_adam_lstm_206_lstm_cell_206_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_206_lstm_cell_206_bias_m_read_readvariableop5
1savev2_adam_dense_68_kernel_v_read_readvariableop3
/savev2_adam_dense_68_bias_v_read_readvariableopC
?savev2_adam_lstm_204_lstm_cell_204_kernel_v_read_readvariableopM
Isavev2_adam_lstm_204_lstm_cell_204_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_204_lstm_cell_204_bias_v_read_readvariableopC
?savev2_adam_lstm_205_lstm_cell_205_kernel_v_read_readvariableopM
Isavev2_adam_lstm_205_lstm_cell_205_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_205_lstm_cell_205_bias_v_read_readvariableopC
?savev2_adam_lstm_206_lstm_cell_206_kernel_v_read_readvariableopM
Isavev2_adam_lstm_206_lstm_cell_206_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_206_lstm_cell_206_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_68_kernel_read_readvariableop(savev2_dense_68_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_204_lstm_cell_204_kernel_read_readvariableopBsavev2_lstm_204_lstm_cell_204_recurrent_kernel_read_readvariableop6savev2_lstm_204_lstm_cell_204_bias_read_readvariableop8savev2_lstm_205_lstm_cell_205_kernel_read_readvariableopBsavev2_lstm_205_lstm_cell_205_recurrent_kernel_read_readvariableop6savev2_lstm_205_lstm_cell_205_bias_read_readvariableop8savev2_lstm_206_lstm_cell_206_kernel_read_readvariableopBsavev2_lstm_206_lstm_cell_206_recurrent_kernel_read_readvariableop6savev2_lstm_206_lstm_cell_206_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_68_kernel_m_read_readvariableop/savev2_adam_dense_68_bias_m_read_readvariableop?savev2_adam_lstm_204_lstm_cell_204_kernel_m_read_readvariableopIsavev2_adam_lstm_204_lstm_cell_204_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_204_lstm_cell_204_bias_m_read_readvariableop?savev2_adam_lstm_205_lstm_cell_205_kernel_m_read_readvariableopIsavev2_adam_lstm_205_lstm_cell_205_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_205_lstm_cell_205_bias_m_read_readvariableop?savev2_adam_lstm_206_lstm_cell_206_kernel_m_read_readvariableopIsavev2_adam_lstm_206_lstm_cell_206_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_206_lstm_cell_206_bias_m_read_readvariableop1savev2_adam_dense_68_kernel_v_read_readvariableop/savev2_adam_dense_68_bias_v_read_readvariableop?savev2_adam_lstm_204_lstm_cell_204_kernel_v_read_readvariableopIsavev2_adam_lstm_204_lstm_cell_204_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_204_lstm_cell_204_bias_v_read_readvariableop?savev2_adam_lstm_205_lstm_cell_205_kernel_v_read_readvariableopIsavev2_adam_lstm_205_lstm_cell_205_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_205_lstm_cell_205_bias_v_read_readvariableop?savev2_adam_lstm_206_lstm_cell_206_kernel_v_read_readvariableopIsavev2_adam_lstm_206_lstm_cell_206_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_206_lstm_cell_206_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?
while_body_1359614
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_223_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_223_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_223_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_223_matmul_readvariableop_resource:	d?G
4while_lstm_cell_223_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_223_biasadd_readvariableop_resource:	???*while/lstm_cell_223/BiasAdd/ReadVariableOp?)while/lstm_cell_223/MatMul/ReadVariableOp?+while/lstm_cell_223/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_223/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_223_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_223/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_223/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_223/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_223_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_223/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_223/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_223/addAddV2$while/lstm_cell_223/MatMul:product:0&while/lstm_cell_223/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_223/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_223_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_223/BiasAddBiasAddwhile/lstm_cell_223/add:z:02while/lstm_cell_223/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_223/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_223/splitSplit,while/lstm_cell_223/split/split_dim:output:0$while/lstm_cell_223/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_223/SigmoidSigmoid"while/lstm_cell_223/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_223/Sigmoid_1Sigmoid"while/lstm_cell_223/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_223/mulMul!while/lstm_cell_223/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_223/ReluRelu"while/lstm_cell_223/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_223/mul_1Mulwhile/lstm_cell_223/Sigmoid:y:0&while/lstm_cell_223/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_223/add_1AddV2while/lstm_cell_223/mul:z:0while/lstm_cell_223/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_223/Sigmoid_2Sigmoid"while/lstm_cell_223/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_223/Relu_1Reluwhile/lstm_cell_223/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_223/mul_2Mul!while/lstm_cell_223/Sigmoid_2:y:0(while/lstm_cell_223/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_223/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_223/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_223/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_223/BiasAdd/ReadVariableOp*^while/lstm_cell_223/MatMul/ReadVariableOp,^while/lstm_cell_223/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_223_biasadd_readvariableop_resource5while_lstm_cell_223_biasadd_readvariableop_resource_0"n
4while_lstm_cell_223_matmul_1_readvariableop_resource6while_lstm_cell_223_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_223_matmul_readvariableop_resource4while_lstm_cell_223_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_223/BiasAdd/ReadVariableOp*while/lstm_cell_223/BiasAdd/ReadVariableOp2V
)while/lstm_cell_223/MatMul/ReadVariableOp)while/lstm_cell_223/MatMul/ReadVariableOp2Z
+while/lstm_cell_223/MatMul_1/ReadVariableOp+while/lstm_cell_223/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1356848
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1356848___redundant_placeholder05
1while_while_cond_1356848___redundant_placeholder15
1while_while_cond_1356848___redundant_placeholder25
1while_while_cond_1356848___redundant_placeholder3
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
E__inference_lstm_206_layer_call_and_return_conditional_losses_1356434

inputs'
lstm_cell_224_1356352:2('
lstm_cell_224_1356354:
(#
lstm_cell_224_1356356:(
identity??%lstm_cell_224/StatefulPartitionedCall?while;
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
%lstm_cell_224/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_224_1356352lstm_cell_224_1356354lstm_cell_224_1356356*
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
J__inference_lstm_cell_224_layer_call_and_return_conditional_losses_1356351n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_224_1356352lstm_cell_224_1356354lstm_cell_224_1356356*
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
while_body_1356365*
condR
while_cond_1356364*K
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
NoOpNoOp&^lstm_cell_224/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_224/StatefulPartitionedCall%lstm_cell_224/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
)sequential_68_lstm_206_while_cond_1355493J
Fsequential_68_lstm_206_while_sequential_68_lstm_206_while_loop_counterP
Lsequential_68_lstm_206_while_sequential_68_lstm_206_while_maximum_iterations,
(sequential_68_lstm_206_while_placeholder.
*sequential_68_lstm_206_while_placeholder_1.
*sequential_68_lstm_206_while_placeholder_2.
*sequential_68_lstm_206_while_placeholder_3L
Hsequential_68_lstm_206_while_less_sequential_68_lstm_206_strided_slice_1c
_sequential_68_lstm_206_while_sequential_68_lstm_206_while_cond_1355493___redundant_placeholder0c
_sequential_68_lstm_206_while_sequential_68_lstm_206_while_cond_1355493___redundant_placeholder1c
_sequential_68_lstm_206_while_sequential_68_lstm_206_while_cond_1355493___redundant_placeholder2c
_sequential_68_lstm_206_while_sequential_68_lstm_206_while_cond_1355493___redundant_placeholder3)
%sequential_68_lstm_206_while_identity
?
!sequential_68/lstm_206/while/LessLess(sequential_68_lstm_206_while_placeholderHsequential_68_lstm_206_while_less_sequential_68_lstm_206_strided_slice_1*
T0*
_output_shapes
: y
%sequential_68/lstm_206/while/IdentityIdentity%sequential_68/lstm_206/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_68_lstm_206_while_identity.sequential_68/lstm_206/while/Identity:output:0*(
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
E__inference_lstm_205_layer_call_and_return_conditional_losses_1359984

inputs?
,lstm_cell_223_matmul_readvariableop_resource:	d?A
.lstm_cell_223_matmul_1_readvariableop_resource:	2?<
-lstm_cell_223_biasadd_readvariableop_resource:	?
identity??$lstm_cell_223/BiasAdd/ReadVariableOp?#lstm_cell_223/MatMul/ReadVariableOp?%lstm_cell_223/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_223/MatMul/ReadVariableOpReadVariableOp,lstm_cell_223_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_223/MatMulMatMulstrided_slice_2:output:0+lstm_cell_223/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_223/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_223_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_223/MatMul_1MatMulzeros:output:0-lstm_cell_223/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_223/addAddV2lstm_cell_223/MatMul:product:0 lstm_cell_223/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_223/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_223_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_223/BiasAddBiasAddlstm_cell_223/add:z:0,lstm_cell_223/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_223/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_223/splitSplit&lstm_cell_223/split/split_dim:output:0lstm_cell_223/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_223/SigmoidSigmoidlstm_cell_223/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_223/Sigmoid_1Sigmoidlstm_cell_223/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_223/mulMullstm_cell_223/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_223/ReluRelulstm_cell_223/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_223/mul_1Mullstm_cell_223/Sigmoid:y:0 lstm_cell_223/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_223/add_1AddV2lstm_cell_223/mul:z:0lstm_cell_223/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_223/Sigmoid_2Sigmoidlstm_cell_223/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_223/Relu_1Relulstm_cell_223/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_223/mul_2Mullstm_cell_223/Sigmoid_2:y:0"lstm_cell_223/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_223_matmul_readvariableop_resource.lstm_cell_223_matmul_1_readvariableop_resource-lstm_cell_223_biasadd_readvariableop_resource*
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
while_body_1359900*
condR
while_cond_1359899*K
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
NoOpNoOp%^lstm_cell_223/BiasAdd/ReadVariableOp$^lstm_cell_223/MatMul/ReadVariableOp&^lstm_cell_223/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_223/BiasAdd/ReadVariableOp$lstm_cell_223/BiasAdd/ReadVariableOp2J
#lstm_cell_223/MatMul/ReadVariableOp#lstm_cell_223/MatMul/ReadVariableOp2N
%lstm_cell_223/MatMul_1/ReadVariableOp%lstm_cell_223/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
)sequential_68_lstm_205_while_cond_1355354J
Fsequential_68_lstm_205_while_sequential_68_lstm_205_while_loop_counterP
Lsequential_68_lstm_205_while_sequential_68_lstm_205_while_maximum_iterations,
(sequential_68_lstm_205_while_placeholder.
*sequential_68_lstm_205_while_placeholder_1.
*sequential_68_lstm_205_while_placeholder_2.
*sequential_68_lstm_205_while_placeholder_3L
Hsequential_68_lstm_205_while_less_sequential_68_lstm_205_strided_slice_1c
_sequential_68_lstm_205_while_sequential_68_lstm_205_while_cond_1355354___redundant_placeholder0c
_sequential_68_lstm_205_while_sequential_68_lstm_205_while_cond_1355354___redundant_placeholder1c
_sequential_68_lstm_205_while_sequential_68_lstm_205_while_cond_1355354___redundant_placeholder2c
_sequential_68_lstm_205_while_sequential_68_lstm_205_while_cond_1355354___redundant_placeholder3)
%sequential_68_lstm_205_while_identity
?
!sequential_68/lstm_205/while/LessLess(sequential_68_lstm_205_while_placeholderHsequential_68_lstm_205_while_less_sequential_68_lstm_205_strided_slice_1*
T0*
_output_shapes
: y
%sequential_68/lstm_205/while/IdentityIdentity%sequential_68/lstm_205/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_68_lstm_205_while_identity.sequential_68/lstm_205/while/Identity:output:0*(
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
J__inference_lstm_cell_222_layer_call_and_return_conditional_losses_1355797

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
while_body_1360516
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_224_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_224_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_224_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_224_matmul_readvariableop_resource:2(F
4while_lstm_cell_224_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_224_biasadd_readvariableop_resource:(??*while/lstm_cell_224/BiasAdd/ReadVariableOp?)while/lstm_cell_224/MatMul/ReadVariableOp?+while/lstm_cell_224/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_224/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_224_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_224/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_224/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_224/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_224_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_224/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_224/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_224/addAddV2$while/lstm_cell_224/MatMul:product:0&while/lstm_cell_224/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_224/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_224_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_224/BiasAddBiasAddwhile/lstm_cell_224/add:z:02while/lstm_cell_224/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_224/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_224/splitSplit,while/lstm_cell_224/split/split_dim:output:0$while/lstm_cell_224/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_224/SigmoidSigmoid"while/lstm_cell_224/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_224/Sigmoid_1Sigmoid"while/lstm_cell_224/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_224/mulMul!while/lstm_cell_224/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_224/ReluRelu"while/lstm_cell_224/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_224/mul_1Mulwhile/lstm_cell_224/Sigmoid:y:0&while/lstm_cell_224/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_224/add_1AddV2while/lstm_cell_224/mul:z:0while/lstm_cell_224/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_224/Sigmoid_2Sigmoid"while/lstm_cell_224/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_224/Relu_1Reluwhile/lstm_cell_224/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_224/mul_2Mul!while/lstm_cell_224/Sigmoid_2:y:0(while/lstm_cell_224/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_224/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_224/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_224/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_224/BiasAdd/ReadVariableOp*^while/lstm_cell_224/MatMul/ReadVariableOp,^while/lstm_cell_224/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_224_biasadd_readvariableop_resource5while_lstm_cell_224_biasadd_readvariableop_resource_0"n
4while_lstm_cell_224_matmul_1_readvariableop_resource6while_lstm_cell_224_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_224_matmul_readvariableop_resource4while_lstm_cell_224_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_224/BiasAdd/ReadVariableOp*while/lstm_cell_224/BiasAdd/ReadVariableOp2V
)while/lstm_cell_224/MatMul/ReadVariableOp)while/lstm_cell_224/MatMul/ReadVariableOp2Z
+while/lstm_cell_224/MatMul_1/ReadVariableOp+while/lstm_cell_224/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_dense_68_layer_call_and_return_conditional_losses_1357101

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
E__inference_lstm_206_layer_call_and_return_conditional_losses_1356625

inputs'
lstm_cell_224_1356543:2('
lstm_cell_224_1356545:
(#
lstm_cell_224_1356547:(
identity??%lstm_cell_224/StatefulPartitionedCall?while;
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
%lstm_cell_224/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_224_1356543lstm_cell_224_1356545lstm_cell_224_1356547*
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
J__inference_lstm_cell_224_layer_call_and_return_conditional_losses_1356497n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_224_1356543lstm_cell_224_1356545lstm_cell_224_1356547*
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
while_body_1356556*
condR
while_cond_1356555*K
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
NoOpNoOp&^lstm_cell_224/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_224/StatefulPartitionedCall%lstm_cell_224/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_206_layer_call_fn_1360028

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
E__inference_lstm_206_layer_call_and_return_conditional_losses_1357299o
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
while_cond_1360086
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1360086___redundant_placeholder05
1while_while_cond_1360086___redundant_placeholder15
1while_while_cond_1360086___redundant_placeholder25
1while_while_cond_1360086___redundant_placeholder3
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
E__inference_lstm_206_layer_call_and_return_conditional_losses_1360314
inputs_0>
,lstm_cell_224_matmul_readvariableop_resource:2(@
.lstm_cell_224_matmul_1_readvariableop_resource:
(;
-lstm_cell_224_biasadd_readvariableop_resource:(
identity??$lstm_cell_224/BiasAdd/ReadVariableOp?#lstm_cell_224/MatMul/ReadVariableOp?%lstm_cell_224/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_224/MatMul/ReadVariableOpReadVariableOp,lstm_cell_224_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_224/MatMulMatMulstrided_slice_2:output:0+lstm_cell_224/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_224/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_224_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_224/MatMul_1MatMulzeros:output:0-lstm_cell_224/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_224/addAddV2lstm_cell_224/MatMul:product:0 lstm_cell_224/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_224/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_224_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_224/BiasAddBiasAddlstm_cell_224/add:z:0,lstm_cell_224/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_224/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_224/splitSplit&lstm_cell_224/split/split_dim:output:0lstm_cell_224/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_224/SigmoidSigmoidlstm_cell_224/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_224/Sigmoid_1Sigmoidlstm_cell_224/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_224/mulMullstm_cell_224/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_224/ReluRelulstm_cell_224/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_224/mul_1Mullstm_cell_224/Sigmoid:y:0 lstm_cell_224/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_224/add_1AddV2lstm_cell_224/mul:z:0lstm_cell_224/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_224/Sigmoid_2Sigmoidlstm_cell_224/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_224/Relu_1Relulstm_cell_224/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_224/mul_2Mullstm_cell_224/Sigmoid_2:y:0"lstm_cell_224/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_224_matmul_readvariableop_resource.lstm_cell_224_matmul_1_readvariableop_resource-lstm_cell_224_biasadd_readvariableop_resource*
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
while_body_1360230*
condR
while_cond_1360229*K
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
NoOpNoOp%^lstm_cell_224/BiasAdd/ReadVariableOp$^lstm_cell_224/MatMul/ReadVariableOp&^lstm_cell_224/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_224/BiasAdd/ReadVariableOp$lstm_cell_224/BiasAdd/ReadVariableOp2J
#lstm_cell_224/MatMul/ReadVariableOp#lstm_cell_224/MatMul/ReadVariableOp2N
%lstm_cell_224/MatMul_1/ReadVariableOp%lstm_cell_224/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
E__inference_lstm_204_layer_call_and_return_conditional_losses_1355925

inputs(
lstm_cell_222_1355843:	?(
lstm_cell_222_1355845:	d?$
lstm_cell_222_1355847:	?
identity??%lstm_cell_222/StatefulPartitionedCall?while;
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
%lstm_cell_222/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_222_1355843lstm_cell_222_1355845lstm_cell_222_1355847*
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
J__inference_lstm_cell_222_layer_call_and_return_conditional_losses_1355797n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_222_1355843lstm_cell_222_1355845lstm_cell_222_1355847*
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
while_body_1355856*
condR
while_cond_1355855*K
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
NoOpNoOp&^lstm_cell_222/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_222/StatefulPartitionedCall%lstm_cell_222/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_1360372
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1360372___redundant_placeholder05
1while_while_cond_1360372___redundant_placeholder15
1while_while_cond_1360372___redundant_placeholder25
1while_while_cond_1360372___redundant_placeholder3
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
J__inference_lstm_cell_224_layer_call_and_return_conditional_losses_1356497

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
lstm_206_while_cond_1358234.
*lstm_206_while_lstm_206_while_loop_counter4
0lstm_206_while_lstm_206_while_maximum_iterations
lstm_206_while_placeholder 
lstm_206_while_placeholder_1 
lstm_206_while_placeholder_2 
lstm_206_while_placeholder_30
,lstm_206_while_less_lstm_206_strided_slice_1G
Clstm_206_while_lstm_206_while_cond_1358234___redundant_placeholder0G
Clstm_206_while_lstm_206_while_cond_1358234___redundant_placeholder1G
Clstm_206_while_lstm_206_while_cond_1358234___redundant_placeholder2G
Clstm_206_while_lstm_206_while_cond_1358234___redundant_placeholder3
lstm_206_while_identity
?
lstm_206/while/LessLesslstm_206_while_placeholder,lstm_206_while_less_lstm_206_strided_slice_1*
T0*
_output_shapes
: ]
lstm_206/while/IdentityIdentitylstm_206/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_206_while_identity lstm_206/while/Identity:output:0*(
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
while_body_1359284
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_222_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_222_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_222_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_222_matmul_readvariableop_resource:	?G
4while_lstm_cell_222_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_222_biasadd_readvariableop_resource:	???*while/lstm_cell_222/BiasAdd/ReadVariableOp?)while/lstm_cell_222/MatMul/ReadVariableOp?+while/lstm_cell_222/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_222/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_222_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_222/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_222/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_222/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_222_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_222/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_222/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_222/addAddV2$while/lstm_cell_222/MatMul:product:0&while/lstm_cell_222/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_222/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_222_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_222/BiasAddBiasAddwhile/lstm_cell_222/add:z:02while/lstm_cell_222/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_222/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_222/splitSplit,while/lstm_cell_222/split/split_dim:output:0$while/lstm_cell_222/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_222/SigmoidSigmoid"while/lstm_cell_222/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_222/Sigmoid_1Sigmoid"while/lstm_cell_222/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_222/mulMul!while/lstm_cell_222/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_222/ReluRelu"while/lstm_cell_222/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_222/mul_1Mulwhile/lstm_cell_222/Sigmoid:y:0&while/lstm_cell_222/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_222/add_1AddV2while/lstm_cell_222/mul:z:0while/lstm_cell_222/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_222/Sigmoid_2Sigmoid"while/lstm_cell_222/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_222/Relu_1Reluwhile/lstm_cell_222/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_222/mul_2Mul!while/lstm_cell_222/Sigmoid_2:y:0(while/lstm_cell_222/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_222/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_222/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_222/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_222/BiasAdd/ReadVariableOp*^while/lstm_cell_222/MatMul/ReadVariableOp,^while/lstm_cell_222/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_222_biasadd_readvariableop_resource5while_lstm_cell_222_biasadd_readvariableop_resource_0"n
4while_lstm_cell_222_matmul_1_readvariableop_resource6while_lstm_cell_222_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_222_matmul_readvariableop_resource4while_lstm_cell_222_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_222/BiasAdd/ReadVariableOp*while/lstm_cell_222/BiasAdd/ReadVariableOp2V
)while/lstm_cell_222/MatMul/ReadVariableOp)while/lstm_cell_222/MatMul/ReadVariableOp2Z
+while/lstm_cell_222/MatMul_1/ReadVariableOp+while/lstm_cell_222/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_205_layer_call_and_return_conditional_losses_1359555
inputs_0?
,lstm_cell_223_matmul_readvariableop_resource:	d?A
.lstm_cell_223_matmul_1_readvariableop_resource:	2?<
-lstm_cell_223_biasadd_readvariableop_resource:	?
identity??$lstm_cell_223/BiasAdd/ReadVariableOp?#lstm_cell_223/MatMul/ReadVariableOp?%lstm_cell_223/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_223/MatMul/ReadVariableOpReadVariableOp,lstm_cell_223_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_223/MatMulMatMulstrided_slice_2:output:0+lstm_cell_223/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_223/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_223_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_223/MatMul_1MatMulzeros:output:0-lstm_cell_223/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_223/addAddV2lstm_cell_223/MatMul:product:0 lstm_cell_223/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_223/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_223_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_223/BiasAddBiasAddlstm_cell_223/add:z:0,lstm_cell_223/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_223/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_223/splitSplit&lstm_cell_223/split/split_dim:output:0lstm_cell_223/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_223/SigmoidSigmoidlstm_cell_223/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_223/Sigmoid_1Sigmoidlstm_cell_223/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_223/mulMullstm_cell_223/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_223/ReluRelulstm_cell_223/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_223/mul_1Mullstm_cell_223/Sigmoid:y:0 lstm_cell_223/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_223/add_1AddV2lstm_cell_223/mul:z:0lstm_cell_223/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_223/Sigmoid_2Sigmoidlstm_cell_223/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_223/Relu_1Relulstm_cell_223/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_223/mul_2Mullstm_cell_223/Sigmoid_2:y:0"lstm_cell_223/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_223_matmul_readvariableop_resource.lstm_cell_223_matmul_1_readvariableop_resource-lstm_cell_223_biasadd_readvariableop_resource*
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
while_body_1359471*
condR
while_cond_1359470*K
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
NoOpNoOp%^lstm_cell_223/BiasAdd/ReadVariableOp$^lstm_cell_223/MatMul/ReadVariableOp&^lstm_cell_223/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_223/BiasAdd/ReadVariableOp$lstm_cell_223/BiasAdd/ReadVariableOp2J
#lstm_cell_223/MatMul/ReadVariableOp#lstm_cell_223/MatMul/ReadVariableOp2N
%lstm_cell_223/MatMul_1/ReadVariableOp%lstm_cell_223/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_222_layer_call_and_return_conditional_losses_1360685

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
?C
?

lstm_206_while_body_1358235.
*lstm_206_while_lstm_206_while_loop_counter4
0lstm_206_while_lstm_206_while_maximum_iterations
lstm_206_while_placeholder 
lstm_206_while_placeholder_1 
lstm_206_while_placeholder_2 
lstm_206_while_placeholder_3-
)lstm_206_while_lstm_206_strided_slice_1_0i
elstm_206_while_tensorarrayv2read_tensorlistgetitem_lstm_206_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_206_while_lstm_cell_224_matmul_readvariableop_resource_0:2(Q
?lstm_206_while_lstm_cell_224_matmul_1_readvariableop_resource_0:
(L
>lstm_206_while_lstm_cell_224_biasadd_readvariableop_resource_0:(
lstm_206_while_identity
lstm_206_while_identity_1
lstm_206_while_identity_2
lstm_206_while_identity_3
lstm_206_while_identity_4
lstm_206_while_identity_5+
'lstm_206_while_lstm_206_strided_slice_1g
clstm_206_while_tensorarrayv2read_tensorlistgetitem_lstm_206_tensorarrayunstack_tensorlistfromtensorM
;lstm_206_while_lstm_cell_224_matmul_readvariableop_resource:2(O
=lstm_206_while_lstm_cell_224_matmul_1_readvariableop_resource:
(J
<lstm_206_while_lstm_cell_224_biasadd_readvariableop_resource:(??3lstm_206/while/lstm_cell_224/BiasAdd/ReadVariableOp?2lstm_206/while/lstm_cell_224/MatMul/ReadVariableOp?4lstm_206/while/lstm_cell_224/MatMul_1/ReadVariableOp?
@lstm_206/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_206/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_206_while_tensorarrayv2read_tensorlistgetitem_lstm_206_tensorarrayunstack_tensorlistfromtensor_0lstm_206_while_placeholderIlstm_206/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_206/while/lstm_cell_224/MatMul/ReadVariableOpReadVariableOp=lstm_206_while_lstm_cell_224_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_206/while/lstm_cell_224/MatMulMatMul9lstm_206/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_206/while/lstm_cell_224/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_206/while/lstm_cell_224/MatMul_1/ReadVariableOpReadVariableOp?lstm_206_while_lstm_cell_224_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_206/while/lstm_cell_224/MatMul_1MatMullstm_206_while_placeholder_2<lstm_206/while/lstm_cell_224/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_206/while/lstm_cell_224/addAddV2-lstm_206/while/lstm_cell_224/MatMul:product:0/lstm_206/while/lstm_cell_224/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_206/while/lstm_cell_224/BiasAdd/ReadVariableOpReadVariableOp>lstm_206_while_lstm_cell_224_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_206/while/lstm_cell_224/BiasAddBiasAdd$lstm_206/while/lstm_cell_224/add:z:0;lstm_206/while/lstm_cell_224/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_206/while/lstm_cell_224/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_206/while/lstm_cell_224/splitSplit5lstm_206/while/lstm_cell_224/split/split_dim:output:0-lstm_206/while/lstm_cell_224/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_206/while/lstm_cell_224/SigmoidSigmoid+lstm_206/while/lstm_cell_224/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_206/while/lstm_cell_224/Sigmoid_1Sigmoid+lstm_206/while/lstm_cell_224/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_206/while/lstm_cell_224/mulMul*lstm_206/while/lstm_cell_224/Sigmoid_1:y:0lstm_206_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_206/while/lstm_cell_224/ReluRelu+lstm_206/while/lstm_cell_224/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_206/while/lstm_cell_224/mul_1Mul(lstm_206/while/lstm_cell_224/Sigmoid:y:0/lstm_206/while/lstm_cell_224/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_206/while/lstm_cell_224/add_1AddV2$lstm_206/while/lstm_cell_224/mul:z:0&lstm_206/while/lstm_cell_224/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_206/while/lstm_cell_224/Sigmoid_2Sigmoid+lstm_206/while/lstm_cell_224/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_206/while/lstm_cell_224/Relu_1Relu&lstm_206/while/lstm_cell_224/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_206/while/lstm_cell_224/mul_2Mul*lstm_206/while/lstm_cell_224/Sigmoid_2:y:01lstm_206/while/lstm_cell_224/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_206/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_206_while_placeholder_1lstm_206_while_placeholder&lstm_206/while/lstm_cell_224/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_206/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_206/while/addAddV2lstm_206_while_placeholderlstm_206/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_206/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_206/while/add_1AddV2*lstm_206_while_lstm_206_while_loop_counterlstm_206/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_206/while/IdentityIdentitylstm_206/while/add_1:z:0^lstm_206/while/NoOp*
T0*
_output_shapes
: ?
lstm_206/while/Identity_1Identity0lstm_206_while_lstm_206_while_maximum_iterations^lstm_206/while/NoOp*
T0*
_output_shapes
: t
lstm_206/while/Identity_2Identitylstm_206/while/add:z:0^lstm_206/while/NoOp*
T0*
_output_shapes
: ?
lstm_206/while/Identity_3IdentityClstm_206/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_206/while/NoOp*
T0*
_output_shapes
: ?
lstm_206/while/Identity_4Identity&lstm_206/while/lstm_cell_224/mul_2:z:0^lstm_206/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_206/while/Identity_5Identity&lstm_206/while/lstm_cell_224/add_1:z:0^lstm_206/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_206/while/NoOpNoOp4^lstm_206/while/lstm_cell_224/BiasAdd/ReadVariableOp3^lstm_206/while/lstm_cell_224/MatMul/ReadVariableOp5^lstm_206/while/lstm_cell_224/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_206_while_identity lstm_206/while/Identity:output:0"?
lstm_206_while_identity_1"lstm_206/while/Identity_1:output:0"?
lstm_206_while_identity_2"lstm_206/while/Identity_2:output:0"?
lstm_206_while_identity_3"lstm_206/while/Identity_3:output:0"?
lstm_206_while_identity_4"lstm_206/while/Identity_4:output:0"?
lstm_206_while_identity_5"lstm_206/while/Identity_5:output:0"T
'lstm_206_while_lstm_206_strided_slice_1)lstm_206_while_lstm_206_strided_slice_1_0"~
<lstm_206_while_lstm_cell_224_biasadd_readvariableop_resource>lstm_206_while_lstm_cell_224_biasadd_readvariableop_resource_0"?
=lstm_206_while_lstm_cell_224_matmul_1_readvariableop_resource?lstm_206_while_lstm_cell_224_matmul_1_readvariableop_resource_0"|
;lstm_206_while_lstm_cell_224_matmul_readvariableop_resource=lstm_206_while_lstm_cell_224_matmul_readvariableop_resource_0"?
clstm_206_while_tensorarrayv2read_tensorlistgetitem_lstm_206_tensorarrayunstack_tensorlistfromtensorelstm_206_while_tensorarrayv2read_tensorlistgetitem_lstm_206_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_206/while/lstm_cell_224/BiasAdd/ReadVariableOp3lstm_206/while/lstm_cell_224/BiasAdd/ReadVariableOp2h
2lstm_206/while/lstm_cell_224/MatMul/ReadVariableOp2lstm_206/while/lstm_cell_224/MatMul/ReadVariableOp2l
4lstm_206/while/lstm_cell_224/MatMul_1/ReadVariableOp4lstm_206/while/lstm_cell_224/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1359470
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1359470___redundant_placeholder05
1while_while_cond_1359470___redundant_placeholder15
1while_while_cond_1359470___redundant_placeholder25
1while_while_cond_1359470___redundant_placeholder3
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
E__inference_lstm_205_layer_call_and_return_conditional_losses_1357464

inputs?
,lstm_cell_223_matmul_readvariableop_resource:	d?A
.lstm_cell_223_matmul_1_readvariableop_resource:	2?<
-lstm_cell_223_biasadd_readvariableop_resource:	?
identity??$lstm_cell_223/BiasAdd/ReadVariableOp?#lstm_cell_223/MatMul/ReadVariableOp?%lstm_cell_223/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_223/MatMul/ReadVariableOpReadVariableOp,lstm_cell_223_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_223/MatMulMatMulstrided_slice_2:output:0+lstm_cell_223/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_223/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_223_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_223/MatMul_1MatMulzeros:output:0-lstm_cell_223/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_223/addAddV2lstm_cell_223/MatMul:product:0 lstm_cell_223/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_223/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_223_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_223/BiasAddBiasAddlstm_cell_223/add:z:0,lstm_cell_223/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_223/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_223/splitSplit&lstm_cell_223/split/split_dim:output:0lstm_cell_223/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_223/SigmoidSigmoidlstm_cell_223/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_223/Sigmoid_1Sigmoidlstm_cell_223/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_223/mulMullstm_cell_223/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_223/ReluRelulstm_cell_223/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_223/mul_1Mullstm_cell_223/Sigmoid:y:0 lstm_cell_223/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_223/add_1AddV2lstm_cell_223/mul:z:0lstm_cell_223/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_223/Sigmoid_2Sigmoidlstm_cell_223/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_223/Relu_1Relulstm_cell_223/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_223/mul_2Mullstm_cell_223/Sigmoid_2:y:0"lstm_cell_223/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_223_matmul_readvariableop_resource.lstm_cell_223_matmul_1_readvariableop_resource-lstm_cell_223_biasadd_readvariableop_resource*
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
while_body_1357380*
condR
while_cond_1357379*K
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
NoOpNoOp%^lstm_cell_223/BiasAdd/ReadVariableOp$^lstm_cell_223/MatMul/ReadVariableOp&^lstm_cell_223/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_223/BiasAdd/ReadVariableOp$lstm_cell_223/BiasAdd/ReadVariableOp2J
#lstm_cell_223/MatMul/ReadVariableOp#lstm_cell_223/MatMul/ReadVariableOp2N
%lstm_cell_223/MatMul_1/ReadVariableOp%lstm_cell_223/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
??
?
"__inference__wrapped_model_1355584
lstm_204_inputV
Csequential_68_lstm_204_lstm_cell_222_matmul_readvariableop_resource:	?X
Esequential_68_lstm_204_lstm_cell_222_matmul_1_readvariableop_resource:	d?S
Dsequential_68_lstm_204_lstm_cell_222_biasadd_readvariableop_resource:	?V
Csequential_68_lstm_205_lstm_cell_223_matmul_readvariableop_resource:	d?X
Esequential_68_lstm_205_lstm_cell_223_matmul_1_readvariableop_resource:	2?S
Dsequential_68_lstm_205_lstm_cell_223_biasadd_readvariableop_resource:	?U
Csequential_68_lstm_206_lstm_cell_224_matmul_readvariableop_resource:2(W
Esequential_68_lstm_206_lstm_cell_224_matmul_1_readvariableop_resource:
(R
Dsequential_68_lstm_206_lstm_cell_224_biasadd_readvariableop_resource:(G
5sequential_68_dense_68_matmul_readvariableop_resource:
D
6sequential_68_dense_68_biasadd_readvariableop_resource:
identity??-sequential_68/dense_68/BiasAdd/ReadVariableOp?,sequential_68/dense_68/MatMul/ReadVariableOp?;sequential_68/lstm_204/lstm_cell_222/BiasAdd/ReadVariableOp?:sequential_68/lstm_204/lstm_cell_222/MatMul/ReadVariableOp?<sequential_68/lstm_204/lstm_cell_222/MatMul_1/ReadVariableOp?sequential_68/lstm_204/while?;sequential_68/lstm_205/lstm_cell_223/BiasAdd/ReadVariableOp?:sequential_68/lstm_205/lstm_cell_223/MatMul/ReadVariableOp?<sequential_68/lstm_205/lstm_cell_223/MatMul_1/ReadVariableOp?sequential_68/lstm_205/while?;sequential_68/lstm_206/lstm_cell_224/BiasAdd/ReadVariableOp?:sequential_68/lstm_206/lstm_cell_224/MatMul/ReadVariableOp?<sequential_68/lstm_206/lstm_cell_224/MatMul_1/ReadVariableOp?sequential_68/lstm_206/whileZ
sequential_68/lstm_204/ShapeShapelstm_204_input*
T0*
_output_shapes
:t
*sequential_68/lstm_204/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_68/lstm_204/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_68/lstm_204/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_68/lstm_204/strided_sliceStridedSlice%sequential_68/lstm_204/Shape:output:03sequential_68/lstm_204/strided_slice/stack:output:05sequential_68/lstm_204/strided_slice/stack_1:output:05sequential_68/lstm_204/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_68/lstm_204/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
#sequential_68/lstm_204/zeros/packedPack-sequential_68/lstm_204/strided_slice:output:0.sequential_68/lstm_204/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_68/lstm_204/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_68/lstm_204/zerosFill,sequential_68/lstm_204/zeros/packed:output:0+sequential_68/lstm_204/zeros/Const:output:0*
T0*'
_output_shapes
:?????????di
'sequential_68/lstm_204/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
%sequential_68/lstm_204/zeros_1/packedPack-sequential_68/lstm_204/strided_slice:output:00sequential_68/lstm_204/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_68/lstm_204/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_68/lstm_204/zeros_1Fill.sequential_68/lstm_204/zeros_1/packed:output:0-sequential_68/lstm_204/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dz
%sequential_68/lstm_204/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_68/lstm_204/transpose	Transposelstm_204_input.sequential_68/lstm_204/transpose/perm:output:0*
T0*+
_output_shapes
:?????????r
sequential_68/lstm_204/Shape_1Shape$sequential_68/lstm_204/transpose:y:0*
T0*
_output_shapes
:v
,sequential_68/lstm_204/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_68/lstm_204/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_68/lstm_204/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_68/lstm_204/strided_slice_1StridedSlice'sequential_68/lstm_204/Shape_1:output:05sequential_68/lstm_204/strided_slice_1/stack:output:07sequential_68/lstm_204/strided_slice_1/stack_1:output:07sequential_68/lstm_204/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_68/lstm_204/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_68/lstm_204/TensorArrayV2TensorListReserve;sequential_68/lstm_204/TensorArrayV2/element_shape:output:0/sequential_68/lstm_204/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_68/lstm_204/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
>sequential_68/lstm_204/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_68/lstm_204/transpose:y:0Usequential_68/lstm_204/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_68/lstm_204/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_68/lstm_204/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_68/lstm_204/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_68/lstm_204/strided_slice_2StridedSlice$sequential_68/lstm_204/transpose:y:05sequential_68/lstm_204/strided_slice_2/stack:output:07sequential_68/lstm_204/strided_slice_2/stack_1:output:07sequential_68/lstm_204/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
:sequential_68/lstm_204/lstm_cell_222/MatMul/ReadVariableOpReadVariableOpCsequential_68_lstm_204_lstm_cell_222_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
+sequential_68/lstm_204/lstm_cell_222/MatMulMatMul/sequential_68/lstm_204/strided_slice_2:output:0Bsequential_68/lstm_204/lstm_cell_222/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_68/lstm_204/lstm_cell_222/MatMul_1/ReadVariableOpReadVariableOpEsequential_68_lstm_204_lstm_cell_222_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
-sequential_68/lstm_204/lstm_cell_222/MatMul_1MatMul%sequential_68/lstm_204/zeros:output:0Dsequential_68/lstm_204/lstm_cell_222/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_68/lstm_204/lstm_cell_222/addAddV25sequential_68/lstm_204/lstm_cell_222/MatMul:product:07sequential_68/lstm_204/lstm_cell_222/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_68/lstm_204/lstm_cell_222/BiasAdd/ReadVariableOpReadVariableOpDsequential_68_lstm_204_lstm_cell_222_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_68/lstm_204/lstm_cell_222/BiasAddBiasAdd,sequential_68/lstm_204/lstm_cell_222/add:z:0Csequential_68/lstm_204/lstm_cell_222/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_68/lstm_204/lstm_cell_222/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_68/lstm_204/lstm_cell_222/splitSplit=sequential_68/lstm_204/lstm_cell_222/split/split_dim:output:05sequential_68/lstm_204/lstm_cell_222/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
,sequential_68/lstm_204/lstm_cell_222/SigmoidSigmoid3sequential_68/lstm_204/lstm_cell_222/split:output:0*
T0*'
_output_shapes
:?????????d?
.sequential_68/lstm_204/lstm_cell_222/Sigmoid_1Sigmoid3sequential_68/lstm_204/lstm_cell_222/split:output:1*
T0*'
_output_shapes
:?????????d?
(sequential_68/lstm_204/lstm_cell_222/mulMul2sequential_68/lstm_204/lstm_cell_222/Sigmoid_1:y:0'sequential_68/lstm_204/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
)sequential_68/lstm_204/lstm_cell_222/ReluRelu3sequential_68/lstm_204/lstm_cell_222/split:output:2*
T0*'
_output_shapes
:?????????d?
*sequential_68/lstm_204/lstm_cell_222/mul_1Mul0sequential_68/lstm_204/lstm_cell_222/Sigmoid:y:07sequential_68/lstm_204/lstm_cell_222/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
*sequential_68/lstm_204/lstm_cell_222/add_1AddV2,sequential_68/lstm_204/lstm_cell_222/mul:z:0.sequential_68/lstm_204/lstm_cell_222/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
.sequential_68/lstm_204/lstm_cell_222/Sigmoid_2Sigmoid3sequential_68/lstm_204/lstm_cell_222/split:output:3*
T0*'
_output_shapes
:?????????d?
+sequential_68/lstm_204/lstm_cell_222/Relu_1Relu.sequential_68/lstm_204/lstm_cell_222/add_1:z:0*
T0*'
_output_shapes
:?????????d?
*sequential_68/lstm_204/lstm_cell_222/mul_2Mul2sequential_68/lstm_204/lstm_cell_222/Sigmoid_2:y:09sequential_68/lstm_204/lstm_cell_222/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
4sequential_68/lstm_204/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
&sequential_68/lstm_204/TensorArrayV2_1TensorListReserve=sequential_68/lstm_204/TensorArrayV2_1/element_shape:output:0/sequential_68/lstm_204/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_68/lstm_204/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_68/lstm_204/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_68/lstm_204/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_68/lstm_204/whileWhile2sequential_68/lstm_204/while/loop_counter:output:08sequential_68/lstm_204/while/maximum_iterations:output:0$sequential_68/lstm_204/time:output:0/sequential_68/lstm_204/TensorArrayV2_1:handle:0%sequential_68/lstm_204/zeros:output:0'sequential_68/lstm_204/zeros_1:output:0/sequential_68/lstm_204/strided_slice_1:output:0Nsequential_68/lstm_204/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_68_lstm_204_lstm_cell_222_matmul_readvariableop_resourceEsequential_68_lstm_204_lstm_cell_222_matmul_1_readvariableop_resourceDsequential_68_lstm_204_lstm_cell_222_biasadd_readvariableop_resource*
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
)sequential_68_lstm_204_while_body_1355216*5
cond-R+
)sequential_68_lstm_204_while_cond_1355215*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Gsequential_68/lstm_204/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
9sequential_68/lstm_204/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_68/lstm_204/while:output:3Psequential_68/lstm_204/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0
,sequential_68/lstm_204/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_68/lstm_204/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_68/lstm_204/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_68/lstm_204/strided_slice_3StridedSliceBsequential_68/lstm_204/TensorArrayV2Stack/TensorListStack:tensor:05sequential_68/lstm_204/strided_slice_3/stack:output:07sequential_68/lstm_204/strided_slice_3/stack_1:output:07sequential_68/lstm_204/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask|
'sequential_68/lstm_204/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_68/lstm_204/transpose_1	TransposeBsequential_68/lstm_204/TensorArrayV2Stack/TensorListStack:tensor:00sequential_68/lstm_204/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_68/lstm_204/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_68/lstm_205/ShapeShape&sequential_68/lstm_204/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_68/lstm_205/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_68/lstm_205/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_68/lstm_205/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_68/lstm_205/strided_sliceStridedSlice%sequential_68/lstm_205/Shape:output:03sequential_68/lstm_205/strided_slice/stack:output:05sequential_68/lstm_205/strided_slice/stack_1:output:05sequential_68/lstm_205/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_68/lstm_205/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
#sequential_68/lstm_205/zeros/packedPack-sequential_68/lstm_205/strided_slice:output:0.sequential_68/lstm_205/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_68/lstm_205/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_68/lstm_205/zerosFill,sequential_68/lstm_205/zeros/packed:output:0+sequential_68/lstm_205/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2i
'sequential_68/lstm_205/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
%sequential_68/lstm_205/zeros_1/packedPack-sequential_68/lstm_205/strided_slice:output:00sequential_68/lstm_205/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_68/lstm_205/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_68/lstm_205/zeros_1Fill.sequential_68/lstm_205/zeros_1/packed:output:0-sequential_68/lstm_205/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2z
%sequential_68/lstm_205/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_68/lstm_205/transpose	Transpose&sequential_68/lstm_204/transpose_1:y:0.sequential_68/lstm_205/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_68/lstm_205/Shape_1Shape$sequential_68/lstm_205/transpose:y:0*
T0*
_output_shapes
:v
,sequential_68/lstm_205/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_68/lstm_205/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_68/lstm_205/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_68/lstm_205/strided_slice_1StridedSlice'sequential_68/lstm_205/Shape_1:output:05sequential_68/lstm_205/strided_slice_1/stack:output:07sequential_68/lstm_205/strided_slice_1/stack_1:output:07sequential_68/lstm_205/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_68/lstm_205/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_68/lstm_205/TensorArrayV2TensorListReserve;sequential_68/lstm_205/TensorArrayV2/element_shape:output:0/sequential_68/lstm_205/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_68/lstm_205/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
>sequential_68/lstm_205/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_68/lstm_205/transpose:y:0Usequential_68/lstm_205/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_68/lstm_205/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_68/lstm_205/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_68/lstm_205/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_68/lstm_205/strided_slice_2StridedSlice$sequential_68/lstm_205/transpose:y:05sequential_68/lstm_205/strided_slice_2/stack:output:07sequential_68/lstm_205/strided_slice_2/stack_1:output:07sequential_68/lstm_205/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
:sequential_68/lstm_205/lstm_cell_223/MatMul/ReadVariableOpReadVariableOpCsequential_68_lstm_205_lstm_cell_223_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
+sequential_68/lstm_205/lstm_cell_223/MatMulMatMul/sequential_68/lstm_205/strided_slice_2:output:0Bsequential_68/lstm_205/lstm_cell_223/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_68/lstm_205/lstm_cell_223/MatMul_1/ReadVariableOpReadVariableOpEsequential_68_lstm_205_lstm_cell_223_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
-sequential_68/lstm_205/lstm_cell_223/MatMul_1MatMul%sequential_68/lstm_205/zeros:output:0Dsequential_68/lstm_205/lstm_cell_223/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_68/lstm_205/lstm_cell_223/addAddV25sequential_68/lstm_205/lstm_cell_223/MatMul:product:07sequential_68/lstm_205/lstm_cell_223/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_68/lstm_205/lstm_cell_223/BiasAdd/ReadVariableOpReadVariableOpDsequential_68_lstm_205_lstm_cell_223_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_68/lstm_205/lstm_cell_223/BiasAddBiasAdd,sequential_68/lstm_205/lstm_cell_223/add:z:0Csequential_68/lstm_205/lstm_cell_223/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_68/lstm_205/lstm_cell_223/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_68/lstm_205/lstm_cell_223/splitSplit=sequential_68/lstm_205/lstm_cell_223/split/split_dim:output:05sequential_68/lstm_205/lstm_cell_223/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
,sequential_68/lstm_205/lstm_cell_223/SigmoidSigmoid3sequential_68/lstm_205/lstm_cell_223/split:output:0*
T0*'
_output_shapes
:?????????2?
.sequential_68/lstm_205/lstm_cell_223/Sigmoid_1Sigmoid3sequential_68/lstm_205/lstm_cell_223/split:output:1*
T0*'
_output_shapes
:?????????2?
(sequential_68/lstm_205/lstm_cell_223/mulMul2sequential_68/lstm_205/lstm_cell_223/Sigmoid_1:y:0'sequential_68/lstm_205/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
)sequential_68/lstm_205/lstm_cell_223/ReluRelu3sequential_68/lstm_205/lstm_cell_223/split:output:2*
T0*'
_output_shapes
:?????????2?
*sequential_68/lstm_205/lstm_cell_223/mul_1Mul0sequential_68/lstm_205/lstm_cell_223/Sigmoid:y:07sequential_68/lstm_205/lstm_cell_223/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
*sequential_68/lstm_205/lstm_cell_223/add_1AddV2,sequential_68/lstm_205/lstm_cell_223/mul:z:0.sequential_68/lstm_205/lstm_cell_223/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
.sequential_68/lstm_205/lstm_cell_223/Sigmoid_2Sigmoid3sequential_68/lstm_205/lstm_cell_223/split:output:3*
T0*'
_output_shapes
:?????????2?
+sequential_68/lstm_205/lstm_cell_223/Relu_1Relu.sequential_68/lstm_205/lstm_cell_223/add_1:z:0*
T0*'
_output_shapes
:?????????2?
*sequential_68/lstm_205/lstm_cell_223/mul_2Mul2sequential_68/lstm_205/lstm_cell_223/Sigmoid_2:y:09sequential_68/lstm_205/lstm_cell_223/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
4sequential_68/lstm_205/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
&sequential_68/lstm_205/TensorArrayV2_1TensorListReserve=sequential_68/lstm_205/TensorArrayV2_1/element_shape:output:0/sequential_68/lstm_205/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_68/lstm_205/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_68/lstm_205/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_68/lstm_205/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_68/lstm_205/whileWhile2sequential_68/lstm_205/while/loop_counter:output:08sequential_68/lstm_205/while/maximum_iterations:output:0$sequential_68/lstm_205/time:output:0/sequential_68/lstm_205/TensorArrayV2_1:handle:0%sequential_68/lstm_205/zeros:output:0'sequential_68/lstm_205/zeros_1:output:0/sequential_68/lstm_205/strided_slice_1:output:0Nsequential_68/lstm_205/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_68_lstm_205_lstm_cell_223_matmul_readvariableop_resourceEsequential_68_lstm_205_lstm_cell_223_matmul_1_readvariableop_resourceDsequential_68_lstm_205_lstm_cell_223_biasadd_readvariableop_resource*
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
)sequential_68_lstm_205_while_body_1355355*5
cond-R+
)sequential_68_lstm_205_while_cond_1355354*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Gsequential_68/lstm_205/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
9sequential_68/lstm_205/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_68/lstm_205/while:output:3Psequential_68/lstm_205/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0
,sequential_68/lstm_205/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_68/lstm_205/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_68/lstm_205/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_68/lstm_205/strided_slice_3StridedSliceBsequential_68/lstm_205/TensorArrayV2Stack/TensorListStack:tensor:05sequential_68/lstm_205/strided_slice_3/stack:output:07sequential_68/lstm_205/strided_slice_3/stack_1:output:07sequential_68/lstm_205/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask|
'sequential_68/lstm_205/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_68/lstm_205/transpose_1	TransposeBsequential_68/lstm_205/TensorArrayV2Stack/TensorListStack:tensor:00sequential_68/lstm_205/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_68/lstm_205/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_68/lstm_206/ShapeShape&sequential_68/lstm_205/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_68/lstm_206/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_68/lstm_206/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_68/lstm_206/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_68/lstm_206/strided_sliceStridedSlice%sequential_68/lstm_206/Shape:output:03sequential_68/lstm_206/strided_slice/stack:output:05sequential_68/lstm_206/strided_slice/stack_1:output:05sequential_68/lstm_206/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_68/lstm_206/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
#sequential_68/lstm_206/zeros/packedPack-sequential_68/lstm_206/strided_slice:output:0.sequential_68/lstm_206/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_68/lstm_206/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_68/lstm_206/zerosFill,sequential_68/lstm_206/zeros/packed:output:0+sequential_68/lstm_206/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
i
'sequential_68/lstm_206/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
%sequential_68/lstm_206/zeros_1/packedPack-sequential_68/lstm_206/strided_slice:output:00sequential_68/lstm_206/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_68/lstm_206/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_68/lstm_206/zeros_1Fill.sequential_68/lstm_206/zeros_1/packed:output:0-sequential_68/lstm_206/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
z
%sequential_68/lstm_206/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_68/lstm_206/transpose	Transpose&sequential_68/lstm_205/transpose_1:y:0.sequential_68/lstm_206/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_68/lstm_206/Shape_1Shape$sequential_68/lstm_206/transpose:y:0*
T0*
_output_shapes
:v
,sequential_68/lstm_206/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_68/lstm_206/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_68/lstm_206/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_68/lstm_206/strided_slice_1StridedSlice'sequential_68/lstm_206/Shape_1:output:05sequential_68/lstm_206/strided_slice_1/stack:output:07sequential_68/lstm_206/strided_slice_1/stack_1:output:07sequential_68/lstm_206/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_68/lstm_206/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_68/lstm_206/TensorArrayV2TensorListReserve;sequential_68/lstm_206/TensorArrayV2/element_shape:output:0/sequential_68/lstm_206/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_68/lstm_206/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
>sequential_68/lstm_206/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_68/lstm_206/transpose:y:0Usequential_68/lstm_206/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_68/lstm_206/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_68/lstm_206/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_68/lstm_206/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_68/lstm_206/strided_slice_2StridedSlice$sequential_68/lstm_206/transpose:y:05sequential_68/lstm_206/strided_slice_2/stack:output:07sequential_68/lstm_206/strided_slice_2/stack_1:output:07sequential_68/lstm_206/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
:sequential_68/lstm_206/lstm_cell_224/MatMul/ReadVariableOpReadVariableOpCsequential_68_lstm_206_lstm_cell_224_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
+sequential_68/lstm_206/lstm_cell_224/MatMulMatMul/sequential_68/lstm_206/strided_slice_2:output:0Bsequential_68/lstm_206/lstm_cell_224/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
<sequential_68/lstm_206/lstm_cell_224/MatMul_1/ReadVariableOpReadVariableOpEsequential_68_lstm_206_lstm_cell_224_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
-sequential_68/lstm_206/lstm_cell_224/MatMul_1MatMul%sequential_68/lstm_206/zeros:output:0Dsequential_68/lstm_206/lstm_cell_224/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
(sequential_68/lstm_206/lstm_cell_224/addAddV25sequential_68/lstm_206/lstm_cell_224/MatMul:product:07sequential_68/lstm_206/lstm_cell_224/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
;sequential_68/lstm_206/lstm_cell_224/BiasAdd/ReadVariableOpReadVariableOpDsequential_68_lstm_206_lstm_cell_224_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
,sequential_68/lstm_206/lstm_cell_224/BiasAddBiasAdd,sequential_68/lstm_206/lstm_cell_224/add:z:0Csequential_68/lstm_206/lstm_cell_224/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(v
4sequential_68/lstm_206/lstm_cell_224/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_68/lstm_206/lstm_cell_224/splitSplit=sequential_68/lstm_206/lstm_cell_224/split/split_dim:output:05sequential_68/lstm_206/lstm_cell_224/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
,sequential_68/lstm_206/lstm_cell_224/SigmoidSigmoid3sequential_68/lstm_206/lstm_cell_224/split:output:0*
T0*'
_output_shapes
:?????????
?
.sequential_68/lstm_206/lstm_cell_224/Sigmoid_1Sigmoid3sequential_68/lstm_206/lstm_cell_224/split:output:1*
T0*'
_output_shapes
:?????????
?
(sequential_68/lstm_206/lstm_cell_224/mulMul2sequential_68/lstm_206/lstm_cell_224/Sigmoid_1:y:0'sequential_68/lstm_206/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
)sequential_68/lstm_206/lstm_cell_224/ReluRelu3sequential_68/lstm_206/lstm_cell_224/split:output:2*
T0*'
_output_shapes
:?????????
?
*sequential_68/lstm_206/lstm_cell_224/mul_1Mul0sequential_68/lstm_206/lstm_cell_224/Sigmoid:y:07sequential_68/lstm_206/lstm_cell_224/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
*sequential_68/lstm_206/lstm_cell_224/add_1AddV2,sequential_68/lstm_206/lstm_cell_224/mul:z:0.sequential_68/lstm_206/lstm_cell_224/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
.sequential_68/lstm_206/lstm_cell_224/Sigmoid_2Sigmoid3sequential_68/lstm_206/lstm_cell_224/split:output:3*
T0*'
_output_shapes
:?????????
?
+sequential_68/lstm_206/lstm_cell_224/Relu_1Relu.sequential_68/lstm_206/lstm_cell_224/add_1:z:0*
T0*'
_output_shapes
:?????????
?
*sequential_68/lstm_206/lstm_cell_224/mul_2Mul2sequential_68/lstm_206/lstm_cell_224/Sigmoid_2:y:09sequential_68/lstm_206/lstm_cell_224/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
4sequential_68/lstm_206/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
&sequential_68/lstm_206/TensorArrayV2_1TensorListReserve=sequential_68/lstm_206/TensorArrayV2_1/element_shape:output:0/sequential_68/lstm_206/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_68/lstm_206/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_68/lstm_206/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_68/lstm_206/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_68/lstm_206/whileWhile2sequential_68/lstm_206/while/loop_counter:output:08sequential_68/lstm_206/while/maximum_iterations:output:0$sequential_68/lstm_206/time:output:0/sequential_68/lstm_206/TensorArrayV2_1:handle:0%sequential_68/lstm_206/zeros:output:0'sequential_68/lstm_206/zeros_1:output:0/sequential_68/lstm_206/strided_slice_1:output:0Nsequential_68/lstm_206/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_68_lstm_206_lstm_cell_224_matmul_readvariableop_resourceEsequential_68_lstm_206_lstm_cell_224_matmul_1_readvariableop_resourceDsequential_68_lstm_206_lstm_cell_224_biasadd_readvariableop_resource*
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
)sequential_68_lstm_206_while_body_1355494*5
cond-R+
)sequential_68_lstm_206_while_cond_1355493*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Gsequential_68/lstm_206/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
9sequential_68/lstm_206/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_68/lstm_206/while:output:3Psequential_68/lstm_206/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0
,sequential_68/lstm_206/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_68/lstm_206/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_68/lstm_206/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_68/lstm_206/strided_slice_3StridedSliceBsequential_68/lstm_206/TensorArrayV2Stack/TensorListStack:tensor:05sequential_68/lstm_206/strided_slice_3/stack:output:07sequential_68/lstm_206/strided_slice_3/stack_1:output:07sequential_68/lstm_206/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask|
'sequential_68/lstm_206/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_68/lstm_206/transpose_1	TransposeBsequential_68/lstm_206/TensorArrayV2Stack/TensorListStack:tensor:00sequential_68/lstm_206/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
r
sequential_68/lstm_206/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_68/dense_68/MatMul/ReadVariableOpReadVariableOp5sequential_68_dense_68_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_68/dense_68/MatMulMatMul/sequential_68/lstm_206/strided_slice_3:output:04sequential_68/dense_68/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_68/dense_68/BiasAdd/ReadVariableOpReadVariableOp6sequential_68_dense_68_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_68/dense_68/BiasAddBiasAdd'sequential_68/dense_68/MatMul:product:05sequential_68/dense_68/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_68/dense_68/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_68/dense_68/BiasAdd/ReadVariableOp-^sequential_68/dense_68/MatMul/ReadVariableOp<^sequential_68/lstm_204/lstm_cell_222/BiasAdd/ReadVariableOp;^sequential_68/lstm_204/lstm_cell_222/MatMul/ReadVariableOp=^sequential_68/lstm_204/lstm_cell_222/MatMul_1/ReadVariableOp^sequential_68/lstm_204/while<^sequential_68/lstm_205/lstm_cell_223/BiasAdd/ReadVariableOp;^sequential_68/lstm_205/lstm_cell_223/MatMul/ReadVariableOp=^sequential_68/lstm_205/lstm_cell_223/MatMul_1/ReadVariableOp^sequential_68/lstm_205/while<^sequential_68/lstm_206/lstm_cell_224/BiasAdd/ReadVariableOp;^sequential_68/lstm_206/lstm_cell_224/MatMul/ReadVariableOp=^sequential_68/lstm_206/lstm_cell_224/MatMul_1/ReadVariableOp^sequential_68/lstm_206/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2^
-sequential_68/dense_68/BiasAdd/ReadVariableOp-sequential_68/dense_68/BiasAdd/ReadVariableOp2\
,sequential_68/dense_68/MatMul/ReadVariableOp,sequential_68/dense_68/MatMul/ReadVariableOp2z
;sequential_68/lstm_204/lstm_cell_222/BiasAdd/ReadVariableOp;sequential_68/lstm_204/lstm_cell_222/BiasAdd/ReadVariableOp2x
:sequential_68/lstm_204/lstm_cell_222/MatMul/ReadVariableOp:sequential_68/lstm_204/lstm_cell_222/MatMul/ReadVariableOp2|
<sequential_68/lstm_204/lstm_cell_222/MatMul_1/ReadVariableOp<sequential_68/lstm_204/lstm_cell_222/MatMul_1/ReadVariableOp2<
sequential_68/lstm_204/whilesequential_68/lstm_204/while2z
;sequential_68/lstm_205/lstm_cell_223/BiasAdd/ReadVariableOp;sequential_68/lstm_205/lstm_cell_223/BiasAdd/ReadVariableOp2x
:sequential_68/lstm_205/lstm_cell_223/MatMul/ReadVariableOp:sequential_68/lstm_205/lstm_cell_223/MatMul/ReadVariableOp2|
<sequential_68/lstm_205/lstm_cell_223/MatMul_1/ReadVariableOp<sequential_68/lstm_205/lstm_cell_223/MatMul_1/ReadVariableOp2<
sequential_68/lstm_205/whilesequential_68/lstm_205/while2z
;sequential_68/lstm_206/lstm_cell_224/BiasAdd/ReadVariableOp;sequential_68/lstm_206/lstm_cell_224/BiasAdd/ReadVariableOp2x
:sequential_68/lstm_206/lstm_cell_224/MatMul/ReadVariableOp:sequential_68/lstm_206/lstm_cell_224/MatMul/ReadVariableOp2|
<sequential_68/lstm_206/lstm_cell_224/MatMul_1/ReadVariableOp<sequential_68/lstm_206/lstm_cell_224/MatMul_1/ReadVariableOp2<
sequential_68/lstm_206/whilesequential_68/lstm_206/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_204_input
?
?
J__inference_lstm_cell_222_layer_call_and_return_conditional_losses_1355651

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

?
%__inference_signature_wrapper_1357844
lstm_204_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_204_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_1355584o
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
_user_specified_namelstm_204_input
?
?
J__inference_sequential_68_layer_call_and_return_conditional_losses_1357809
lstm_204_input#
lstm_204_1357782:	?#
lstm_204_1357784:	d?
lstm_204_1357786:	?#
lstm_205_1357789:	d?#
lstm_205_1357791:	2?
lstm_205_1357793:	?"
lstm_206_1357796:2("
lstm_206_1357798:
(
lstm_206_1357800:("
dense_68_1357803:

dense_68_1357805:
identity?? dense_68/StatefulPartitionedCall? lstm_204/StatefulPartitionedCall? lstm_205/StatefulPartitionedCall? lstm_206/StatefulPartitionedCall?
 lstm_204/StatefulPartitionedCallStatefulPartitionedCalllstm_204_inputlstm_204_1357782lstm_204_1357784lstm_204_1357786*
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
E__inference_lstm_204_layer_call_and_return_conditional_losses_1357629?
 lstm_205/StatefulPartitionedCallStatefulPartitionedCall)lstm_204/StatefulPartitionedCall:output:0lstm_205_1357789lstm_205_1357791lstm_205_1357793*
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
E__inference_lstm_205_layer_call_and_return_conditional_losses_1357464?
 lstm_206/StatefulPartitionedCallStatefulPartitionedCall)lstm_205/StatefulPartitionedCall:output:0lstm_206_1357796lstm_206_1357798lstm_206_1357800*
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
E__inference_lstm_206_layer_call_and_return_conditional_losses_1357299?
 dense_68/StatefulPartitionedCallStatefulPartitionedCall)lstm_206/StatefulPartitionedCall:output:0dense_68_1357803dense_68_1357805*
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
E__inference_dense_68_layer_call_and_return_conditional_losses_1357101x
IdentityIdentity)dense_68/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_68/StatefulPartitionedCall!^lstm_204/StatefulPartitionedCall!^lstm_205/StatefulPartitionedCall!^lstm_206/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_68/StatefulPartitionedCall dense_68/StatefulPartitionedCall2D
 lstm_204/StatefulPartitionedCall lstm_204/StatefulPartitionedCall2D
 lstm_205/StatefulPartitionedCall lstm_205/StatefulPartitionedCall2D
 lstm_206/StatefulPartitionedCall lstm_206/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_204_input
?J
?
E__inference_lstm_204_layer_call_and_return_conditional_losses_1359225

inputs?
,lstm_cell_222_matmul_readvariableop_resource:	?A
.lstm_cell_222_matmul_1_readvariableop_resource:	d?<
-lstm_cell_222_biasadd_readvariableop_resource:	?
identity??$lstm_cell_222/BiasAdd/ReadVariableOp?#lstm_cell_222/MatMul/ReadVariableOp?%lstm_cell_222/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_222/MatMul/ReadVariableOpReadVariableOp,lstm_cell_222_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_222/MatMulMatMulstrided_slice_2:output:0+lstm_cell_222/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_222/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_222_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_222/MatMul_1MatMulzeros:output:0-lstm_cell_222/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_222/addAddV2lstm_cell_222/MatMul:product:0 lstm_cell_222/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_222/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_222_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_222/BiasAddBiasAddlstm_cell_222/add:z:0,lstm_cell_222/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_222/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_222/splitSplit&lstm_cell_222/split/split_dim:output:0lstm_cell_222/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_222/SigmoidSigmoidlstm_cell_222/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_222/Sigmoid_1Sigmoidlstm_cell_222/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_222/mulMullstm_cell_222/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_222/ReluRelulstm_cell_222/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_222/mul_1Mullstm_cell_222/Sigmoid:y:0 lstm_cell_222/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_222/add_1AddV2lstm_cell_222/mul:z:0lstm_cell_222/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_222/Sigmoid_2Sigmoidlstm_cell_222/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_222/Relu_1Relulstm_cell_222/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_222/mul_2Mullstm_cell_222/Sigmoid_2:y:0"lstm_cell_222/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_222_matmul_readvariableop_resource.lstm_cell_222_matmul_1_readvariableop_resource-lstm_cell_222_biasadd_readvariableop_resource*
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
while_body_1359141*
condR
while_cond_1359140*K
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
NoOpNoOp%^lstm_cell_222/BiasAdd/ReadVariableOp$^lstm_cell_222/MatMul/ReadVariableOp&^lstm_cell_222/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_222/BiasAdd/ReadVariableOp$lstm_cell_222/BiasAdd/ReadVariableOp2J
#lstm_cell_222/MatMul/ReadVariableOp#lstm_cell_222/MatMul/ReadVariableOp2N
%lstm_cell_222/MatMul_1/ReadVariableOp%lstm_cell_222/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_205_while_cond_1358522.
*lstm_205_while_lstm_205_while_loop_counter4
0lstm_205_while_lstm_205_while_maximum_iterations
lstm_205_while_placeholder 
lstm_205_while_placeholder_1 
lstm_205_while_placeholder_2 
lstm_205_while_placeholder_30
,lstm_205_while_less_lstm_205_strided_slice_1G
Clstm_205_while_lstm_205_while_cond_1358522___redundant_placeholder0G
Clstm_205_while_lstm_205_while_cond_1358522___redundant_placeholder1G
Clstm_205_while_lstm_205_while_cond_1358522___redundant_placeholder2G
Clstm_205_while_lstm_205_while_cond_1358522___redundant_placeholder3
lstm_205_while_identity
?
lstm_205/while/LessLesslstm_205_while_placeholder,lstm_205_while_less_lstm_205_strided_slice_1*
T0*
_output_shapes
: ]
lstm_205/while/IdentityIdentitylstm_205/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_205_while_identity lstm_205/while/Identity:output:0*(
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
while_body_1359471
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_223_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_223_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_223_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_223_matmul_readvariableop_resource:	d?G
4while_lstm_cell_223_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_223_biasadd_readvariableop_resource:	???*while/lstm_cell_223/BiasAdd/ReadVariableOp?)while/lstm_cell_223/MatMul/ReadVariableOp?+while/lstm_cell_223/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_223/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_223_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_223/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_223/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_223/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_223_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_223/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_223/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_223/addAddV2$while/lstm_cell_223/MatMul:product:0&while/lstm_cell_223/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_223/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_223_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_223/BiasAddBiasAddwhile/lstm_cell_223/add:z:02while/lstm_cell_223/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_223/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_223/splitSplit,while/lstm_cell_223/split/split_dim:output:0$while/lstm_cell_223/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_223/SigmoidSigmoid"while/lstm_cell_223/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_223/Sigmoid_1Sigmoid"while/lstm_cell_223/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_223/mulMul!while/lstm_cell_223/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_223/ReluRelu"while/lstm_cell_223/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_223/mul_1Mulwhile/lstm_cell_223/Sigmoid:y:0&while/lstm_cell_223/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_223/add_1AddV2while/lstm_cell_223/mul:z:0while/lstm_cell_223/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_223/Sigmoid_2Sigmoid"while/lstm_cell_223/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_223/Relu_1Reluwhile/lstm_cell_223/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_223/mul_2Mul!while/lstm_cell_223/Sigmoid_2:y:0(while/lstm_cell_223/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_223/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_223/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_223/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_223/BiasAdd/ReadVariableOp*^while/lstm_cell_223/MatMul/ReadVariableOp,^while/lstm_cell_223/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_223_biasadd_readvariableop_resource5while_lstm_cell_223_biasadd_readvariableop_resource_0"n
4while_lstm_cell_223_matmul_1_readvariableop_resource6while_lstm_cell_223_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_223_matmul_readvariableop_resource4while_lstm_cell_223_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_223/BiasAdd/ReadVariableOp*while/lstm_cell_223/BiasAdd/ReadVariableOp2V
)while/lstm_cell_223/MatMul/ReadVariableOp)while/lstm_cell_223/MatMul/ReadVariableOp2Z
+while/lstm_cell_223/MatMul_1/ReadVariableOp+while/lstm_cell_223/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1356014
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1356014___redundant_placeholder05
1while_while_cond_1356014___redundant_placeholder15
1while_while_cond_1356014___redundant_placeholder25
1while_while_cond_1356014___redundant_placeholder3
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
while_body_1355665
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_222_1355689_0:	?0
while_lstm_cell_222_1355691_0:	d?,
while_lstm_cell_222_1355693_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_222_1355689:	?.
while_lstm_cell_222_1355691:	d?*
while_lstm_cell_222_1355693:	???+while/lstm_cell_222/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_222/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_222_1355689_0while_lstm_cell_222_1355691_0while_lstm_cell_222_1355693_0*
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
J__inference_lstm_cell_222_layer_call_and_return_conditional_losses_1355651?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_222/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_222/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_222/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_222/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_222_1355689while_lstm_cell_222_1355689_0"<
while_lstm_cell_222_1355691while_lstm_cell_222_1355691_0"<
while_lstm_cell_222_1355693while_lstm_cell_222_1355693_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_222/StatefulPartitionedCall+while/lstm_cell_222/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_1357545
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_222_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_222_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_222_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_222_matmul_readvariableop_resource:	?G
4while_lstm_cell_222_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_222_biasadd_readvariableop_resource:	???*while/lstm_cell_222/BiasAdd/ReadVariableOp?)while/lstm_cell_222/MatMul/ReadVariableOp?+while/lstm_cell_222/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_222/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_222_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_222/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_222/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_222/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_222_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_222/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_222/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_222/addAddV2$while/lstm_cell_222/MatMul:product:0&while/lstm_cell_222/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_222/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_222_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_222/BiasAddBiasAddwhile/lstm_cell_222/add:z:02while/lstm_cell_222/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_222/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_222/splitSplit,while/lstm_cell_222/split/split_dim:output:0$while/lstm_cell_222/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_222/SigmoidSigmoid"while/lstm_cell_222/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_222/Sigmoid_1Sigmoid"while/lstm_cell_222/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_222/mulMul!while/lstm_cell_222/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_222/ReluRelu"while/lstm_cell_222/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_222/mul_1Mulwhile/lstm_cell_222/Sigmoid:y:0&while/lstm_cell_222/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_222/add_1AddV2while/lstm_cell_222/mul:z:0while/lstm_cell_222/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_222/Sigmoid_2Sigmoid"while/lstm_cell_222/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_222/Relu_1Reluwhile/lstm_cell_222/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_222/mul_2Mul!while/lstm_cell_222/Sigmoid_2:y:0(while/lstm_cell_222/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_222/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_222/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_222/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_222/BiasAdd/ReadVariableOp*^while/lstm_cell_222/MatMul/ReadVariableOp,^while/lstm_cell_222/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_222_biasadd_readvariableop_resource5while_lstm_cell_222_biasadd_readvariableop_resource_0"n
4while_lstm_cell_222_matmul_1_readvariableop_resource6while_lstm_cell_222_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_222_matmul_readvariableop_resource4while_lstm_cell_222_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_222/BiasAdd/ReadVariableOp*while/lstm_cell_222/BiasAdd/ReadVariableOp2V
)while/lstm_cell_222/MatMul/ReadVariableOp)while/lstm_cell_222/MatMul/ReadVariableOp2Z
+while/lstm_cell_222/MatMul_1/ReadVariableOp+while/lstm_cell_222/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_206_layer_call_and_return_conditional_losses_1360457

inputs>
,lstm_cell_224_matmul_readvariableop_resource:2(@
.lstm_cell_224_matmul_1_readvariableop_resource:
(;
-lstm_cell_224_biasadd_readvariableop_resource:(
identity??$lstm_cell_224/BiasAdd/ReadVariableOp?#lstm_cell_224/MatMul/ReadVariableOp?%lstm_cell_224/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_224/MatMul/ReadVariableOpReadVariableOp,lstm_cell_224_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_224/MatMulMatMulstrided_slice_2:output:0+lstm_cell_224/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_224/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_224_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_224/MatMul_1MatMulzeros:output:0-lstm_cell_224/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_224/addAddV2lstm_cell_224/MatMul:product:0 lstm_cell_224/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_224/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_224_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_224/BiasAddBiasAddlstm_cell_224/add:z:0,lstm_cell_224/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_224/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_224/splitSplit&lstm_cell_224/split/split_dim:output:0lstm_cell_224/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_224/SigmoidSigmoidlstm_cell_224/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_224/Sigmoid_1Sigmoidlstm_cell_224/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_224/mulMullstm_cell_224/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_224/ReluRelulstm_cell_224/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_224/mul_1Mullstm_cell_224/Sigmoid:y:0 lstm_cell_224/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_224/add_1AddV2lstm_cell_224/mul:z:0lstm_cell_224/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_224/Sigmoid_2Sigmoidlstm_cell_224/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_224/Relu_1Relulstm_cell_224/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_224/mul_2Mullstm_cell_224/Sigmoid_2:y:0"lstm_cell_224/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_224_matmul_readvariableop_resource.lstm_cell_224_matmul_1_readvariableop_resource-lstm_cell_224_biasadd_readvariableop_resource*
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
while_body_1360373*
condR
while_cond_1360372*K
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
NoOpNoOp%^lstm_cell_224/BiasAdd/ReadVariableOp$^lstm_cell_224/MatMul/ReadVariableOp&^lstm_cell_224/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_224/BiasAdd/ReadVariableOp$lstm_cell_224/BiasAdd/ReadVariableOp2J
#lstm_cell_224/MatMul/ReadVariableOp#lstm_cell_224/MatMul/ReadVariableOp2N
%lstm_cell_224/MatMul_1/ReadVariableOp%lstm_cell_224/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?#
?
while_body_1356206
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_223_1356230_0:	d?0
while_lstm_cell_223_1356232_0:	2?,
while_lstm_cell_223_1356234_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_223_1356230:	d?.
while_lstm_cell_223_1356232:	2?*
while_lstm_cell_223_1356234:	???+while/lstm_cell_223/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_223/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_223_1356230_0while_lstm_cell_223_1356232_0while_lstm_cell_223_1356234_0*
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
J__inference_lstm_cell_223_layer_call_and_return_conditional_losses_1356147?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_223/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_223/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_223/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_223/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_223_1356230while_lstm_cell_223_1356230_0"<
while_lstm_cell_223_1356232while_lstm_cell_223_1356232_0"<
while_lstm_cell_223_1356234while_lstm_cell_223_1356234_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_223/StatefulPartitionedCall+while/lstm_cell_223/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_1359613
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1359613___redundant_placeholder05
1while_while_cond_1359613___redundant_placeholder15
1while_while_cond_1359613___redundant_placeholder25
1while_while_cond_1359613___redundant_placeholder3
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
?
?
*__inference_lstm_206_layer_call_fn_1360017

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
E__inference_lstm_206_layer_call_and_return_conditional_losses_1357083o
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
?
/__inference_lstm_cell_223_layer_call_fn_1360734

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
J__inference_lstm_cell_223_layer_call_and_return_conditional_losses_1356001o
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
while_cond_1360515
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1360515___redundant_placeholder05
1while_while_cond_1360515___redundant_placeholder15
1while_while_cond_1360515___redundant_placeholder25
1while_while_cond_1360515___redundant_placeholder3
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
while_body_1356015
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_223_1356039_0:	d?0
while_lstm_cell_223_1356041_0:	2?,
while_lstm_cell_223_1356043_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_223_1356039:	d?.
while_lstm_cell_223_1356041:	2?*
while_lstm_cell_223_1356043:	???+while/lstm_cell_223/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_223/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_223_1356039_0while_lstm_cell_223_1356041_0while_lstm_cell_223_1356043_0*
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
J__inference_lstm_cell_223_layer_call_and_return_conditional_losses_1356001?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_223/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_223/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_223/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_223/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_223_1356039while_lstm_cell_223_1356039_0"<
while_lstm_cell_223_1356041while_lstm_cell_223_1356041_0"<
while_lstm_cell_223_1356043while_lstm_cell_223_1356043_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_223/StatefulPartitionedCall+while/lstm_cell_223/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_223_layer_call_and_return_conditional_losses_1356147

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
while_body_1357380
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_223_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_223_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_223_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_223_matmul_readvariableop_resource:	d?G
4while_lstm_cell_223_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_223_biasadd_readvariableop_resource:	???*while/lstm_cell_223/BiasAdd/ReadVariableOp?)while/lstm_cell_223/MatMul/ReadVariableOp?+while/lstm_cell_223/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_223/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_223_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_223/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_223/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_223/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_223_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_223/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_223/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_223/addAddV2$while/lstm_cell_223/MatMul:product:0&while/lstm_cell_223/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_223/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_223_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_223/BiasAddBiasAddwhile/lstm_cell_223/add:z:02while/lstm_cell_223/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_223/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_223/splitSplit,while/lstm_cell_223/split/split_dim:output:0$while/lstm_cell_223/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_223/SigmoidSigmoid"while/lstm_cell_223/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_223/Sigmoid_1Sigmoid"while/lstm_cell_223/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_223/mulMul!while/lstm_cell_223/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_223/ReluRelu"while/lstm_cell_223/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_223/mul_1Mulwhile/lstm_cell_223/Sigmoid:y:0&while/lstm_cell_223/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_223/add_1AddV2while/lstm_cell_223/mul:z:0while/lstm_cell_223/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_223/Sigmoid_2Sigmoid"while/lstm_cell_223/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_223/Relu_1Reluwhile/lstm_cell_223/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_223/mul_2Mul!while/lstm_cell_223/Sigmoid_2:y:0(while/lstm_cell_223/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_223/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_223/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_223/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_223/BiasAdd/ReadVariableOp*^while/lstm_cell_223/MatMul/ReadVariableOp,^while/lstm_cell_223/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_223_biasadd_readvariableop_resource5while_lstm_cell_223_biasadd_readvariableop_resource_0"n
4while_lstm_cell_223_matmul_1_readvariableop_resource6while_lstm_cell_223_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_223_matmul_readvariableop_resource4while_lstm_cell_223_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_223/BiasAdd/ReadVariableOp*while/lstm_cell_223/BiasAdd/ReadVariableOp2V
)while/lstm_cell_223/MatMul/ReadVariableOp)while/lstm_cell_223/MatMul/ReadVariableOp2Z
+while/lstm_cell_223/MatMul_1/ReadVariableOp+while/lstm_cell_223/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1357215
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_224_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_224_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_224_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_224_matmul_readvariableop_resource:2(F
4while_lstm_cell_224_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_224_biasadd_readvariableop_resource:(??*while/lstm_cell_224/BiasAdd/ReadVariableOp?)while/lstm_cell_224/MatMul/ReadVariableOp?+while/lstm_cell_224/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_224/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_224_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_224/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_224/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_224/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_224_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_224/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_224/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_224/addAddV2$while/lstm_cell_224/MatMul:product:0&while/lstm_cell_224/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_224/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_224_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_224/BiasAddBiasAddwhile/lstm_cell_224/add:z:02while/lstm_cell_224/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_224/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_224/splitSplit,while/lstm_cell_224/split/split_dim:output:0$while/lstm_cell_224/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_224/SigmoidSigmoid"while/lstm_cell_224/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_224/Sigmoid_1Sigmoid"while/lstm_cell_224/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_224/mulMul!while/lstm_cell_224/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_224/ReluRelu"while/lstm_cell_224/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_224/mul_1Mulwhile/lstm_cell_224/Sigmoid:y:0&while/lstm_cell_224/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_224/add_1AddV2while/lstm_cell_224/mul:z:0while/lstm_cell_224/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_224/Sigmoid_2Sigmoid"while/lstm_cell_224/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_224/Relu_1Reluwhile/lstm_cell_224/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_224/mul_2Mul!while/lstm_cell_224/Sigmoid_2:y:0(while/lstm_cell_224/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_224/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_224/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_224/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_224/BiasAdd/ReadVariableOp*^while/lstm_cell_224/MatMul/ReadVariableOp,^while/lstm_cell_224/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_224_biasadd_readvariableop_resource5while_lstm_cell_224_biasadd_readvariableop_resource_0"n
4while_lstm_cell_224_matmul_1_readvariableop_resource6while_lstm_cell_224_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_224_matmul_readvariableop_resource4while_lstm_cell_224_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_224/BiasAdd/ReadVariableOp*while/lstm_cell_224/BiasAdd/ReadVariableOp2V
)while/lstm_cell_224/MatMul/ReadVariableOp)while/lstm_cell_224/MatMul/ReadVariableOp2Z
+while/lstm_cell_224/MatMul_1/ReadVariableOp+while/lstm_cell_224/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_205_layer_call_fn_1359390
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
E__inference_lstm_205_layer_call_and_return_conditional_losses_1356275|
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
lstm_206_while_cond_1358661.
*lstm_206_while_lstm_206_while_loop_counter4
0lstm_206_while_lstm_206_while_maximum_iterations
lstm_206_while_placeholder 
lstm_206_while_placeholder_1 
lstm_206_while_placeholder_2 
lstm_206_while_placeholder_30
,lstm_206_while_less_lstm_206_strided_slice_1G
Clstm_206_while_lstm_206_while_cond_1358661___redundant_placeholder0G
Clstm_206_while_lstm_206_while_cond_1358661___redundant_placeholder1G
Clstm_206_while_lstm_206_while_cond_1358661___redundant_placeholder2G
Clstm_206_while_lstm_206_while_cond_1358661___redundant_placeholder3
lstm_206_while_identity
?
lstm_206/while/LessLesslstm_206_while_placeholder,lstm_206_while_less_lstm_206_strided_slice_1*
T0*
_output_shapes
: ]
lstm_206/while/IdentityIdentitylstm_206/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_206_while_identity lstm_206/while/Identity:output:0*(
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
while_body_1355856
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_222_1355880_0:	?0
while_lstm_cell_222_1355882_0:	d?,
while_lstm_cell_222_1355884_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_222_1355880:	?.
while_lstm_cell_222_1355882:	d?*
while_lstm_cell_222_1355884:	???+while/lstm_cell_222/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_222/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_222_1355880_0while_lstm_cell_222_1355882_0while_lstm_cell_222_1355884_0*
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
J__inference_lstm_cell_222_layer_call_and_return_conditional_losses_1355797?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_222/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_222/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_222/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_222/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_222_1355880while_lstm_cell_222_1355880_0"<
while_lstm_cell_222_1355882while_lstm_cell_222_1355882_0"<
while_lstm_cell_222_1355884while_lstm_cell_222_1355884_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_222/StatefulPartitionedCall+while/lstm_cell_222/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_205_layer_call_fn_1359379
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
E__inference_lstm_205_layer_call_and_return_conditional_losses_1356084|
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
?
?
*__inference_dense_68_layer_call_fn_1360609

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
E__inference_dense_68_layer_call_and_return_conditional_losses_1357101o
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
?S
?
)sequential_68_lstm_204_while_body_1355216J
Fsequential_68_lstm_204_while_sequential_68_lstm_204_while_loop_counterP
Lsequential_68_lstm_204_while_sequential_68_lstm_204_while_maximum_iterations,
(sequential_68_lstm_204_while_placeholder.
*sequential_68_lstm_204_while_placeholder_1.
*sequential_68_lstm_204_while_placeholder_2.
*sequential_68_lstm_204_while_placeholder_3I
Esequential_68_lstm_204_while_sequential_68_lstm_204_strided_slice_1_0?
?sequential_68_lstm_204_while_tensorarrayv2read_tensorlistgetitem_sequential_68_lstm_204_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_68_lstm_204_while_lstm_cell_222_matmul_readvariableop_resource_0:	?`
Msequential_68_lstm_204_while_lstm_cell_222_matmul_1_readvariableop_resource_0:	d?[
Lsequential_68_lstm_204_while_lstm_cell_222_biasadd_readvariableop_resource_0:	?)
%sequential_68_lstm_204_while_identity+
'sequential_68_lstm_204_while_identity_1+
'sequential_68_lstm_204_while_identity_2+
'sequential_68_lstm_204_while_identity_3+
'sequential_68_lstm_204_while_identity_4+
'sequential_68_lstm_204_while_identity_5G
Csequential_68_lstm_204_while_sequential_68_lstm_204_strided_slice_1?
sequential_68_lstm_204_while_tensorarrayv2read_tensorlistgetitem_sequential_68_lstm_204_tensorarrayunstack_tensorlistfromtensor\
Isequential_68_lstm_204_while_lstm_cell_222_matmul_readvariableop_resource:	?^
Ksequential_68_lstm_204_while_lstm_cell_222_matmul_1_readvariableop_resource:	d?Y
Jsequential_68_lstm_204_while_lstm_cell_222_biasadd_readvariableop_resource:	???Asequential_68/lstm_204/while/lstm_cell_222/BiasAdd/ReadVariableOp?@sequential_68/lstm_204/while/lstm_cell_222/MatMul/ReadVariableOp?Bsequential_68/lstm_204/while/lstm_cell_222/MatMul_1/ReadVariableOp?
Nsequential_68/lstm_204/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
@sequential_68/lstm_204/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_68_lstm_204_while_tensorarrayv2read_tensorlistgetitem_sequential_68_lstm_204_tensorarrayunstack_tensorlistfromtensor_0(sequential_68_lstm_204_while_placeholderWsequential_68/lstm_204/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
@sequential_68/lstm_204/while/lstm_cell_222/MatMul/ReadVariableOpReadVariableOpKsequential_68_lstm_204_while_lstm_cell_222_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
1sequential_68/lstm_204/while/lstm_cell_222/MatMulMatMulGsequential_68/lstm_204/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_68/lstm_204/while/lstm_cell_222/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_68/lstm_204/while/lstm_cell_222/MatMul_1/ReadVariableOpReadVariableOpMsequential_68_lstm_204_while_lstm_cell_222_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
3sequential_68/lstm_204/while/lstm_cell_222/MatMul_1MatMul*sequential_68_lstm_204_while_placeholder_2Jsequential_68/lstm_204/while/lstm_cell_222/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_68/lstm_204/while/lstm_cell_222/addAddV2;sequential_68/lstm_204/while/lstm_cell_222/MatMul:product:0=sequential_68/lstm_204/while/lstm_cell_222/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_68/lstm_204/while/lstm_cell_222/BiasAdd/ReadVariableOpReadVariableOpLsequential_68_lstm_204_while_lstm_cell_222_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_68/lstm_204/while/lstm_cell_222/BiasAddBiasAdd2sequential_68/lstm_204/while/lstm_cell_222/add:z:0Isequential_68/lstm_204/while/lstm_cell_222/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_68/lstm_204/while/lstm_cell_222/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_68/lstm_204/while/lstm_cell_222/splitSplitCsequential_68/lstm_204/while/lstm_cell_222/split/split_dim:output:0;sequential_68/lstm_204/while/lstm_cell_222/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
2sequential_68/lstm_204/while/lstm_cell_222/SigmoidSigmoid9sequential_68/lstm_204/while/lstm_cell_222/split:output:0*
T0*'
_output_shapes
:?????????d?
4sequential_68/lstm_204/while/lstm_cell_222/Sigmoid_1Sigmoid9sequential_68/lstm_204/while/lstm_cell_222/split:output:1*
T0*'
_output_shapes
:?????????d?
.sequential_68/lstm_204/while/lstm_cell_222/mulMul8sequential_68/lstm_204/while/lstm_cell_222/Sigmoid_1:y:0*sequential_68_lstm_204_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
/sequential_68/lstm_204/while/lstm_cell_222/ReluRelu9sequential_68/lstm_204/while/lstm_cell_222/split:output:2*
T0*'
_output_shapes
:?????????d?
0sequential_68/lstm_204/while/lstm_cell_222/mul_1Mul6sequential_68/lstm_204/while/lstm_cell_222/Sigmoid:y:0=sequential_68/lstm_204/while/lstm_cell_222/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
0sequential_68/lstm_204/while/lstm_cell_222/add_1AddV22sequential_68/lstm_204/while/lstm_cell_222/mul:z:04sequential_68/lstm_204/while/lstm_cell_222/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
4sequential_68/lstm_204/while/lstm_cell_222/Sigmoid_2Sigmoid9sequential_68/lstm_204/while/lstm_cell_222/split:output:3*
T0*'
_output_shapes
:?????????d?
1sequential_68/lstm_204/while/lstm_cell_222/Relu_1Relu4sequential_68/lstm_204/while/lstm_cell_222/add_1:z:0*
T0*'
_output_shapes
:?????????d?
0sequential_68/lstm_204/while/lstm_cell_222/mul_2Mul8sequential_68/lstm_204/while/lstm_cell_222/Sigmoid_2:y:0?sequential_68/lstm_204/while/lstm_cell_222/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Asequential_68/lstm_204/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_68_lstm_204_while_placeholder_1(sequential_68_lstm_204_while_placeholder4sequential_68/lstm_204/while/lstm_cell_222/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_68/lstm_204/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_68/lstm_204/while/addAddV2(sequential_68_lstm_204_while_placeholder+sequential_68/lstm_204/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_68/lstm_204/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_68/lstm_204/while/add_1AddV2Fsequential_68_lstm_204_while_sequential_68_lstm_204_while_loop_counter-sequential_68/lstm_204/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_68/lstm_204/while/IdentityIdentity&sequential_68/lstm_204/while/add_1:z:0"^sequential_68/lstm_204/while/NoOp*
T0*
_output_shapes
: ?
'sequential_68/lstm_204/while/Identity_1IdentityLsequential_68_lstm_204_while_sequential_68_lstm_204_while_maximum_iterations"^sequential_68/lstm_204/while/NoOp*
T0*
_output_shapes
: ?
'sequential_68/lstm_204/while/Identity_2Identity$sequential_68/lstm_204/while/add:z:0"^sequential_68/lstm_204/while/NoOp*
T0*
_output_shapes
: ?
'sequential_68/lstm_204/while/Identity_3IdentityQsequential_68/lstm_204/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_68/lstm_204/while/NoOp*
T0*
_output_shapes
: ?
'sequential_68/lstm_204/while/Identity_4Identity4sequential_68/lstm_204/while/lstm_cell_222/mul_2:z:0"^sequential_68/lstm_204/while/NoOp*
T0*'
_output_shapes
:?????????d?
'sequential_68/lstm_204/while/Identity_5Identity4sequential_68/lstm_204/while/lstm_cell_222/add_1:z:0"^sequential_68/lstm_204/while/NoOp*
T0*'
_output_shapes
:?????????d?
!sequential_68/lstm_204/while/NoOpNoOpB^sequential_68/lstm_204/while/lstm_cell_222/BiasAdd/ReadVariableOpA^sequential_68/lstm_204/while/lstm_cell_222/MatMul/ReadVariableOpC^sequential_68/lstm_204/while/lstm_cell_222/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_68_lstm_204_while_identity.sequential_68/lstm_204/while/Identity:output:0"[
'sequential_68_lstm_204_while_identity_10sequential_68/lstm_204/while/Identity_1:output:0"[
'sequential_68_lstm_204_while_identity_20sequential_68/lstm_204/while/Identity_2:output:0"[
'sequential_68_lstm_204_while_identity_30sequential_68/lstm_204/while/Identity_3:output:0"[
'sequential_68_lstm_204_while_identity_40sequential_68/lstm_204/while/Identity_4:output:0"[
'sequential_68_lstm_204_while_identity_50sequential_68/lstm_204/while/Identity_5:output:0"?
Jsequential_68_lstm_204_while_lstm_cell_222_biasadd_readvariableop_resourceLsequential_68_lstm_204_while_lstm_cell_222_biasadd_readvariableop_resource_0"?
Ksequential_68_lstm_204_while_lstm_cell_222_matmul_1_readvariableop_resourceMsequential_68_lstm_204_while_lstm_cell_222_matmul_1_readvariableop_resource_0"?
Isequential_68_lstm_204_while_lstm_cell_222_matmul_readvariableop_resourceKsequential_68_lstm_204_while_lstm_cell_222_matmul_readvariableop_resource_0"?
Csequential_68_lstm_204_while_sequential_68_lstm_204_strided_slice_1Esequential_68_lstm_204_while_sequential_68_lstm_204_strided_slice_1_0"?
sequential_68_lstm_204_while_tensorarrayv2read_tensorlistgetitem_sequential_68_lstm_204_tensorarrayunstack_tensorlistfromtensor?sequential_68_lstm_204_while_tensorarrayv2read_tensorlistgetitem_sequential_68_lstm_204_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Asequential_68/lstm_204/while/lstm_cell_222/BiasAdd/ReadVariableOpAsequential_68/lstm_204/while/lstm_cell_222/BiasAdd/ReadVariableOp2?
@sequential_68/lstm_204/while/lstm_cell_222/MatMul/ReadVariableOp@sequential_68/lstm_204/while/lstm_cell_222/MatMul/ReadVariableOp2?
Bsequential_68/lstm_204/while/lstm_cell_222/MatMul_1/ReadVariableOpBsequential_68/lstm_204/while/lstm_cell_222/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_204_while_cond_1357956.
*lstm_204_while_lstm_204_while_loop_counter4
0lstm_204_while_lstm_204_while_maximum_iterations
lstm_204_while_placeholder 
lstm_204_while_placeholder_1 
lstm_204_while_placeholder_2 
lstm_204_while_placeholder_30
,lstm_204_while_less_lstm_204_strided_slice_1G
Clstm_204_while_lstm_204_while_cond_1357956___redundant_placeholder0G
Clstm_204_while_lstm_204_while_cond_1357956___redundant_placeholder1G
Clstm_204_while_lstm_204_while_cond_1357956___redundant_placeholder2G
Clstm_204_while_lstm_204_while_cond_1357956___redundant_placeholder3
lstm_204_while_identity
?
lstm_204/while/LessLesslstm_204_while_placeholder,lstm_204_while_less_lstm_204_strided_slice_1*
T0*
_output_shapes
: ]
lstm_204/while/IdentityIdentitylstm_204/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_204_while_identity lstm_204/while/Identity:output:0*(
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
E__inference_lstm_204_layer_call_and_return_conditional_losses_1355734

inputs(
lstm_cell_222_1355652:	?(
lstm_cell_222_1355654:	d?$
lstm_cell_222_1355656:	?
identity??%lstm_cell_222/StatefulPartitionedCall?while;
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
%lstm_cell_222/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_222_1355652lstm_cell_222_1355654lstm_cell_222_1355656*
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
J__inference_lstm_cell_222_layer_call_and_return_conditional_losses_1355651n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_222_1355652lstm_cell_222_1355654lstm_cell_222_1355656*
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
while_body_1355665*
condR
while_cond_1355664*K
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
NoOpNoOp&^lstm_cell_222/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_222/StatefulPartitionedCall%lstm_cell_222/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_206_layer_call_fn_1360006
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
E__inference_lstm_206_layer_call_and_return_conditional_losses_1356625o
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
while_cond_1356205
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1356205___redundant_placeholder05
1while_while_cond_1356205___redundant_placeholder15
1while_while_cond_1356205___redundant_placeholder25
1while_while_cond_1356205___redundant_placeholder3
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
*__inference_lstm_205_layer_call_fn_1359412

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
E__inference_lstm_205_layer_call_and_return_conditional_losses_1357464s
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
while_body_1360087
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_224_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_224_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_224_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_224_matmul_readvariableop_resource:2(F
4while_lstm_cell_224_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_224_biasadd_readvariableop_resource:(??*while/lstm_cell_224/BiasAdd/ReadVariableOp?)while/lstm_cell_224/MatMul/ReadVariableOp?+while/lstm_cell_224/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_224/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_224_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_224/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_224/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_224/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_224_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_224/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_224/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_224/addAddV2$while/lstm_cell_224/MatMul:product:0&while/lstm_cell_224/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_224/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_224_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_224/BiasAddBiasAddwhile/lstm_cell_224/add:z:02while/lstm_cell_224/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_224/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_224/splitSplit,while/lstm_cell_224/split/split_dim:output:0$while/lstm_cell_224/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_224/SigmoidSigmoid"while/lstm_cell_224/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_224/Sigmoid_1Sigmoid"while/lstm_cell_224/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_224/mulMul!while/lstm_cell_224/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_224/ReluRelu"while/lstm_cell_224/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_224/mul_1Mulwhile/lstm_cell_224/Sigmoid:y:0&while/lstm_cell_224/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_224/add_1AddV2while/lstm_cell_224/mul:z:0while/lstm_cell_224/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_224/Sigmoid_2Sigmoid"while/lstm_cell_224/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_224/Relu_1Reluwhile/lstm_cell_224/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_224/mul_2Mul!while/lstm_cell_224/Sigmoid_2:y:0(while/lstm_cell_224/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_224/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_224/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_224/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_224/BiasAdd/ReadVariableOp*^while/lstm_cell_224/MatMul/ReadVariableOp,^while/lstm_cell_224/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_224_biasadd_readvariableop_resource5while_lstm_cell_224_biasadd_readvariableop_resource_0"n
4while_lstm_cell_224_matmul_1_readvariableop_resource6while_lstm_cell_224_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_224_matmul_readvariableop_resource4while_lstm_cell_224_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_224/BiasAdd/ReadVariableOp*while/lstm_cell_224/BiasAdd/ReadVariableOp2V
)while/lstm_cell_224/MatMul/ReadVariableOp)while/lstm_cell_224/MatMul/ReadVariableOp2Z
+while/lstm_cell_224/MatMul_1/ReadVariableOp+while/lstm_cell_224/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_206_layer_call_and_return_conditional_losses_1360600

inputs>
,lstm_cell_224_matmul_readvariableop_resource:2(@
.lstm_cell_224_matmul_1_readvariableop_resource:
(;
-lstm_cell_224_biasadd_readvariableop_resource:(
identity??$lstm_cell_224/BiasAdd/ReadVariableOp?#lstm_cell_224/MatMul/ReadVariableOp?%lstm_cell_224/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_224/MatMul/ReadVariableOpReadVariableOp,lstm_cell_224_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_224/MatMulMatMulstrided_slice_2:output:0+lstm_cell_224/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_224/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_224_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_224/MatMul_1MatMulzeros:output:0-lstm_cell_224/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_224/addAddV2lstm_cell_224/MatMul:product:0 lstm_cell_224/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_224/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_224_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_224/BiasAddBiasAddlstm_cell_224/add:z:0,lstm_cell_224/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_224/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_224/splitSplit&lstm_cell_224/split/split_dim:output:0lstm_cell_224/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_224/SigmoidSigmoidlstm_cell_224/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_224/Sigmoid_1Sigmoidlstm_cell_224/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_224/mulMullstm_cell_224/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_224/ReluRelulstm_cell_224/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_224/mul_1Mullstm_cell_224/Sigmoid:y:0 lstm_cell_224/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_224/add_1AddV2lstm_cell_224/mul:z:0lstm_cell_224/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_224/Sigmoid_2Sigmoidlstm_cell_224/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_224/Relu_1Relulstm_cell_224/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_224/mul_2Mullstm_cell_224/Sigmoid_2:y:0"lstm_cell_224/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_224_matmul_readvariableop_resource.lstm_cell_224_matmul_1_readvariableop_resource-lstm_cell_224_biasadd_readvariableop_resource*
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
while_body_1360516*
condR
while_cond_1360515*K
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
NoOpNoOp%^lstm_cell_224/BiasAdd/ReadVariableOp$^lstm_cell_224/MatMul/ReadVariableOp&^lstm_cell_224/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_224/BiasAdd/ReadVariableOp$lstm_cell_224/BiasAdd/ReadVariableOp2J
#lstm_cell_224/MatMul/ReadVariableOp#lstm_cell_224/MatMul/ReadVariableOp2N
%lstm_cell_224/MatMul_1/ReadVariableOp%lstm_cell_224/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?K
?
E__inference_lstm_204_layer_call_and_return_conditional_losses_1358939
inputs_0?
,lstm_cell_222_matmul_readvariableop_resource:	?A
.lstm_cell_222_matmul_1_readvariableop_resource:	d?<
-lstm_cell_222_biasadd_readvariableop_resource:	?
identity??$lstm_cell_222/BiasAdd/ReadVariableOp?#lstm_cell_222/MatMul/ReadVariableOp?%lstm_cell_222/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_222/MatMul/ReadVariableOpReadVariableOp,lstm_cell_222_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_222/MatMulMatMulstrided_slice_2:output:0+lstm_cell_222/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_222/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_222_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_222/MatMul_1MatMulzeros:output:0-lstm_cell_222/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_222/addAddV2lstm_cell_222/MatMul:product:0 lstm_cell_222/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_222/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_222_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_222/BiasAddBiasAddlstm_cell_222/add:z:0,lstm_cell_222/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_222/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_222/splitSplit&lstm_cell_222/split/split_dim:output:0lstm_cell_222/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_222/SigmoidSigmoidlstm_cell_222/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_222/Sigmoid_1Sigmoidlstm_cell_222/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_222/mulMullstm_cell_222/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_222/ReluRelulstm_cell_222/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_222/mul_1Mullstm_cell_222/Sigmoid:y:0 lstm_cell_222/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_222/add_1AddV2lstm_cell_222/mul:z:0lstm_cell_222/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_222/Sigmoid_2Sigmoidlstm_cell_222/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_222/Relu_1Relulstm_cell_222/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_222/mul_2Mullstm_cell_222/Sigmoid_2:y:0"lstm_cell_222/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_222_matmul_readvariableop_resource.lstm_cell_222_matmul_1_readvariableop_resource-lstm_cell_222_biasadd_readvariableop_resource*
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
while_body_1358855*
condR
while_cond_1358854*K
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
NoOpNoOp%^lstm_cell_222/BiasAdd/ReadVariableOp$^lstm_cell_222/MatMul/ReadVariableOp&^lstm_cell_222/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_222/BiasAdd/ReadVariableOp$lstm_cell_222/BiasAdd/ReadVariableOp2J
#lstm_cell_222/MatMul/ReadVariableOp#lstm_cell_222/MatMul/ReadVariableOp2N
%lstm_cell_222/MatMul_1/ReadVariableOp%lstm_cell_222/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?C
?

lstm_205_while_body_1358096.
*lstm_205_while_lstm_205_while_loop_counter4
0lstm_205_while_lstm_205_while_maximum_iterations
lstm_205_while_placeholder 
lstm_205_while_placeholder_1 
lstm_205_while_placeholder_2 
lstm_205_while_placeholder_3-
)lstm_205_while_lstm_205_strided_slice_1_0i
elstm_205_while_tensorarrayv2read_tensorlistgetitem_lstm_205_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_205_while_lstm_cell_223_matmul_readvariableop_resource_0:	d?R
?lstm_205_while_lstm_cell_223_matmul_1_readvariableop_resource_0:	2?M
>lstm_205_while_lstm_cell_223_biasadd_readvariableop_resource_0:	?
lstm_205_while_identity
lstm_205_while_identity_1
lstm_205_while_identity_2
lstm_205_while_identity_3
lstm_205_while_identity_4
lstm_205_while_identity_5+
'lstm_205_while_lstm_205_strided_slice_1g
clstm_205_while_tensorarrayv2read_tensorlistgetitem_lstm_205_tensorarrayunstack_tensorlistfromtensorN
;lstm_205_while_lstm_cell_223_matmul_readvariableop_resource:	d?P
=lstm_205_while_lstm_cell_223_matmul_1_readvariableop_resource:	2?K
<lstm_205_while_lstm_cell_223_biasadd_readvariableop_resource:	???3lstm_205/while/lstm_cell_223/BiasAdd/ReadVariableOp?2lstm_205/while/lstm_cell_223/MatMul/ReadVariableOp?4lstm_205/while/lstm_cell_223/MatMul_1/ReadVariableOp?
@lstm_205/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_205/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_205_while_tensorarrayv2read_tensorlistgetitem_lstm_205_tensorarrayunstack_tensorlistfromtensor_0lstm_205_while_placeholderIlstm_205/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_205/while/lstm_cell_223/MatMul/ReadVariableOpReadVariableOp=lstm_205_while_lstm_cell_223_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_205/while/lstm_cell_223/MatMulMatMul9lstm_205/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_205/while/lstm_cell_223/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_205/while/lstm_cell_223/MatMul_1/ReadVariableOpReadVariableOp?lstm_205_while_lstm_cell_223_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_205/while/lstm_cell_223/MatMul_1MatMullstm_205_while_placeholder_2<lstm_205/while/lstm_cell_223/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_205/while/lstm_cell_223/addAddV2-lstm_205/while/lstm_cell_223/MatMul:product:0/lstm_205/while/lstm_cell_223/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_205/while/lstm_cell_223/BiasAdd/ReadVariableOpReadVariableOp>lstm_205_while_lstm_cell_223_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_205/while/lstm_cell_223/BiasAddBiasAdd$lstm_205/while/lstm_cell_223/add:z:0;lstm_205/while/lstm_cell_223/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_205/while/lstm_cell_223/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_205/while/lstm_cell_223/splitSplit5lstm_205/while/lstm_cell_223/split/split_dim:output:0-lstm_205/while/lstm_cell_223/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_205/while/lstm_cell_223/SigmoidSigmoid+lstm_205/while/lstm_cell_223/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_205/while/lstm_cell_223/Sigmoid_1Sigmoid+lstm_205/while/lstm_cell_223/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_205/while/lstm_cell_223/mulMul*lstm_205/while/lstm_cell_223/Sigmoid_1:y:0lstm_205_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_205/while/lstm_cell_223/ReluRelu+lstm_205/while/lstm_cell_223/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_205/while/lstm_cell_223/mul_1Mul(lstm_205/while/lstm_cell_223/Sigmoid:y:0/lstm_205/while/lstm_cell_223/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_205/while/lstm_cell_223/add_1AddV2$lstm_205/while/lstm_cell_223/mul:z:0&lstm_205/while/lstm_cell_223/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_205/while/lstm_cell_223/Sigmoid_2Sigmoid+lstm_205/while/lstm_cell_223/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_205/while/lstm_cell_223/Relu_1Relu&lstm_205/while/lstm_cell_223/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_205/while/lstm_cell_223/mul_2Mul*lstm_205/while/lstm_cell_223/Sigmoid_2:y:01lstm_205/while/lstm_cell_223/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_205/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_205_while_placeholder_1lstm_205_while_placeholder&lstm_205/while/lstm_cell_223/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_205/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_205/while/addAddV2lstm_205_while_placeholderlstm_205/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_205/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_205/while/add_1AddV2*lstm_205_while_lstm_205_while_loop_counterlstm_205/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_205/while/IdentityIdentitylstm_205/while/add_1:z:0^lstm_205/while/NoOp*
T0*
_output_shapes
: ?
lstm_205/while/Identity_1Identity0lstm_205_while_lstm_205_while_maximum_iterations^lstm_205/while/NoOp*
T0*
_output_shapes
: t
lstm_205/while/Identity_2Identitylstm_205/while/add:z:0^lstm_205/while/NoOp*
T0*
_output_shapes
: ?
lstm_205/while/Identity_3IdentityClstm_205/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_205/while/NoOp*
T0*
_output_shapes
: ?
lstm_205/while/Identity_4Identity&lstm_205/while/lstm_cell_223/mul_2:z:0^lstm_205/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_205/while/Identity_5Identity&lstm_205/while/lstm_cell_223/add_1:z:0^lstm_205/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_205/while/NoOpNoOp4^lstm_205/while/lstm_cell_223/BiasAdd/ReadVariableOp3^lstm_205/while/lstm_cell_223/MatMul/ReadVariableOp5^lstm_205/while/lstm_cell_223/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_205_while_identity lstm_205/while/Identity:output:0"?
lstm_205_while_identity_1"lstm_205/while/Identity_1:output:0"?
lstm_205_while_identity_2"lstm_205/while/Identity_2:output:0"?
lstm_205_while_identity_3"lstm_205/while/Identity_3:output:0"?
lstm_205_while_identity_4"lstm_205/while/Identity_4:output:0"?
lstm_205_while_identity_5"lstm_205/while/Identity_5:output:0"T
'lstm_205_while_lstm_205_strided_slice_1)lstm_205_while_lstm_205_strided_slice_1_0"~
<lstm_205_while_lstm_cell_223_biasadd_readvariableop_resource>lstm_205_while_lstm_cell_223_biasadd_readvariableop_resource_0"?
=lstm_205_while_lstm_cell_223_matmul_1_readvariableop_resource?lstm_205_while_lstm_cell_223_matmul_1_readvariableop_resource_0"|
;lstm_205_while_lstm_cell_223_matmul_readvariableop_resource=lstm_205_while_lstm_cell_223_matmul_readvariableop_resource_0"?
clstm_205_while_tensorarrayv2read_tensorlistgetitem_lstm_205_tensorarrayunstack_tensorlistfromtensorelstm_205_while_tensorarrayv2read_tensorlistgetitem_lstm_205_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_205/while/lstm_cell_223/BiasAdd/ReadVariableOp3lstm_205/while/lstm_cell_223/BiasAdd/ReadVariableOp2h
2lstm_205/while/lstm_cell_223/MatMul/ReadVariableOp2lstm_205/while/lstm_cell_223/MatMul/ReadVariableOp2l
4lstm_205/while/lstm_cell_223/MatMul_1/ReadVariableOp4lstm_205/while/lstm_cell_223/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_204_layer_call_and_return_conditional_losses_1359368

inputs?
,lstm_cell_222_matmul_readvariableop_resource:	?A
.lstm_cell_222_matmul_1_readvariableop_resource:	d?<
-lstm_cell_222_biasadd_readvariableop_resource:	?
identity??$lstm_cell_222/BiasAdd/ReadVariableOp?#lstm_cell_222/MatMul/ReadVariableOp?%lstm_cell_222/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_222/MatMul/ReadVariableOpReadVariableOp,lstm_cell_222_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_222/MatMulMatMulstrided_slice_2:output:0+lstm_cell_222/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_222/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_222_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_222/MatMul_1MatMulzeros:output:0-lstm_cell_222/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_222/addAddV2lstm_cell_222/MatMul:product:0 lstm_cell_222/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_222/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_222_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_222/BiasAddBiasAddlstm_cell_222/add:z:0,lstm_cell_222/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_222/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_222/splitSplit&lstm_cell_222/split/split_dim:output:0lstm_cell_222/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_222/SigmoidSigmoidlstm_cell_222/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_222/Sigmoid_1Sigmoidlstm_cell_222/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_222/mulMullstm_cell_222/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_222/ReluRelulstm_cell_222/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_222/mul_1Mullstm_cell_222/Sigmoid:y:0 lstm_cell_222/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_222/add_1AddV2lstm_cell_222/mul:z:0lstm_cell_222/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_222/Sigmoid_2Sigmoidlstm_cell_222/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_222/Relu_1Relulstm_cell_222/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_222/mul_2Mullstm_cell_222/Sigmoid_2:y:0"lstm_cell_222/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_222_matmul_readvariableop_resource.lstm_cell_222_matmul_1_readvariableop_resource-lstm_cell_222_biasadd_readvariableop_resource*
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
while_body_1359284*
condR
while_cond_1359283*K
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
NoOpNoOp%^lstm_cell_222/BiasAdd/ReadVariableOp$^lstm_cell_222/MatMul/ReadVariableOp&^lstm_cell_222/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_222/BiasAdd/ReadVariableOp$lstm_cell_222/BiasAdd/ReadVariableOp2J
#lstm_cell_222/MatMul/ReadVariableOp#lstm_cell_222/MatMul/ReadVariableOp2N
%lstm_cell_222/MatMul_1/ReadVariableOp%lstm_cell_222/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1356364
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1356364___redundant_placeholder05
1while_while_cond_1356364___redundant_placeholder15
1while_while_cond_1356364___redundant_placeholder25
1while_while_cond_1356364___redundant_placeholder3
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

lstm_204_while_body_1358384.
*lstm_204_while_lstm_204_while_loop_counter4
0lstm_204_while_lstm_204_while_maximum_iterations
lstm_204_while_placeholder 
lstm_204_while_placeholder_1 
lstm_204_while_placeholder_2 
lstm_204_while_placeholder_3-
)lstm_204_while_lstm_204_strided_slice_1_0i
elstm_204_while_tensorarrayv2read_tensorlistgetitem_lstm_204_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_204_while_lstm_cell_222_matmul_readvariableop_resource_0:	?R
?lstm_204_while_lstm_cell_222_matmul_1_readvariableop_resource_0:	d?M
>lstm_204_while_lstm_cell_222_biasadd_readvariableop_resource_0:	?
lstm_204_while_identity
lstm_204_while_identity_1
lstm_204_while_identity_2
lstm_204_while_identity_3
lstm_204_while_identity_4
lstm_204_while_identity_5+
'lstm_204_while_lstm_204_strided_slice_1g
clstm_204_while_tensorarrayv2read_tensorlistgetitem_lstm_204_tensorarrayunstack_tensorlistfromtensorN
;lstm_204_while_lstm_cell_222_matmul_readvariableop_resource:	?P
=lstm_204_while_lstm_cell_222_matmul_1_readvariableop_resource:	d?K
<lstm_204_while_lstm_cell_222_biasadd_readvariableop_resource:	???3lstm_204/while/lstm_cell_222/BiasAdd/ReadVariableOp?2lstm_204/while/lstm_cell_222/MatMul/ReadVariableOp?4lstm_204/while/lstm_cell_222/MatMul_1/ReadVariableOp?
@lstm_204/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_204/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_204_while_tensorarrayv2read_tensorlistgetitem_lstm_204_tensorarrayunstack_tensorlistfromtensor_0lstm_204_while_placeholderIlstm_204/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_204/while/lstm_cell_222/MatMul/ReadVariableOpReadVariableOp=lstm_204_while_lstm_cell_222_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_204/while/lstm_cell_222/MatMulMatMul9lstm_204/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_204/while/lstm_cell_222/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_204/while/lstm_cell_222/MatMul_1/ReadVariableOpReadVariableOp?lstm_204_while_lstm_cell_222_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_204/while/lstm_cell_222/MatMul_1MatMullstm_204_while_placeholder_2<lstm_204/while/lstm_cell_222/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_204/while/lstm_cell_222/addAddV2-lstm_204/while/lstm_cell_222/MatMul:product:0/lstm_204/while/lstm_cell_222/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_204/while/lstm_cell_222/BiasAdd/ReadVariableOpReadVariableOp>lstm_204_while_lstm_cell_222_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_204/while/lstm_cell_222/BiasAddBiasAdd$lstm_204/while/lstm_cell_222/add:z:0;lstm_204/while/lstm_cell_222/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_204/while/lstm_cell_222/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_204/while/lstm_cell_222/splitSplit5lstm_204/while/lstm_cell_222/split/split_dim:output:0-lstm_204/while/lstm_cell_222/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_204/while/lstm_cell_222/SigmoidSigmoid+lstm_204/while/lstm_cell_222/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_204/while/lstm_cell_222/Sigmoid_1Sigmoid+lstm_204/while/lstm_cell_222/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_204/while/lstm_cell_222/mulMul*lstm_204/while/lstm_cell_222/Sigmoid_1:y:0lstm_204_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_204/while/lstm_cell_222/ReluRelu+lstm_204/while/lstm_cell_222/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_204/while/lstm_cell_222/mul_1Mul(lstm_204/while/lstm_cell_222/Sigmoid:y:0/lstm_204/while/lstm_cell_222/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_204/while/lstm_cell_222/add_1AddV2$lstm_204/while/lstm_cell_222/mul:z:0&lstm_204/while/lstm_cell_222/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_204/while/lstm_cell_222/Sigmoid_2Sigmoid+lstm_204/while/lstm_cell_222/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_204/while/lstm_cell_222/Relu_1Relu&lstm_204/while/lstm_cell_222/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_204/while/lstm_cell_222/mul_2Mul*lstm_204/while/lstm_cell_222/Sigmoid_2:y:01lstm_204/while/lstm_cell_222/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_204/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_204_while_placeholder_1lstm_204_while_placeholder&lstm_204/while/lstm_cell_222/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_204/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_204/while/addAddV2lstm_204_while_placeholderlstm_204/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_204/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_204/while/add_1AddV2*lstm_204_while_lstm_204_while_loop_counterlstm_204/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_204/while/IdentityIdentitylstm_204/while/add_1:z:0^lstm_204/while/NoOp*
T0*
_output_shapes
: ?
lstm_204/while/Identity_1Identity0lstm_204_while_lstm_204_while_maximum_iterations^lstm_204/while/NoOp*
T0*
_output_shapes
: t
lstm_204/while/Identity_2Identitylstm_204/while/add:z:0^lstm_204/while/NoOp*
T0*
_output_shapes
: ?
lstm_204/while/Identity_3IdentityClstm_204/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_204/while/NoOp*
T0*
_output_shapes
: ?
lstm_204/while/Identity_4Identity&lstm_204/while/lstm_cell_222/mul_2:z:0^lstm_204/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_204/while/Identity_5Identity&lstm_204/while/lstm_cell_222/add_1:z:0^lstm_204/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_204/while/NoOpNoOp4^lstm_204/while/lstm_cell_222/BiasAdd/ReadVariableOp3^lstm_204/while/lstm_cell_222/MatMul/ReadVariableOp5^lstm_204/while/lstm_cell_222/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_204_while_identity lstm_204/while/Identity:output:0"?
lstm_204_while_identity_1"lstm_204/while/Identity_1:output:0"?
lstm_204_while_identity_2"lstm_204/while/Identity_2:output:0"?
lstm_204_while_identity_3"lstm_204/while/Identity_3:output:0"?
lstm_204_while_identity_4"lstm_204/while/Identity_4:output:0"?
lstm_204_while_identity_5"lstm_204/while/Identity_5:output:0"T
'lstm_204_while_lstm_204_strided_slice_1)lstm_204_while_lstm_204_strided_slice_1_0"~
<lstm_204_while_lstm_cell_222_biasadd_readvariableop_resource>lstm_204_while_lstm_cell_222_biasadd_readvariableop_resource_0"?
=lstm_204_while_lstm_cell_222_matmul_1_readvariableop_resource?lstm_204_while_lstm_cell_222_matmul_1_readvariableop_resource_0"|
;lstm_204_while_lstm_cell_222_matmul_readvariableop_resource=lstm_204_while_lstm_cell_222_matmul_readvariableop_resource_0"?
clstm_204_while_tensorarrayv2read_tensorlistgetitem_lstm_204_tensorarrayunstack_tensorlistfromtensorelstm_204_while_tensorarrayv2read_tensorlistgetitem_lstm_204_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_204/while/lstm_cell_222/BiasAdd/ReadVariableOp3lstm_204/while/lstm_cell_222/BiasAdd/ReadVariableOp2h
2lstm_204/while/lstm_cell_222/MatMul/ReadVariableOp2lstm_204/while/lstm_cell_222/MatMul/ReadVariableOp2l
4lstm_204/while/lstm_cell_222/MatMul_1/ReadVariableOp4lstm_204/while/lstm_cell_222/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1355664
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1355664___redundant_placeholder05
1while_while_cond_1355664___redundant_placeholder15
1while_while_cond_1355664___redundant_placeholder25
1while_while_cond_1355664___redundant_placeholder3
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
while_body_1360230
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_224_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_224_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_224_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_224_matmul_readvariableop_resource:2(F
4while_lstm_cell_224_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_224_biasadd_readvariableop_resource:(??*while/lstm_cell_224/BiasAdd/ReadVariableOp?)while/lstm_cell_224/MatMul/ReadVariableOp?+while/lstm_cell_224/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_224/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_224_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_224/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_224/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_224/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_224_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_224/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_224/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_224/addAddV2$while/lstm_cell_224/MatMul:product:0&while/lstm_cell_224/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_224/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_224_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_224/BiasAddBiasAddwhile/lstm_cell_224/add:z:02while/lstm_cell_224/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_224/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_224/splitSplit,while/lstm_cell_224/split/split_dim:output:0$while/lstm_cell_224/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_224/SigmoidSigmoid"while/lstm_cell_224/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_224/Sigmoid_1Sigmoid"while/lstm_cell_224/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_224/mulMul!while/lstm_cell_224/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_224/ReluRelu"while/lstm_cell_224/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_224/mul_1Mulwhile/lstm_cell_224/Sigmoid:y:0&while/lstm_cell_224/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_224/add_1AddV2while/lstm_cell_224/mul:z:0while/lstm_cell_224/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_224/Sigmoid_2Sigmoid"while/lstm_cell_224/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_224/Relu_1Reluwhile/lstm_cell_224/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_224/mul_2Mul!while/lstm_cell_224/Sigmoid_2:y:0(while/lstm_cell_224/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_224/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_224/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_224/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_224/BiasAdd/ReadVariableOp*^while/lstm_cell_224/MatMul/ReadVariableOp,^while/lstm_cell_224/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_224_biasadd_readvariableop_resource5while_lstm_cell_224_biasadd_readvariableop_resource_0"n
4while_lstm_cell_224_matmul_1_readvariableop_resource6while_lstm_cell_224_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_224_matmul_readvariableop_resource4while_lstm_cell_224_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_224/BiasAdd/ReadVariableOp*while/lstm_cell_224/BiasAdd/ReadVariableOp2V
)while/lstm_cell_224/MatMul/ReadVariableOp)while/lstm_cell_224/MatMul/ReadVariableOp2Z
+while/lstm_cell_224/MatMul_1/ReadVariableOp+while/lstm_cell_224/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_205_layer_call_and_return_conditional_losses_1359698
inputs_0?
,lstm_cell_223_matmul_readvariableop_resource:	d?A
.lstm_cell_223_matmul_1_readvariableop_resource:	2?<
-lstm_cell_223_biasadd_readvariableop_resource:	?
identity??$lstm_cell_223/BiasAdd/ReadVariableOp?#lstm_cell_223/MatMul/ReadVariableOp?%lstm_cell_223/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_223/MatMul/ReadVariableOpReadVariableOp,lstm_cell_223_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_223/MatMulMatMulstrided_slice_2:output:0+lstm_cell_223/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_223/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_223_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_223/MatMul_1MatMulzeros:output:0-lstm_cell_223/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_223/addAddV2lstm_cell_223/MatMul:product:0 lstm_cell_223/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_223/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_223_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_223/BiasAddBiasAddlstm_cell_223/add:z:0,lstm_cell_223/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_223/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_223/splitSplit&lstm_cell_223/split/split_dim:output:0lstm_cell_223/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_223/SigmoidSigmoidlstm_cell_223/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_223/Sigmoid_1Sigmoidlstm_cell_223/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_223/mulMullstm_cell_223/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_223/ReluRelulstm_cell_223/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_223/mul_1Mullstm_cell_223/Sigmoid:y:0 lstm_cell_223/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_223/add_1AddV2lstm_cell_223/mul:z:0lstm_cell_223/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_223/Sigmoid_2Sigmoidlstm_cell_223/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_223/Relu_1Relulstm_cell_223/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_223/mul_2Mullstm_cell_223/Sigmoid_2:y:0"lstm_cell_223/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_223_matmul_readvariableop_resource.lstm_cell_223_matmul_1_readvariableop_resource-lstm_cell_223_biasadd_readvariableop_resource*
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
while_body_1359614*
condR
while_cond_1359613*K
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
NoOpNoOp%^lstm_cell_223/BiasAdd/ReadVariableOp$^lstm_cell_223/MatMul/ReadVariableOp&^lstm_cell_223/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_223/BiasAdd/ReadVariableOp$lstm_cell_223/BiasAdd/ReadVariableOp2J
#lstm_cell_223/MatMul/ReadVariableOp#lstm_cell_223/MatMul/ReadVariableOp2N
%lstm_cell_223/MatMul_1/ReadVariableOp%lstm_cell_223/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
J__inference_sequential_68_layer_call_and_return_conditional_losses_1357108

inputs#
lstm_204_1356784:	?#
lstm_204_1356786:	d?
lstm_204_1356788:	?#
lstm_205_1356934:	d?#
lstm_205_1356936:	2?
lstm_205_1356938:	?"
lstm_206_1357084:2("
lstm_206_1357086:
(
lstm_206_1357088:("
dense_68_1357102:

dense_68_1357104:
identity?? dense_68/StatefulPartitionedCall? lstm_204/StatefulPartitionedCall? lstm_205/StatefulPartitionedCall? lstm_206/StatefulPartitionedCall?
 lstm_204/StatefulPartitionedCallStatefulPartitionedCallinputslstm_204_1356784lstm_204_1356786lstm_204_1356788*
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
E__inference_lstm_204_layer_call_and_return_conditional_losses_1356783?
 lstm_205/StatefulPartitionedCallStatefulPartitionedCall)lstm_204/StatefulPartitionedCall:output:0lstm_205_1356934lstm_205_1356936lstm_205_1356938*
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
E__inference_lstm_205_layer_call_and_return_conditional_losses_1356933?
 lstm_206/StatefulPartitionedCallStatefulPartitionedCall)lstm_205/StatefulPartitionedCall:output:0lstm_206_1357084lstm_206_1357086lstm_206_1357088*
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
E__inference_lstm_206_layer_call_and_return_conditional_losses_1357083?
 dense_68/StatefulPartitionedCallStatefulPartitionedCall)lstm_206/StatefulPartitionedCall:output:0dense_68_1357102dense_68_1357104*
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
E__inference_dense_68_layer_call_and_return_conditional_losses_1357101x
IdentityIdentity)dense_68/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_68/StatefulPartitionedCall!^lstm_204/StatefulPartitionedCall!^lstm_205/StatefulPartitionedCall!^lstm_206/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_68/StatefulPartitionedCall dense_68/StatefulPartitionedCall2D
 lstm_204/StatefulPartitionedCall lstm_204/StatefulPartitionedCall2D
 lstm_205/StatefulPartitionedCall lstm_205/StatefulPartitionedCall2D
 lstm_206/StatefulPartitionedCall lstm_206/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_204_while_cond_1358383.
*lstm_204_while_lstm_204_while_loop_counter4
0lstm_204_while_lstm_204_while_maximum_iterations
lstm_204_while_placeholder 
lstm_204_while_placeholder_1 
lstm_204_while_placeholder_2 
lstm_204_while_placeholder_30
,lstm_204_while_less_lstm_204_strided_slice_1G
Clstm_204_while_lstm_204_while_cond_1358383___redundant_placeholder0G
Clstm_204_while_lstm_204_while_cond_1358383___redundant_placeholder1G
Clstm_204_while_lstm_204_while_cond_1358383___redundant_placeholder2G
Clstm_204_while_lstm_204_while_cond_1358383___redundant_placeholder3
lstm_204_while_identity
?
lstm_204/while/LessLesslstm_204_while_placeholder,lstm_204_while_less_lstm_204_strided_slice_1*
T0*
_output_shapes
: ]
lstm_204/while/IdentityIdentitylstm_204/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_204_while_identity lstm_204/while/Identity:output:0*(
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
E__inference_lstm_204_layer_call_and_return_conditional_losses_1357629

inputs?
,lstm_cell_222_matmul_readvariableop_resource:	?A
.lstm_cell_222_matmul_1_readvariableop_resource:	d?<
-lstm_cell_222_biasadd_readvariableop_resource:	?
identity??$lstm_cell_222/BiasAdd/ReadVariableOp?#lstm_cell_222/MatMul/ReadVariableOp?%lstm_cell_222/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_222/MatMul/ReadVariableOpReadVariableOp,lstm_cell_222_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_222/MatMulMatMulstrided_slice_2:output:0+lstm_cell_222/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_222/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_222_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_222/MatMul_1MatMulzeros:output:0-lstm_cell_222/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_222/addAddV2lstm_cell_222/MatMul:product:0 lstm_cell_222/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_222/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_222_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_222/BiasAddBiasAddlstm_cell_222/add:z:0,lstm_cell_222/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_222/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_222/splitSplit&lstm_cell_222/split/split_dim:output:0lstm_cell_222/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_222/SigmoidSigmoidlstm_cell_222/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_222/Sigmoid_1Sigmoidlstm_cell_222/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_222/mulMullstm_cell_222/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_222/ReluRelulstm_cell_222/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_222/mul_1Mullstm_cell_222/Sigmoid:y:0 lstm_cell_222/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_222/add_1AddV2lstm_cell_222/mul:z:0lstm_cell_222/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_222/Sigmoid_2Sigmoidlstm_cell_222/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_222/Relu_1Relulstm_cell_222/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_222/mul_2Mullstm_cell_222/Sigmoid_2:y:0"lstm_cell_222/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_222_matmul_readvariableop_resource.lstm_cell_222_matmul_1_readvariableop_resource-lstm_cell_222_biasadd_readvariableop_resource*
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
while_body_1357545*
condR
while_cond_1357544*K
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
NoOpNoOp%^lstm_cell_222/BiasAdd/ReadVariableOp$^lstm_cell_222/MatMul/ReadVariableOp&^lstm_cell_222/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_222/BiasAdd/ReadVariableOp$lstm_cell_222/BiasAdd/ReadVariableOp2J
#lstm_cell_222/MatMul/ReadVariableOp#lstm_cell_222/MatMul/ReadVariableOp2N
%lstm_cell_222/MatMul_1/ReadVariableOp%lstm_cell_222/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_1356699
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_222_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_222_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_222_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_222_matmul_readvariableop_resource:	?G
4while_lstm_cell_222_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_222_biasadd_readvariableop_resource:	???*while/lstm_cell_222/BiasAdd/ReadVariableOp?)while/lstm_cell_222/MatMul/ReadVariableOp?+while/lstm_cell_222/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_222/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_222_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_222/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_222/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_222/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_222_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_222/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_222/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_222/addAddV2$while/lstm_cell_222/MatMul:product:0&while/lstm_cell_222/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_222/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_222_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_222/BiasAddBiasAddwhile/lstm_cell_222/add:z:02while/lstm_cell_222/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_222/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_222/splitSplit,while/lstm_cell_222/split/split_dim:output:0$while/lstm_cell_222/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_222/SigmoidSigmoid"while/lstm_cell_222/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_222/Sigmoid_1Sigmoid"while/lstm_cell_222/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_222/mulMul!while/lstm_cell_222/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_222/ReluRelu"while/lstm_cell_222/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_222/mul_1Mulwhile/lstm_cell_222/Sigmoid:y:0&while/lstm_cell_222/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_222/add_1AddV2while/lstm_cell_222/mul:z:0while/lstm_cell_222/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_222/Sigmoid_2Sigmoid"while/lstm_cell_222/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_222/Relu_1Reluwhile/lstm_cell_222/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_222/mul_2Mul!while/lstm_cell_222/Sigmoid_2:y:0(while/lstm_cell_222/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_222/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_222/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_222/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_222/BiasAdd/ReadVariableOp*^while/lstm_cell_222/MatMul/ReadVariableOp,^while/lstm_cell_222/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_222_biasadd_readvariableop_resource5while_lstm_cell_222_biasadd_readvariableop_resource_0"n
4while_lstm_cell_222_matmul_1_readvariableop_resource6while_lstm_cell_222_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_222_matmul_readvariableop_resource4while_lstm_cell_222_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_222/BiasAdd/ReadVariableOp*while/lstm_cell_222/BiasAdd/ReadVariableOp2V
)while/lstm_cell_222/MatMul/ReadVariableOp)while/lstm_cell_222/MatMul/ReadVariableOp2Z
+while/lstm_cell_222/MatMul_1/ReadVariableOp+while/lstm_cell_222/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_204_layer_call_fn_1358796

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
E__inference_lstm_204_layer_call_and_return_conditional_losses_1357629s
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
/__inference_sequential_68_layer_call_fn_1357749
lstm_204_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_204_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_68_layer_call_and_return_conditional_losses_1357697o
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
_user_specified_namelstm_204_input
?J
?
E__inference_lstm_205_layer_call_and_return_conditional_losses_1359841

inputs?
,lstm_cell_223_matmul_readvariableop_resource:	d?A
.lstm_cell_223_matmul_1_readvariableop_resource:	2?<
-lstm_cell_223_biasadd_readvariableop_resource:	?
identity??$lstm_cell_223/BiasAdd/ReadVariableOp?#lstm_cell_223/MatMul/ReadVariableOp?%lstm_cell_223/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_223/MatMul/ReadVariableOpReadVariableOp,lstm_cell_223_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_223/MatMulMatMulstrided_slice_2:output:0+lstm_cell_223/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_223/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_223_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_223/MatMul_1MatMulzeros:output:0-lstm_cell_223/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_223/addAddV2lstm_cell_223/MatMul:product:0 lstm_cell_223/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_223/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_223_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_223/BiasAddBiasAddlstm_cell_223/add:z:0,lstm_cell_223/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_223/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_223/splitSplit&lstm_cell_223/split/split_dim:output:0lstm_cell_223/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_223/SigmoidSigmoidlstm_cell_223/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_223/Sigmoid_1Sigmoidlstm_cell_223/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_223/mulMullstm_cell_223/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_223/ReluRelulstm_cell_223/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_223/mul_1Mullstm_cell_223/Sigmoid:y:0 lstm_cell_223/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_223/add_1AddV2lstm_cell_223/mul:z:0lstm_cell_223/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_223/Sigmoid_2Sigmoidlstm_cell_223/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_223/Relu_1Relulstm_cell_223/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_223/mul_2Mullstm_cell_223/Sigmoid_2:y:0"lstm_cell_223/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_223_matmul_readvariableop_resource.lstm_cell_223_matmul_1_readvariableop_resource-lstm_cell_223_biasadd_readvariableop_resource*
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
while_body_1359757*
condR
while_cond_1359756*K
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
NoOpNoOp%^lstm_cell_223/BiasAdd/ReadVariableOp$^lstm_cell_223/MatMul/ReadVariableOp&^lstm_cell_223/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_223/BiasAdd/ReadVariableOp$lstm_cell_223/BiasAdd/ReadVariableOp2J
#lstm_cell_223/MatMul/ReadVariableOp#lstm_cell_223/MatMul/ReadVariableOp2N
%lstm_cell_223/MatMul_1/ReadVariableOp%lstm_cell_223/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_224_layer_call_and_return_conditional_losses_1360881

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
/__inference_lstm_cell_224_layer_call_fn_1360832

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
J__inference_lstm_cell_224_layer_call_and_return_conditional_losses_1356351o
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
while_cond_1358997
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1358997___redundant_placeholder05
1while_while_cond_1358997___redundant_placeholder15
1while_while_cond_1358997___redundant_placeholder25
1while_while_cond_1358997___redundant_placeholder3
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
while_cond_1360229
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1360229___redundant_placeholder05
1while_while_cond_1360229___redundant_placeholder15
1while_while_cond_1360229___redundant_placeholder25
1while_while_cond_1360229___redundant_placeholder3
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
E__inference_lstm_206_layer_call_and_return_conditional_losses_1357083

inputs>
,lstm_cell_224_matmul_readvariableop_resource:2(@
.lstm_cell_224_matmul_1_readvariableop_resource:
(;
-lstm_cell_224_biasadd_readvariableop_resource:(
identity??$lstm_cell_224/BiasAdd/ReadVariableOp?#lstm_cell_224/MatMul/ReadVariableOp?%lstm_cell_224/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_224/MatMul/ReadVariableOpReadVariableOp,lstm_cell_224_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_224/MatMulMatMulstrided_slice_2:output:0+lstm_cell_224/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_224/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_224_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_224/MatMul_1MatMulzeros:output:0-lstm_cell_224/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_224/addAddV2lstm_cell_224/MatMul:product:0 lstm_cell_224/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_224/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_224_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_224/BiasAddBiasAddlstm_cell_224/add:z:0,lstm_cell_224/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_224/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_224/splitSplit&lstm_cell_224/split/split_dim:output:0lstm_cell_224/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_224/SigmoidSigmoidlstm_cell_224/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_224/Sigmoid_1Sigmoidlstm_cell_224/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_224/mulMullstm_cell_224/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_224/ReluRelulstm_cell_224/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_224/mul_1Mullstm_cell_224/Sigmoid:y:0 lstm_cell_224/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_224/add_1AddV2lstm_cell_224/mul:z:0lstm_cell_224/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_224/Sigmoid_2Sigmoidlstm_cell_224/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_224/Relu_1Relulstm_cell_224/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_224/mul_2Mullstm_cell_224/Sigmoid_2:y:0"lstm_cell_224/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_224_matmul_readvariableop_resource.lstm_cell_224_matmul_1_readvariableop_resource-lstm_cell_224_biasadd_readvariableop_resource*
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
while_body_1356999*
condR
while_cond_1356998*K
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
NoOpNoOp%^lstm_cell_224/BiasAdd/ReadVariableOp$^lstm_cell_224/MatMul/ReadVariableOp&^lstm_cell_224/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_224/BiasAdd/ReadVariableOp$lstm_cell_224/BiasAdd/ReadVariableOp2J
#lstm_cell_224/MatMul/ReadVariableOp#lstm_cell_224/MatMul/ReadVariableOp2N
%lstm_cell_224/MatMul_1/ReadVariableOp%lstm_cell_224/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_224_layer_call_and_return_conditional_losses_1356351

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
*__inference_lstm_204_layer_call_fn_1358785

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
E__inference_lstm_204_layer_call_and_return_conditional_losses_1356783s
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
while_cond_1359140
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1359140___redundant_placeholder05
1while_while_cond_1359140___redundant_placeholder15
1while_while_cond_1359140___redundant_placeholder25
1while_while_cond_1359140___redundant_placeholder3
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
J__inference_sequential_68_layer_call_and_return_conditional_losses_1358325

inputsH
5lstm_204_lstm_cell_222_matmul_readvariableop_resource:	?J
7lstm_204_lstm_cell_222_matmul_1_readvariableop_resource:	d?E
6lstm_204_lstm_cell_222_biasadd_readvariableop_resource:	?H
5lstm_205_lstm_cell_223_matmul_readvariableop_resource:	d?J
7lstm_205_lstm_cell_223_matmul_1_readvariableop_resource:	2?E
6lstm_205_lstm_cell_223_biasadd_readvariableop_resource:	?G
5lstm_206_lstm_cell_224_matmul_readvariableop_resource:2(I
7lstm_206_lstm_cell_224_matmul_1_readvariableop_resource:
(D
6lstm_206_lstm_cell_224_biasadd_readvariableop_resource:(9
'dense_68_matmul_readvariableop_resource:
6
(dense_68_biasadd_readvariableop_resource:
identity??dense_68/BiasAdd/ReadVariableOp?dense_68/MatMul/ReadVariableOp?-lstm_204/lstm_cell_222/BiasAdd/ReadVariableOp?,lstm_204/lstm_cell_222/MatMul/ReadVariableOp?.lstm_204/lstm_cell_222/MatMul_1/ReadVariableOp?lstm_204/while?-lstm_205/lstm_cell_223/BiasAdd/ReadVariableOp?,lstm_205/lstm_cell_223/MatMul/ReadVariableOp?.lstm_205/lstm_cell_223/MatMul_1/ReadVariableOp?lstm_205/while?-lstm_206/lstm_cell_224/BiasAdd/ReadVariableOp?,lstm_206/lstm_cell_224/MatMul/ReadVariableOp?.lstm_206/lstm_cell_224/MatMul_1/ReadVariableOp?lstm_206/whileD
lstm_204/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_204/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_204/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_204/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_204/strided_sliceStridedSlicelstm_204/Shape:output:0%lstm_204/strided_slice/stack:output:0'lstm_204/strided_slice/stack_1:output:0'lstm_204/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_204/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_204/zeros/packedPacklstm_204/strided_slice:output:0 lstm_204/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_204/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_204/zerosFilllstm_204/zeros/packed:output:0lstm_204/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_204/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_204/zeros_1/packedPacklstm_204/strided_slice:output:0"lstm_204/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_204/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_204/zeros_1Fill lstm_204/zeros_1/packed:output:0lstm_204/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_204/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_204/transpose	Transposeinputs lstm_204/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_204/Shape_1Shapelstm_204/transpose:y:0*
T0*
_output_shapes
:h
lstm_204/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_204/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_204/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_204/strided_slice_1StridedSlicelstm_204/Shape_1:output:0'lstm_204/strided_slice_1/stack:output:0)lstm_204/strided_slice_1/stack_1:output:0)lstm_204/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_204/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_204/TensorArrayV2TensorListReserve-lstm_204/TensorArrayV2/element_shape:output:0!lstm_204/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_204/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_204/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_204/transpose:y:0Glstm_204/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_204/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_204/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_204/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_204/strided_slice_2StridedSlicelstm_204/transpose:y:0'lstm_204/strided_slice_2/stack:output:0)lstm_204/strided_slice_2/stack_1:output:0)lstm_204/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_204/lstm_cell_222/MatMul/ReadVariableOpReadVariableOp5lstm_204_lstm_cell_222_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_204/lstm_cell_222/MatMulMatMul!lstm_204/strided_slice_2:output:04lstm_204/lstm_cell_222/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_204/lstm_cell_222/MatMul_1/ReadVariableOpReadVariableOp7lstm_204_lstm_cell_222_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_204/lstm_cell_222/MatMul_1MatMullstm_204/zeros:output:06lstm_204/lstm_cell_222/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_204/lstm_cell_222/addAddV2'lstm_204/lstm_cell_222/MatMul:product:0)lstm_204/lstm_cell_222/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_204/lstm_cell_222/BiasAdd/ReadVariableOpReadVariableOp6lstm_204_lstm_cell_222_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_204/lstm_cell_222/BiasAddBiasAddlstm_204/lstm_cell_222/add:z:05lstm_204/lstm_cell_222/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_204/lstm_cell_222/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_204/lstm_cell_222/splitSplit/lstm_204/lstm_cell_222/split/split_dim:output:0'lstm_204/lstm_cell_222/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_204/lstm_cell_222/SigmoidSigmoid%lstm_204/lstm_cell_222/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_204/lstm_cell_222/Sigmoid_1Sigmoid%lstm_204/lstm_cell_222/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_204/lstm_cell_222/mulMul$lstm_204/lstm_cell_222/Sigmoid_1:y:0lstm_204/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_204/lstm_cell_222/ReluRelu%lstm_204/lstm_cell_222/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_204/lstm_cell_222/mul_1Mul"lstm_204/lstm_cell_222/Sigmoid:y:0)lstm_204/lstm_cell_222/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_204/lstm_cell_222/add_1AddV2lstm_204/lstm_cell_222/mul:z:0 lstm_204/lstm_cell_222/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_204/lstm_cell_222/Sigmoid_2Sigmoid%lstm_204/lstm_cell_222/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_204/lstm_cell_222/Relu_1Relu lstm_204/lstm_cell_222/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_204/lstm_cell_222/mul_2Mul$lstm_204/lstm_cell_222/Sigmoid_2:y:0+lstm_204/lstm_cell_222/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_204/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_204/TensorArrayV2_1TensorListReserve/lstm_204/TensorArrayV2_1/element_shape:output:0!lstm_204/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_204/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_204/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_204/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_204/whileWhile$lstm_204/while/loop_counter:output:0*lstm_204/while/maximum_iterations:output:0lstm_204/time:output:0!lstm_204/TensorArrayV2_1:handle:0lstm_204/zeros:output:0lstm_204/zeros_1:output:0!lstm_204/strided_slice_1:output:0@lstm_204/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_204_lstm_cell_222_matmul_readvariableop_resource7lstm_204_lstm_cell_222_matmul_1_readvariableop_resource6lstm_204_lstm_cell_222_biasadd_readvariableop_resource*
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
lstm_204_while_body_1357957*'
condR
lstm_204_while_cond_1357956*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_204/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_204/TensorArrayV2Stack/TensorListStackTensorListStacklstm_204/while:output:3Blstm_204/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_204/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_204/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_204/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_204/strided_slice_3StridedSlice4lstm_204/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_204/strided_slice_3/stack:output:0)lstm_204/strided_slice_3/stack_1:output:0)lstm_204/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_204/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_204/transpose_1	Transpose4lstm_204/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_204/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_204/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_205/ShapeShapelstm_204/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_205/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_205/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_205/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_205/strided_sliceStridedSlicelstm_205/Shape:output:0%lstm_205/strided_slice/stack:output:0'lstm_205/strided_slice/stack_1:output:0'lstm_205/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_205/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_205/zeros/packedPacklstm_205/strided_slice:output:0 lstm_205/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_205/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_205/zerosFilllstm_205/zeros/packed:output:0lstm_205/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_205/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_205/zeros_1/packedPacklstm_205/strided_slice:output:0"lstm_205/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_205/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_205/zeros_1Fill lstm_205/zeros_1/packed:output:0lstm_205/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_205/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_205/transpose	Transposelstm_204/transpose_1:y:0 lstm_205/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_205/Shape_1Shapelstm_205/transpose:y:0*
T0*
_output_shapes
:h
lstm_205/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_205/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_205/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_205/strided_slice_1StridedSlicelstm_205/Shape_1:output:0'lstm_205/strided_slice_1/stack:output:0)lstm_205/strided_slice_1/stack_1:output:0)lstm_205/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_205/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_205/TensorArrayV2TensorListReserve-lstm_205/TensorArrayV2/element_shape:output:0!lstm_205/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_205/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_205/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_205/transpose:y:0Glstm_205/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_205/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_205/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_205/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_205/strided_slice_2StridedSlicelstm_205/transpose:y:0'lstm_205/strided_slice_2/stack:output:0)lstm_205/strided_slice_2/stack_1:output:0)lstm_205/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_205/lstm_cell_223/MatMul/ReadVariableOpReadVariableOp5lstm_205_lstm_cell_223_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_205/lstm_cell_223/MatMulMatMul!lstm_205/strided_slice_2:output:04lstm_205/lstm_cell_223/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_205/lstm_cell_223/MatMul_1/ReadVariableOpReadVariableOp7lstm_205_lstm_cell_223_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_205/lstm_cell_223/MatMul_1MatMullstm_205/zeros:output:06lstm_205/lstm_cell_223/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_205/lstm_cell_223/addAddV2'lstm_205/lstm_cell_223/MatMul:product:0)lstm_205/lstm_cell_223/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_205/lstm_cell_223/BiasAdd/ReadVariableOpReadVariableOp6lstm_205_lstm_cell_223_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_205/lstm_cell_223/BiasAddBiasAddlstm_205/lstm_cell_223/add:z:05lstm_205/lstm_cell_223/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_205/lstm_cell_223/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_205/lstm_cell_223/splitSplit/lstm_205/lstm_cell_223/split/split_dim:output:0'lstm_205/lstm_cell_223/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_205/lstm_cell_223/SigmoidSigmoid%lstm_205/lstm_cell_223/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_205/lstm_cell_223/Sigmoid_1Sigmoid%lstm_205/lstm_cell_223/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_205/lstm_cell_223/mulMul$lstm_205/lstm_cell_223/Sigmoid_1:y:0lstm_205/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_205/lstm_cell_223/ReluRelu%lstm_205/lstm_cell_223/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_205/lstm_cell_223/mul_1Mul"lstm_205/lstm_cell_223/Sigmoid:y:0)lstm_205/lstm_cell_223/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_205/lstm_cell_223/add_1AddV2lstm_205/lstm_cell_223/mul:z:0 lstm_205/lstm_cell_223/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_205/lstm_cell_223/Sigmoid_2Sigmoid%lstm_205/lstm_cell_223/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_205/lstm_cell_223/Relu_1Relu lstm_205/lstm_cell_223/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_205/lstm_cell_223/mul_2Mul$lstm_205/lstm_cell_223/Sigmoid_2:y:0+lstm_205/lstm_cell_223/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_205/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_205/TensorArrayV2_1TensorListReserve/lstm_205/TensorArrayV2_1/element_shape:output:0!lstm_205/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_205/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_205/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_205/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_205/whileWhile$lstm_205/while/loop_counter:output:0*lstm_205/while/maximum_iterations:output:0lstm_205/time:output:0!lstm_205/TensorArrayV2_1:handle:0lstm_205/zeros:output:0lstm_205/zeros_1:output:0!lstm_205/strided_slice_1:output:0@lstm_205/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_205_lstm_cell_223_matmul_readvariableop_resource7lstm_205_lstm_cell_223_matmul_1_readvariableop_resource6lstm_205_lstm_cell_223_biasadd_readvariableop_resource*
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
lstm_205_while_body_1358096*'
condR
lstm_205_while_cond_1358095*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_205/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_205/TensorArrayV2Stack/TensorListStackTensorListStacklstm_205/while:output:3Blstm_205/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_205/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_205/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_205/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_205/strided_slice_3StridedSlice4lstm_205/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_205/strided_slice_3/stack:output:0)lstm_205/strided_slice_3/stack_1:output:0)lstm_205/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_205/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_205/transpose_1	Transpose4lstm_205/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_205/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_205/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_206/ShapeShapelstm_205/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_206/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_206/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_206/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_206/strided_sliceStridedSlicelstm_206/Shape:output:0%lstm_206/strided_slice/stack:output:0'lstm_206/strided_slice/stack_1:output:0'lstm_206/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_206/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_206/zeros/packedPacklstm_206/strided_slice:output:0 lstm_206/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_206/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_206/zerosFilllstm_206/zeros/packed:output:0lstm_206/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_206/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_206/zeros_1/packedPacklstm_206/strided_slice:output:0"lstm_206/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_206/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_206/zeros_1Fill lstm_206/zeros_1/packed:output:0lstm_206/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_206/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_206/transpose	Transposelstm_205/transpose_1:y:0 lstm_206/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_206/Shape_1Shapelstm_206/transpose:y:0*
T0*
_output_shapes
:h
lstm_206/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_206/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_206/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_206/strided_slice_1StridedSlicelstm_206/Shape_1:output:0'lstm_206/strided_slice_1/stack:output:0)lstm_206/strided_slice_1/stack_1:output:0)lstm_206/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_206/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_206/TensorArrayV2TensorListReserve-lstm_206/TensorArrayV2/element_shape:output:0!lstm_206/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_206/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_206/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_206/transpose:y:0Glstm_206/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_206/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_206/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_206/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_206/strided_slice_2StridedSlicelstm_206/transpose:y:0'lstm_206/strided_slice_2/stack:output:0)lstm_206/strided_slice_2/stack_1:output:0)lstm_206/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_206/lstm_cell_224/MatMul/ReadVariableOpReadVariableOp5lstm_206_lstm_cell_224_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_206/lstm_cell_224/MatMulMatMul!lstm_206/strided_slice_2:output:04lstm_206/lstm_cell_224/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_206/lstm_cell_224/MatMul_1/ReadVariableOpReadVariableOp7lstm_206_lstm_cell_224_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_206/lstm_cell_224/MatMul_1MatMullstm_206/zeros:output:06lstm_206/lstm_cell_224/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_206/lstm_cell_224/addAddV2'lstm_206/lstm_cell_224/MatMul:product:0)lstm_206/lstm_cell_224/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_206/lstm_cell_224/BiasAdd/ReadVariableOpReadVariableOp6lstm_206_lstm_cell_224_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_206/lstm_cell_224/BiasAddBiasAddlstm_206/lstm_cell_224/add:z:05lstm_206/lstm_cell_224/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_206/lstm_cell_224/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_206/lstm_cell_224/splitSplit/lstm_206/lstm_cell_224/split/split_dim:output:0'lstm_206/lstm_cell_224/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_206/lstm_cell_224/SigmoidSigmoid%lstm_206/lstm_cell_224/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_206/lstm_cell_224/Sigmoid_1Sigmoid%lstm_206/lstm_cell_224/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_206/lstm_cell_224/mulMul$lstm_206/lstm_cell_224/Sigmoid_1:y:0lstm_206/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_206/lstm_cell_224/ReluRelu%lstm_206/lstm_cell_224/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_206/lstm_cell_224/mul_1Mul"lstm_206/lstm_cell_224/Sigmoid:y:0)lstm_206/lstm_cell_224/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_206/lstm_cell_224/add_1AddV2lstm_206/lstm_cell_224/mul:z:0 lstm_206/lstm_cell_224/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_206/lstm_cell_224/Sigmoid_2Sigmoid%lstm_206/lstm_cell_224/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_206/lstm_cell_224/Relu_1Relu lstm_206/lstm_cell_224/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_206/lstm_cell_224/mul_2Mul$lstm_206/lstm_cell_224/Sigmoid_2:y:0+lstm_206/lstm_cell_224/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_206/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_206/TensorArrayV2_1TensorListReserve/lstm_206/TensorArrayV2_1/element_shape:output:0!lstm_206/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_206/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_206/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_206/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_206/whileWhile$lstm_206/while/loop_counter:output:0*lstm_206/while/maximum_iterations:output:0lstm_206/time:output:0!lstm_206/TensorArrayV2_1:handle:0lstm_206/zeros:output:0lstm_206/zeros_1:output:0!lstm_206/strided_slice_1:output:0@lstm_206/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_206_lstm_cell_224_matmul_readvariableop_resource7lstm_206_lstm_cell_224_matmul_1_readvariableop_resource6lstm_206_lstm_cell_224_biasadd_readvariableop_resource*
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
lstm_206_while_body_1358235*'
condR
lstm_206_while_cond_1358234*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_206/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_206/TensorArrayV2Stack/TensorListStackTensorListStacklstm_206/while:output:3Blstm_206/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_206/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_206/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_206/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_206/strided_slice_3StridedSlice4lstm_206/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_206/strided_slice_3/stack:output:0)lstm_206/strided_slice_3/stack_1:output:0)lstm_206/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_206/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_206/transpose_1	Transpose4lstm_206/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_206/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_206/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_68/MatMul/ReadVariableOpReadVariableOp'dense_68_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_68/MatMulMatMul!lstm_206/strided_slice_3:output:0&dense_68/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_68/BiasAdd/ReadVariableOpReadVariableOp(dense_68_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_68/BiasAddBiasAdddense_68/MatMul:product:0'dense_68/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_68/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_68/BiasAdd/ReadVariableOp^dense_68/MatMul/ReadVariableOp.^lstm_204/lstm_cell_222/BiasAdd/ReadVariableOp-^lstm_204/lstm_cell_222/MatMul/ReadVariableOp/^lstm_204/lstm_cell_222/MatMul_1/ReadVariableOp^lstm_204/while.^lstm_205/lstm_cell_223/BiasAdd/ReadVariableOp-^lstm_205/lstm_cell_223/MatMul/ReadVariableOp/^lstm_205/lstm_cell_223/MatMul_1/ReadVariableOp^lstm_205/while.^lstm_206/lstm_cell_224/BiasAdd/ReadVariableOp-^lstm_206/lstm_cell_224/MatMul/ReadVariableOp/^lstm_206/lstm_cell_224/MatMul_1/ReadVariableOp^lstm_206/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_68/BiasAdd/ReadVariableOpdense_68/BiasAdd/ReadVariableOp2@
dense_68/MatMul/ReadVariableOpdense_68/MatMul/ReadVariableOp2^
-lstm_204/lstm_cell_222/BiasAdd/ReadVariableOp-lstm_204/lstm_cell_222/BiasAdd/ReadVariableOp2\
,lstm_204/lstm_cell_222/MatMul/ReadVariableOp,lstm_204/lstm_cell_222/MatMul/ReadVariableOp2`
.lstm_204/lstm_cell_222/MatMul_1/ReadVariableOp.lstm_204/lstm_cell_222/MatMul_1/ReadVariableOp2 
lstm_204/whilelstm_204/while2^
-lstm_205/lstm_cell_223/BiasAdd/ReadVariableOp-lstm_205/lstm_cell_223/BiasAdd/ReadVariableOp2\
,lstm_205/lstm_cell_223/MatMul/ReadVariableOp,lstm_205/lstm_cell_223/MatMul/ReadVariableOp2`
.lstm_205/lstm_cell_223/MatMul_1/ReadVariableOp.lstm_205/lstm_cell_223/MatMul_1/ReadVariableOp2 
lstm_205/whilelstm_205/while2^
-lstm_206/lstm_cell_224/BiasAdd/ReadVariableOp-lstm_206/lstm_cell_224/BiasAdd/ReadVariableOp2\
,lstm_206/lstm_cell_224/MatMul/ReadVariableOp,lstm_206/lstm_cell_224/MatMul/ReadVariableOp2`
.lstm_206/lstm_cell_224/MatMul_1/ReadVariableOp.lstm_206/lstm_cell_224/MatMul_1/ReadVariableOp2 
lstm_206/whilelstm_206/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)sequential_68_lstm_204_while_cond_1355215J
Fsequential_68_lstm_204_while_sequential_68_lstm_204_while_loop_counterP
Lsequential_68_lstm_204_while_sequential_68_lstm_204_while_maximum_iterations,
(sequential_68_lstm_204_while_placeholder.
*sequential_68_lstm_204_while_placeholder_1.
*sequential_68_lstm_204_while_placeholder_2.
*sequential_68_lstm_204_while_placeholder_3L
Hsequential_68_lstm_204_while_less_sequential_68_lstm_204_strided_slice_1c
_sequential_68_lstm_204_while_sequential_68_lstm_204_while_cond_1355215___redundant_placeholder0c
_sequential_68_lstm_204_while_sequential_68_lstm_204_while_cond_1355215___redundant_placeholder1c
_sequential_68_lstm_204_while_sequential_68_lstm_204_while_cond_1355215___redundant_placeholder2c
_sequential_68_lstm_204_while_sequential_68_lstm_204_while_cond_1355215___redundant_placeholder3)
%sequential_68_lstm_204_while_identity
?
!sequential_68/lstm_204/while/LessLess(sequential_68_lstm_204_while_placeholderHsequential_68_lstm_204_while_less_sequential_68_lstm_204_strided_slice_1*
T0*
_output_shapes
: y
%sequential_68/lstm_204/while/IdentityIdentity%sequential_68/lstm_204/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_68_lstm_204_while_identity.sequential_68/lstm_204/while/Identity:output:0*(
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
#__inference__traced_restore_1361186
file_prefix2
 assignvariableop_dense_68_kernel:
.
 assignvariableop_1_dense_68_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_204_lstm_cell_204_kernel:	?M
:assignvariableop_8_lstm_204_lstm_cell_204_recurrent_kernel:	d?=
.assignvariableop_9_lstm_204_lstm_cell_204_bias:	?D
1assignvariableop_10_lstm_205_lstm_cell_205_kernel:	d?N
;assignvariableop_11_lstm_205_lstm_cell_205_recurrent_kernel:	2?>
/assignvariableop_12_lstm_205_lstm_cell_205_bias:	?C
1assignvariableop_13_lstm_206_lstm_cell_206_kernel:2(M
;assignvariableop_14_lstm_206_lstm_cell_206_recurrent_kernel:
(=
/assignvariableop_15_lstm_206_lstm_cell_206_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_68_kernel_m:
6
(assignvariableop_19_adam_dense_68_bias_m:K
8assignvariableop_20_adam_lstm_204_lstm_cell_204_kernel_m:	?U
Bassignvariableop_21_adam_lstm_204_lstm_cell_204_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_204_lstm_cell_204_bias_m:	?K
8assignvariableop_23_adam_lstm_205_lstm_cell_205_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_205_lstm_cell_205_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_205_lstm_cell_205_bias_m:	?J
8assignvariableop_26_adam_lstm_206_lstm_cell_206_kernel_m:2(T
Bassignvariableop_27_adam_lstm_206_lstm_cell_206_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_206_lstm_cell_206_bias_m:(<
*assignvariableop_29_adam_dense_68_kernel_v:
6
(assignvariableop_30_adam_dense_68_bias_v:K
8assignvariableop_31_adam_lstm_204_lstm_cell_204_kernel_v:	?U
Bassignvariableop_32_adam_lstm_204_lstm_cell_204_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_204_lstm_cell_204_bias_v:	?K
8assignvariableop_34_adam_lstm_205_lstm_cell_205_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_205_lstm_cell_205_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_205_lstm_cell_205_bias_v:	?J
8assignvariableop_37_adam_lstm_206_lstm_cell_206_kernel_v:2(T
Bassignvariableop_38_adam_lstm_206_lstm_cell_206_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_206_lstm_cell_206_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_68_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_68_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_204_lstm_cell_204_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_204_lstm_cell_204_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_204_lstm_cell_204_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_205_lstm_cell_205_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_205_lstm_cell_205_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_205_lstm_cell_205_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_206_lstm_cell_206_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_206_lstm_cell_206_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_206_lstm_cell_206_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_68_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_68_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_204_lstm_cell_204_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_204_lstm_cell_204_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_204_lstm_cell_204_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_205_lstm_cell_205_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_205_lstm_cell_205_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_205_lstm_cell_205_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_206_lstm_cell_206_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_206_lstm_cell_206_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_206_lstm_cell_206_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_68_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_68_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_204_lstm_cell_204_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_204_lstm_cell_204_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_204_lstm_cell_204_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_205_lstm_cell_205_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_205_lstm_cell_205_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_205_lstm_cell_205_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_206_lstm_cell_206_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_206_lstm_cell_206_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_206_lstm_cell_206_bias_vIdentity_39:output:0"/device:CPU:0*
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
?#
?
while_body_1356365
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_224_1356389_0:2(/
while_lstm_cell_224_1356391_0:
(+
while_lstm_cell_224_1356393_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_224_1356389:2(-
while_lstm_cell_224_1356391:
()
while_lstm_cell_224_1356393:(??+while/lstm_cell_224/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_224/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_224_1356389_0while_lstm_cell_224_1356391_0while_lstm_cell_224_1356393_0*
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
J__inference_lstm_cell_224_layer_call_and_return_conditional_losses_1356351?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_224/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_224/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_224/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_224/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_224_1356389while_lstm_cell_224_1356389_0"<
while_lstm_cell_224_1356391while_lstm_cell_224_1356391_0"<
while_lstm_cell_224_1356393while_lstm_cell_224_1356393_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_224/StatefulPartitionedCall+while/lstm_cell_224/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_1357379
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1357379___redundant_placeholder05
1while_while_cond_1357379___redundant_placeholder15
1while_while_cond_1357379___redundant_placeholder25
1while_while_cond_1357379___redundant_placeholder3
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
J__inference_lstm_cell_223_layer_call_and_return_conditional_losses_1356001

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
while_cond_1356555
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1356555___redundant_placeholder05
1while_while_cond_1356555___redundant_placeholder15
1while_while_cond_1356555___redundant_placeholder25
1while_while_cond_1356555___redundant_placeholder3
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
E__inference_lstm_206_layer_call_and_return_conditional_losses_1357299

inputs>
,lstm_cell_224_matmul_readvariableop_resource:2(@
.lstm_cell_224_matmul_1_readvariableop_resource:
(;
-lstm_cell_224_biasadd_readvariableop_resource:(
identity??$lstm_cell_224/BiasAdd/ReadVariableOp?#lstm_cell_224/MatMul/ReadVariableOp?%lstm_cell_224/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_224/MatMul/ReadVariableOpReadVariableOp,lstm_cell_224_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_224/MatMulMatMulstrided_slice_2:output:0+lstm_cell_224/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_224/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_224_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_224/MatMul_1MatMulzeros:output:0-lstm_cell_224/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_224/addAddV2lstm_cell_224/MatMul:product:0 lstm_cell_224/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_224/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_224_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_224/BiasAddBiasAddlstm_cell_224/add:z:0,lstm_cell_224/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_224/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_224/splitSplit&lstm_cell_224/split/split_dim:output:0lstm_cell_224/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_224/SigmoidSigmoidlstm_cell_224/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_224/Sigmoid_1Sigmoidlstm_cell_224/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_224/mulMullstm_cell_224/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_224/ReluRelulstm_cell_224/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_224/mul_1Mullstm_cell_224/Sigmoid:y:0 lstm_cell_224/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_224/add_1AddV2lstm_cell_224/mul:z:0lstm_cell_224/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_224/Sigmoid_2Sigmoidlstm_cell_224/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_224/Relu_1Relulstm_cell_224/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_224/mul_2Mullstm_cell_224/Sigmoid_2:y:0"lstm_cell_224/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_224_matmul_readvariableop_resource.lstm_cell_224_matmul_1_readvariableop_resource-lstm_cell_224_biasadd_readvariableop_resource*
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
while_body_1357215*
condR
while_cond_1357214*K
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
NoOpNoOp%^lstm_cell_224/BiasAdd/ReadVariableOp$^lstm_cell_224/MatMul/ReadVariableOp&^lstm_cell_224/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_224/BiasAdd/ReadVariableOp$lstm_cell_224/BiasAdd/ReadVariableOp2J
#lstm_cell_224/MatMul/ReadVariableOp#lstm_cell_224/MatMul/ReadVariableOp2N
%lstm_cell_224/MatMul_1/ReadVariableOp%lstm_cell_224/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_206_layer_call_fn_1359995
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
E__inference_lstm_206_layer_call_and_return_conditional_losses_1356434o
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
?K
?
E__inference_lstm_206_layer_call_and_return_conditional_losses_1360171
inputs_0>
,lstm_cell_224_matmul_readvariableop_resource:2(@
.lstm_cell_224_matmul_1_readvariableop_resource:
(;
-lstm_cell_224_biasadd_readvariableop_resource:(
identity??$lstm_cell_224/BiasAdd/ReadVariableOp?#lstm_cell_224/MatMul/ReadVariableOp?%lstm_cell_224/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_224/MatMul/ReadVariableOpReadVariableOp,lstm_cell_224_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_224/MatMulMatMulstrided_slice_2:output:0+lstm_cell_224/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_224/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_224_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_224/MatMul_1MatMulzeros:output:0-lstm_cell_224/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_224/addAddV2lstm_cell_224/MatMul:product:0 lstm_cell_224/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_224/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_224_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_224/BiasAddBiasAddlstm_cell_224/add:z:0,lstm_cell_224/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_224/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_224/splitSplit&lstm_cell_224/split/split_dim:output:0lstm_cell_224/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_224/SigmoidSigmoidlstm_cell_224/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_224/Sigmoid_1Sigmoidlstm_cell_224/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_224/mulMullstm_cell_224/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_224/ReluRelulstm_cell_224/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_224/mul_1Mullstm_cell_224/Sigmoid:y:0 lstm_cell_224/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_224/add_1AddV2lstm_cell_224/mul:z:0lstm_cell_224/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_224/Sigmoid_2Sigmoidlstm_cell_224/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_224/Relu_1Relulstm_cell_224/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_224/mul_2Mullstm_cell_224/Sigmoid_2:y:0"lstm_cell_224/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_224_matmul_readvariableop_resource.lstm_cell_224_matmul_1_readvariableop_resource-lstm_cell_224_biasadd_readvariableop_resource*
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
while_body_1360087*
condR
while_cond_1360086*K
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
NoOpNoOp%^lstm_cell_224/BiasAdd/ReadVariableOp$^lstm_cell_224/MatMul/ReadVariableOp&^lstm_cell_224/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_224/BiasAdd/ReadVariableOp$lstm_cell_224/BiasAdd/ReadVariableOp2J
#lstm_cell_224/MatMul/ReadVariableOp#lstm_cell_224/MatMul/ReadVariableOp2N
%lstm_cell_224/MatMul_1/ReadVariableOp%lstm_cell_224/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?#
?
while_body_1356556
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_224_1356580_0:2(/
while_lstm_cell_224_1356582_0:
(+
while_lstm_cell_224_1356584_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_224_1356580:2(-
while_lstm_cell_224_1356582:
()
while_lstm_cell_224_1356584:(??+while/lstm_cell_224/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_224/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_224_1356580_0while_lstm_cell_224_1356582_0while_lstm_cell_224_1356584_0*
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
J__inference_lstm_cell_224_layer_call_and_return_conditional_losses_1356497?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_224/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_224/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_224/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_224/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_224_1356580while_lstm_cell_224_1356580_0"<
while_lstm_cell_224_1356582while_lstm_cell_224_1356582_0"<
while_lstm_cell_224_1356584while_lstm_cell_224_1356584_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_224/StatefulPartitionedCall+while/lstm_cell_224/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_205_layer_call_and_return_conditional_losses_1356275

inputs(
lstm_cell_223_1356193:	d?(
lstm_cell_223_1356195:	2?$
lstm_cell_223_1356197:	?
identity??%lstm_cell_223/StatefulPartitionedCall?while;
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
%lstm_cell_223/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_223_1356193lstm_cell_223_1356195lstm_cell_223_1356197*
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
J__inference_lstm_cell_223_layer_call_and_return_conditional_losses_1356147n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_223_1356193lstm_cell_223_1356195lstm_cell_223_1356197*
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
while_body_1356206*
condR
while_cond_1356205*K
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
NoOpNoOp&^lstm_cell_223/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_223/StatefulPartitionedCall%lstm_cell_223/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_204_layer_call_fn_1358763
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
E__inference_lstm_204_layer_call_and_return_conditional_losses_1355734|
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
?C
?

lstm_204_while_body_1357957.
*lstm_204_while_lstm_204_while_loop_counter4
0lstm_204_while_lstm_204_while_maximum_iterations
lstm_204_while_placeholder 
lstm_204_while_placeholder_1 
lstm_204_while_placeholder_2 
lstm_204_while_placeholder_3-
)lstm_204_while_lstm_204_strided_slice_1_0i
elstm_204_while_tensorarrayv2read_tensorlistgetitem_lstm_204_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_204_while_lstm_cell_222_matmul_readvariableop_resource_0:	?R
?lstm_204_while_lstm_cell_222_matmul_1_readvariableop_resource_0:	d?M
>lstm_204_while_lstm_cell_222_biasadd_readvariableop_resource_0:	?
lstm_204_while_identity
lstm_204_while_identity_1
lstm_204_while_identity_2
lstm_204_while_identity_3
lstm_204_while_identity_4
lstm_204_while_identity_5+
'lstm_204_while_lstm_204_strided_slice_1g
clstm_204_while_tensorarrayv2read_tensorlistgetitem_lstm_204_tensorarrayunstack_tensorlistfromtensorN
;lstm_204_while_lstm_cell_222_matmul_readvariableop_resource:	?P
=lstm_204_while_lstm_cell_222_matmul_1_readvariableop_resource:	d?K
<lstm_204_while_lstm_cell_222_biasadd_readvariableop_resource:	???3lstm_204/while/lstm_cell_222/BiasAdd/ReadVariableOp?2lstm_204/while/lstm_cell_222/MatMul/ReadVariableOp?4lstm_204/while/lstm_cell_222/MatMul_1/ReadVariableOp?
@lstm_204/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_204/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_204_while_tensorarrayv2read_tensorlistgetitem_lstm_204_tensorarrayunstack_tensorlistfromtensor_0lstm_204_while_placeholderIlstm_204/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_204/while/lstm_cell_222/MatMul/ReadVariableOpReadVariableOp=lstm_204_while_lstm_cell_222_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_204/while/lstm_cell_222/MatMulMatMul9lstm_204/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_204/while/lstm_cell_222/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_204/while/lstm_cell_222/MatMul_1/ReadVariableOpReadVariableOp?lstm_204_while_lstm_cell_222_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_204/while/lstm_cell_222/MatMul_1MatMullstm_204_while_placeholder_2<lstm_204/while/lstm_cell_222/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_204/while/lstm_cell_222/addAddV2-lstm_204/while/lstm_cell_222/MatMul:product:0/lstm_204/while/lstm_cell_222/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_204/while/lstm_cell_222/BiasAdd/ReadVariableOpReadVariableOp>lstm_204_while_lstm_cell_222_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_204/while/lstm_cell_222/BiasAddBiasAdd$lstm_204/while/lstm_cell_222/add:z:0;lstm_204/while/lstm_cell_222/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_204/while/lstm_cell_222/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_204/while/lstm_cell_222/splitSplit5lstm_204/while/lstm_cell_222/split/split_dim:output:0-lstm_204/while/lstm_cell_222/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_204/while/lstm_cell_222/SigmoidSigmoid+lstm_204/while/lstm_cell_222/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_204/while/lstm_cell_222/Sigmoid_1Sigmoid+lstm_204/while/lstm_cell_222/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_204/while/lstm_cell_222/mulMul*lstm_204/while/lstm_cell_222/Sigmoid_1:y:0lstm_204_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_204/while/lstm_cell_222/ReluRelu+lstm_204/while/lstm_cell_222/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_204/while/lstm_cell_222/mul_1Mul(lstm_204/while/lstm_cell_222/Sigmoid:y:0/lstm_204/while/lstm_cell_222/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_204/while/lstm_cell_222/add_1AddV2$lstm_204/while/lstm_cell_222/mul:z:0&lstm_204/while/lstm_cell_222/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_204/while/lstm_cell_222/Sigmoid_2Sigmoid+lstm_204/while/lstm_cell_222/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_204/while/lstm_cell_222/Relu_1Relu&lstm_204/while/lstm_cell_222/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_204/while/lstm_cell_222/mul_2Mul*lstm_204/while/lstm_cell_222/Sigmoid_2:y:01lstm_204/while/lstm_cell_222/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_204/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_204_while_placeholder_1lstm_204_while_placeholder&lstm_204/while/lstm_cell_222/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_204/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_204/while/addAddV2lstm_204_while_placeholderlstm_204/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_204/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_204/while/add_1AddV2*lstm_204_while_lstm_204_while_loop_counterlstm_204/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_204/while/IdentityIdentitylstm_204/while/add_1:z:0^lstm_204/while/NoOp*
T0*
_output_shapes
: ?
lstm_204/while/Identity_1Identity0lstm_204_while_lstm_204_while_maximum_iterations^lstm_204/while/NoOp*
T0*
_output_shapes
: t
lstm_204/while/Identity_2Identitylstm_204/while/add:z:0^lstm_204/while/NoOp*
T0*
_output_shapes
: ?
lstm_204/while/Identity_3IdentityClstm_204/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_204/while/NoOp*
T0*
_output_shapes
: ?
lstm_204/while/Identity_4Identity&lstm_204/while/lstm_cell_222/mul_2:z:0^lstm_204/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_204/while/Identity_5Identity&lstm_204/while/lstm_cell_222/add_1:z:0^lstm_204/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_204/while/NoOpNoOp4^lstm_204/while/lstm_cell_222/BiasAdd/ReadVariableOp3^lstm_204/while/lstm_cell_222/MatMul/ReadVariableOp5^lstm_204/while/lstm_cell_222/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_204_while_identity lstm_204/while/Identity:output:0"?
lstm_204_while_identity_1"lstm_204/while/Identity_1:output:0"?
lstm_204_while_identity_2"lstm_204/while/Identity_2:output:0"?
lstm_204_while_identity_3"lstm_204/while/Identity_3:output:0"?
lstm_204_while_identity_4"lstm_204/while/Identity_4:output:0"?
lstm_204_while_identity_5"lstm_204/while/Identity_5:output:0"T
'lstm_204_while_lstm_204_strided_slice_1)lstm_204_while_lstm_204_strided_slice_1_0"~
<lstm_204_while_lstm_cell_222_biasadd_readvariableop_resource>lstm_204_while_lstm_cell_222_biasadd_readvariableop_resource_0"?
=lstm_204_while_lstm_cell_222_matmul_1_readvariableop_resource?lstm_204_while_lstm_cell_222_matmul_1_readvariableop_resource_0"|
;lstm_204_while_lstm_cell_222_matmul_readvariableop_resource=lstm_204_while_lstm_cell_222_matmul_readvariableop_resource_0"?
clstm_204_while_tensorarrayv2read_tensorlistgetitem_lstm_204_tensorarrayunstack_tensorlistfromtensorelstm_204_while_tensorarrayv2read_tensorlistgetitem_lstm_204_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_204/while/lstm_cell_222/BiasAdd/ReadVariableOp3lstm_204/while/lstm_cell_222/BiasAdd/ReadVariableOp2h
2lstm_204/while/lstm_cell_222/MatMul/ReadVariableOp2lstm_204/while/lstm_cell_222/MatMul/ReadVariableOp2l
4lstm_204/while/lstm_cell_222/MatMul_1/ReadVariableOp4lstm_204/while/lstm_cell_222/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1359757
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_223_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_223_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_223_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_223_matmul_readvariableop_resource:	d?G
4while_lstm_cell_223_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_223_biasadd_readvariableop_resource:	???*while/lstm_cell_223/BiasAdd/ReadVariableOp?)while/lstm_cell_223/MatMul/ReadVariableOp?+while/lstm_cell_223/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_223/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_223_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_223/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_223/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_223/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_223_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_223/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_223/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_223/addAddV2$while/lstm_cell_223/MatMul:product:0&while/lstm_cell_223/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_223/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_223_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_223/BiasAddBiasAddwhile/lstm_cell_223/add:z:02while/lstm_cell_223/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_223/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_223/splitSplit,while/lstm_cell_223/split/split_dim:output:0$while/lstm_cell_223/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_223/SigmoidSigmoid"while/lstm_cell_223/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_223/Sigmoid_1Sigmoid"while/lstm_cell_223/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_223/mulMul!while/lstm_cell_223/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_223/ReluRelu"while/lstm_cell_223/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_223/mul_1Mulwhile/lstm_cell_223/Sigmoid:y:0&while/lstm_cell_223/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_223/add_1AddV2while/lstm_cell_223/mul:z:0while/lstm_cell_223/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_223/Sigmoid_2Sigmoid"while/lstm_cell_223/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_223/Relu_1Reluwhile/lstm_cell_223/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_223/mul_2Mul!while/lstm_cell_223/Sigmoid_2:y:0(while/lstm_cell_223/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_223/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_223/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_223/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_223/BiasAdd/ReadVariableOp*^while/lstm_cell_223/MatMul/ReadVariableOp,^while/lstm_cell_223/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_223_biasadd_readvariableop_resource5while_lstm_cell_223_biasadd_readvariableop_resource_0"n
4while_lstm_cell_223_matmul_1_readvariableop_resource6while_lstm_cell_223_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_223_matmul_readvariableop_resource4while_lstm_cell_223_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_223/BiasAdd/ReadVariableOp*while/lstm_cell_223/BiasAdd/ReadVariableOp2V
)while/lstm_cell_223/MatMul/ReadVariableOp)while/lstm_cell_223/MatMul/ReadVariableOp2Z
+while/lstm_cell_223/MatMul_1/ReadVariableOp+while/lstm_cell_223/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1357544
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1357544___redundant_placeholder05
1while_while_cond_1357544___redundant_placeholder15
1while_while_cond_1357544___redundant_placeholder25
1while_while_cond_1357544___redundant_placeholder3
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
lstm_205_while_cond_1358095.
*lstm_205_while_lstm_205_while_loop_counter4
0lstm_205_while_lstm_205_while_maximum_iterations
lstm_205_while_placeholder 
lstm_205_while_placeholder_1 
lstm_205_while_placeholder_2 
lstm_205_while_placeholder_30
,lstm_205_while_less_lstm_205_strided_slice_1G
Clstm_205_while_lstm_205_while_cond_1358095___redundant_placeholder0G
Clstm_205_while_lstm_205_while_cond_1358095___redundant_placeholder1G
Clstm_205_while_lstm_205_while_cond_1358095___redundant_placeholder2G
Clstm_205_while_lstm_205_while_cond_1358095___redundant_placeholder3
lstm_205_while_identity
?
lstm_205/while/LessLesslstm_205_while_placeholder,lstm_205_while_less_lstm_205_strided_slice_1*
T0*
_output_shapes
: ]
lstm_205/while/IdentityIdentitylstm_205/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_205_while_identity lstm_205/while/Identity:output:0*(
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
while_cond_1359756
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1359756___redundant_placeholder05
1while_while_cond_1359756___redundant_placeholder15
1while_while_cond_1359756___redundant_placeholder25
1while_while_cond_1359756___redundant_placeholder3
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
while_body_1360373
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_224_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_224_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_224_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_224_matmul_readvariableop_resource:2(F
4while_lstm_cell_224_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_224_biasadd_readvariableop_resource:(??*while/lstm_cell_224/BiasAdd/ReadVariableOp?)while/lstm_cell_224/MatMul/ReadVariableOp?+while/lstm_cell_224/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_224/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_224_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_224/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_224/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_224/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_224_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_224/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_224/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_224/addAddV2$while/lstm_cell_224/MatMul:product:0&while/lstm_cell_224/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_224/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_224_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_224/BiasAddBiasAddwhile/lstm_cell_224/add:z:02while/lstm_cell_224/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_224/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_224/splitSplit,while/lstm_cell_224/split/split_dim:output:0$while/lstm_cell_224/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_224/SigmoidSigmoid"while/lstm_cell_224/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_224/Sigmoid_1Sigmoid"while/lstm_cell_224/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_224/mulMul!while/lstm_cell_224/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_224/ReluRelu"while/lstm_cell_224/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_224/mul_1Mulwhile/lstm_cell_224/Sigmoid:y:0&while/lstm_cell_224/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_224/add_1AddV2while/lstm_cell_224/mul:z:0while/lstm_cell_224/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_224/Sigmoid_2Sigmoid"while/lstm_cell_224/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_224/Relu_1Reluwhile/lstm_cell_224/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_224/mul_2Mul!while/lstm_cell_224/Sigmoid_2:y:0(while/lstm_cell_224/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_224/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_224/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_224/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_224/BiasAdd/ReadVariableOp*^while/lstm_cell_224/MatMul/ReadVariableOp,^while/lstm_cell_224/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_224_biasadd_readvariableop_resource5while_lstm_cell_224_biasadd_readvariableop_resource_0"n
4while_lstm_cell_224_matmul_1_readvariableop_resource6while_lstm_cell_224_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_224_matmul_readvariableop_resource4while_lstm_cell_224_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_224/BiasAdd/ReadVariableOp*while/lstm_cell_224/BiasAdd/ReadVariableOp2V
)while/lstm_cell_224/MatMul/ReadVariableOp)while/lstm_cell_224/MatMul/ReadVariableOp2Z
+while/lstm_cell_224/MatMul_1/ReadVariableOp+while/lstm_cell_224/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_sequential_68_layer_call_fn_1357898

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
J__inference_sequential_68_layer_call_and_return_conditional_losses_1357697o
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
while_cond_1358854
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1358854___redundant_placeholder05
1while_while_cond_1358854___redundant_placeholder15
1while_while_cond_1358854___redundant_placeholder25
1while_while_cond_1358854___redundant_placeholder3
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
J__inference_lstm_cell_223_layer_call_and_return_conditional_losses_1360783

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
/__inference_sequential_68_layer_call_fn_1357133
lstm_204_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_204_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_68_layer_call_and_return_conditional_losses_1357108o
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
_user_specified_namelstm_204_input
?

?
/__inference_sequential_68_layer_call_fn_1357871

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
J__inference_sequential_68_layer_call_and_return_conditional_losses_1357108o
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
?
?
J__inference_lstm_cell_223_layer_call_and_return_conditional_losses_1360815

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
while_cond_1356698
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1356698___redundant_placeholder05
1while_while_cond_1356698___redundant_placeholder15
1while_while_cond_1356698___redundant_placeholder25
1while_while_cond_1356698___redundant_placeholder3
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
while_cond_1355855
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1355855___redundant_placeholder05
1while_while_cond_1355855___redundant_placeholder15
1while_while_cond_1355855___redundant_placeholder25
1while_while_cond_1355855___redundant_placeholder3
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
/__inference_lstm_cell_222_layer_call_fn_1360636

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
J__inference_lstm_cell_222_layer_call_and_return_conditional_losses_1355651o
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
E__inference_lstm_204_layer_call_and_return_conditional_losses_1359082
inputs_0?
,lstm_cell_222_matmul_readvariableop_resource:	?A
.lstm_cell_222_matmul_1_readvariableop_resource:	d?<
-lstm_cell_222_biasadd_readvariableop_resource:	?
identity??$lstm_cell_222/BiasAdd/ReadVariableOp?#lstm_cell_222/MatMul/ReadVariableOp?%lstm_cell_222/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_222/MatMul/ReadVariableOpReadVariableOp,lstm_cell_222_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_222/MatMulMatMulstrided_slice_2:output:0+lstm_cell_222/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_222/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_222_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_222/MatMul_1MatMulzeros:output:0-lstm_cell_222/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_222/addAddV2lstm_cell_222/MatMul:product:0 lstm_cell_222/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_222/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_222_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_222/BiasAddBiasAddlstm_cell_222/add:z:0,lstm_cell_222/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_222/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_222/splitSplit&lstm_cell_222/split/split_dim:output:0lstm_cell_222/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_222/SigmoidSigmoidlstm_cell_222/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_222/Sigmoid_1Sigmoidlstm_cell_222/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_222/mulMullstm_cell_222/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_222/ReluRelulstm_cell_222/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_222/mul_1Mullstm_cell_222/Sigmoid:y:0 lstm_cell_222/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_222/add_1AddV2lstm_cell_222/mul:z:0lstm_cell_222/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_222/Sigmoid_2Sigmoidlstm_cell_222/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_222/Relu_1Relulstm_cell_222/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_222/mul_2Mullstm_cell_222/Sigmoid_2:y:0"lstm_cell_222/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_222_matmul_readvariableop_resource.lstm_cell_222_matmul_1_readvariableop_resource-lstm_cell_222_biasadd_readvariableop_resource*
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
while_body_1358998*
condR
while_cond_1358997*K
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
NoOpNoOp%^lstm_cell_222/BiasAdd/ReadVariableOp$^lstm_cell_222/MatMul/ReadVariableOp&^lstm_cell_222/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_222/BiasAdd/ReadVariableOp$lstm_cell_222/BiasAdd/ReadVariableOp2J
#lstm_cell_222/MatMul/ReadVariableOp#lstm_cell_222/MatMul/ReadVariableOp2N
%lstm_cell_222/MatMul_1/ReadVariableOp%lstm_cell_222/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_204_layer_call_fn_1358774
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
E__inference_lstm_204_layer_call_and_return_conditional_losses_1355925|
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
)sequential_68_lstm_206_while_body_1355494J
Fsequential_68_lstm_206_while_sequential_68_lstm_206_while_loop_counterP
Lsequential_68_lstm_206_while_sequential_68_lstm_206_while_maximum_iterations,
(sequential_68_lstm_206_while_placeholder.
*sequential_68_lstm_206_while_placeholder_1.
*sequential_68_lstm_206_while_placeholder_2.
*sequential_68_lstm_206_while_placeholder_3I
Esequential_68_lstm_206_while_sequential_68_lstm_206_strided_slice_1_0?
?sequential_68_lstm_206_while_tensorarrayv2read_tensorlistgetitem_sequential_68_lstm_206_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_68_lstm_206_while_lstm_cell_224_matmul_readvariableop_resource_0:2(_
Msequential_68_lstm_206_while_lstm_cell_224_matmul_1_readvariableop_resource_0:
(Z
Lsequential_68_lstm_206_while_lstm_cell_224_biasadd_readvariableop_resource_0:()
%sequential_68_lstm_206_while_identity+
'sequential_68_lstm_206_while_identity_1+
'sequential_68_lstm_206_while_identity_2+
'sequential_68_lstm_206_while_identity_3+
'sequential_68_lstm_206_while_identity_4+
'sequential_68_lstm_206_while_identity_5G
Csequential_68_lstm_206_while_sequential_68_lstm_206_strided_slice_1?
sequential_68_lstm_206_while_tensorarrayv2read_tensorlistgetitem_sequential_68_lstm_206_tensorarrayunstack_tensorlistfromtensor[
Isequential_68_lstm_206_while_lstm_cell_224_matmul_readvariableop_resource:2(]
Ksequential_68_lstm_206_while_lstm_cell_224_matmul_1_readvariableop_resource:
(X
Jsequential_68_lstm_206_while_lstm_cell_224_biasadd_readvariableop_resource:(??Asequential_68/lstm_206/while/lstm_cell_224/BiasAdd/ReadVariableOp?@sequential_68/lstm_206/while/lstm_cell_224/MatMul/ReadVariableOp?Bsequential_68/lstm_206/while/lstm_cell_224/MatMul_1/ReadVariableOp?
Nsequential_68/lstm_206/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
@sequential_68/lstm_206/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_68_lstm_206_while_tensorarrayv2read_tensorlistgetitem_sequential_68_lstm_206_tensorarrayunstack_tensorlistfromtensor_0(sequential_68_lstm_206_while_placeholderWsequential_68/lstm_206/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
@sequential_68/lstm_206/while/lstm_cell_224/MatMul/ReadVariableOpReadVariableOpKsequential_68_lstm_206_while_lstm_cell_224_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
1sequential_68/lstm_206/while/lstm_cell_224/MatMulMatMulGsequential_68/lstm_206/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_68/lstm_206/while/lstm_cell_224/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Bsequential_68/lstm_206/while/lstm_cell_224/MatMul_1/ReadVariableOpReadVariableOpMsequential_68_lstm_206_while_lstm_cell_224_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
3sequential_68/lstm_206/while/lstm_cell_224/MatMul_1MatMul*sequential_68_lstm_206_while_placeholder_2Jsequential_68/lstm_206/while/lstm_cell_224/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.sequential_68/lstm_206/while/lstm_cell_224/addAddV2;sequential_68/lstm_206/while/lstm_cell_224/MatMul:product:0=sequential_68/lstm_206/while/lstm_cell_224/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Asequential_68/lstm_206/while/lstm_cell_224/BiasAdd/ReadVariableOpReadVariableOpLsequential_68_lstm_206_while_lstm_cell_224_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
2sequential_68/lstm_206/while/lstm_cell_224/BiasAddBiasAdd2sequential_68/lstm_206/while/lstm_cell_224/add:z:0Isequential_68/lstm_206/while/lstm_cell_224/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(|
:sequential_68/lstm_206/while/lstm_cell_224/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_68/lstm_206/while/lstm_cell_224/splitSplitCsequential_68/lstm_206/while/lstm_cell_224/split/split_dim:output:0;sequential_68/lstm_206/while/lstm_cell_224/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
2sequential_68/lstm_206/while/lstm_cell_224/SigmoidSigmoid9sequential_68/lstm_206/while/lstm_cell_224/split:output:0*
T0*'
_output_shapes
:?????????
?
4sequential_68/lstm_206/while/lstm_cell_224/Sigmoid_1Sigmoid9sequential_68/lstm_206/while/lstm_cell_224/split:output:1*
T0*'
_output_shapes
:?????????
?
.sequential_68/lstm_206/while/lstm_cell_224/mulMul8sequential_68/lstm_206/while/lstm_cell_224/Sigmoid_1:y:0*sequential_68_lstm_206_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
/sequential_68/lstm_206/while/lstm_cell_224/ReluRelu9sequential_68/lstm_206/while/lstm_cell_224/split:output:2*
T0*'
_output_shapes
:?????????
?
0sequential_68/lstm_206/while/lstm_cell_224/mul_1Mul6sequential_68/lstm_206/while/lstm_cell_224/Sigmoid:y:0=sequential_68/lstm_206/while/lstm_cell_224/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
0sequential_68/lstm_206/while/lstm_cell_224/add_1AddV22sequential_68/lstm_206/while/lstm_cell_224/mul:z:04sequential_68/lstm_206/while/lstm_cell_224/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
4sequential_68/lstm_206/while/lstm_cell_224/Sigmoid_2Sigmoid9sequential_68/lstm_206/while/lstm_cell_224/split:output:3*
T0*'
_output_shapes
:?????????
?
1sequential_68/lstm_206/while/lstm_cell_224/Relu_1Relu4sequential_68/lstm_206/while/lstm_cell_224/add_1:z:0*
T0*'
_output_shapes
:?????????
?
0sequential_68/lstm_206/while/lstm_cell_224/mul_2Mul8sequential_68/lstm_206/while/lstm_cell_224/Sigmoid_2:y:0?sequential_68/lstm_206/while/lstm_cell_224/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Asequential_68/lstm_206/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_68_lstm_206_while_placeholder_1(sequential_68_lstm_206_while_placeholder4sequential_68/lstm_206/while/lstm_cell_224/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_68/lstm_206/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_68/lstm_206/while/addAddV2(sequential_68_lstm_206_while_placeholder+sequential_68/lstm_206/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_68/lstm_206/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_68/lstm_206/while/add_1AddV2Fsequential_68_lstm_206_while_sequential_68_lstm_206_while_loop_counter-sequential_68/lstm_206/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_68/lstm_206/while/IdentityIdentity&sequential_68/lstm_206/while/add_1:z:0"^sequential_68/lstm_206/while/NoOp*
T0*
_output_shapes
: ?
'sequential_68/lstm_206/while/Identity_1IdentityLsequential_68_lstm_206_while_sequential_68_lstm_206_while_maximum_iterations"^sequential_68/lstm_206/while/NoOp*
T0*
_output_shapes
: ?
'sequential_68/lstm_206/while/Identity_2Identity$sequential_68/lstm_206/while/add:z:0"^sequential_68/lstm_206/while/NoOp*
T0*
_output_shapes
: ?
'sequential_68/lstm_206/while/Identity_3IdentityQsequential_68/lstm_206/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_68/lstm_206/while/NoOp*
T0*
_output_shapes
: ?
'sequential_68/lstm_206/while/Identity_4Identity4sequential_68/lstm_206/while/lstm_cell_224/mul_2:z:0"^sequential_68/lstm_206/while/NoOp*
T0*'
_output_shapes
:?????????
?
'sequential_68/lstm_206/while/Identity_5Identity4sequential_68/lstm_206/while/lstm_cell_224/add_1:z:0"^sequential_68/lstm_206/while/NoOp*
T0*'
_output_shapes
:?????????
?
!sequential_68/lstm_206/while/NoOpNoOpB^sequential_68/lstm_206/while/lstm_cell_224/BiasAdd/ReadVariableOpA^sequential_68/lstm_206/while/lstm_cell_224/MatMul/ReadVariableOpC^sequential_68/lstm_206/while/lstm_cell_224/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_68_lstm_206_while_identity.sequential_68/lstm_206/while/Identity:output:0"[
'sequential_68_lstm_206_while_identity_10sequential_68/lstm_206/while/Identity_1:output:0"[
'sequential_68_lstm_206_while_identity_20sequential_68/lstm_206/while/Identity_2:output:0"[
'sequential_68_lstm_206_while_identity_30sequential_68/lstm_206/while/Identity_3:output:0"[
'sequential_68_lstm_206_while_identity_40sequential_68/lstm_206/while/Identity_4:output:0"[
'sequential_68_lstm_206_while_identity_50sequential_68/lstm_206/while/Identity_5:output:0"?
Jsequential_68_lstm_206_while_lstm_cell_224_biasadd_readvariableop_resourceLsequential_68_lstm_206_while_lstm_cell_224_biasadd_readvariableop_resource_0"?
Ksequential_68_lstm_206_while_lstm_cell_224_matmul_1_readvariableop_resourceMsequential_68_lstm_206_while_lstm_cell_224_matmul_1_readvariableop_resource_0"?
Isequential_68_lstm_206_while_lstm_cell_224_matmul_readvariableop_resourceKsequential_68_lstm_206_while_lstm_cell_224_matmul_readvariableop_resource_0"?
Csequential_68_lstm_206_while_sequential_68_lstm_206_strided_slice_1Esequential_68_lstm_206_while_sequential_68_lstm_206_strided_slice_1_0"?
sequential_68_lstm_206_while_tensorarrayv2read_tensorlistgetitem_sequential_68_lstm_206_tensorarrayunstack_tensorlistfromtensor?sequential_68_lstm_206_while_tensorarrayv2read_tensorlistgetitem_sequential_68_lstm_206_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Asequential_68/lstm_206/while/lstm_cell_224/BiasAdd/ReadVariableOpAsequential_68/lstm_206/while/lstm_cell_224/BiasAdd/ReadVariableOp2?
@sequential_68/lstm_206/while/lstm_cell_224/MatMul/ReadVariableOp@sequential_68/lstm_206/while/lstm_cell_224/MatMul/ReadVariableOp2?
Bsequential_68/lstm_206/while/lstm_cell_224/MatMul_1/ReadVariableOpBsequential_68/lstm_206/while/lstm_cell_224/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_205_layer_call_and_return_conditional_losses_1356084

inputs(
lstm_cell_223_1356002:	d?(
lstm_cell_223_1356004:	2?$
lstm_cell_223_1356006:	?
identity??%lstm_cell_223/StatefulPartitionedCall?while;
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
%lstm_cell_223/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_223_1356002lstm_cell_223_1356004lstm_cell_223_1356006*
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
J__inference_lstm_cell_223_layer_call_and_return_conditional_losses_1356001n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_223_1356002lstm_cell_223_1356004lstm_cell_223_1356006*
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
while_body_1356015*
condR
while_cond_1356014*K
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
NoOpNoOp&^lstm_cell_223/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_223/StatefulPartitionedCall%lstm_cell_223/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
while_body_1359900
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_223_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_223_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_223_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_223_matmul_readvariableop_resource:	d?G
4while_lstm_cell_223_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_223_biasadd_readvariableop_resource:	???*while/lstm_cell_223/BiasAdd/ReadVariableOp?)while/lstm_cell_223/MatMul/ReadVariableOp?+while/lstm_cell_223/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_223/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_223_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_223/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_223/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_223/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_223_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_223/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_223/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_223/addAddV2$while/lstm_cell_223/MatMul:product:0&while/lstm_cell_223/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_223/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_223_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_223/BiasAddBiasAddwhile/lstm_cell_223/add:z:02while/lstm_cell_223/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_223/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_223/splitSplit,while/lstm_cell_223/split/split_dim:output:0$while/lstm_cell_223/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_223/SigmoidSigmoid"while/lstm_cell_223/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_223/Sigmoid_1Sigmoid"while/lstm_cell_223/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_223/mulMul!while/lstm_cell_223/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_223/ReluRelu"while/lstm_cell_223/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_223/mul_1Mulwhile/lstm_cell_223/Sigmoid:y:0&while/lstm_cell_223/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_223/add_1AddV2while/lstm_cell_223/mul:z:0while/lstm_cell_223/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_223/Sigmoid_2Sigmoid"while/lstm_cell_223/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_223/Relu_1Reluwhile/lstm_cell_223/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_223/mul_2Mul!while/lstm_cell_223/Sigmoid_2:y:0(while/lstm_cell_223/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_223/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_223/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_223/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_223/BiasAdd/ReadVariableOp*^while/lstm_cell_223/MatMul/ReadVariableOp,^while/lstm_cell_223/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_223_biasadd_readvariableop_resource5while_lstm_cell_223_biasadd_readvariableop_resource_0"n
4while_lstm_cell_223_matmul_1_readvariableop_resource6while_lstm_cell_223_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_223_matmul_readvariableop_resource4while_lstm_cell_223_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_223/BiasAdd/ReadVariableOp*while/lstm_cell_223/BiasAdd/ReadVariableOp2V
)while/lstm_cell_223/MatMul/ReadVariableOp)while/lstm_cell_223/MatMul/ReadVariableOp2Z
+while/lstm_cell_223/MatMul_1/ReadVariableOp+while/lstm_cell_223/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_224_layer_call_and_return_conditional_losses_1360913

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
*__inference_lstm_205_layer_call_fn_1359401

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
E__inference_lstm_205_layer_call_and_return_conditional_losses_1356933s
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
while_cond_1356998
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1356998___redundant_placeholder05
1while_while_cond_1356998___redundant_placeholder15
1while_while_cond_1356998___redundant_placeholder25
1while_while_cond_1356998___redundant_placeholder3
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
J__inference_sequential_68_layer_call_and_return_conditional_losses_1358752

inputsH
5lstm_204_lstm_cell_222_matmul_readvariableop_resource:	?J
7lstm_204_lstm_cell_222_matmul_1_readvariableop_resource:	d?E
6lstm_204_lstm_cell_222_biasadd_readvariableop_resource:	?H
5lstm_205_lstm_cell_223_matmul_readvariableop_resource:	d?J
7lstm_205_lstm_cell_223_matmul_1_readvariableop_resource:	2?E
6lstm_205_lstm_cell_223_biasadd_readvariableop_resource:	?G
5lstm_206_lstm_cell_224_matmul_readvariableop_resource:2(I
7lstm_206_lstm_cell_224_matmul_1_readvariableop_resource:
(D
6lstm_206_lstm_cell_224_biasadd_readvariableop_resource:(9
'dense_68_matmul_readvariableop_resource:
6
(dense_68_biasadd_readvariableop_resource:
identity??dense_68/BiasAdd/ReadVariableOp?dense_68/MatMul/ReadVariableOp?-lstm_204/lstm_cell_222/BiasAdd/ReadVariableOp?,lstm_204/lstm_cell_222/MatMul/ReadVariableOp?.lstm_204/lstm_cell_222/MatMul_1/ReadVariableOp?lstm_204/while?-lstm_205/lstm_cell_223/BiasAdd/ReadVariableOp?,lstm_205/lstm_cell_223/MatMul/ReadVariableOp?.lstm_205/lstm_cell_223/MatMul_1/ReadVariableOp?lstm_205/while?-lstm_206/lstm_cell_224/BiasAdd/ReadVariableOp?,lstm_206/lstm_cell_224/MatMul/ReadVariableOp?.lstm_206/lstm_cell_224/MatMul_1/ReadVariableOp?lstm_206/whileD
lstm_204/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_204/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_204/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_204/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_204/strided_sliceStridedSlicelstm_204/Shape:output:0%lstm_204/strided_slice/stack:output:0'lstm_204/strided_slice/stack_1:output:0'lstm_204/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_204/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_204/zeros/packedPacklstm_204/strided_slice:output:0 lstm_204/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_204/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_204/zerosFilllstm_204/zeros/packed:output:0lstm_204/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_204/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_204/zeros_1/packedPacklstm_204/strided_slice:output:0"lstm_204/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_204/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_204/zeros_1Fill lstm_204/zeros_1/packed:output:0lstm_204/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_204/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_204/transpose	Transposeinputs lstm_204/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_204/Shape_1Shapelstm_204/transpose:y:0*
T0*
_output_shapes
:h
lstm_204/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_204/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_204/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_204/strided_slice_1StridedSlicelstm_204/Shape_1:output:0'lstm_204/strided_slice_1/stack:output:0)lstm_204/strided_slice_1/stack_1:output:0)lstm_204/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_204/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_204/TensorArrayV2TensorListReserve-lstm_204/TensorArrayV2/element_shape:output:0!lstm_204/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_204/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_204/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_204/transpose:y:0Glstm_204/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_204/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_204/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_204/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_204/strided_slice_2StridedSlicelstm_204/transpose:y:0'lstm_204/strided_slice_2/stack:output:0)lstm_204/strided_slice_2/stack_1:output:0)lstm_204/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_204/lstm_cell_222/MatMul/ReadVariableOpReadVariableOp5lstm_204_lstm_cell_222_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_204/lstm_cell_222/MatMulMatMul!lstm_204/strided_slice_2:output:04lstm_204/lstm_cell_222/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_204/lstm_cell_222/MatMul_1/ReadVariableOpReadVariableOp7lstm_204_lstm_cell_222_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_204/lstm_cell_222/MatMul_1MatMullstm_204/zeros:output:06lstm_204/lstm_cell_222/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_204/lstm_cell_222/addAddV2'lstm_204/lstm_cell_222/MatMul:product:0)lstm_204/lstm_cell_222/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_204/lstm_cell_222/BiasAdd/ReadVariableOpReadVariableOp6lstm_204_lstm_cell_222_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_204/lstm_cell_222/BiasAddBiasAddlstm_204/lstm_cell_222/add:z:05lstm_204/lstm_cell_222/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_204/lstm_cell_222/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_204/lstm_cell_222/splitSplit/lstm_204/lstm_cell_222/split/split_dim:output:0'lstm_204/lstm_cell_222/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_204/lstm_cell_222/SigmoidSigmoid%lstm_204/lstm_cell_222/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_204/lstm_cell_222/Sigmoid_1Sigmoid%lstm_204/lstm_cell_222/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_204/lstm_cell_222/mulMul$lstm_204/lstm_cell_222/Sigmoid_1:y:0lstm_204/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_204/lstm_cell_222/ReluRelu%lstm_204/lstm_cell_222/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_204/lstm_cell_222/mul_1Mul"lstm_204/lstm_cell_222/Sigmoid:y:0)lstm_204/lstm_cell_222/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_204/lstm_cell_222/add_1AddV2lstm_204/lstm_cell_222/mul:z:0 lstm_204/lstm_cell_222/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_204/lstm_cell_222/Sigmoid_2Sigmoid%lstm_204/lstm_cell_222/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_204/lstm_cell_222/Relu_1Relu lstm_204/lstm_cell_222/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_204/lstm_cell_222/mul_2Mul$lstm_204/lstm_cell_222/Sigmoid_2:y:0+lstm_204/lstm_cell_222/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_204/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_204/TensorArrayV2_1TensorListReserve/lstm_204/TensorArrayV2_1/element_shape:output:0!lstm_204/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_204/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_204/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_204/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_204/whileWhile$lstm_204/while/loop_counter:output:0*lstm_204/while/maximum_iterations:output:0lstm_204/time:output:0!lstm_204/TensorArrayV2_1:handle:0lstm_204/zeros:output:0lstm_204/zeros_1:output:0!lstm_204/strided_slice_1:output:0@lstm_204/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_204_lstm_cell_222_matmul_readvariableop_resource7lstm_204_lstm_cell_222_matmul_1_readvariableop_resource6lstm_204_lstm_cell_222_biasadd_readvariableop_resource*
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
lstm_204_while_body_1358384*'
condR
lstm_204_while_cond_1358383*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_204/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_204/TensorArrayV2Stack/TensorListStackTensorListStacklstm_204/while:output:3Blstm_204/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_204/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_204/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_204/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_204/strided_slice_3StridedSlice4lstm_204/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_204/strided_slice_3/stack:output:0)lstm_204/strided_slice_3/stack_1:output:0)lstm_204/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_204/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_204/transpose_1	Transpose4lstm_204/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_204/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_204/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_205/ShapeShapelstm_204/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_205/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_205/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_205/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_205/strided_sliceStridedSlicelstm_205/Shape:output:0%lstm_205/strided_slice/stack:output:0'lstm_205/strided_slice/stack_1:output:0'lstm_205/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_205/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_205/zeros/packedPacklstm_205/strided_slice:output:0 lstm_205/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_205/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_205/zerosFilllstm_205/zeros/packed:output:0lstm_205/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_205/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_205/zeros_1/packedPacklstm_205/strided_slice:output:0"lstm_205/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_205/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_205/zeros_1Fill lstm_205/zeros_1/packed:output:0lstm_205/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_205/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_205/transpose	Transposelstm_204/transpose_1:y:0 lstm_205/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_205/Shape_1Shapelstm_205/transpose:y:0*
T0*
_output_shapes
:h
lstm_205/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_205/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_205/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_205/strided_slice_1StridedSlicelstm_205/Shape_1:output:0'lstm_205/strided_slice_1/stack:output:0)lstm_205/strided_slice_1/stack_1:output:0)lstm_205/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_205/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_205/TensorArrayV2TensorListReserve-lstm_205/TensorArrayV2/element_shape:output:0!lstm_205/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_205/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_205/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_205/transpose:y:0Glstm_205/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_205/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_205/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_205/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_205/strided_slice_2StridedSlicelstm_205/transpose:y:0'lstm_205/strided_slice_2/stack:output:0)lstm_205/strided_slice_2/stack_1:output:0)lstm_205/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_205/lstm_cell_223/MatMul/ReadVariableOpReadVariableOp5lstm_205_lstm_cell_223_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_205/lstm_cell_223/MatMulMatMul!lstm_205/strided_slice_2:output:04lstm_205/lstm_cell_223/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_205/lstm_cell_223/MatMul_1/ReadVariableOpReadVariableOp7lstm_205_lstm_cell_223_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_205/lstm_cell_223/MatMul_1MatMullstm_205/zeros:output:06lstm_205/lstm_cell_223/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_205/lstm_cell_223/addAddV2'lstm_205/lstm_cell_223/MatMul:product:0)lstm_205/lstm_cell_223/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_205/lstm_cell_223/BiasAdd/ReadVariableOpReadVariableOp6lstm_205_lstm_cell_223_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_205/lstm_cell_223/BiasAddBiasAddlstm_205/lstm_cell_223/add:z:05lstm_205/lstm_cell_223/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_205/lstm_cell_223/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_205/lstm_cell_223/splitSplit/lstm_205/lstm_cell_223/split/split_dim:output:0'lstm_205/lstm_cell_223/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_205/lstm_cell_223/SigmoidSigmoid%lstm_205/lstm_cell_223/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_205/lstm_cell_223/Sigmoid_1Sigmoid%lstm_205/lstm_cell_223/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_205/lstm_cell_223/mulMul$lstm_205/lstm_cell_223/Sigmoid_1:y:0lstm_205/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_205/lstm_cell_223/ReluRelu%lstm_205/lstm_cell_223/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_205/lstm_cell_223/mul_1Mul"lstm_205/lstm_cell_223/Sigmoid:y:0)lstm_205/lstm_cell_223/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_205/lstm_cell_223/add_1AddV2lstm_205/lstm_cell_223/mul:z:0 lstm_205/lstm_cell_223/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_205/lstm_cell_223/Sigmoid_2Sigmoid%lstm_205/lstm_cell_223/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_205/lstm_cell_223/Relu_1Relu lstm_205/lstm_cell_223/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_205/lstm_cell_223/mul_2Mul$lstm_205/lstm_cell_223/Sigmoid_2:y:0+lstm_205/lstm_cell_223/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_205/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_205/TensorArrayV2_1TensorListReserve/lstm_205/TensorArrayV2_1/element_shape:output:0!lstm_205/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_205/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_205/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_205/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_205/whileWhile$lstm_205/while/loop_counter:output:0*lstm_205/while/maximum_iterations:output:0lstm_205/time:output:0!lstm_205/TensorArrayV2_1:handle:0lstm_205/zeros:output:0lstm_205/zeros_1:output:0!lstm_205/strided_slice_1:output:0@lstm_205/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_205_lstm_cell_223_matmul_readvariableop_resource7lstm_205_lstm_cell_223_matmul_1_readvariableop_resource6lstm_205_lstm_cell_223_biasadd_readvariableop_resource*
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
lstm_205_while_body_1358523*'
condR
lstm_205_while_cond_1358522*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_205/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_205/TensorArrayV2Stack/TensorListStackTensorListStacklstm_205/while:output:3Blstm_205/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_205/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_205/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_205/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_205/strided_slice_3StridedSlice4lstm_205/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_205/strided_slice_3/stack:output:0)lstm_205/strided_slice_3/stack_1:output:0)lstm_205/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_205/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_205/transpose_1	Transpose4lstm_205/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_205/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_205/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_206/ShapeShapelstm_205/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_206/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_206/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_206/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_206/strided_sliceStridedSlicelstm_206/Shape:output:0%lstm_206/strided_slice/stack:output:0'lstm_206/strided_slice/stack_1:output:0'lstm_206/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_206/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_206/zeros/packedPacklstm_206/strided_slice:output:0 lstm_206/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_206/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_206/zerosFilllstm_206/zeros/packed:output:0lstm_206/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_206/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_206/zeros_1/packedPacklstm_206/strided_slice:output:0"lstm_206/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_206/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_206/zeros_1Fill lstm_206/zeros_1/packed:output:0lstm_206/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_206/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_206/transpose	Transposelstm_205/transpose_1:y:0 lstm_206/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_206/Shape_1Shapelstm_206/transpose:y:0*
T0*
_output_shapes
:h
lstm_206/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_206/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_206/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_206/strided_slice_1StridedSlicelstm_206/Shape_1:output:0'lstm_206/strided_slice_1/stack:output:0)lstm_206/strided_slice_1/stack_1:output:0)lstm_206/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_206/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_206/TensorArrayV2TensorListReserve-lstm_206/TensorArrayV2/element_shape:output:0!lstm_206/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_206/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_206/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_206/transpose:y:0Glstm_206/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_206/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_206/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_206/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_206/strided_slice_2StridedSlicelstm_206/transpose:y:0'lstm_206/strided_slice_2/stack:output:0)lstm_206/strided_slice_2/stack_1:output:0)lstm_206/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_206/lstm_cell_224/MatMul/ReadVariableOpReadVariableOp5lstm_206_lstm_cell_224_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_206/lstm_cell_224/MatMulMatMul!lstm_206/strided_slice_2:output:04lstm_206/lstm_cell_224/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_206/lstm_cell_224/MatMul_1/ReadVariableOpReadVariableOp7lstm_206_lstm_cell_224_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_206/lstm_cell_224/MatMul_1MatMullstm_206/zeros:output:06lstm_206/lstm_cell_224/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_206/lstm_cell_224/addAddV2'lstm_206/lstm_cell_224/MatMul:product:0)lstm_206/lstm_cell_224/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_206/lstm_cell_224/BiasAdd/ReadVariableOpReadVariableOp6lstm_206_lstm_cell_224_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_206/lstm_cell_224/BiasAddBiasAddlstm_206/lstm_cell_224/add:z:05lstm_206/lstm_cell_224/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_206/lstm_cell_224/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_206/lstm_cell_224/splitSplit/lstm_206/lstm_cell_224/split/split_dim:output:0'lstm_206/lstm_cell_224/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_206/lstm_cell_224/SigmoidSigmoid%lstm_206/lstm_cell_224/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_206/lstm_cell_224/Sigmoid_1Sigmoid%lstm_206/lstm_cell_224/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_206/lstm_cell_224/mulMul$lstm_206/lstm_cell_224/Sigmoid_1:y:0lstm_206/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_206/lstm_cell_224/ReluRelu%lstm_206/lstm_cell_224/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_206/lstm_cell_224/mul_1Mul"lstm_206/lstm_cell_224/Sigmoid:y:0)lstm_206/lstm_cell_224/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_206/lstm_cell_224/add_1AddV2lstm_206/lstm_cell_224/mul:z:0 lstm_206/lstm_cell_224/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_206/lstm_cell_224/Sigmoid_2Sigmoid%lstm_206/lstm_cell_224/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_206/lstm_cell_224/Relu_1Relu lstm_206/lstm_cell_224/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_206/lstm_cell_224/mul_2Mul$lstm_206/lstm_cell_224/Sigmoid_2:y:0+lstm_206/lstm_cell_224/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_206/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_206/TensorArrayV2_1TensorListReserve/lstm_206/TensorArrayV2_1/element_shape:output:0!lstm_206/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_206/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_206/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_206/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_206/whileWhile$lstm_206/while/loop_counter:output:0*lstm_206/while/maximum_iterations:output:0lstm_206/time:output:0!lstm_206/TensorArrayV2_1:handle:0lstm_206/zeros:output:0lstm_206/zeros_1:output:0!lstm_206/strided_slice_1:output:0@lstm_206/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_206_lstm_cell_224_matmul_readvariableop_resource7lstm_206_lstm_cell_224_matmul_1_readvariableop_resource6lstm_206_lstm_cell_224_biasadd_readvariableop_resource*
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
lstm_206_while_body_1358662*'
condR
lstm_206_while_cond_1358661*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_206/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_206/TensorArrayV2Stack/TensorListStackTensorListStacklstm_206/while:output:3Blstm_206/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_206/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_206/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_206/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_206/strided_slice_3StridedSlice4lstm_206/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_206/strided_slice_3/stack:output:0)lstm_206/strided_slice_3/stack_1:output:0)lstm_206/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_206/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_206/transpose_1	Transpose4lstm_206/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_206/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_206/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_68/MatMul/ReadVariableOpReadVariableOp'dense_68_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_68/MatMulMatMul!lstm_206/strided_slice_3:output:0&dense_68/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_68/BiasAdd/ReadVariableOpReadVariableOp(dense_68_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_68/BiasAddBiasAdddense_68/MatMul:product:0'dense_68/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_68/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_68/BiasAdd/ReadVariableOp^dense_68/MatMul/ReadVariableOp.^lstm_204/lstm_cell_222/BiasAdd/ReadVariableOp-^lstm_204/lstm_cell_222/MatMul/ReadVariableOp/^lstm_204/lstm_cell_222/MatMul_1/ReadVariableOp^lstm_204/while.^lstm_205/lstm_cell_223/BiasAdd/ReadVariableOp-^lstm_205/lstm_cell_223/MatMul/ReadVariableOp/^lstm_205/lstm_cell_223/MatMul_1/ReadVariableOp^lstm_205/while.^lstm_206/lstm_cell_224/BiasAdd/ReadVariableOp-^lstm_206/lstm_cell_224/MatMul/ReadVariableOp/^lstm_206/lstm_cell_224/MatMul_1/ReadVariableOp^lstm_206/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_68/BiasAdd/ReadVariableOpdense_68/BiasAdd/ReadVariableOp2@
dense_68/MatMul/ReadVariableOpdense_68/MatMul/ReadVariableOp2^
-lstm_204/lstm_cell_222/BiasAdd/ReadVariableOp-lstm_204/lstm_cell_222/BiasAdd/ReadVariableOp2\
,lstm_204/lstm_cell_222/MatMul/ReadVariableOp,lstm_204/lstm_cell_222/MatMul/ReadVariableOp2`
.lstm_204/lstm_cell_222/MatMul_1/ReadVariableOp.lstm_204/lstm_cell_222/MatMul_1/ReadVariableOp2 
lstm_204/whilelstm_204/while2^
-lstm_205/lstm_cell_223/BiasAdd/ReadVariableOp-lstm_205/lstm_cell_223/BiasAdd/ReadVariableOp2\
,lstm_205/lstm_cell_223/MatMul/ReadVariableOp,lstm_205/lstm_cell_223/MatMul/ReadVariableOp2`
.lstm_205/lstm_cell_223/MatMul_1/ReadVariableOp.lstm_205/lstm_cell_223/MatMul_1/ReadVariableOp2 
lstm_205/whilelstm_205/while2^
-lstm_206/lstm_cell_224/BiasAdd/ReadVariableOp-lstm_206/lstm_cell_224/BiasAdd/ReadVariableOp2\
,lstm_206/lstm_cell_224/MatMul/ReadVariableOp,lstm_206/lstm_cell_224/MatMul/ReadVariableOp2`
.lstm_206/lstm_cell_224/MatMul_1/ReadVariableOp.lstm_206/lstm_cell_224/MatMul_1/ReadVariableOp2 
lstm_206/whilelstm_206/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_206_while_body_1358662.
*lstm_206_while_lstm_206_while_loop_counter4
0lstm_206_while_lstm_206_while_maximum_iterations
lstm_206_while_placeholder 
lstm_206_while_placeholder_1 
lstm_206_while_placeholder_2 
lstm_206_while_placeholder_3-
)lstm_206_while_lstm_206_strided_slice_1_0i
elstm_206_while_tensorarrayv2read_tensorlistgetitem_lstm_206_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_206_while_lstm_cell_224_matmul_readvariableop_resource_0:2(Q
?lstm_206_while_lstm_cell_224_matmul_1_readvariableop_resource_0:
(L
>lstm_206_while_lstm_cell_224_biasadd_readvariableop_resource_0:(
lstm_206_while_identity
lstm_206_while_identity_1
lstm_206_while_identity_2
lstm_206_while_identity_3
lstm_206_while_identity_4
lstm_206_while_identity_5+
'lstm_206_while_lstm_206_strided_slice_1g
clstm_206_while_tensorarrayv2read_tensorlistgetitem_lstm_206_tensorarrayunstack_tensorlistfromtensorM
;lstm_206_while_lstm_cell_224_matmul_readvariableop_resource:2(O
=lstm_206_while_lstm_cell_224_matmul_1_readvariableop_resource:
(J
<lstm_206_while_lstm_cell_224_biasadd_readvariableop_resource:(??3lstm_206/while/lstm_cell_224/BiasAdd/ReadVariableOp?2lstm_206/while/lstm_cell_224/MatMul/ReadVariableOp?4lstm_206/while/lstm_cell_224/MatMul_1/ReadVariableOp?
@lstm_206/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_206/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_206_while_tensorarrayv2read_tensorlistgetitem_lstm_206_tensorarrayunstack_tensorlistfromtensor_0lstm_206_while_placeholderIlstm_206/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_206/while/lstm_cell_224/MatMul/ReadVariableOpReadVariableOp=lstm_206_while_lstm_cell_224_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_206/while/lstm_cell_224/MatMulMatMul9lstm_206/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_206/while/lstm_cell_224/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_206/while/lstm_cell_224/MatMul_1/ReadVariableOpReadVariableOp?lstm_206_while_lstm_cell_224_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_206/while/lstm_cell_224/MatMul_1MatMullstm_206_while_placeholder_2<lstm_206/while/lstm_cell_224/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_206/while/lstm_cell_224/addAddV2-lstm_206/while/lstm_cell_224/MatMul:product:0/lstm_206/while/lstm_cell_224/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_206/while/lstm_cell_224/BiasAdd/ReadVariableOpReadVariableOp>lstm_206_while_lstm_cell_224_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_206/while/lstm_cell_224/BiasAddBiasAdd$lstm_206/while/lstm_cell_224/add:z:0;lstm_206/while/lstm_cell_224/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_206/while/lstm_cell_224/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_206/while/lstm_cell_224/splitSplit5lstm_206/while/lstm_cell_224/split/split_dim:output:0-lstm_206/while/lstm_cell_224/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_206/while/lstm_cell_224/SigmoidSigmoid+lstm_206/while/lstm_cell_224/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_206/while/lstm_cell_224/Sigmoid_1Sigmoid+lstm_206/while/lstm_cell_224/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_206/while/lstm_cell_224/mulMul*lstm_206/while/lstm_cell_224/Sigmoid_1:y:0lstm_206_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_206/while/lstm_cell_224/ReluRelu+lstm_206/while/lstm_cell_224/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_206/while/lstm_cell_224/mul_1Mul(lstm_206/while/lstm_cell_224/Sigmoid:y:0/lstm_206/while/lstm_cell_224/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_206/while/lstm_cell_224/add_1AddV2$lstm_206/while/lstm_cell_224/mul:z:0&lstm_206/while/lstm_cell_224/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_206/while/lstm_cell_224/Sigmoid_2Sigmoid+lstm_206/while/lstm_cell_224/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_206/while/lstm_cell_224/Relu_1Relu&lstm_206/while/lstm_cell_224/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_206/while/lstm_cell_224/mul_2Mul*lstm_206/while/lstm_cell_224/Sigmoid_2:y:01lstm_206/while/lstm_cell_224/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_206/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_206_while_placeholder_1lstm_206_while_placeholder&lstm_206/while/lstm_cell_224/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_206/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_206/while/addAddV2lstm_206_while_placeholderlstm_206/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_206/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_206/while/add_1AddV2*lstm_206_while_lstm_206_while_loop_counterlstm_206/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_206/while/IdentityIdentitylstm_206/while/add_1:z:0^lstm_206/while/NoOp*
T0*
_output_shapes
: ?
lstm_206/while/Identity_1Identity0lstm_206_while_lstm_206_while_maximum_iterations^lstm_206/while/NoOp*
T0*
_output_shapes
: t
lstm_206/while/Identity_2Identitylstm_206/while/add:z:0^lstm_206/while/NoOp*
T0*
_output_shapes
: ?
lstm_206/while/Identity_3IdentityClstm_206/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_206/while/NoOp*
T0*
_output_shapes
: ?
lstm_206/while/Identity_4Identity&lstm_206/while/lstm_cell_224/mul_2:z:0^lstm_206/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_206/while/Identity_5Identity&lstm_206/while/lstm_cell_224/add_1:z:0^lstm_206/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_206/while/NoOpNoOp4^lstm_206/while/lstm_cell_224/BiasAdd/ReadVariableOp3^lstm_206/while/lstm_cell_224/MatMul/ReadVariableOp5^lstm_206/while/lstm_cell_224/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_206_while_identity lstm_206/while/Identity:output:0"?
lstm_206_while_identity_1"lstm_206/while/Identity_1:output:0"?
lstm_206_while_identity_2"lstm_206/while/Identity_2:output:0"?
lstm_206_while_identity_3"lstm_206/while/Identity_3:output:0"?
lstm_206_while_identity_4"lstm_206/while/Identity_4:output:0"?
lstm_206_while_identity_5"lstm_206/while/Identity_5:output:0"T
'lstm_206_while_lstm_206_strided_slice_1)lstm_206_while_lstm_206_strided_slice_1_0"~
<lstm_206_while_lstm_cell_224_biasadd_readvariableop_resource>lstm_206_while_lstm_cell_224_biasadd_readvariableop_resource_0"?
=lstm_206_while_lstm_cell_224_matmul_1_readvariableop_resource?lstm_206_while_lstm_cell_224_matmul_1_readvariableop_resource_0"|
;lstm_206_while_lstm_cell_224_matmul_readvariableop_resource=lstm_206_while_lstm_cell_224_matmul_readvariableop_resource_0"?
clstm_206_while_tensorarrayv2read_tensorlistgetitem_lstm_206_tensorarrayunstack_tensorlistfromtensorelstm_206_while_tensorarrayv2read_tensorlistgetitem_lstm_206_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_206/while/lstm_cell_224/BiasAdd/ReadVariableOp3lstm_206/while/lstm_cell_224/BiasAdd/ReadVariableOp2h
2lstm_206/while/lstm_cell_224/MatMul/ReadVariableOp2lstm_206/while/lstm_cell_224/MatMul/ReadVariableOp2l
4lstm_206/while/lstm_cell_224/MatMul_1/ReadVariableOp4lstm_206/while/lstm_cell_224/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1358998
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_222_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_222_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_222_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_222_matmul_readvariableop_resource:	?G
4while_lstm_cell_222_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_222_biasadd_readvariableop_resource:	???*while/lstm_cell_222/BiasAdd/ReadVariableOp?)while/lstm_cell_222/MatMul/ReadVariableOp?+while/lstm_cell_222/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_222/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_222_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_222/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_222/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_222/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_222_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_222/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_222/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_222/addAddV2$while/lstm_cell_222/MatMul:product:0&while/lstm_cell_222/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_222/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_222_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_222/BiasAddBiasAddwhile/lstm_cell_222/add:z:02while/lstm_cell_222/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_222/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_222/splitSplit,while/lstm_cell_222/split/split_dim:output:0$while/lstm_cell_222/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_222/SigmoidSigmoid"while/lstm_cell_222/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_222/Sigmoid_1Sigmoid"while/lstm_cell_222/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_222/mulMul!while/lstm_cell_222/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_222/ReluRelu"while/lstm_cell_222/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_222/mul_1Mulwhile/lstm_cell_222/Sigmoid:y:0&while/lstm_cell_222/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_222/add_1AddV2while/lstm_cell_222/mul:z:0while/lstm_cell_222/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_222/Sigmoid_2Sigmoid"while/lstm_cell_222/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_222/Relu_1Reluwhile/lstm_cell_222/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_222/mul_2Mul!while/lstm_cell_222/Sigmoid_2:y:0(while/lstm_cell_222/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_222/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_222/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_222/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_222/BiasAdd/ReadVariableOp*^while/lstm_cell_222/MatMul/ReadVariableOp,^while/lstm_cell_222/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_222_biasadd_readvariableop_resource5while_lstm_cell_222_biasadd_readvariableop_resource_0"n
4while_lstm_cell_222_matmul_1_readvariableop_resource6while_lstm_cell_222_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_222_matmul_readvariableop_resource4while_lstm_cell_222_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_222/BiasAdd/ReadVariableOp*while/lstm_cell_222/BiasAdd/ReadVariableOp2V
)while/lstm_cell_222/MatMul/ReadVariableOp)while/lstm_cell_222/MatMul/ReadVariableOp2Z
+while/lstm_cell_222/MatMul_1/ReadVariableOp+while/lstm_cell_222/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)sequential_68_lstm_205_while_body_1355355J
Fsequential_68_lstm_205_while_sequential_68_lstm_205_while_loop_counterP
Lsequential_68_lstm_205_while_sequential_68_lstm_205_while_maximum_iterations,
(sequential_68_lstm_205_while_placeholder.
*sequential_68_lstm_205_while_placeholder_1.
*sequential_68_lstm_205_while_placeholder_2.
*sequential_68_lstm_205_while_placeholder_3I
Esequential_68_lstm_205_while_sequential_68_lstm_205_strided_slice_1_0?
?sequential_68_lstm_205_while_tensorarrayv2read_tensorlistgetitem_sequential_68_lstm_205_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_68_lstm_205_while_lstm_cell_223_matmul_readvariableop_resource_0:	d?`
Msequential_68_lstm_205_while_lstm_cell_223_matmul_1_readvariableop_resource_0:	2?[
Lsequential_68_lstm_205_while_lstm_cell_223_biasadd_readvariableop_resource_0:	?)
%sequential_68_lstm_205_while_identity+
'sequential_68_lstm_205_while_identity_1+
'sequential_68_lstm_205_while_identity_2+
'sequential_68_lstm_205_while_identity_3+
'sequential_68_lstm_205_while_identity_4+
'sequential_68_lstm_205_while_identity_5G
Csequential_68_lstm_205_while_sequential_68_lstm_205_strided_slice_1?
sequential_68_lstm_205_while_tensorarrayv2read_tensorlistgetitem_sequential_68_lstm_205_tensorarrayunstack_tensorlistfromtensor\
Isequential_68_lstm_205_while_lstm_cell_223_matmul_readvariableop_resource:	d?^
Ksequential_68_lstm_205_while_lstm_cell_223_matmul_1_readvariableop_resource:	2?Y
Jsequential_68_lstm_205_while_lstm_cell_223_biasadd_readvariableop_resource:	???Asequential_68/lstm_205/while/lstm_cell_223/BiasAdd/ReadVariableOp?@sequential_68/lstm_205/while/lstm_cell_223/MatMul/ReadVariableOp?Bsequential_68/lstm_205/while/lstm_cell_223/MatMul_1/ReadVariableOp?
Nsequential_68/lstm_205/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
@sequential_68/lstm_205/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_68_lstm_205_while_tensorarrayv2read_tensorlistgetitem_sequential_68_lstm_205_tensorarrayunstack_tensorlistfromtensor_0(sequential_68_lstm_205_while_placeholderWsequential_68/lstm_205/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
@sequential_68/lstm_205/while/lstm_cell_223/MatMul/ReadVariableOpReadVariableOpKsequential_68_lstm_205_while_lstm_cell_223_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
1sequential_68/lstm_205/while/lstm_cell_223/MatMulMatMulGsequential_68/lstm_205/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_68/lstm_205/while/lstm_cell_223/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_68/lstm_205/while/lstm_cell_223/MatMul_1/ReadVariableOpReadVariableOpMsequential_68_lstm_205_while_lstm_cell_223_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
3sequential_68/lstm_205/while/lstm_cell_223/MatMul_1MatMul*sequential_68_lstm_205_while_placeholder_2Jsequential_68/lstm_205/while/lstm_cell_223/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_68/lstm_205/while/lstm_cell_223/addAddV2;sequential_68/lstm_205/while/lstm_cell_223/MatMul:product:0=sequential_68/lstm_205/while/lstm_cell_223/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_68/lstm_205/while/lstm_cell_223/BiasAdd/ReadVariableOpReadVariableOpLsequential_68_lstm_205_while_lstm_cell_223_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_68/lstm_205/while/lstm_cell_223/BiasAddBiasAdd2sequential_68/lstm_205/while/lstm_cell_223/add:z:0Isequential_68/lstm_205/while/lstm_cell_223/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_68/lstm_205/while/lstm_cell_223/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_68/lstm_205/while/lstm_cell_223/splitSplitCsequential_68/lstm_205/while/lstm_cell_223/split/split_dim:output:0;sequential_68/lstm_205/while/lstm_cell_223/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
2sequential_68/lstm_205/while/lstm_cell_223/SigmoidSigmoid9sequential_68/lstm_205/while/lstm_cell_223/split:output:0*
T0*'
_output_shapes
:?????????2?
4sequential_68/lstm_205/while/lstm_cell_223/Sigmoid_1Sigmoid9sequential_68/lstm_205/while/lstm_cell_223/split:output:1*
T0*'
_output_shapes
:?????????2?
.sequential_68/lstm_205/while/lstm_cell_223/mulMul8sequential_68/lstm_205/while/lstm_cell_223/Sigmoid_1:y:0*sequential_68_lstm_205_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
/sequential_68/lstm_205/while/lstm_cell_223/ReluRelu9sequential_68/lstm_205/while/lstm_cell_223/split:output:2*
T0*'
_output_shapes
:?????????2?
0sequential_68/lstm_205/while/lstm_cell_223/mul_1Mul6sequential_68/lstm_205/while/lstm_cell_223/Sigmoid:y:0=sequential_68/lstm_205/while/lstm_cell_223/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
0sequential_68/lstm_205/while/lstm_cell_223/add_1AddV22sequential_68/lstm_205/while/lstm_cell_223/mul:z:04sequential_68/lstm_205/while/lstm_cell_223/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
4sequential_68/lstm_205/while/lstm_cell_223/Sigmoid_2Sigmoid9sequential_68/lstm_205/while/lstm_cell_223/split:output:3*
T0*'
_output_shapes
:?????????2?
1sequential_68/lstm_205/while/lstm_cell_223/Relu_1Relu4sequential_68/lstm_205/while/lstm_cell_223/add_1:z:0*
T0*'
_output_shapes
:?????????2?
0sequential_68/lstm_205/while/lstm_cell_223/mul_2Mul8sequential_68/lstm_205/while/lstm_cell_223/Sigmoid_2:y:0?sequential_68/lstm_205/while/lstm_cell_223/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Asequential_68/lstm_205/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_68_lstm_205_while_placeholder_1(sequential_68_lstm_205_while_placeholder4sequential_68/lstm_205/while/lstm_cell_223/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_68/lstm_205/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_68/lstm_205/while/addAddV2(sequential_68_lstm_205_while_placeholder+sequential_68/lstm_205/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_68/lstm_205/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_68/lstm_205/while/add_1AddV2Fsequential_68_lstm_205_while_sequential_68_lstm_205_while_loop_counter-sequential_68/lstm_205/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_68/lstm_205/while/IdentityIdentity&sequential_68/lstm_205/while/add_1:z:0"^sequential_68/lstm_205/while/NoOp*
T0*
_output_shapes
: ?
'sequential_68/lstm_205/while/Identity_1IdentityLsequential_68_lstm_205_while_sequential_68_lstm_205_while_maximum_iterations"^sequential_68/lstm_205/while/NoOp*
T0*
_output_shapes
: ?
'sequential_68/lstm_205/while/Identity_2Identity$sequential_68/lstm_205/while/add:z:0"^sequential_68/lstm_205/while/NoOp*
T0*
_output_shapes
: ?
'sequential_68/lstm_205/while/Identity_3IdentityQsequential_68/lstm_205/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_68/lstm_205/while/NoOp*
T0*
_output_shapes
: ?
'sequential_68/lstm_205/while/Identity_4Identity4sequential_68/lstm_205/while/lstm_cell_223/mul_2:z:0"^sequential_68/lstm_205/while/NoOp*
T0*'
_output_shapes
:?????????2?
'sequential_68/lstm_205/while/Identity_5Identity4sequential_68/lstm_205/while/lstm_cell_223/add_1:z:0"^sequential_68/lstm_205/while/NoOp*
T0*'
_output_shapes
:?????????2?
!sequential_68/lstm_205/while/NoOpNoOpB^sequential_68/lstm_205/while/lstm_cell_223/BiasAdd/ReadVariableOpA^sequential_68/lstm_205/while/lstm_cell_223/MatMul/ReadVariableOpC^sequential_68/lstm_205/while/lstm_cell_223/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_68_lstm_205_while_identity.sequential_68/lstm_205/while/Identity:output:0"[
'sequential_68_lstm_205_while_identity_10sequential_68/lstm_205/while/Identity_1:output:0"[
'sequential_68_lstm_205_while_identity_20sequential_68/lstm_205/while/Identity_2:output:0"[
'sequential_68_lstm_205_while_identity_30sequential_68/lstm_205/while/Identity_3:output:0"[
'sequential_68_lstm_205_while_identity_40sequential_68/lstm_205/while/Identity_4:output:0"[
'sequential_68_lstm_205_while_identity_50sequential_68/lstm_205/while/Identity_5:output:0"?
Jsequential_68_lstm_205_while_lstm_cell_223_biasadd_readvariableop_resourceLsequential_68_lstm_205_while_lstm_cell_223_biasadd_readvariableop_resource_0"?
Ksequential_68_lstm_205_while_lstm_cell_223_matmul_1_readvariableop_resourceMsequential_68_lstm_205_while_lstm_cell_223_matmul_1_readvariableop_resource_0"?
Isequential_68_lstm_205_while_lstm_cell_223_matmul_readvariableop_resourceKsequential_68_lstm_205_while_lstm_cell_223_matmul_readvariableop_resource_0"?
Csequential_68_lstm_205_while_sequential_68_lstm_205_strided_slice_1Esequential_68_lstm_205_while_sequential_68_lstm_205_strided_slice_1_0"?
sequential_68_lstm_205_while_tensorarrayv2read_tensorlistgetitem_sequential_68_lstm_205_tensorarrayunstack_tensorlistfromtensor?sequential_68_lstm_205_while_tensorarrayv2read_tensorlistgetitem_sequential_68_lstm_205_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Asequential_68/lstm_205/while/lstm_cell_223/BiasAdd/ReadVariableOpAsequential_68/lstm_205/while/lstm_cell_223/BiasAdd/ReadVariableOp2?
@sequential_68/lstm_205/while/lstm_cell_223/MatMul/ReadVariableOp@sequential_68/lstm_205/while/lstm_cell_223/MatMul/ReadVariableOp2?
Bsequential_68/lstm_205/while/lstm_cell_223/MatMul_1/ReadVariableOpBsequential_68/lstm_205/while/lstm_cell_223/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_223_layer_call_fn_1360751

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
J__inference_lstm_cell_223_layer_call_and_return_conditional_losses_1356147o
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
?
/__inference_lstm_cell_222_layer_call_fn_1360653

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
J__inference_lstm_cell_222_layer_call_and_return_conditional_losses_1355797o
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
while_cond_1357214
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1357214___redundant_placeholder05
1while_while_cond_1357214___redundant_placeholder15
1while_while_cond_1357214___redundant_placeholder25
1while_while_cond_1357214___redundant_placeholder3
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
E__inference_lstm_205_layer_call_and_return_conditional_losses_1356933

inputs?
,lstm_cell_223_matmul_readvariableop_resource:	d?A
.lstm_cell_223_matmul_1_readvariableop_resource:	2?<
-lstm_cell_223_biasadd_readvariableop_resource:	?
identity??$lstm_cell_223/BiasAdd/ReadVariableOp?#lstm_cell_223/MatMul/ReadVariableOp?%lstm_cell_223/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_223/MatMul/ReadVariableOpReadVariableOp,lstm_cell_223_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_223/MatMulMatMulstrided_slice_2:output:0+lstm_cell_223/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_223/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_223_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_223/MatMul_1MatMulzeros:output:0-lstm_cell_223/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_223/addAddV2lstm_cell_223/MatMul:product:0 lstm_cell_223/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_223/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_223_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_223/BiasAddBiasAddlstm_cell_223/add:z:0,lstm_cell_223/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_223/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_223/splitSplit&lstm_cell_223/split/split_dim:output:0lstm_cell_223/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_223/SigmoidSigmoidlstm_cell_223/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_223/Sigmoid_1Sigmoidlstm_cell_223/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_223/mulMullstm_cell_223/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_223/ReluRelulstm_cell_223/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_223/mul_1Mullstm_cell_223/Sigmoid:y:0 lstm_cell_223/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_223/add_1AddV2lstm_cell_223/mul:z:0lstm_cell_223/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_223/Sigmoid_2Sigmoidlstm_cell_223/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_223/Relu_1Relulstm_cell_223/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_223/mul_2Mullstm_cell_223/Sigmoid_2:y:0"lstm_cell_223/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_223_matmul_readvariableop_resource.lstm_cell_223_matmul_1_readvariableop_resource-lstm_cell_223_biasadd_readvariableop_resource*
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
while_body_1356849*
condR
while_cond_1356848*K
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
NoOpNoOp%^lstm_cell_223/BiasAdd/ReadVariableOp$^lstm_cell_223/MatMul/ReadVariableOp&^lstm_cell_223/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_223/BiasAdd/ReadVariableOp$lstm_cell_223/BiasAdd/ReadVariableOp2J
#lstm_cell_223/MatMul/ReadVariableOp#lstm_cell_223/MatMul/ReadVariableOp2N
%lstm_cell_223/MatMul_1/ReadVariableOp%lstm_cell_223/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?C
?

lstm_205_while_body_1358523.
*lstm_205_while_lstm_205_while_loop_counter4
0lstm_205_while_lstm_205_while_maximum_iterations
lstm_205_while_placeholder 
lstm_205_while_placeholder_1 
lstm_205_while_placeholder_2 
lstm_205_while_placeholder_3-
)lstm_205_while_lstm_205_strided_slice_1_0i
elstm_205_while_tensorarrayv2read_tensorlistgetitem_lstm_205_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_205_while_lstm_cell_223_matmul_readvariableop_resource_0:	d?R
?lstm_205_while_lstm_cell_223_matmul_1_readvariableop_resource_0:	2?M
>lstm_205_while_lstm_cell_223_biasadd_readvariableop_resource_0:	?
lstm_205_while_identity
lstm_205_while_identity_1
lstm_205_while_identity_2
lstm_205_while_identity_3
lstm_205_while_identity_4
lstm_205_while_identity_5+
'lstm_205_while_lstm_205_strided_slice_1g
clstm_205_while_tensorarrayv2read_tensorlistgetitem_lstm_205_tensorarrayunstack_tensorlistfromtensorN
;lstm_205_while_lstm_cell_223_matmul_readvariableop_resource:	d?P
=lstm_205_while_lstm_cell_223_matmul_1_readvariableop_resource:	2?K
<lstm_205_while_lstm_cell_223_biasadd_readvariableop_resource:	???3lstm_205/while/lstm_cell_223/BiasAdd/ReadVariableOp?2lstm_205/while/lstm_cell_223/MatMul/ReadVariableOp?4lstm_205/while/lstm_cell_223/MatMul_1/ReadVariableOp?
@lstm_205/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_205/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_205_while_tensorarrayv2read_tensorlistgetitem_lstm_205_tensorarrayunstack_tensorlistfromtensor_0lstm_205_while_placeholderIlstm_205/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_205/while/lstm_cell_223/MatMul/ReadVariableOpReadVariableOp=lstm_205_while_lstm_cell_223_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_205/while/lstm_cell_223/MatMulMatMul9lstm_205/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_205/while/lstm_cell_223/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_205/while/lstm_cell_223/MatMul_1/ReadVariableOpReadVariableOp?lstm_205_while_lstm_cell_223_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_205/while/lstm_cell_223/MatMul_1MatMullstm_205_while_placeholder_2<lstm_205/while/lstm_cell_223/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_205/while/lstm_cell_223/addAddV2-lstm_205/while/lstm_cell_223/MatMul:product:0/lstm_205/while/lstm_cell_223/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_205/while/lstm_cell_223/BiasAdd/ReadVariableOpReadVariableOp>lstm_205_while_lstm_cell_223_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_205/while/lstm_cell_223/BiasAddBiasAdd$lstm_205/while/lstm_cell_223/add:z:0;lstm_205/while/lstm_cell_223/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_205/while/lstm_cell_223/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_205/while/lstm_cell_223/splitSplit5lstm_205/while/lstm_cell_223/split/split_dim:output:0-lstm_205/while/lstm_cell_223/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_205/while/lstm_cell_223/SigmoidSigmoid+lstm_205/while/lstm_cell_223/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_205/while/lstm_cell_223/Sigmoid_1Sigmoid+lstm_205/while/lstm_cell_223/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_205/while/lstm_cell_223/mulMul*lstm_205/while/lstm_cell_223/Sigmoid_1:y:0lstm_205_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_205/while/lstm_cell_223/ReluRelu+lstm_205/while/lstm_cell_223/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_205/while/lstm_cell_223/mul_1Mul(lstm_205/while/lstm_cell_223/Sigmoid:y:0/lstm_205/while/lstm_cell_223/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_205/while/lstm_cell_223/add_1AddV2$lstm_205/while/lstm_cell_223/mul:z:0&lstm_205/while/lstm_cell_223/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_205/while/lstm_cell_223/Sigmoid_2Sigmoid+lstm_205/while/lstm_cell_223/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_205/while/lstm_cell_223/Relu_1Relu&lstm_205/while/lstm_cell_223/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_205/while/lstm_cell_223/mul_2Mul*lstm_205/while/lstm_cell_223/Sigmoid_2:y:01lstm_205/while/lstm_cell_223/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_205/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_205_while_placeholder_1lstm_205_while_placeholder&lstm_205/while/lstm_cell_223/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_205/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_205/while/addAddV2lstm_205_while_placeholderlstm_205/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_205/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_205/while/add_1AddV2*lstm_205_while_lstm_205_while_loop_counterlstm_205/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_205/while/IdentityIdentitylstm_205/while/add_1:z:0^lstm_205/while/NoOp*
T0*
_output_shapes
: ?
lstm_205/while/Identity_1Identity0lstm_205_while_lstm_205_while_maximum_iterations^lstm_205/while/NoOp*
T0*
_output_shapes
: t
lstm_205/while/Identity_2Identitylstm_205/while/add:z:0^lstm_205/while/NoOp*
T0*
_output_shapes
: ?
lstm_205/while/Identity_3IdentityClstm_205/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_205/while/NoOp*
T0*
_output_shapes
: ?
lstm_205/while/Identity_4Identity&lstm_205/while/lstm_cell_223/mul_2:z:0^lstm_205/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_205/while/Identity_5Identity&lstm_205/while/lstm_cell_223/add_1:z:0^lstm_205/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_205/while/NoOpNoOp4^lstm_205/while/lstm_cell_223/BiasAdd/ReadVariableOp3^lstm_205/while/lstm_cell_223/MatMul/ReadVariableOp5^lstm_205/while/lstm_cell_223/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_205_while_identity lstm_205/while/Identity:output:0"?
lstm_205_while_identity_1"lstm_205/while/Identity_1:output:0"?
lstm_205_while_identity_2"lstm_205/while/Identity_2:output:0"?
lstm_205_while_identity_3"lstm_205/while/Identity_3:output:0"?
lstm_205_while_identity_4"lstm_205/while/Identity_4:output:0"?
lstm_205_while_identity_5"lstm_205/while/Identity_5:output:0"T
'lstm_205_while_lstm_205_strided_slice_1)lstm_205_while_lstm_205_strided_slice_1_0"~
<lstm_205_while_lstm_cell_223_biasadd_readvariableop_resource>lstm_205_while_lstm_cell_223_biasadd_readvariableop_resource_0"?
=lstm_205_while_lstm_cell_223_matmul_1_readvariableop_resource?lstm_205_while_lstm_cell_223_matmul_1_readvariableop_resource_0"|
;lstm_205_while_lstm_cell_223_matmul_readvariableop_resource=lstm_205_while_lstm_cell_223_matmul_readvariableop_resource_0"?
clstm_205_while_tensorarrayv2read_tensorlistgetitem_lstm_205_tensorarrayunstack_tensorlistfromtensorelstm_205_while_tensorarrayv2read_tensorlistgetitem_lstm_205_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_205/while/lstm_cell_223/BiasAdd/ReadVariableOp3lstm_205/while/lstm_cell_223/BiasAdd/ReadVariableOp2h
2lstm_205/while/lstm_cell_223/MatMul/ReadVariableOp2lstm_205/while/lstm_cell_223/MatMul/ReadVariableOp2l
4lstm_205/while/lstm_cell_223/MatMul_1/ReadVariableOp4lstm_205/while/lstm_cell_223/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_204_input;
 serving_default_lstm_204_input:0?????????<
dense_680
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
2dense_68/kernel
:2dense_68/bias
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
0:.	?2lstm_204/lstm_cell_204/kernel
::8	d?2'lstm_204/lstm_cell_204/recurrent_kernel
*:(?2lstm_204/lstm_cell_204/bias
0:.	d?2lstm_205/lstm_cell_205/kernel
::8	2?2'lstm_205/lstm_cell_205/recurrent_kernel
*:(?2lstm_205/lstm_cell_205/bias
/:-2(2lstm_206/lstm_cell_206/kernel
9:7
(2'lstm_206/lstm_cell_206/recurrent_kernel
):'(2lstm_206/lstm_cell_206/bias
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
2Adam/dense_68/kernel/m
 :2Adam/dense_68/bias/m
5:3	?2$Adam/lstm_204/lstm_cell_204/kernel/m
?:=	d?2.Adam/lstm_204/lstm_cell_204/recurrent_kernel/m
/:-?2"Adam/lstm_204/lstm_cell_204/bias/m
5:3	d?2$Adam/lstm_205/lstm_cell_205/kernel/m
?:=	2?2.Adam/lstm_205/lstm_cell_205/recurrent_kernel/m
/:-?2"Adam/lstm_205/lstm_cell_205/bias/m
4:22(2$Adam/lstm_206/lstm_cell_206/kernel/m
>:<
(2.Adam/lstm_206/lstm_cell_206/recurrent_kernel/m
.:,(2"Adam/lstm_206/lstm_cell_206/bias/m
&:$
2Adam/dense_68/kernel/v
 :2Adam/dense_68/bias/v
5:3	?2$Adam/lstm_204/lstm_cell_204/kernel/v
?:=	d?2.Adam/lstm_204/lstm_cell_204/recurrent_kernel/v
/:-?2"Adam/lstm_204/lstm_cell_204/bias/v
5:3	d?2$Adam/lstm_205/lstm_cell_205/kernel/v
?:=	2?2.Adam/lstm_205/lstm_cell_205/recurrent_kernel/v
/:-?2"Adam/lstm_205/lstm_cell_205/bias/v
4:22(2$Adam/lstm_206/lstm_cell_206/kernel/v
>:<
(2.Adam/lstm_206/lstm_cell_206/recurrent_kernel/v
.:,(2"Adam/lstm_206/lstm_cell_206/bias/v
?2?
/__inference_sequential_68_layer_call_fn_1357133
/__inference_sequential_68_layer_call_fn_1357871
/__inference_sequential_68_layer_call_fn_1357898
/__inference_sequential_68_layer_call_fn_1357749?
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
J__inference_sequential_68_layer_call_and_return_conditional_losses_1358325
J__inference_sequential_68_layer_call_and_return_conditional_losses_1358752
J__inference_sequential_68_layer_call_and_return_conditional_losses_1357779
J__inference_sequential_68_layer_call_and_return_conditional_losses_1357809?
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
"__inference__wrapped_model_1355584lstm_204_input"?
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
*__inference_lstm_204_layer_call_fn_1358763
*__inference_lstm_204_layer_call_fn_1358774
*__inference_lstm_204_layer_call_fn_1358785
*__inference_lstm_204_layer_call_fn_1358796?
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
E__inference_lstm_204_layer_call_and_return_conditional_losses_1358939
E__inference_lstm_204_layer_call_and_return_conditional_losses_1359082
E__inference_lstm_204_layer_call_and_return_conditional_losses_1359225
E__inference_lstm_204_layer_call_and_return_conditional_losses_1359368?
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
*__inference_lstm_205_layer_call_fn_1359379
*__inference_lstm_205_layer_call_fn_1359390
*__inference_lstm_205_layer_call_fn_1359401
*__inference_lstm_205_layer_call_fn_1359412?
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
E__inference_lstm_205_layer_call_and_return_conditional_losses_1359555
E__inference_lstm_205_layer_call_and_return_conditional_losses_1359698
E__inference_lstm_205_layer_call_and_return_conditional_losses_1359841
E__inference_lstm_205_layer_call_and_return_conditional_losses_1359984?
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
*__inference_lstm_206_layer_call_fn_1359995
*__inference_lstm_206_layer_call_fn_1360006
*__inference_lstm_206_layer_call_fn_1360017
*__inference_lstm_206_layer_call_fn_1360028?
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
E__inference_lstm_206_layer_call_and_return_conditional_losses_1360171
E__inference_lstm_206_layer_call_and_return_conditional_losses_1360314
E__inference_lstm_206_layer_call_and_return_conditional_losses_1360457
E__inference_lstm_206_layer_call_and_return_conditional_losses_1360600?
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
*__inference_dense_68_layer_call_fn_1360609?
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
E__inference_dense_68_layer_call_and_return_conditional_losses_1360619?
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
%__inference_signature_wrapper_1357844lstm_204_input"?
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
/__inference_lstm_cell_222_layer_call_fn_1360636
/__inference_lstm_cell_222_layer_call_fn_1360653?
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
J__inference_lstm_cell_222_layer_call_and_return_conditional_losses_1360685
J__inference_lstm_cell_222_layer_call_and_return_conditional_losses_1360717?
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
/__inference_lstm_cell_223_layer_call_fn_1360734
/__inference_lstm_cell_223_layer_call_fn_1360751?
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
J__inference_lstm_cell_223_layer_call_and_return_conditional_losses_1360783
J__inference_lstm_cell_223_layer_call_and_return_conditional_losses_1360815?
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
/__inference_lstm_cell_224_layer_call_fn_1360832
/__inference_lstm_cell_224_layer_call_fn_1360849?
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
J__inference_lstm_cell_224_layer_call_and_return_conditional_losses_1360881
J__inference_lstm_cell_224_layer_call_and_return_conditional_losses_1360913?
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
"__inference__wrapped_model_1355584-./012345!";?8
1?.
,?)
lstm_204_input?????????
? "3?0
.
dense_68"?
dense_68??????????
E__inference_dense_68_layer_call_and_return_conditional_losses_1360619\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_68_layer_call_fn_1360609O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_204_layer_call_and_return_conditional_losses_1358939?-./O?L
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
E__inference_lstm_204_layer_call_and_return_conditional_losses_1359082?-./O?L
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
E__inference_lstm_204_layer_call_and_return_conditional_losses_1359225q-./??<
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
E__inference_lstm_204_layer_call_and_return_conditional_losses_1359368q-./??<
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
*__inference_lstm_204_layer_call_fn_1358763}-./O?L
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
*__inference_lstm_204_layer_call_fn_1358774}-./O?L
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
*__inference_lstm_204_layer_call_fn_1358785d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_204_layer_call_fn_1358796d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_205_layer_call_and_return_conditional_losses_1359555?012O?L
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
E__inference_lstm_205_layer_call_and_return_conditional_losses_1359698?012O?L
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
E__inference_lstm_205_layer_call_and_return_conditional_losses_1359841q012??<
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
E__inference_lstm_205_layer_call_and_return_conditional_losses_1359984q012??<
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
*__inference_lstm_205_layer_call_fn_1359379}012O?L
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
*__inference_lstm_205_layer_call_fn_1359390}012O?L
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
*__inference_lstm_205_layer_call_fn_1359401d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_205_layer_call_fn_1359412d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_206_layer_call_and_return_conditional_losses_1360171}345O?L
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
E__inference_lstm_206_layer_call_and_return_conditional_losses_1360314}345O?L
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
E__inference_lstm_206_layer_call_and_return_conditional_losses_1360457m345??<
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
E__inference_lstm_206_layer_call_and_return_conditional_losses_1360600m345??<
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
*__inference_lstm_206_layer_call_fn_1359995p345O?L
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
*__inference_lstm_206_layer_call_fn_1360006p345O?L
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
*__inference_lstm_206_layer_call_fn_1360017`345??<
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
*__inference_lstm_206_layer_call_fn_1360028`345??<
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
J__inference_lstm_cell_222_layer_call_and_return_conditional_losses_1360685?-./??}
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
J__inference_lstm_cell_222_layer_call_and_return_conditional_losses_1360717?-./??}
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
/__inference_lstm_cell_222_layer_call_fn_1360636?-./??}
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
/__inference_lstm_cell_222_layer_call_fn_1360653?-./??}
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
J__inference_lstm_cell_223_layer_call_and_return_conditional_losses_1360783?012??}
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
J__inference_lstm_cell_223_layer_call_and_return_conditional_losses_1360815?012??}
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
/__inference_lstm_cell_223_layer_call_fn_1360734?012??}
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
/__inference_lstm_cell_223_layer_call_fn_1360751?012??}
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
J__inference_lstm_cell_224_layer_call_and_return_conditional_losses_1360881?345??}
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
J__inference_lstm_cell_224_layer_call_and_return_conditional_losses_1360913?345??}
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
/__inference_lstm_cell_224_layer_call_fn_1360832?345??}
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
/__inference_lstm_cell_224_layer_call_fn_1360849?345??}
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
J__inference_sequential_68_layer_call_and_return_conditional_losses_1357779y-./012345!"C?@
9?6
,?)
lstm_204_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_68_layer_call_and_return_conditional_losses_1357809y-./012345!"C?@
9?6
,?)
lstm_204_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_68_layer_call_and_return_conditional_losses_1358325q-./012345!";?8
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
J__inference_sequential_68_layer_call_and_return_conditional_losses_1358752q-./012345!";?8
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
/__inference_sequential_68_layer_call_fn_1357133l-./012345!"C?@
9?6
,?)
lstm_204_input?????????
p 

 
? "???????????
/__inference_sequential_68_layer_call_fn_1357749l-./012345!"C?@
9?6
,?)
lstm_204_input?????????
p

 
? "???????????
/__inference_sequential_68_layer_call_fn_1357871d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_68_layer_call_fn_1357898d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_1357844?-./012345!"M?J
? 
C?@
>
lstm_204_input,?)
lstm_204_input?????????"3?0
.
dense_68"?
dense_68?????????