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
dense_71/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_71/kernel
s
#dense_71/kernel/Read/ReadVariableOpReadVariableOpdense_71/kernel*
_output_shapes

:
*
dtype0
r
dense_71/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_71/bias
k
!dense_71/bias/Read/ReadVariableOpReadVariableOpdense_71/bias*
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
lstm_213/lstm_cell_213/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_213/lstm_cell_213/kernel
?
1lstm_213/lstm_cell_213/kernel/Read/ReadVariableOpReadVariableOplstm_213/lstm_cell_213/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_213/lstm_cell_213/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_213/lstm_cell_213/recurrent_kernel
?
;lstm_213/lstm_cell_213/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_213/lstm_cell_213/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_213/lstm_cell_213/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_213/lstm_cell_213/bias
?
/lstm_213/lstm_cell_213/bias/Read/ReadVariableOpReadVariableOplstm_213/lstm_cell_213/bias*
_output_shapes	
:?*
dtype0
?
lstm_214/lstm_cell_214/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_214/lstm_cell_214/kernel
?
1lstm_214/lstm_cell_214/kernel/Read/ReadVariableOpReadVariableOplstm_214/lstm_cell_214/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_214/lstm_cell_214/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_214/lstm_cell_214/recurrent_kernel
?
;lstm_214/lstm_cell_214/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_214/lstm_cell_214/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_214/lstm_cell_214/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_214/lstm_cell_214/bias
?
/lstm_214/lstm_cell_214/bias/Read/ReadVariableOpReadVariableOplstm_214/lstm_cell_214/bias*
_output_shapes	
:?*
dtype0
?
lstm_215/lstm_cell_215/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_215/lstm_cell_215/kernel
?
1lstm_215/lstm_cell_215/kernel/Read/ReadVariableOpReadVariableOplstm_215/lstm_cell_215/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_215/lstm_cell_215/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_215/lstm_cell_215/recurrent_kernel
?
;lstm_215/lstm_cell_215/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_215/lstm_cell_215/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_215/lstm_cell_215/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_215/lstm_cell_215/bias
?
/lstm_215/lstm_cell_215/bias/Read/ReadVariableOpReadVariableOplstm_215/lstm_cell_215/bias*
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
Adam/dense_71/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_71/kernel/m
?
*Adam/dense_71/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_71/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_71/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_71/bias/m
y
(Adam/dense_71/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_71/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_213/lstm_cell_213/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_213/lstm_cell_213/kernel/m
?
8Adam/lstm_213/lstm_cell_213/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_213/lstm_cell_213/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_213/lstm_cell_213/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_213/lstm_cell_213/recurrent_kernel/m
?
BAdam/lstm_213/lstm_cell_213/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_213/lstm_cell_213/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_213/lstm_cell_213/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_213/lstm_cell_213/bias/m
?
6Adam/lstm_213/lstm_cell_213/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_213/lstm_cell_213/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_214/lstm_cell_214/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_214/lstm_cell_214/kernel/m
?
8Adam/lstm_214/lstm_cell_214/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_214/lstm_cell_214/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_214/lstm_cell_214/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_214/lstm_cell_214/recurrent_kernel/m
?
BAdam/lstm_214/lstm_cell_214/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_214/lstm_cell_214/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_214/lstm_cell_214/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_214/lstm_cell_214/bias/m
?
6Adam/lstm_214/lstm_cell_214/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_214/lstm_cell_214/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_215/lstm_cell_215/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_215/lstm_cell_215/kernel/m
?
8Adam/lstm_215/lstm_cell_215/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_215/lstm_cell_215/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_215/lstm_cell_215/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_215/lstm_cell_215/recurrent_kernel/m
?
BAdam/lstm_215/lstm_cell_215/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_215/lstm_cell_215/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_215/lstm_cell_215/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_215/lstm_cell_215/bias/m
?
6Adam/lstm_215/lstm_cell_215/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_215/lstm_cell_215/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_71/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_71/kernel/v
?
*Adam/dense_71/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_71/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_71/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_71/bias/v
y
(Adam/dense_71/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_71/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_213/lstm_cell_213/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_213/lstm_cell_213/kernel/v
?
8Adam/lstm_213/lstm_cell_213/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_213/lstm_cell_213/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_213/lstm_cell_213/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_213/lstm_cell_213/recurrent_kernel/v
?
BAdam/lstm_213/lstm_cell_213/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_213/lstm_cell_213/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_213/lstm_cell_213/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_213/lstm_cell_213/bias/v
?
6Adam/lstm_213/lstm_cell_213/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_213/lstm_cell_213/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_214/lstm_cell_214/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_214/lstm_cell_214/kernel/v
?
8Adam/lstm_214/lstm_cell_214/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_214/lstm_cell_214/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_214/lstm_cell_214/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_214/lstm_cell_214/recurrent_kernel/v
?
BAdam/lstm_214/lstm_cell_214/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_214/lstm_cell_214/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_214/lstm_cell_214/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_214/lstm_cell_214/bias/v
?
6Adam/lstm_214/lstm_cell_214/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_214/lstm_cell_214/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_215/lstm_cell_215/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_215/lstm_cell_215/kernel/v
?
8Adam/lstm_215/lstm_cell_215/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_215/lstm_cell_215/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_215/lstm_cell_215/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_215/lstm_cell_215/recurrent_kernel/v
?
BAdam/lstm_215/lstm_cell_215/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_215/lstm_cell_215/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_215/lstm_cell_215/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_215/lstm_cell_215/bias/v
?
6Adam/lstm_215/lstm_cell_215/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_215/lstm_cell_215/bias/v*
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
VARIABLE_VALUEdense_71/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_71/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_213/lstm_cell_213/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_213/lstm_cell_213/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_213/lstm_cell_213/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_214/lstm_cell_214/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_214/lstm_cell_214/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_214/lstm_cell_214/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_215/lstm_cell_215/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_215/lstm_cell_215/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_215/lstm_cell_215/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_71/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_71/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_213/lstm_cell_213/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_213/lstm_cell_213/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_213/lstm_cell_213/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_214/lstm_cell_214/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_214/lstm_cell_214/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_214/lstm_cell_214/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_215/lstm_cell_215/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_215/lstm_cell_215/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_215/lstm_cell_215/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_71/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_71/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_213/lstm_cell_213/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_213/lstm_cell_213/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_213/lstm_cell_213/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_214/lstm_cell_214/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_214/lstm_cell_214/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_214/lstm_cell_214/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_215/lstm_cell_215/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_215/lstm_cell_215/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_215/lstm_cell_215/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_213_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_213_inputlstm_213/lstm_cell_213/kernel'lstm_213/lstm_cell_213/recurrent_kernellstm_213/lstm_cell_213/biaslstm_214/lstm_cell_214/kernel'lstm_214/lstm_cell_214/recurrent_kernellstm_214/lstm_cell_214/biaslstm_215/lstm_cell_215/kernel'lstm_215/lstm_cell_215/recurrent_kernellstm_215/lstm_cell_215/biasdense_71/kerneldense_71/bias*
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
%__inference_signature_wrapper_1375945
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_71/kernel/Read/ReadVariableOp!dense_71/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_213/lstm_cell_213/kernel/Read/ReadVariableOp;lstm_213/lstm_cell_213/recurrent_kernel/Read/ReadVariableOp/lstm_213/lstm_cell_213/bias/Read/ReadVariableOp1lstm_214/lstm_cell_214/kernel/Read/ReadVariableOp;lstm_214/lstm_cell_214/recurrent_kernel/Read/ReadVariableOp/lstm_214/lstm_cell_214/bias/Read/ReadVariableOp1lstm_215/lstm_cell_215/kernel/Read/ReadVariableOp;lstm_215/lstm_cell_215/recurrent_kernel/Read/ReadVariableOp/lstm_215/lstm_cell_215/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_71/kernel/m/Read/ReadVariableOp(Adam/dense_71/bias/m/Read/ReadVariableOp8Adam/lstm_213/lstm_cell_213/kernel/m/Read/ReadVariableOpBAdam/lstm_213/lstm_cell_213/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_213/lstm_cell_213/bias/m/Read/ReadVariableOp8Adam/lstm_214/lstm_cell_214/kernel/m/Read/ReadVariableOpBAdam/lstm_214/lstm_cell_214/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_214/lstm_cell_214/bias/m/Read/ReadVariableOp8Adam/lstm_215/lstm_cell_215/kernel/m/Read/ReadVariableOpBAdam/lstm_215/lstm_cell_215/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_215/lstm_cell_215/bias/m/Read/ReadVariableOp*Adam/dense_71/kernel/v/Read/ReadVariableOp(Adam/dense_71/bias/v/Read/ReadVariableOp8Adam/lstm_213/lstm_cell_213/kernel/v/Read/ReadVariableOpBAdam/lstm_213/lstm_cell_213/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_213/lstm_cell_213/bias/v/Read/ReadVariableOp8Adam/lstm_214/lstm_cell_214/kernel/v/Read/ReadVariableOpBAdam/lstm_214/lstm_cell_214/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_214/lstm_cell_214/bias/v/Read/ReadVariableOp8Adam/lstm_215/lstm_cell_215/kernel/v/Read/ReadVariableOpBAdam/lstm_215/lstm_cell_215/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_215/lstm_cell_215/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_1379157
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_71/kerneldense_71/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_213/lstm_cell_213/kernel'lstm_213/lstm_cell_213/recurrent_kernellstm_213/lstm_cell_213/biaslstm_214/lstm_cell_214/kernel'lstm_214/lstm_cell_214/recurrent_kernellstm_214/lstm_cell_214/biaslstm_215/lstm_cell_215/kernel'lstm_215/lstm_cell_215/recurrent_kernellstm_215/lstm_cell_215/biastotalcountAdam/dense_71/kernel/mAdam/dense_71/bias/m$Adam/lstm_213/lstm_cell_213/kernel/m.Adam/lstm_213/lstm_cell_213/recurrent_kernel/m"Adam/lstm_213/lstm_cell_213/bias/m$Adam/lstm_214/lstm_cell_214/kernel/m.Adam/lstm_214/lstm_cell_214/recurrent_kernel/m"Adam/lstm_214/lstm_cell_214/bias/m$Adam/lstm_215/lstm_cell_215/kernel/m.Adam/lstm_215/lstm_cell_215/recurrent_kernel/m"Adam/lstm_215/lstm_cell_215/bias/mAdam/dense_71/kernel/vAdam/dense_71/bias/v$Adam/lstm_213/lstm_cell_213/kernel/v.Adam/lstm_213/lstm_cell_213/recurrent_kernel/v"Adam/lstm_213/lstm_cell_213/bias/v$Adam/lstm_214/lstm_cell_214/kernel/v.Adam/lstm_214/lstm_cell_214/recurrent_kernel/v"Adam/lstm_214/lstm_cell_214/bias/v$Adam/lstm_215/lstm_cell_215/kernel/v.Adam/lstm_215/lstm_cell_215/recurrent_kernel/v"Adam/lstm_215/lstm_cell_215/bias/v*4
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
#__inference__traced_restore_1379287??+
?J
?
E__inference_lstm_214_layer_call_and_return_conditional_losses_1375565

inputs?
,lstm_cell_226_matmul_readvariableop_resource:	d?A
.lstm_cell_226_matmul_1_readvariableop_resource:	2?<
-lstm_cell_226_biasadd_readvariableop_resource:	?
identity??$lstm_cell_226/BiasAdd/ReadVariableOp?#lstm_cell_226/MatMul/ReadVariableOp?%lstm_cell_226/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_226/MatMul/ReadVariableOpReadVariableOp,lstm_cell_226_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_226/MatMulMatMulstrided_slice_2:output:0+lstm_cell_226/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_226/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_226_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_226/MatMul_1MatMulzeros:output:0-lstm_cell_226/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_226/addAddV2lstm_cell_226/MatMul:product:0 lstm_cell_226/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_226/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_226_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_226/BiasAddBiasAddlstm_cell_226/add:z:0,lstm_cell_226/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_226/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_226/splitSplit&lstm_cell_226/split/split_dim:output:0lstm_cell_226/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_226/SigmoidSigmoidlstm_cell_226/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_226/Sigmoid_1Sigmoidlstm_cell_226/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_226/mulMullstm_cell_226/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_226/ReluRelulstm_cell_226/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_226/mul_1Mullstm_cell_226/Sigmoid:y:0 lstm_cell_226/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_226/add_1AddV2lstm_cell_226/mul:z:0lstm_cell_226/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_226/Sigmoid_2Sigmoidlstm_cell_226/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_226/Relu_1Relulstm_cell_226/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_226/mul_2Mullstm_cell_226/Sigmoid_2:y:0"lstm_cell_226/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_226_matmul_readvariableop_resource.lstm_cell_226_matmul_1_readvariableop_resource-lstm_cell_226_biasadd_readvariableop_resource*
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
while_body_1375481*
condR
while_cond_1375480*K
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
NoOpNoOp%^lstm_cell_226/BiasAdd/ReadVariableOp$^lstm_cell_226/MatMul/ReadVariableOp&^lstm_cell_226/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_226/BiasAdd/ReadVariableOp$lstm_cell_226/BiasAdd/ReadVariableOp2J
#lstm_cell_226/MatMul/ReadVariableOp#lstm_cell_226/MatMul/ReadVariableOp2N
%lstm_cell_226/MatMul_1/ReadVariableOp%lstm_cell_226/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
E__inference_lstm_215_layer_call_and_return_conditional_losses_1374726

inputs'
lstm_cell_227_1374644:2('
lstm_cell_227_1374646:
(#
lstm_cell_227_1374648:(
identity??%lstm_cell_227/StatefulPartitionedCall?while;
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
%lstm_cell_227/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_227_1374644lstm_cell_227_1374646lstm_cell_227_1374648*
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
J__inference_lstm_cell_227_layer_call_and_return_conditional_losses_1374598n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_227_1374644lstm_cell_227_1374646lstm_cell_227_1374648*
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
while_body_1374657*
condR
while_cond_1374656*K
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
NoOpNoOp&^lstm_cell_227/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_227/StatefulPartitionedCall%lstm_cell_227/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_1377098
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1377098___redundant_placeholder05
1while_while_cond_1377098___redundant_placeholder15
1while_while_cond_1377098___redundant_placeholder25
1while_while_cond_1377098___redundant_placeholder3
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
while_cond_1374115
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1374115___redundant_placeholder05
1while_while_cond_1374115___redundant_placeholder15
1while_while_cond_1374115___redundant_placeholder25
1while_while_cond_1374115___redundant_placeholder3
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
while_body_1375481
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_226_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_226_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_226_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_226_matmul_readvariableop_resource:	d?G
4while_lstm_cell_226_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_226_biasadd_readvariableop_resource:	???*while/lstm_cell_226/BiasAdd/ReadVariableOp?)while/lstm_cell_226/MatMul/ReadVariableOp?+while/lstm_cell_226/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_226/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_226_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_226/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_226/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_226/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_226_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_226/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_226/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_226/addAddV2$while/lstm_cell_226/MatMul:product:0&while/lstm_cell_226/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_226/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_226_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_226/BiasAddBiasAddwhile/lstm_cell_226/add:z:02while/lstm_cell_226/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_226/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_226/splitSplit,while/lstm_cell_226/split/split_dim:output:0$while/lstm_cell_226/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_226/SigmoidSigmoid"while/lstm_cell_226/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_226/Sigmoid_1Sigmoid"while/lstm_cell_226/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_226/mulMul!while/lstm_cell_226/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_226/ReluRelu"while/lstm_cell_226/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_226/mul_1Mulwhile/lstm_cell_226/Sigmoid:y:0&while/lstm_cell_226/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_226/add_1AddV2while/lstm_cell_226/mul:z:0while/lstm_cell_226/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_226/Sigmoid_2Sigmoid"while/lstm_cell_226/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_226/Relu_1Reluwhile/lstm_cell_226/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_226/mul_2Mul!while/lstm_cell_226/Sigmoid_2:y:0(while/lstm_cell_226/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_226/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_226/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_226/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_226/BiasAdd/ReadVariableOp*^while/lstm_cell_226/MatMul/ReadVariableOp,^while/lstm_cell_226/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_226_biasadd_readvariableop_resource5while_lstm_cell_226_biasadd_readvariableop_resource_0"n
4while_lstm_cell_226_matmul_1_readvariableop_resource6while_lstm_cell_226_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_226_matmul_readvariableop_resource4while_lstm_cell_226_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_226/BiasAdd/ReadVariableOp*while/lstm_cell_226/BiasAdd/ReadVariableOp2V
)while/lstm_cell_226/MatMul/ReadVariableOp)while/lstm_cell_226/MatMul/ReadVariableOp2Z
+while/lstm_cell_226/MatMul_1/ReadVariableOp+while/lstm_cell_226/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_213_layer_call_and_return_conditional_losses_1373835

inputs(
lstm_cell_225_1373753:	?(
lstm_cell_225_1373755:	d?$
lstm_cell_225_1373757:	?
identity??%lstm_cell_225/StatefulPartitionedCall?while;
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
%lstm_cell_225/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_225_1373753lstm_cell_225_1373755lstm_cell_225_1373757*
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
J__inference_lstm_cell_225_layer_call_and_return_conditional_losses_1373752n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_225_1373753lstm_cell_225_1373755lstm_cell_225_1373757*
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
while_body_1373766*
condR
while_cond_1373765*K
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
NoOpNoOp&^lstm_cell_225/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_225/StatefulPartitionedCall%lstm_cell_225/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?#
?
while_body_1374307
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_226_1374331_0:	d?0
while_lstm_cell_226_1374333_0:	2?,
while_lstm_cell_226_1374335_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_226_1374331:	d?.
while_lstm_cell_226_1374333:	2?*
while_lstm_cell_226_1374335:	???+while/lstm_cell_226/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_226/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_226_1374331_0while_lstm_cell_226_1374333_0while_lstm_cell_226_1374335_0*
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
J__inference_lstm_cell_226_layer_call_and_return_conditional_losses_1374248?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_226/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_226/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_226/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_226/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_226_1374331while_lstm_cell_226_1374331_0"<
while_lstm_cell_226_1374333while_lstm_cell_226_1374333_0"<
while_lstm_cell_226_1374335while_lstm_cell_226_1374335_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_226/StatefulPartitionedCall+while/lstm_cell_226/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_226_layer_call_and_return_conditional_losses_1378916

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
?
/__inference_lstm_cell_226_layer_call_fn_1378852

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
J__inference_lstm_cell_226_layer_call_and_return_conditional_losses_1374248o
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
)sequential_71_lstm_214_while_body_1373456J
Fsequential_71_lstm_214_while_sequential_71_lstm_214_while_loop_counterP
Lsequential_71_lstm_214_while_sequential_71_lstm_214_while_maximum_iterations,
(sequential_71_lstm_214_while_placeholder.
*sequential_71_lstm_214_while_placeholder_1.
*sequential_71_lstm_214_while_placeholder_2.
*sequential_71_lstm_214_while_placeholder_3I
Esequential_71_lstm_214_while_sequential_71_lstm_214_strided_slice_1_0?
?sequential_71_lstm_214_while_tensorarrayv2read_tensorlistgetitem_sequential_71_lstm_214_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_71_lstm_214_while_lstm_cell_226_matmul_readvariableop_resource_0:	d?`
Msequential_71_lstm_214_while_lstm_cell_226_matmul_1_readvariableop_resource_0:	2?[
Lsequential_71_lstm_214_while_lstm_cell_226_biasadd_readvariableop_resource_0:	?)
%sequential_71_lstm_214_while_identity+
'sequential_71_lstm_214_while_identity_1+
'sequential_71_lstm_214_while_identity_2+
'sequential_71_lstm_214_while_identity_3+
'sequential_71_lstm_214_while_identity_4+
'sequential_71_lstm_214_while_identity_5G
Csequential_71_lstm_214_while_sequential_71_lstm_214_strided_slice_1?
sequential_71_lstm_214_while_tensorarrayv2read_tensorlistgetitem_sequential_71_lstm_214_tensorarrayunstack_tensorlistfromtensor\
Isequential_71_lstm_214_while_lstm_cell_226_matmul_readvariableop_resource:	d?^
Ksequential_71_lstm_214_while_lstm_cell_226_matmul_1_readvariableop_resource:	2?Y
Jsequential_71_lstm_214_while_lstm_cell_226_biasadd_readvariableop_resource:	???Asequential_71/lstm_214/while/lstm_cell_226/BiasAdd/ReadVariableOp?@sequential_71/lstm_214/while/lstm_cell_226/MatMul/ReadVariableOp?Bsequential_71/lstm_214/while/lstm_cell_226/MatMul_1/ReadVariableOp?
Nsequential_71/lstm_214/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
@sequential_71/lstm_214/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_71_lstm_214_while_tensorarrayv2read_tensorlistgetitem_sequential_71_lstm_214_tensorarrayunstack_tensorlistfromtensor_0(sequential_71_lstm_214_while_placeholderWsequential_71/lstm_214/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
@sequential_71/lstm_214/while/lstm_cell_226/MatMul/ReadVariableOpReadVariableOpKsequential_71_lstm_214_while_lstm_cell_226_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
1sequential_71/lstm_214/while/lstm_cell_226/MatMulMatMulGsequential_71/lstm_214/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_71/lstm_214/while/lstm_cell_226/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_71/lstm_214/while/lstm_cell_226/MatMul_1/ReadVariableOpReadVariableOpMsequential_71_lstm_214_while_lstm_cell_226_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
3sequential_71/lstm_214/while/lstm_cell_226/MatMul_1MatMul*sequential_71_lstm_214_while_placeholder_2Jsequential_71/lstm_214/while/lstm_cell_226/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_71/lstm_214/while/lstm_cell_226/addAddV2;sequential_71/lstm_214/while/lstm_cell_226/MatMul:product:0=sequential_71/lstm_214/while/lstm_cell_226/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_71/lstm_214/while/lstm_cell_226/BiasAdd/ReadVariableOpReadVariableOpLsequential_71_lstm_214_while_lstm_cell_226_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_71/lstm_214/while/lstm_cell_226/BiasAddBiasAdd2sequential_71/lstm_214/while/lstm_cell_226/add:z:0Isequential_71/lstm_214/while/lstm_cell_226/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_71/lstm_214/while/lstm_cell_226/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_71/lstm_214/while/lstm_cell_226/splitSplitCsequential_71/lstm_214/while/lstm_cell_226/split/split_dim:output:0;sequential_71/lstm_214/while/lstm_cell_226/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
2sequential_71/lstm_214/while/lstm_cell_226/SigmoidSigmoid9sequential_71/lstm_214/while/lstm_cell_226/split:output:0*
T0*'
_output_shapes
:?????????2?
4sequential_71/lstm_214/while/lstm_cell_226/Sigmoid_1Sigmoid9sequential_71/lstm_214/while/lstm_cell_226/split:output:1*
T0*'
_output_shapes
:?????????2?
.sequential_71/lstm_214/while/lstm_cell_226/mulMul8sequential_71/lstm_214/while/lstm_cell_226/Sigmoid_1:y:0*sequential_71_lstm_214_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
/sequential_71/lstm_214/while/lstm_cell_226/ReluRelu9sequential_71/lstm_214/while/lstm_cell_226/split:output:2*
T0*'
_output_shapes
:?????????2?
0sequential_71/lstm_214/while/lstm_cell_226/mul_1Mul6sequential_71/lstm_214/while/lstm_cell_226/Sigmoid:y:0=sequential_71/lstm_214/while/lstm_cell_226/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
0sequential_71/lstm_214/while/lstm_cell_226/add_1AddV22sequential_71/lstm_214/while/lstm_cell_226/mul:z:04sequential_71/lstm_214/while/lstm_cell_226/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
4sequential_71/lstm_214/while/lstm_cell_226/Sigmoid_2Sigmoid9sequential_71/lstm_214/while/lstm_cell_226/split:output:3*
T0*'
_output_shapes
:?????????2?
1sequential_71/lstm_214/while/lstm_cell_226/Relu_1Relu4sequential_71/lstm_214/while/lstm_cell_226/add_1:z:0*
T0*'
_output_shapes
:?????????2?
0sequential_71/lstm_214/while/lstm_cell_226/mul_2Mul8sequential_71/lstm_214/while/lstm_cell_226/Sigmoid_2:y:0?sequential_71/lstm_214/while/lstm_cell_226/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Asequential_71/lstm_214/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_71_lstm_214_while_placeholder_1(sequential_71_lstm_214_while_placeholder4sequential_71/lstm_214/while/lstm_cell_226/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_71/lstm_214/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_71/lstm_214/while/addAddV2(sequential_71_lstm_214_while_placeholder+sequential_71/lstm_214/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_71/lstm_214/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_71/lstm_214/while/add_1AddV2Fsequential_71_lstm_214_while_sequential_71_lstm_214_while_loop_counter-sequential_71/lstm_214/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_71/lstm_214/while/IdentityIdentity&sequential_71/lstm_214/while/add_1:z:0"^sequential_71/lstm_214/while/NoOp*
T0*
_output_shapes
: ?
'sequential_71/lstm_214/while/Identity_1IdentityLsequential_71_lstm_214_while_sequential_71_lstm_214_while_maximum_iterations"^sequential_71/lstm_214/while/NoOp*
T0*
_output_shapes
: ?
'sequential_71/lstm_214/while/Identity_2Identity$sequential_71/lstm_214/while/add:z:0"^sequential_71/lstm_214/while/NoOp*
T0*
_output_shapes
: ?
'sequential_71/lstm_214/while/Identity_3IdentityQsequential_71/lstm_214/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_71/lstm_214/while/NoOp*
T0*
_output_shapes
: ?
'sequential_71/lstm_214/while/Identity_4Identity4sequential_71/lstm_214/while/lstm_cell_226/mul_2:z:0"^sequential_71/lstm_214/while/NoOp*
T0*'
_output_shapes
:?????????2?
'sequential_71/lstm_214/while/Identity_5Identity4sequential_71/lstm_214/while/lstm_cell_226/add_1:z:0"^sequential_71/lstm_214/while/NoOp*
T0*'
_output_shapes
:?????????2?
!sequential_71/lstm_214/while/NoOpNoOpB^sequential_71/lstm_214/while/lstm_cell_226/BiasAdd/ReadVariableOpA^sequential_71/lstm_214/while/lstm_cell_226/MatMul/ReadVariableOpC^sequential_71/lstm_214/while/lstm_cell_226/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_71_lstm_214_while_identity.sequential_71/lstm_214/while/Identity:output:0"[
'sequential_71_lstm_214_while_identity_10sequential_71/lstm_214/while/Identity_1:output:0"[
'sequential_71_lstm_214_while_identity_20sequential_71/lstm_214/while/Identity_2:output:0"[
'sequential_71_lstm_214_while_identity_30sequential_71/lstm_214/while/Identity_3:output:0"[
'sequential_71_lstm_214_while_identity_40sequential_71/lstm_214/while/Identity_4:output:0"[
'sequential_71_lstm_214_while_identity_50sequential_71/lstm_214/while/Identity_5:output:0"?
Jsequential_71_lstm_214_while_lstm_cell_226_biasadd_readvariableop_resourceLsequential_71_lstm_214_while_lstm_cell_226_biasadd_readvariableop_resource_0"?
Ksequential_71_lstm_214_while_lstm_cell_226_matmul_1_readvariableop_resourceMsequential_71_lstm_214_while_lstm_cell_226_matmul_1_readvariableop_resource_0"?
Isequential_71_lstm_214_while_lstm_cell_226_matmul_readvariableop_resourceKsequential_71_lstm_214_while_lstm_cell_226_matmul_readvariableop_resource_0"?
Csequential_71_lstm_214_while_sequential_71_lstm_214_strided_slice_1Esequential_71_lstm_214_while_sequential_71_lstm_214_strided_slice_1_0"?
sequential_71_lstm_214_while_tensorarrayv2read_tensorlistgetitem_sequential_71_lstm_214_tensorarrayunstack_tensorlistfromtensor?sequential_71_lstm_214_while_tensorarrayv2read_tensorlistgetitem_sequential_71_lstm_214_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Asequential_71/lstm_214/while/lstm_cell_226/BiasAdd/ReadVariableOpAsequential_71/lstm_214/while/lstm_cell_226/BiasAdd/ReadVariableOp2?
@sequential_71/lstm_214/while/lstm_cell_226/MatMul/ReadVariableOp@sequential_71/lstm_214/while/lstm_cell_226/MatMul/ReadVariableOp2?
Bsequential_71/lstm_214/while/lstm_cell_226/MatMul_1/ReadVariableOpBsequential_71/lstm_214/while/lstm_cell_226/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_215_while_body_1376336.
*lstm_215_while_lstm_215_while_loop_counter4
0lstm_215_while_lstm_215_while_maximum_iterations
lstm_215_while_placeholder 
lstm_215_while_placeholder_1 
lstm_215_while_placeholder_2 
lstm_215_while_placeholder_3-
)lstm_215_while_lstm_215_strided_slice_1_0i
elstm_215_while_tensorarrayv2read_tensorlistgetitem_lstm_215_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_215_while_lstm_cell_227_matmul_readvariableop_resource_0:2(Q
?lstm_215_while_lstm_cell_227_matmul_1_readvariableop_resource_0:
(L
>lstm_215_while_lstm_cell_227_biasadd_readvariableop_resource_0:(
lstm_215_while_identity
lstm_215_while_identity_1
lstm_215_while_identity_2
lstm_215_while_identity_3
lstm_215_while_identity_4
lstm_215_while_identity_5+
'lstm_215_while_lstm_215_strided_slice_1g
clstm_215_while_tensorarrayv2read_tensorlistgetitem_lstm_215_tensorarrayunstack_tensorlistfromtensorM
;lstm_215_while_lstm_cell_227_matmul_readvariableop_resource:2(O
=lstm_215_while_lstm_cell_227_matmul_1_readvariableop_resource:
(J
<lstm_215_while_lstm_cell_227_biasadd_readvariableop_resource:(??3lstm_215/while/lstm_cell_227/BiasAdd/ReadVariableOp?2lstm_215/while/lstm_cell_227/MatMul/ReadVariableOp?4lstm_215/while/lstm_cell_227/MatMul_1/ReadVariableOp?
@lstm_215/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_215/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_215_while_tensorarrayv2read_tensorlistgetitem_lstm_215_tensorarrayunstack_tensorlistfromtensor_0lstm_215_while_placeholderIlstm_215/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_215/while/lstm_cell_227/MatMul/ReadVariableOpReadVariableOp=lstm_215_while_lstm_cell_227_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_215/while/lstm_cell_227/MatMulMatMul9lstm_215/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_215/while/lstm_cell_227/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_215/while/lstm_cell_227/MatMul_1/ReadVariableOpReadVariableOp?lstm_215_while_lstm_cell_227_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_215/while/lstm_cell_227/MatMul_1MatMullstm_215_while_placeholder_2<lstm_215/while/lstm_cell_227/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_215/while/lstm_cell_227/addAddV2-lstm_215/while/lstm_cell_227/MatMul:product:0/lstm_215/while/lstm_cell_227/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_215/while/lstm_cell_227/BiasAdd/ReadVariableOpReadVariableOp>lstm_215_while_lstm_cell_227_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_215/while/lstm_cell_227/BiasAddBiasAdd$lstm_215/while/lstm_cell_227/add:z:0;lstm_215/while/lstm_cell_227/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_215/while/lstm_cell_227/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_215/while/lstm_cell_227/splitSplit5lstm_215/while/lstm_cell_227/split/split_dim:output:0-lstm_215/while/lstm_cell_227/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_215/while/lstm_cell_227/SigmoidSigmoid+lstm_215/while/lstm_cell_227/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_215/while/lstm_cell_227/Sigmoid_1Sigmoid+lstm_215/while/lstm_cell_227/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_215/while/lstm_cell_227/mulMul*lstm_215/while/lstm_cell_227/Sigmoid_1:y:0lstm_215_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_215/while/lstm_cell_227/ReluRelu+lstm_215/while/lstm_cell_227/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_215/while/lstm_cell_227/mul_1Mul(lstm_215/while/lstm_cell_227/Sigmoid:y:0/lstm_215/while/lstm_cell_227/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_215/while/lstm_cell_227/add_1AddV2$lstm_215/while/lstm_cell_227/mul:z:0&lstm_215/while/lstm_cell_227/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_215/while/lstm_cell_227/Sigmoid_2Sigmoid+lstm_215/while/lstm_cell_227/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_215/while/lstm_cell_227/Relu_1Relu&lstm_215/while/lstm_cell_227/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_215/while/lstm_cell_227/mul_2Mul*lstm_215/while/lstm_cell_227/Sigmoid_2:y:01lstm_215/while/lstm_cell_227/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_215/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_215_while_placeholder_1lstm_215_while_placeholder&lstm_215/while/lstm_cell_227/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_215/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_215/while/addAddV2lstm_215_while_placeholderlstm_215/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_215/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_215/while/add_1AddV2*lstm_215_while_lstm_215_while_loop_counterlstm_215/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_215/while/IdentityIdentitylstm_215/while/add_1:z:0^lstm_215/while/NoOp*
T0*
_output_shapes
: ?
lstm_215/while/Identity_1Identity0lstm_215_while_lstm_215_while_maximum_iterations^lstm_215/while/NoOp*
T0*
_output_shapes
: t
lstm_215/while/Identity_2Identitylstm_215/while/add:z:0^lstm_215/while/NoOp*
T0*
_output_shapes
: ?
lstm_215/while/Identity_3IdentityClstm_215/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_215/while/NoOp*
T0*
_output_shapes
: ?
lstm_215/while/Identity_4Identity&lstm_215/while/lstm_cell_227/mul_2:z:0^lstm_215/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_215/while/Identity_5Identity&lstm_215/while/lstm_cell_227/add_1:z:0^lstm_215/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_215/while/NoOpNoOp4^lstm_215/while/lstm_cell_227/BiasAdd/ReadVariableOp3^lstm_215/while/lstm_cell_227/MatMul/ReadVariableOp5^lstm_215/while/lstm_cell_227/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_215_while_identity lstm_215/while/Identity:output:0"?
lstm_215_while_identity_1"lstm_215/while/Identity_1:output:0"?
lstm_215_while_identity_2"lstm_215/while/Identity_2:output:0"?
lstm_215_while_identity_3"lstm_215/while/Identity_3:output:0"?
lstm_215_while_identity_4"lstm_215/while/Identity_4:output:0"?
lstm_215_while_identity_5"lstm_215/while/Identity_5:output:0"T
'lstm_215_while_lstm_215_strided_slice_1)lstm_215_while_lstm_215_strided_slice_1_0"~
<lstm_215_while_lstm_cell_227_biasadd_readvariableop_resource>lstm_215_while_lstm_cell_227_biasadd_readvariableop_resource_0"?
=lstm_215_while_lstm_cell_227_matmul_1_readvariableop_resource?lstm_215_while_lstm_cell_227_matmul_1_readvariableop_resource_0"|
;lstm_215_while_lstm_cell_227_matmul_readvariableop_resource=lstm_215_while_lstm_cell_227_matmul_readvariableop_resource_0"?
clstm_215_while_tensorarrayv2read_tensorlistgetitem_lstm_215_tensorarrayunstack_tensorlistfromtensorelstm_215_while_tensorarrayv2read_tensorlistgetitem_lstm_215_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_215/while/lstm_cell_227/BiasAdd/ReadVariableOp3lstm_215/while/lstm_cell_227/BiasAdd/ReadVariableOp2h
2lstm_215/while/lstm_cell_227/MatMul/ReadVariableOp2lstm_215/while/lstm_cell_227/MatMul/ReadVariableOp2l
4lstm_215/while/lstm_cell_227/MatMul_1/ReadVariableOp4lstm_215/while/lstm_cell_227/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
%__inference_signature_wrapper_1375945
lstm_213_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_213_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_1373685o
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
_user_specified_namelstm_213_input
?
?
while_cond_1378473
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1378473___redundant_placeholder05
1while_while_cond_1378473___redundant_placeholder15
1while_while_cond_1378473___redundant_placeholder25
1while_while_cond_1378473___redundant_placeholder3
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
*__inference_lstm_214_layer_call_fn_1377491
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
E__inference_lstm_214_layer_call_and_return_conditional_losses_1374376|
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
while_body_1377858
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_226_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_226_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_226_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_226_matmul_readvariableop_resource:	d?G
4while_lstm_cell_226_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_226_biasadd_readvariableop_resource:	???*while/lstm_cell_226/BiasAdd/ReadVariableOp?)while/lstm_cell_226/MatMul/ReadVariableOp?+while/lstm_cell_226/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_226/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_226_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_226/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_226/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_226/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_226_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_226/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_226/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_226/addAddV2$while/lstm_cell_226/MatMul:product:0&while/lstm_cell_226/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_226/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_226_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_226/BiasAddBiasAddwhile/lstm_cell_226/add:z:02while/lstm_cell_226/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_226/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_226/splitSplit,while/lstm_cell_226/split/split_dim:output:0$while/lstm_cell_226/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_226/SigmoidSigmoid"while/lstm_cell_226/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_226/Sigmoid_1Sigmoid"while/lstm_cell_226/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_226/mulMul!while/lstm_cell_226/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_226/ReluRelu"while/lstm_cell_226/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_226/mul_1Mulwhile/lstm_cell_226/Sigmoid:y:0&while/lstm_cell_226/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_226/add_1AddV2while/lstm_cell_226/mul:z:0while/lstm_cell_226/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_226/Sigmoid_2Sigmoid"while/lstm_cell_226/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_226/Relu_1Reluwhile/lstm_cell_226/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_226/mul_2Mul!while/lstm_cell_226/Sigmoid_2:y:0(while/lstm_cell_226/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_226/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_226/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_226/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_226/BiasAdd/ReadVariableOp*^while/lstm_cell_226/MatMul/ReadVariableOp,^while/lstm_cell_226/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_226_biasadd_readvariableop_resource5while_lstm_cell_226_biasadd_readvariableop_resource_0"n
4while_lstm_cell_226_matmul_1_readvariableop_resource6while_lstm_cell_226_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_226_matmul_readvariableop_resource4while_lstm_cell_226_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_226/BiasAdd/ReadVariableOp*while/lstm_cell_226/BiasAdd/ReadVariableOp2V
)while/lstm_cell_226/MatMul/ReadVariableOp)while/lstm_cell_226/MatMul/ReadVariableOp2Z
+while/lstm_cell_226/MatMul_1/ReadVariableOp+while/lstm_cell_226/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)sequential_71_lstm_215_while_cond_1373594J
Fsequential_71_lstm_215_while_sequential_71_lstm_215_while_loop_counterP
Lsequential_71_lstm_215_while_sequential_71_lstm_215_while_maximum_iterations,
(sequential_71_lstm_215_while_placeholder.
*sequential_71_lstm_215_while_placeholder_1.
*sequential_71_lstm_215_while_placeholder_2.
*sequential_71_lstm_215_while_placeholder_3L
Hsequential_71_lstm_215_while_less_sequential_71_lstm_215_strided_slice_1c
_sequential_71_lstm_215_while_sequential_71_lstm_215_while_cond_1373594___redundant_placeholder0c
_sequential_71_lstm_215_while_sequential_71_lstm_215_while_cond_1373594___redundant_placeholder1c
_sequential_71_lstm_215_while_sequential_71_lstm_215_while_cond_1373594___redundant_placeholder2c
_sequential_71_lstm_215_while_sequential_71_lstm_215_while_cond_1373594___redundant_placeholder3)
%sequential_71_lstm_215_while_identity
?
!sequential_71/lstm_215/while/LessLess(sequential_71_lstm_215_while_placeholderHsequential_71_lstm_215_while_less_sequential_71_lstm_215_strided_slice_1*
T0*
_output_shapes
: y
%sequential_71/lstm_215/while/IdentityIdentity%sequential_71/lstm_215/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_71_lstm_215_while_identity.sequential_71/lstm_215/while/Identity:output:0*(
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
while_body_1378001
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_226_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_226_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_226_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_226_matmul_readvariableop_resource:	d?G
4while_lstm_cell_226_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_226_biasadd_readvariableop_resource:	???*while/lstm_cell_226/BiasAdd/ReadVariableOp?)while/lstm_cell_226/MatMul/ReadVariableOp?+while/lstm_cell_226/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_226/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_226_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_226/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_226/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_226/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_226_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_226/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_226/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_226/addAddV2$while/lstm_cell_226/MatMul:product:0&while/lstm_cell_226/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_226/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_226_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_226/BiasAddBiasAddwhile/lstm_cell_226/add:z:02while/lstm_cell_226/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_226/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_226/splitSplit,while/lstm_cell_226/split/split_dim:output:0$while/lstm_cell_226/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_226/SigmoidSigmoid"while/lstm_cell_226/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_226/Sigmoid_1Sigmoid"while/lstm_cell_226/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_226/mulMul!while/lstm_cell_226/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_226/ReluRelu"while/lstm_cell_226/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_226/mul_1Mulwhile/lstm_cell_226/Sigmoid:y:0&while/lstm_cell_226/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_226/add_1AddV2while/lstm_cell_226/mul:z:0while/lstm_cell_226/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_226/Sigmoid_2Sigmoid"while/lstm_cell_226/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_226/Relu_1Reluwhile/lstm_cell_226/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_226/mul_2Mul!while/lstm_cell_226/Sigmoid_2:y:0(while/lstm_cell_226/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_226/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_226/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_226/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_226/BiasAdd/ReadVariableOp*^while/lstm_cell_226/MatMul/ReadVariableOp,^while/lstm_cell_226/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_226_biasadd_readvariableop_resource5while_lstm_cell_226_biasadd_readvariableop_resource_0"n
4while_lstm_cell_226_matmul_1_readvariableop_resource6while_lstm_cell_226_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_226_matmul_readvariableop_resource4while_lstm_cell_226_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_226/BiasAdd/ReadVariableOp*while/lstm_cell_226/BiasAdd/ReadVariableOp2V
)while/lstm_cell_226/MatMul/ReadVariableOp)while/lstm_cell_226/MatMul/ReadVariableOp2Z
+while/lstm_cell_226/MatMul_1/ReadVariableOp+while/lstm_cell_226/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_sequential_71_layer_call_fn_1375234
lstm_213_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_213_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_71_layer_call_and_return_conditional_losses_1375209o
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
_user_specified_namelstm_213_input
?

?
lstm_214_while_cond_1376196.
*lstm_214_while_lstm_214_while_loop_counter4
0lstm_214_while_lstm_214_while_maximum_iterations
lstm_214_while_placeholder 
lstm_214_while_placeholder_1 
lstm_214_while_placeholder_2 
lstm_214_while_placeholder_30
,lstm_214_while_less_lstm_214_strided_slice_1G
Clstm_214_while_lstm_214_while_cond_1376196___redundant_placeholder0G
Clstm_214_while_lstm_214_while_cond_1376196___redundant_placeholder1G
Clstm_214_while_lstm_214_while_cond_1376196___redundant_placeholder2G
Clstm_214_while_lstm_214_while_cond_1376196___redundant_placeholder3
lstm_214_while_identity
?
lstm_214/while/LessLesslstm_214_while_placeholder,lstm_214_while_less_lstm_214_strided_slice_1*
T0*
_output_shapes
: ]
lstm_214/while/IdentityIdentitylstm_214/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_214_while_identity lstm_214/while/Identity:output:0*(
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
while_cond_1374949
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1374949___redundant_placeholder05
1while_while_cond_1374949___redundant_placeholder15
1while_while_cond_1374949___redundant_placeholder25
1while_while_cond_1374949___redundant_placeholder3
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
J__inference_sequential_71_layer_call_and_return_conditional_losses_1375798

inputs#
lstm_213_1375771:	?#
lstm_213_1375773:	d?
lstm_213_1375775:	?#
lstm_214_1375778:	d?#
lstm_214_1375780:	2?
lstm_214_1375782:	?"
lstm_215_1375785:2("
lstm_215_1375787:
(
lstm_215_1375789:("
dense_71_1375792:

dense_71_1375794:
identity?? dense_71/StatefulPartitionedCall? lstm_213/StatefulPartitionedCall? lstm_214/StatefulPartitionedCall? lstm_215/StatefulPartitionedCall?
 lstm_213/StatefulPartitionedCallStatefulPartitionedCallinputslstm_213_1375771lstm_213_1375773lstm_213_1375775*
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
E__inference_lstm_213_layer_call_and_return_conditional_losses_1375730?
 lstm_214/StatefulPartitionedCallStatefulPartitionedCall)lstm_213/StatefulPartitionedCall:output:0lstm_214_1375778lstm_214_1375780lstm_214_1375782*
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
E__inference_lstm_214_layer_call_and_return_conditional_losses_1375565?
 lstm_215/StatefulPartitionedCallStatefulPartitionedCall)lstm_214/StatefulPartitionedCall:output:0lstm_215_1375785lstm_215_1375787lstm_215_1375789*
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
E__inference_lstm_215_layer_call_and_return_conditional_losses_1375400?
 dense_71/StatefulPartitionedCallStatefulPartitionedCall)lstm_215/StatefulPartitionedCall:output:0dense_71_1375792dense_71_1375794*
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
E__inference_dense_71_layer_call_and_return_conditional_losses_1375202x
IdentityIdentity)dense_71/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_71/StatefulPartitionedCall!^lstm_213/StatefulPartitionedCall!^lstm_214/StatefulPartitionedCall!^lstm_215/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_71/StatefulPartitionedCall dense_71/StatefulPartitionedCall2D
 lstm_213/StatefulPartitionedCall lstm_213/StatefulPartitionedCall2D
 lstm_214/StatefulPartitionedCall lstm_214/StatefulPartitionedCall2D
 lstm_215/StatefulPartitionedCall lstm_215/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_225_layer_call_fn_1378754

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
J__inference_lstm_cell_225_layer_call_and_return_conditional_losses_1373898o
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
while_cond_1378330
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1378330___redundant_placeholder05
1while_while_cond_1378330___redundant_placeholder15
1while_while_cond_1378330___redundant_placeholder25
1while_while_cond_1378330___redundant_placeholder3
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
E__inference_lstm_213_layer_call_and_return_conditional_losses_1377183
inputs_0?
,lstm_cell_225_matmul_readvariableop_resource:	?A
.lstm_cell_225_matmul_1_readvariableop_resource:	d?<
-lstm_cell_225_biasadd_readvariableop_resource:	?
identity??$lstm_cell_225/BiasAdd/ReadVariableOp?#lstm_cell_225/MatMul/ReadVariableOp?%lstm_cell_225/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_225/MatMul/ReadVariableOpReadVariableOp,lstm_cell_225_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_225/MatMulMatMulstrided_slice_2:output:0+lstm_cell_225/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_225/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_225_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_225/MatMul_1MatMulzeros:output:0-lstm_cell_225/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_225/addAddV2lstm_cell_225/MatMul:product:0 lstm_cell_225/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_225/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_225_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_225/BiasAddBiasAddlstm_cell_225/add:z:0,lstm_cell_225/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_225/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_225/splitSplit&lstm_cell_225/split/split_dim:output:0lstm_cell_225/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_225/SigmoidSigmoidlstm_cell_225/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_225/Sigmoid_1Sigmoidlstm_cell_225/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_225/mulMullstm_cell_225/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_225/ReluRelulstm_cell_225/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_225/mul_1Mullstm_cell_225/Sigmoid:y:0 lstm_cell_225/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_225/add_1AddV2lstm_cell_225/mul:z:0lstm_cell_225/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_225/Sigmoid_2Sigmoidlstm_cell_225/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_225/Relu_1Relulstm_cell_225/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_225/mul_2Mullstm_cell_225/Sigmoid_2:y:0"lstm_cell_225/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_225_matmul_readvariableop_resource.lstm_cell_225_matmul_1_readvariableop_resource-lstm_cell_225_biasadd_readvariableop_resource*
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
while_body_1377099*
condR
while_cond_1377098*K
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
NoOpNoOp%^lstm_cell_225/BiasAdd/ReadVariableOp$^lstm_cell_225/MatMul/ReadVariableOp&^lstm_cell_225/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_225/BiasAdd/ReadVariableOp$lstm_cell_225/BiasAdd/ReadVariableOp2J
#lstm_cell_225/MatMul/ReadVariableOp#lstm_cell_225/MatMul/ReadVariableOp2N
%lstm_cell_225/MatMul_1/ReadVariableOp%lstm_cell_225/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_213_layer_call_fn_1376897

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
E__inference_lstm_213_layer_call_and_return_conditional_losses_1375730s
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

?
lstm_214_while_cond_1376623.
*lstm_214_while_lstm_214_while_loop_counter4
0lstm_214_while_lstm_214_while_maximum_iterations
lstm_214_while_placeholder 
lstm_214_while_placeholder_1 
lstm_214_while_placeholder_2 
lstm_214_while_placeholder_30
,lstm_214_while_less_lstm_214_strided_slice_1G
Clstm_214_while_lstm_214_while_cond_1376623___redundant_placeholder0G
Clstm_214_while_lstm_214_while_cond_1376623___redundant_placeholder1G
Clstm_214_while_lstm_214_while_cond_1376623___redundant_placeholder2G
Clstm_214_while_lstm_214_while_cond_1376623___redundant_placeholder3
lstm_214_while_identity
?
lstm_214/while/LessLesslstm_214_while_placeholder,lstm_214_while_less_lstm_214_strided_slice_1*
T0*
_output_shapes
: ]
lstm_214/while/IdentityIdentitylstm_214/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_214_while_identity lstm_214/while/Identity:output:0*(
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
while_cond_1377241
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1377241___redundant_placeholder05
1while_while_cond_1377241___redundant_placeholder15
1while_while_cond_1377241___redundant_placeholder25
1while_while_cond_1377241___redundant_placeholder3
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
while_cond_1375099
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1375099___redundant_placeholder05
1while_while_cond_1375099___redundant_placeholder15
1while_while_cond_1375099___redundant_placeholder25
1while_while_cond_1375099___redundant_placeholder3
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
while_body_1378617
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_227_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_227_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_227_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_227_matmul_readvariableop_resource:2(F
4while_lstm_cell_227_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_227_biasadd_readvariableop_resource:(??*while/lstm_cell_227/BiasAdd/ReadVariableOp?)while/lstm_cell_227/MatMul/ReadVariableOp?+while/lstm_cell_227/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_227/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_227_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_227/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_227/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_227/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_227_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_227/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_227/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_227/addAddV2$while/lstm_cell_227/MatMul:product:0&while/lstm_cell_227/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_227/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_227_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_227/BiasAddBiasAddwhile/lstm_cell_227/add:z:02while/lstm_cell_227/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_227/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_227/splitSplit,while/lstm_cell_227/split/split_dim:output:0$while/lstm_cell_227/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_227/SigmoidSigmoid"while/lstm_cell_227/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_227/Sigmoid_1Sigmoid"while/lstm_cell_227/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_227/mulMul!while/lstm_cell_227/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_227/ReluRelu"while/lstm_cell_227/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_227/mul_1Mulwhile/lstm_cell_227/Sigmoid:y:0&while/lstm_cell_227/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_227/add_1AddV2while/lstm_cell_227/mul:z:0while/lstm_cell_227/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_227/Sigmoid_2Sigmoid"while/lstm_cell_227/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_227/Relu_1Reluwhile/lstm_cell_227/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_227/mul_2Mul!while/lstm_cell_227/Sigmoid_2:y:0(while/lstm_cell_227/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_227/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_227/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_227/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_227/BiasAdd/ReadVariableOp*^while/lstm_cell_227/MatMul/ReadVariableOp,^while/lstm_cell_227/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_227_biasadd_readvariableop_resource5while_lstm_cell_227_biasadd_readvariableop_resource_0"n
4while_lstm_cell_227_matmul_1_readvariableop_resource6while_lstm_cell_227_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_227_matmul_readvariableop_resource4while_lstm_cell_227_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_227/BiasAdd/ReadVariableOp*while/lstm_cell_227/BiasAdd/ReadVariableOp2V
)while/lstm_cell_227/MatMul/ReadVariableOp)while/lstm_cell_227/MatMul/ReadVariableOp2Z
+while/lstm_cell_227/MatMul_1/ReadVariableOp+while/lstm_cell_227/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_226_layer_call_and_return_conditional_losses_1374102

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
J__inference_lstm_cell_226_layer_call_and_return_conditional_losses_1378884

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
lstm_215_while_cond_1376762.
*lstm_215_while_lstm_215_while_loop_counter4
0lstm_215_while_lstm_215_while_maximum_iterations
lstm_215_while_placeholder 
lstm_215_while_placeholder_1 
lstm_215_while_placeholder_2 
lstm_215_while_placeholder_30
,lstm_215_while_less_lstm_215_strided_slice_1G
Clstm_215_while_lstm_215_while_cond_1376762___redundant_placeholder0G
Clstm_215_while_lstm_215_while_cond_1376762___redundant_placeholder1G
Clstm_215_while_lstm_215_while_cond_1376762___redundant_placeholder2G
Clstm_215_while_lstm_215_while_cond_1376762___redundant_placeholder3
lstm_215_while_identity
?
lstm_215/while/LessLesslstm_215_while_placeholder,lstm_215_while_less_lstm_215_strided_slice_1*
T0*
_output_shapes
: ]
lstm_215/while/IdentityIdentitylstm_215/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_215_while_identity lstm_215/while/Identity:output:0*(
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
/__inference_sequential_71_layer_call_fn_1375972

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
J__inference_sequential_71_layer_call_and_return_conditional_losses_1375209o
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
lstm_213_while_cond_1376484.
*lstm_213_while_lstm_213_while_loop_counter4
0lstm_213_while_lstm_213_while_maximum_iterations
lstm_213_while_placeholder 
lstm_213_while_placeholder_1 
lstm_213_while_placeholder_2 
lstm_213_while_placeholder_30
,lstm_213_while_less_lstm_213_strided_slice_1G
Clstm_213_while_lstm_213_while_cond_1376484___redundant_placeholder0G
Clstm_213_while_lstm_213_while_cond_1376484___redundant_placeholder1G
Clstm_213_while_lstm_213_while_cond_1376484___redundant_placeholder2G
Clstm_213_while_lstm_213_while_cond_1376484___redundant_placeholder3
lstm_213_while_identity
?
lstm_213/while/LessLesslstm_213_while_placeholder,lstm_213_while_less_lstm_213_strided_slice_1*
T0*
_output_shapes
: ]
lstm_213/while/IdentityIdentitylstm_213/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_213_while_identity lstm_213/while/Identity:output:0*(
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
E__inference_lstm_214_layer_call_and_return_conditional_losses_1377942

inputs?
,lstm_cell_226_matmul_readvariableop_resource:	d?A
.lstm_cell_226_matmul_1_readvariableop_resource:	2?<
-lstm_cell_226_biasadd_readvariableop_resource:	?
identity??$lstm_cell_226/BiasAdd/ReadVariableOp?#lstm_cell_226/MatMul/ReadVariableOp?%lstm_cell_226/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_226/MatMul/ReadVariableOpReadVariableOp,lstm_cell_226_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_226/MatMulMatMulstrided_slice_2:output:0+lstm_cell_226/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_226/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_226_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_226/MatMul_1MatMulzeros:output:0-lstm_cell_226/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_226/addAddV2lstm_cell_226/MatMul:product:0 lstm_cell_226/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_226/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_226_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_226/BiasAddBiasAddlstm_cell_226/add:z:0,lstm_cell_226/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_226/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_226/splitSplit&lstm_cell_226/split/split_dim:output:0lstm_cell_226/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_226/SigmoidSigmoidlstm_cell_226/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_226/Sigmoid_1Sigmoidlstm_cell_226/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_226/mulMullstm_cell_226/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_226/ReluRelulstm_cell_226/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_226/mul_1Mullstm_cell_226/Sigmoid:y:0 lstm_cell_226/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_226/add_1AddV2lstm_cell_226/mul:z:0lstm_cell_226/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_226/Sigmoid_2Sigmoidlstm_cell_226/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_226/Relu_1Relulstm_cell_226/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_226/mul_2Mullstm_cell_226/Sigmoid_2:y:0"lstm_cell_226/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_226_matmul_readvariableop_resource.lstm_cell_226_matmul_1_readvariableop_resource-lstm_cell_226_biasadd_readvariableop_resource*
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
while_body_1377858*
condR
while_cond_1377857*K
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
NoOpNoOp%^lstm_cell_226/BiasAdd/ReadVariableOp$^lstm_cell_226/MatMul/ReadVariableOp&^lstm_cell_226/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_226/BiasAdd/ReadVariableOp$lstm_cell_226/BiasAdd/ReadVariableOp2J
#lstm_cell_226/MatMul/ReadVariableOp#lstm_cell_226/MatMul/ReadVariableOp2N
%lstm_cell_226/MatMul_1/ReadVariableOp%lstm_cell_226/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_213_layer_call_fn_1376886

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
E__inference_lstm_213_layer_call_and_return_conditional_losses_1374884s
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
while_cond_1378616
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1378616___redundant_placeholder05
1while_while_cond_1378616___redundant_placeholder15
1while_while_cond_1378616___redundant_placeholder25
1while_while_cond_1378616___redundant_placeholder3
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
J__inference_lstm_cell_225_layer_call_and_return_conditional_losses_1378818

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
while_body_1377385
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_225_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_225_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_225_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_225_matmul_readvariableop_resource:	?G
4while_lstm_cell_225_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_225_biasadd_readvariableop_resource:	???*while/lstm_cell_225/BiasAdd/ReadVariableOp?)while/lstm_cell_225/MatMul/ReadVariableOp?+while/lstm_cell_225/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_225/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_225_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_225/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_225/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_225/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_225_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_225/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_225/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_225/addAddV2$while/lstm_cell_225/MatMul:product:0&while/lstm_cell_225/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_225/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_225_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_225/BiasAddBiasAddwhile/lstm_cell_225/add:z:02while/lstm_cell_225/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_225/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_225/splitSplit,while/lstm_cell_225/split/split_dim:output:0$while/lstm_cell_225/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_225/SigmoidSigmoid"while/lstm_cell_225/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_225/Sigmoid_1Sigmoid"while/lstm_cell_225/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_225/mulMul!while/lstm_cell_225/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_225/ReluRelu"while/lstm_cell_225/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_225/mul_1Mulwhile/lstm_cell_225/Sigmoid:y:0&while/lstm_cell_225/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_225/add_1AddV2while/lstm_cell_225/mul:z:0while/lstm_cell_225/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_225/Sigmoid_2Sigmoid"while/lstm_cell_225/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_225/Relu_1Reluwhile/lstm_cell_225/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_225/mul_2Mul!while/lstm_cell_225/Sigmoid_2:y:0(while/lstm_cell_225/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_225/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_225/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_225/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_225/BiasAdd/ReadVariableOp*^while/lstm_cell_225/MatMul/ReadVariableOp,^while/lstm_cell_225/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_225_biasadd_readvariableop_resource5while_lstm_cell_225_biasadd_readvariableop_resource_0"n
4while_lstm_cell_225_matmul_1_readvariableop_resource6while_lstm_cell_225_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_225_matmul_readvariableop_resource4while_lstm_cell_225_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_225/BiasAdd/ReadVariableOp*while/lstm_cell_225/BiasAdd/ReadVariableOp2V
)while/lstm_cell_225/MatMul/ReadVariableOp)while/lstm_cell_225/MatMul/ReadVariableOp2Z
+while/lstm_cell_225/MatMul_1/ReadVariableOp+while/lstm_cell_225/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1374306
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1374306___redundant_placeholder05
1while_while_cond_1374306___redundant_placeholder15
1while_while_cond_1374306___redundant_placeholder25
1while_while_cond_1374306___redundant_placeholder3
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
E__inference_lstm_215_layer_call_and_return_conditional_losses_1374535

inputs'
lstm_cell_227_1374453:2('
lstm_cell_227_1374455:
(#
lstm_cell_227_1374457:(
identity??%lstm_cell_227/StatefulPartitionedCall?while;
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
%lstm_cell_227/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_227_1374453lstm_cell_227_1374455lstm_cell_227_1374457*
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
J__inference_lstm_cell_227_layer_call_and_return_conditional_losses_1374452n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_227_1374453lstm_cell_227_1374455lstm_cell_227_1374457*
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
while_body_1374466*
condR
while_cond_1374465*K
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
NoOpNoOp&^lstm_cell_227/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_227/StatefulPartitionedCall%lstm_cell_227/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_1374656
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1374656___redundant_placeholder05
1while_while_cond_1374656___redundant_placeholder15
1while_while_cond_1374656___redundant_placeholder25
1while_while_cond_1374656___redundant_placeholder3
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
J__inference_lstm_cell_227_layer_call_and_return_conditional_losses_1374452

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
while_body_1374950
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_226_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_226_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_226_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_226_matmul_readvariableop_resource:	d?G
4while_lstm_cell_226_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_226_biasadd_readvariableop_resource:	???*while/lstm_cell_226/BiasAdd/ReadVariableOp?)while/lstm_cell_226/MatMul/ReadVariableOp?+while/lstm_cell_226/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_226/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_226_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_226/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_226/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_226/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_226_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_226/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_226/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_226/addAddV2$while/lstm_cell_226/MatMul:product:0&while/lstm_cell_226/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_226/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_226_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_226/BiasAddBiasAddwhile/lstm_cell_226/add:z:02while/lstm_cell_226/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_226/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_226/splitSplit,while/lstm_cell_226/split/split_dim:output:0$while/lstm_cell_226/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_226/SigmoidSigmoid"while/lstm_cell_226/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_226/Sigmoid_1Sigmoid"while/lstm_cell_226/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_226/mulMul!while/lstm_cell_226/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_226/ReluRelu"while/lstm_cell_226/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_226/mul_1Mulwhile/lstm_cell_226/Sigmoid:y:0&while/lstm_cell_226/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_226/add_1AddV2while/lstm_cell_226/mul:z:0while/lstm_cell_226/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_226/Sigmoid_2Sigmoid"while/lstm_cell_226/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_226/Relu_1Reluwhile/lstm_cell_226/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_226/mul_2Mul!while/lstm_cell_226/Sigmoid_2:y:0(while/lstm_cell_226/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_226/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_226/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_226/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_226/BiasAdd/ReadVariableOp*^while/lstm_cell_226/MatMul/ReadVariableOp,^while/lstm_cell_226/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_226_biasadd_readvariableop_resource5while_lstm_cell_226_biasadd_readvariableop_resource_0"n
4while_lstm_cell_226_matmul_1_readvariableop_resource6while_lstm_cell_226_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_226_matmul_readvariableop_resource4while_lstm_cell_226_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_226/BiasAdd/ReadVariableOp*while/lstm_cell_226/BiasAdd/ReadVariableOp2V
)while/lstm_cell_226/MatMul/ReadVariableOp)while/lstm_cell_226/MatMul/ReadVariableOp2Z
+while/lstm_cell_226/MatMul_1/ReadVariableOp+while/lstm_cell_226/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_214_layer_call_and_return_conditional_losses_1375034

inputs?
,lstm_cell_226_matmul_readvariableop_resource:	d?A
.lstm_cell_226_matmul_1_readvariableop_resource:	2?<
-lstm_cell_226_biasadd_readvariableop_resource:	?
identity??$lstm_cell_226/BiasAdd/ReadVariableOp?#lstm_cell_226/MatMul/ReadVariableOp?%lstm_cell_226/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_226/MatMul/ReadVariableOpReadVariableOp,lstm_cell_226_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_226/MatMulMatMulstrided_slice_2:output:0+lstm_cell_226/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_226/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_226_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_226/MatMul_1MatMulzeros:output:0-lstm_cell_226/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_226/addAddV2lstm_cell_226/MatMul:product:0 lstm_cell_226/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_226/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_226_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_226/BiasAddBiasAddlstm_cell_226/add:z:0,lstm_cell_226/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_226/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_226/splitSplit&lstm_cell_226/split/split_dim:output:0lstm_cell_226/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_226/SigmoidSigmoidlstm_cell_226/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_226/Sigmoid_1Sigmoidlstm_cell_226/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_226/mulMullstm_cell_226/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_226/ReluRelulstm_cell_226/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_226/mul_1Mullstm_cell_226/Sigmoid:y:0 lstm_cell_226/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_226/add_1AddV2lstm_cell_226/mul:z:0lstm_cell_226/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_226/Sigmoid_2Sigmoidlstm_cell_226/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_226/Relu_1Relulstm_cell_226/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_226/mul_2Mullstm_cell_226/Sigmoid_2:y:0"lstm_cell_226/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_226_matmul_readvariableop_resource.lstm_cell_226_matmul_1_readvariableop_resource-lstm_cell_226_biasadd_readvariableop_resource*
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
while_body_1374950*
condR
while_cond_1374949*K
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
NoOpNoOp%^lstm_cell_226/BiasAdd/ReadVariableOp$^lstm_cell_226/MatMul/ReadVariableOp&^lstm_cell_226/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_226/BiasAdd/ReadVariableOp$lstm_cell_226/BiasAdd/ReadVariableOp2J
#lstm_cell_226/MatMul/ReadVariableOp#lstm_cell_226/MatMul/ReadVariableOp2N
%lstm_cell_226/MatMul_1/ReadVariableOp%lstm_cell_226/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_215_layer_call_and_return_conditional_losses_1378701

inputs>
,lstm_cell_227_matmul_readvariableop_resource:2(@
.lstm_cell_227_matmul_1_readvariableop_resource:
(;
-lstm_cell_227_biasadd_readvariableop_resource:(
identity??$lstm_cell_227/BiasAdd/ReadVariableOp?#lstm_cell_227/MatMul/ReadVariableOp?%lstm_cell_227/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_227/MatMul/ReadVariableOpReadVariableOp,lstm_cell_227_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_227/MatMulMatMulstrided_slice_2:output:0+lstm_cell_227/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_227/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_227_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_227/MatMul_1MatMulzeros:output:0-lstm_cell_227/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_227/addAddV2lstm_cell_227/MatMul:product:0 lstm_cell_227/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_227/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_227_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_227/BiasAddBiasAddlstm_cell_227/add:z:0,lstm_cell_227/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_227/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_227/splitSplit&lstm_cell_227/split/split_dim:output:0lstm_cell_227/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_227/SigmoidSigmoidlstm_cell_227/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_227/Sigmoid_1Sigmoidlstm_cell_227/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_227/mulMullstm_cell_227/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_227/ReluRelulstm_cell_227/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_227/mul_1Mullstm_cell_227/Sigmoid:y:0 lstm_cell_227/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_227/add_1AddV2lstm_cell_227/mul:z:0lstm_cell_227/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_227/Sigmoid_2Sigmoidlstm_cell_227/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_227/Relu_1Relulstm_cell_227/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_227/mul_2Mullstm_cell_227/Sigmoid_2:y:0"lstm_cell_227/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_227_matmul_readvariableop_resource.lstm_cell_227_matmul_1_readvariableop_resource-lstm_cell_227_biasadd_readvariableop_resource*
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
while_body_1378617*
condR
while_cond_1378616*K
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
NoOpNoOp%^lstm_cell_227/BiasAdd/ReadVariableOp$^lstm_cell_227/MatMul/ReadVariableOp&^lstm_cell_227/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_227/BiasAdd/ReadVariableOp$lstm_cell_227/BiasAdd/ReadVariableOp2J
#lstm_cell_227/MatMul/ReadVariableOp#lstm_cell_227/MatMul/ReadVariableOp2N
%lstm_cell_227/MatMul_1/ReadVariableOp%lstm_cell_227/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?C
?

lstm_213_while_body_1376485.
*lstm_213_while_lstm_213_while_loop_counter4
0lstm_213_while_lstm_213_while_maximum_iterations
lstm_213_while_placeholder 
lstm_213_while_placeholder_1 
lstm_213_while_placeholder_2 
lstm_213_while_placeholder_3-
)lstm_213_while_lstm_213_strided_slice_1_0i
elstm_213_while_tensorarrayv2read_tensorlistgetitem_lstm_213_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_213_while_lstm_cell_225_matmul_readvariableop_resource_0:	?R
?lstm_213_while_lstm_cell_225_matmul_1_readvariableop_resource_0:	d?M
>lstm_213_while_lstm_cell_225_biasadd_readvariableop_resource_0:	?
lstm_213_while_identity
lstm_213_while_identity_1
lstm_213_while_identity_2
lstm_213_while_identity_3
lstm_213_while_identity_4
lstm_213_while_identity_5+
'lstm_213_while_lstm_213_strided_slice_1g
clstm_213_while_tensorarrayv2read_tensorlistgetitem_lstm_213_tensorarrayunstack_tensorlistfromtensorN
;lstm_213_while_lstm_cell_225_matmul_readvariableop_resource:	?P
=lstm_213_while_lstm_cell_225_matmul_1_readvariableop_resource:	d?K
<lstm_213_while_lstm_cell_225_biasadd_readvariableop_resource:	???3lstm_213/while/lstm_cell_225/BiasAdd/ReadVariableOp?2lstm_213/while/lstm_cell_225/MatMul/ReadVariableOp?4lstm_213/while/lstm_cell_225/MatMul_1/ReadVariableOp?
@lstm_213/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_213/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_213_while_tensorarrayv2read_tensorlistgetitem_lstm_213_tensorarrayunstack_tensorlistfromtensor_0lstm_213_while_placeholderIlstm_213/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_213/while/lstm_cell_225/MatMul/ReadVariableOpReadVariableOp=lstm_213_while_lstm_cell_225_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_213/while/lstm_cell_225/MatMulMatMul9lstm_213/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_213/while/lstm_cell_225/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_213/while/lstm_cell_225/MatMul_1/ReadVariableOpReadVariableOp?lstm_213_while_lstm_cell_225_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_213/while/lstm_cell_225/MatMul_1MatMullstm_213_while_placeholder_2<lstm_213/while/lstm_cell_225/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_213/while/lstm_cell_225/addAddV2-lstm_213/while/lstm_cell_225/MatMul:product:0/lstm_213/while/lstm_cell_225/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_213/while/lstm_cell_225/BiasAdd/ReadVariableOpReadVariableOp>lstm_213_while_lstm_cell_225_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_213/while/lstm_cell_225/BiasAddBiasAdd$lstm_213/while/lstm_cell_225/add:z:0;lstm_213/while/lstm_cell_225/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_213/while/lstm_cell_225/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_213/while/lstm_cell_225/splitSplit5lstm_213/while/lstm_cell_225/split/split_dim:output:0-lstm_213/while/lstm_cell_225/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_213/while/lstm_cell_225/SigmoidSigmoid+lstm_213/while/lstm_cell_225/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_213/while/lstm_cell_225/Sigmoid_1Sigmoid+lstm_213/while/lstm_cell_225/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_213/while/lstm_cell_225/mulMul*lstm_213/while/lstm_cell_225/Sigmoid_1:y:0lstm_213_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_213/while/lstm_cell_225/ReluRelu+lstm_213/while/lstm_cell_225/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_213/while/lstm_cell_225/mul_1Mul(lstm_213/while/lstm_cell_225/Sigmoid:y:0/lstm_213/while/lstm_cell_225/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_213/while/lstm_cell_225/add_1AddV2$lstm_213/while/lstm_cell_225/mul:z:0&lstm_213/while/lstm_cell_225/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_213/while/lstm_cell_225/Sigmoid_2Sigmoid+lstm_213/while/lstm_cell_225/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_213/while/lstm_cell_225/Relu_1Relu&lstm_213/while/lstm_cell_225/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_213/while/lstm_cell_225/mul_2Mul*lstm_213/while/lstm_cell_225/Sigmoid_2:y:01lstm_213/while/lstm_cell_225/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_213/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_213_while_placeholder_1lstm_213_while_placeholder&lstm_213/while/lstm_cell_225/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_213/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_213/while/addAddV2lstm_213_while_placeholderlstm_213/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_213/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_213/while/add_1AddV2*lstm_213_while_lstm_213_while_loop_counterlstm_213/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_213/while/IdentityIdentitylstm_213/while/add_1:z:0^lstm_213/while/NoOp*
T0*
_output_shapes
: ?
lstm_213/while/Identity_1Identity0lstm_213_while_lstm_213_while_maximum_iterations^lstm_213/while/NoOp*
T0*
_output_shapes
: t
lstm_213/while/Identity_2Identitylstm_213/while/add:z:0^lstm_213/while/NoOp*
T0*
_output_shapes
: ?
lstm_213/while/Identity_3IdentityClstm_213/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_213/while/NoOp*
T0*
_output_shapes
: ?
lstm_213/while/Identity_4Identity&lstm_213/while/lstm_cell_225/mul_2:z:0^lstm_213/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_213/while/Identity_5Identity&lstm_213/while/lstm_cell_225/add_1:z:0^lstm_213/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_213/while/NoOpNoOp4^lstm_213/while/lstm_cell_225/BiasAdd/ReadVariableOp3^lstm_213/while/lstm_cell_225/MatMul/ReadVariableOp5^lstm_213/while/lstm_cell_225/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_213_while_identity lstm_213/while/Identity:output:0"?
lstm_213_while_identity_1"lstm_213/while/Identity_1:output:0"?
lstm_213_while_identity_2"lstm_213/while/Identity_2:output:0"?
lstm_213_while_identity_3"lstm_213/while/Identity_3:output:0"?
lstm_213_while_identity_4"lstm_213/while/Identity_4:output:0"?
lstm_213_while_identity_5"lstm_213/while/Identity_5:output:0"T
'lstm_213_while_lstm_213_strided_slice_1)lstm_213_while_lstm_213_strided_slice_1_0"~
<lstm_213_while_lstm_cell_225_biasadd_readvariableop_resource>lstm_213_while_lstm_cell_225_biasadd_readvariableop_resource_0"?
=lstm_213_while_lstm_cell_225_matmul_1_readvariableop_resource?lstm_213_while_lstm_cell_225_matmul_1_readvariableop_resource_0"|
;lstm_213_while_lstm_cell_225_matmul_readvariableop_resource=lstm_213_while_lstm_cell_225_matmul_readvariableop_resource_0"?
clstm_213_while_tensorarrayv2read_tensorlistgetitem_lstm_213_tensorarrayunstack_tensorlistfromtensorelstm_213_while_tensorarrayv2read_tensorlistgetitem_lstm_213_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_213/while/lstm_cell_225/BiasAdd/ReadVariableOp3lstm_213/while/lstm_cell_225/BiasAdd/ReadVariableOp2h
2lstm_213/while/lstm_cell_225/MatMul/ReadVariableOp2lstm_213/while/lstm_cell_225/MatMul/ReadVariableOp2l
4lstm_213/while/lstm_cell_225/MatMul_1/ReadVariableOp4lstm_213/while/lstm_cell_225/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1377242
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_225_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_225_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_225_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_225_matmul_readvariableop_resource:	?G
4while_lstm_cell_225_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_225_biasadd_readvariableop_resource:	???*while/lstm_cell_225/BiasAdd/ReadVariableOp?)while/lstm_cell_225/MatMul/ReadVariableOp?+while/lstm_cell_225/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_225/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_225_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_225/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_225/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_225/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_225_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_225/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_225/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_225/addAddV2$while/lstm_cell_225/MatMul:product:0&while/lstm_cell_225/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_225/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_225_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_225/BiasAddBiasAddwhile/lstm_cell_225/add:z:02while/lstm_cell_225/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_225/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_225/splitSplit,while/lstm_cell_225/split/split_dim:output:0$while/lstm_cell_225/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_225/SigmoidSigmoid"while/lstm_cell_225/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_225/Sigmoid_1Sigmoid"while/lstm_cell_225/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_225/mulMul!while/lstm_cell_225/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_225/ReluRelu"while/lstm_cell_225/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_225/mul_1Mulwhile/lstm_cell_225/Sigmoid:y:0&while/lstm_cell_225/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_225/add_1AddV2while/lstm_cell_225/mul:z:0while/lstm_cell_225/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_225/Sigmoid_2Sigmoid"while/lstm_cell_225/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_225/Relu_1Reluwhile/lstm_cell_225/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_225/mul_2Mul!while/lstm_cell_225/Sigmoid_2:y:0(while/lstm_cell_225/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_225/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_225/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_225/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_225/BiasAdd/ReadVariableOp*^while/lstm_cell_225/MatMul/ReadVariableOp,^while/lstm_cell_225/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_225_biasadd_readvariableop_resource5while_lstm_cell_225_biasadd_readvariableop_resource_0"n
4while_lstm_cell_225_matmul_1_readvariableop_resource6while_lstm_cell_225_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_225_matmul_readvariableop_resource4while_lstm_cell_225_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_225/BiasAdd/ReadVariableOp*while/lstm_cell_225/BiasAdd/ReadVariableOp2V
)while/lstm_cell_225/MatMul/ReadVariableOp)while/lstm_cell_225/MatMul/ReadVariableOp2Z
+while/lstm_cell_225/MatMul_1/ReadVariableOp+while/lstm_cell_225/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1373766
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_225_1373790_0:	?0
while_lstm_cell_225_1373792_0:	d?,
while_lstm_cell_225_1373794_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_225_1373790:	?.
while_lstm_cell_225_1373792:	d?*
while_lstm_cell_225_1373794:	???+while/lstm_cell_225/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_225/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_225_1373790_0while_lstm_cell_225_1373792_0while_lstm_cell_225_1373794_0*
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
J__inference_lstm_cell_225_layer_call_and_return_conditional_losses_1373752?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_225/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_225/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_225/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_225/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_225_1373790while_lstm_cell_225_1373790_0"<
while_lstm_cell_225_1373792while_lstm_cell_225_1373792_0"<
while_lstm_cell_225_1373794while_lstm_cell_225_1373794_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_225/StatefulPartitionedCall+while/lstm_cell_225/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_1378474
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_227_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_227_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_227_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_227_matmul_readvariableop_resource:2(F
4while_lstm_cell_227_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_227_biasadd_readvariableop_resource:(??*while/lstm_cell_227/BiasAdd/ReadVariableOp?)while/lstm_cell_227/MatMul/ReadVariableOp?+while/lstm_cell_227/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_227/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_227_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_227/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_227/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_227/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_227_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_227/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_227/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_227/addAddV2$while/lstm_cell_227/MatMul:product:0&while/lstm_cell_227/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_227/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_227_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_227/BiasAddBiasAddwhile/lstm_cell_227/add:z:02while/lstm_cell_227/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_227/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_227/splitSplit,while/lstm_cell_227/split/split_dim:output:0$while/lstm_cell_227/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_227/SigmoidSigmoid"while/lstm_cell_227/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_227/Sigmoid_1Sigmoid"while/lstm_cell_227/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_227/mulMul!while/lstm_cell_227/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_227/ReluRelu"while/lstm_cell_227/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_227/mul_1Mulwhile/lstm_cell_227/Sigmoid:y:0&while/lstm_cell_227/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_227/add_1AddV2while/lstm_cell_227/mul:z:0while/lstm_cell_227/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_227/Sigmoid_2Sigmoid"while/lstm_cell_227/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_227/Relu_1Reluwhile/lstm_cell_227/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_227/mul_2Mul!while/lstm_cell_227/Sigmoid_2:y:0(while/lstm_cell_227/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_227/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_227/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_227/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_227/BiasAdd/ReadVariableOp*^while/lstm_cell_227/MatMul/ReadVariableOp,^while/lstm_cell_227/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_227_biasadd_readvariableop_resource5while_lstm_cell_227_biasadd_readvariableop_resource_0"n
4while_lstm_cell_227_matmul_1_readvariableop_resource6while_lstm_cell_227_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_227_matmul_readvariableop_resource4while_lstm_cell_227_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_227/BiasAdd/ReadVariableOp*while/lstm_cell_227/BiasAdd/ReadVariableOp2V
)while/lstm_cell_227/MatMul/ReadVariableOp)while/lstm_cell_227/MatMul/ReadVariableOp2Z
+while/lstm_cell_227/MatMul_1/ReadVariableOp+while/lstm_cell_227/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_215_while_body_1376763.
*lstm_215_while_lstm_215_while_loop_counter4
0lstm_215_while_lstm_215_while_maximum_iterations
lstm_215_while_placeholder 
lstm_215_while_placeholder_1 
lstm_215_while_placeholder_2 
lstm_215_while_placeholder_3-
)lstm_215_while_lstm_215_strided_slice_1_0i
elstm_215_while_tensorarrayv2read_tensorlistgetitem_lstm_215_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_215_while_lstm_cell_227_matmul_readvariableop_resource_0:2(Q
?lstm_215_while_lstm_cell_227_matmul_1_readvariableop_resource_0:
(L
>lstm_215_while_lstm_cell_227_biasadd_readvariableop_resource_0:(
lstm_215_while_identity
lstm_215_while_identity_1
lstm_215_while_identity_2
lstm_215_while_identity_3
lstm_215_while_identity_4
lstm_215_while_identity_5+
'lstm_215_while_lstm_215_strided_slice_1g
clstm_215_while_tensorarrayv2read_tensorlistgetitem_lstm_215_tensorarrayunstack_tensorlistfromtensorM
;lstm_215_while_lstm_cell_227_matmul_readvariableop_resource:2(O
=lstm_215_while_lstm_cell_227_matmul_1_readvariableop_resource:
(J
<lstm_215_while_lstm_cell_227_biasadd_readvariableop_resource:(??3lstm_215/while/lstm_cell_227/BiasAdd/ReadVariableOp?2lstm_215/while/lstm_cell_227/MatMul/ReadVariableOp?4lstm_215/while/lstm_cell_227/MatMul_1/ReadVariableOp?
@lstm_215/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_215/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_215_while_tensorarrayv2read_tensorlistgetitem_lstm_215_tensorarrayunstack_tensorlistfromtensor_0lstm_215_while_placeholderIlstm_215/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_215/while/lstm_cell_227/MatMul/ReadVariableOpReadVariableOp=lstm_215_while_lstm_cell_227_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_215/while/lstm_cell_227/MatMulMatMul9lstm_215/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_215/while/lstm_cell_227/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_215/while/lstm_cell_227/MatMul_1/ReadVariableOpReadVariableOp?lstm_215_while_lstm_cell_227_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_215/while/lstm_cell_227/MatMul_1MatMullstm_215_while_placeholder_2<lstm_215/while/lstm_cell_227/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_215/while/lstm_cell_227/addAddV2-lstm_215/while/lstm_cell_227/MatMul:product:0/lstm_215/while/lstm_cell_227/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_215/while/lstm_cell_227/BiasAdd/ReadVariableOpReadVariableOp>lstm_215_while_lstm_cell_227_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_215/while/lstm_cell_227/BiasAddBiasAdd$lstm_215/while/lstm_cell_227/add:z:0;lstm_215/while/lstm_cell_227/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_215/while/lstm_cell_227/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_215/while/lstm_cell_227/splitSplit5lstm_215/while/lstm_cell_227/split/split_dim:output:0-lstm_215/while/lstm_cell_227/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_215/while/lstm_cell_227/SigmoidSigmoid+lstm_215/while/lstm_cell_227/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_215/while/lstm_cell_227/Sigmoid_1Sigmoid+lstm_215/while/lstm_cell_227/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_215/while/lstm_cell_227/mulMul*lstm_215/while/lstm_cell_227/Sigmoid_1:y:0lstm_215_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_215/while/lstm_cell_227/ReluRelu+lstm_215/while/lstm_cell_227/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_215/while/lstm_cell_227/mul_1Mul(lstm_215/while/lstm_cell_227/Sigmoid:y:0/lstm_215/while/lstm_cell_227/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_215/while/lstm_cell_227/add_1AddV2$lstm_215/while/lstm_cell_227/mul:z:0&lstm_215/while/lstm_cell_227/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_215/while/lstm_cell_227/Sigmoid_2Sigmoid+lstm_215/while/lstm_cell_227/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_215/while/lstm_cell_227/Relu_1Relu&lstm_215/while/lstm_cell_227/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_215/while/lstm_cell_227/mul_2Mul*lstm_215/while/lstm_cell_227/Sigmoid_2:y:01lstm_215/while/lstm_cell_227/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_215/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_215_while_placeholder_1lstm_215_while_placeholder&lstm_215/while/lstm_cell_227/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_215/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_215/while/addAddV2lstm_215_while_placeholderlstm_215/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_215/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_215/while/add_1AddV2*lstm_215_while_lstm_215_while_loop_counterlstm_215/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_215/while/IdentityIdentitylstm_215/while/add_1:z:0^lstm_215/while/NoOp*
T0*
_output_shapes
: ?
lstm_215/while/Identity_1Identity0lstm_215_while_lstm_215_while_maximum_iterations^lstm_215/while/NoOp*
T0*
_output_shapes
: t
lstm_215/while/Identity_2Identitylstm_215/while/add:z:0^lstm_215/while/NoOp*
T0*
_output_shapes
: ?
lstm_215/while/Identity_3IdentityClstm_215/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_215/while/NoOp*
T0*
_output_shapes
: ?
lstm_215/while/Identity_4Identity&lstm_215/while/lstm_cell_227/mul_2:z:0^lstm_215/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_215/while/Identity_5Identity&lstm_215/while/lstm_cell_227/add_1:z:0^lstm_215/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_215/while/NoOpNoOp4^lstm_215/while/lstm_cell_227/BiasAdd/ReadVariableOp3^lstm_215/while/lstm_cell_227/MatMul/ReadVariableOp5^lstm_215/while/lstm_cell_227/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_215_while_identity lstm_215/while/Identity:output:0"?
lstm_215_while_identity_1"lstm_215/while/Identity_1:output:0"?
lstm_215_while_identity_2"lstm_215/while/Identity_2:output:0"?
lstm_215_while_identity_3"lstm_215/while/Identity_3:output:0"?
lstm_215_while_identity_4"lstm_215/while/Identity_4:output:0"?
lstm_215_while_identity_5"lstm_215/while/Identity_5:output:0"T
'lstm_215_while_lstm_215_strided_slice_1)lstm_215_while_lstm_215_strided_slice_1_0"~
<lstm_215_while_lstm_cell_227_biasadd_readvariableop_resource>lstm_215_while_lstm_cell_227_biasadd_readvariableop_resource_0"?
=lstm_215_while_lstm_cell_227_matmul_1_readvariableop_resource?lstm_215_while_lstm_cell_227_matmul_1_readvariableop_resource_0"|
;lstm_215_while_lstm_cell_227_matmul_readvariableop_resource=lstm_215_while_lstm_cell_227_matmul_readvariableop_resource_0"?
clstm_215_while_tensorarrayv2read_tensorlistgetitem_lstm_215_tensorarrayunstack_tensorlistfromtensorelstm_215_while_tensorarrayv2read_tensorlistgetitem_lstm_215_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_215/while/lstm_cell_227/BiasAdd/ReadVariableOp3lstm_215/while/lstm_cell_227/BiasAdd/ReadVariableOp2h
2lstm_215/while/lstm_cell_227/MatMul/ReadVariableOp2lstm_215/while/lstm_cell_227/MatMul/ReadVariableOp2l
4lstm_215/while/lstm_cell_227/MatMul_1/ReadVariableOp4lstm_215/while/lstm_cell_227/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1377384
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1377384___redundant_placeholder05
1while_while_cond_1377384___redundant_placeholder15
1while_while_cond_1377384___redundant_placeholder25
1while_while_cond_1377384___redundant_placeholder3
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
E__inference_lstm_214_layer_call_and_return_conditional_losses_1378085

inputs?
,lstm_cell_226_matmul_readvariableop_resource:	d?A
.lstm_cell_226_matmul_1_readvariableop_resource:	2?<
-lstm_cell_226_biasadd_readvariableop_resource:	?
identity??$lstm_cell_226/BiasAdd/ReadVariableOp?#lstm_cell_226/MatMul/ReadVariableOp?%lstm_cell_226/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_226/MatMul/ReadVariableOpReadVariableOp,lstm_cell_226_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_226/MatMulMatMulstrided_slice_2:output:0+lstm_cell_226/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_226/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_226_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_226/MatMul_1MatMulzeros:output:0-lstm_cell_226/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_226/addAddV2lstm_cell_226/MatMul:product:0 lstm_cell_226/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_226/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_226_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_226/BiasAddBiasAddlstm_cell_226/add:z:0,lstm_cell_226/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_226/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_226/splitSplit&lstm_cell_226/split/split_dim:output:0lstm_cell_226/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_226/SigmoidSigmoidlstm_cell_226/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_226/Sigmoid_1Sigmoidlstm_cell_226/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_226/mulMullstm_cell_226/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_226/ReluRelulstm_cell_226/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_226/mul_1Mullstm_cell_226/Sigmoid:y:0 lstm_cell_226/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_226/add_1AddV2lstm_cell_226/mul:z:0lstm_cell_226/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_226/Sigmoid_2Sigmoidlstm_cell_226/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_226/Relu_1Relulstm_cell_226/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_226/mul_2Mullstm_cell_226/Sigmoid_2:y:0"lstm_cell_226/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_226_matmul_readvariableop_resource.lstm_cell_226_matmul_1_readvariableop_resource-lstm_cell_226_biasadd_readvariableop_resource*
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
while_body_1378001*
condR
while_cond_1378000*K
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
NoOpNoOp%^lstm_cell_226/BiasAdd/ReadVariableOp$^lstm_cell_226/MatMul/ReadVariableOp&^lstm_cell_226/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_226/BiasAdd/ReadVariableOp$lstm_cell_226/BiasAdd/ReadVariableOp2J
#lstm_cell_226/MatMul/ReadVariableOp#lstm_cell_226/MatMul/ReadVariableOp2N
%lstm_cell_226/MatMul_1/ReadVariableOp%lstm_cell_226/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_sequential_71_layer_call_and_return_conditional_losses_1375209

inputs#
lstm_213_1374885:	?#
lstm_213_1374887:	d?
lstm_213_1374889:	?#
lstm_214_1375035:	d?#
lstm_214_1375037:	2?
lstm_214_1375039:	?"
lstm_215_1375185:2("
lstm_215_1375187:
(
lstm_215_1375189:("
dense_71_1375203:

dense_71_1375205:
identity?? dense_71/StatefulPartitionedCall? lstm_213/StatefulPartitionedCall? lstm_214/StatefulPartitionedCall? lstm_215/StatefulPartitionedCall?
 lstm_213/StatefulPartitionedCallStatefulPartitionedCallinputslstm_213_1374885lstm_213_1374887lstm_213_1374889*
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
E__inference_lstm_213_layer_call_and_return_conditional_losses_1374884?
 lstm_214/StatefulPartitionedCallStatefulPartitionedCall)lstm_213/StatefulPartitionedCall:output:0lstm_214_1375035lstm_214_1375037lstm_214_1375039*
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
E__inference_lstm_214_layer_call_and_return_conditional_losses_1375034?
 lstm_215/StatefulPartitionedCallStatefulPartitionedCall)lstm_214/StatefulPartitionedCall:output:0lstm_215_1375185lstm_215_1375187lstm_215_1375189*
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
E__inference_lstm_215_layer_call_and_return_conditional_losses_1375184?
 dense_71/StatefulPartitionedCallStatefulPartitionedCall)lstm_215/StatefulPartitionedCall:output:0dense_71_1375203dense_71_1375205*
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
E__inference_dense_71_layer_call_and_return_conditional_losses_1375202x
IdentityIdentity)dense_71/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_71/StatefulPartitionedCall!^lstm_213/StatefulPartitionedCall!^lstm_214/StatefulPartitionedCall!^lstm_215/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_71/StatefulPartitionedCall dense_71/StatefulPartitionedCall2D
 lstm_213/StatefulPartitionedCall lstm_213/StatefulPartitionedCall2D
 lstm_214/StatefulPartitionedCall lstm_214/StatefulPartitionedCall2D
 lstm_215/StatefulPartitionedCall lstm_215/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_1378188
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_227_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_227_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_227_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_227_matmul_readvariableop_resource:2(F
4while_lstm_cell_227_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_227_biasadd_readvariableop_resource:(??*while/lstm_cell_227/BiasAdd/ReadVariableOp?)while/lstm_cell_227/MatMul/ReadVariableOp?+while/lstm_cell_227/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_227/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_227_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_227/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_227/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_227/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_227_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_227/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_227/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_227/addAddV2$while/lstm_cell_227/MatMul:product:0&while/lstm_cell_227/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_227/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_227_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_227/BiasAddBiasAddwhile/lstm_cell_227/add:z:02while/lstm_cell_227/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_227/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_227/splitSplit,while/lstm_cell_227/split/split_dim:output:0$while/lstm_cell_227/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_227/SigmoidSigmoid"while/lstm_cell_227/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_227/Sigmoid_1Sigmoid"while/lstm_cell_227/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_227/mulMul!while/lstm_cell_227/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_227/ReluRelu"while/lstm_cell_227/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_227/mul_1Mulwhile/lstm_cell_227/Sigmoid:y:0&while/lstm_cell_227/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_227/add_1AddV2while/lstm_cell_227/mul:z:0while/lstm_cell_227/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_227/Sigmoid_2Sigmoid"while/lstm_cell_227/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_227/Relu_1Reluwhile/lstm_cell_227/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_227/mul_2Mul!while/lstm_cell_227/Sigmoid_2:y:0(while/lstm_cell_227/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_227/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_227/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_227/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_227/BiasAdd/ReadVariableOp*^while/lstm_cell_227/MatMul/ReadVariableOp,^while/lstm_cell_227/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_227_biasadd_readvariableop_resource5while_lstm_cell_227_biasadd_readvariableop_resource_0"n
4while_lstm_cell_227_matmul_1_readvariableop_resource6while_lstm_cell_227_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_227_matmul_readvariableop_resource4while_lstm_cell_227_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_227/BiasAdd/ReadVariableOp*while/lstm_cell_227/BiasAdd/ReadVariableOp2V
)while/lstm_cell_227/MatMul/ReadVariableOp)while/lstm_cell_227/MatMul/ReadVariableOp2Z
+while/lstm_cell_227/MatMul_1/ReadVariableOp+while/lstm_cell_227/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
 __inference__traced_save_1379157
file_prefix.
*savev2_dense_71_kernel_read_readvariableop,
(savev2_dense_71_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_213_lstm_cell_213_kernel_read_readvariableopF
Bsavev2_lstm_213_lstm_cell_213_recurrent_kernel_read_readvariableop:
6savev2_lstm_213_lstm_cell_213_bias_read_readvariableop<
8savev2_lstm_214_lstm_cell_214_kernel_read_readvariableopF
Bsavev2_lstm_214_lstm_cell_214_recurrent_kernel_read_readvariableop:
6savev2_lstm_214_lstm_cell_214_bias_read_readvariableop<
8savev2_lstm_215_lstm_cell_215_kernel_read_readvariableopF
Bsavev2_lstm_215_lstm_cell_215_recurrent_kernel_read_readvariableop:
6savev2_lstm_215_lstm_cell_215_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_71_kernel_m_read_readvariableop3
/savev2_adam_dense_71_bias_m_read_readvariableopC
?savev2_adam_lstm_213_lstm_cell_213_kernel_m_read_readvariableopM
Isavev2_adam_lstm_213_lstm_cell_213_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_213_lstm_cell_213_bias_m_read_readvariableopC
?savev2_adam_lstm_214_lstm_cell_214_kernel_m_read_readvariableopM
Isavev2_adam_lstm_214_lstm_cell_214_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_214_lstm_cell_214_bias_m_read_readvariableopC
?savev2_adam_lstm_215_lstm_cell_215_kernel_m_read_readvariableopM
Isavev2_adam_lstm_215_lstm_cell_215_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_215_lstm_cell_215_bias_m_read_readvariableop5
1savev2_adam_dense_71_kernel_v_read_readvariableop3
/savev2_adam_dense_71_bias_v_read_readvariableopC
?savev2_adam_lstm_213_lstm_cell_213_kernel_v_read_readvariableopM
Isavev2_adam_lstm_213_lstm_cell_213_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_213_lstm_cell_213_bias_v_read_readvariableopC
?savev2_adam_lstm_214_lstm_cell_214_kernel_v_read_readvariableopM
Isavev2_adam_lstm_214_lstm_cell_214_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_214_lstm_cell_214_bias_v_read_readvariableopC
?savev2_adam_lstm_215_lstm_cell_215_kernel_v_read_readvariableopM
Isavev2_adam_lstm_215_lstm_cell_215_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_215_lstm_cell_215_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_71_kernel_read_readvariableop(savev2_dense_71_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_213_lstm_cell_213_kernel_read_readvariableopBsavev2_lstm_213_lstm_cell_213_recurrent_kernel_read_readvariableop6savev2_lstm_213_lstm_cell_213_bias_read_readvariableop8savev2_lstm_214_lstm_cell_214_kernel_read_readvariableopBsavev2_lstm_214_lstm_cell_214_recurrent_kernel_read_readvariableop6savev2_lstm_214_lstm_cell_214_bias_read_readvariableop8savev2_lstm_215_lstm_cell_215_kernel_read_readvariableopBsavev2_lstm_215_lstm_cell_215_recurrent_kernel_read_readvariableop6savev2_lstm_215_lstm_cell_215_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_71_kernel_m_read_readvariableop/savev2_adam_dense_71_bias_m_read_readvariableop?savev2_adam_lstm_213_lstm_cell_213_kernel_m_read_readvariableopIsavev2_adam_lstm_213_lstm_cell_213_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_213_lstm_cell_213_bias_m_read_readvariableop?savev2_adam_lstm_214_lstm_cell_214_kernel_m_read_readvariableopIsavev2_adam_lstm_214_lstm_cell_214_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_214_lstm_cell_214_bias_m_read_readvariableop?savev2_adam_lstm_215_lstm_cell_215_kernel_m_read_readvariableopIsavev2_adam_lstm_215_lstm_cell_215_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_215_lstm_cell_215_bias_m_read_readvariableop1savev2_adam_dense_71_kernel_v_read_readvariableop/savev2_adam_dense_71_bias_v_read_readvariableop?savev2_adam_lstm_213_lstm_cell_213_kernel_v_read_readvariableopIsavev2_adam_lstm_213_lstm_cell_213_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_213_lstm_cell_213_bias_v_read_readvariableop?savev2_adam_lstm_214_lstm_cell_214_kernel_v_read_readvariableopIsavev2_adam_lstm_214_lstm_cell_214_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_214_lstm_cell_214_bias_v_read_readvariableop?savev2_adam_lstm_215_lstm_cell_215_kernel_v_read_readvariableopIsavev2_adam_lstm_215_lstm_cell_215_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_215_lstm_cell_215_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?
?
while_cond_1375315
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1375315___redundant_placeholder05
1while_while_cond_1375315___redundant_placeholder15
1while_while_cond_1375315___redundant_placeholder25
1while_while_cond_1375315___redundant_placeholder3
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
lstm_213_while_cond_1376057.
*lstm_213_while_lstm_213_while_loop_counter4
0lstm_213_while_lstm_213_while_maximum_iterations
lstm_213_while_placeholder 
lstm_213_while_placeholder_1 
lstm_213_while_placeholder_2 
lstm_213_while_placeholder_30
,lstm_213_while_less_lstm_213_strided_slice_1G
Clstm_213_while_lstm_213_while_cond_1376057___redundant_placeholder0G
Clstm_213_while_lstm_213_while_cond_1376057___redundant_placeholder1G
Clstm_213_while_lstm_213_while_cond_1376057___redundant_placeholder2G
Clstm_213_while_lstm_213_while_cond_1376057___redundant_placeholder3
lstm_213_while_identity
?
lstm_213/while/LessLesslstm_213_while_placeholder,lstm_213_while_less_lstm_213_strided_slice_1*
T0*
_output_shapes
: ]
lstm_213/while/IdentityIdentitylstm_213/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_213_while_identity lstm_213/while/Identity:output:0*(
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
while_cond_1378187
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1378187___redundant_placeholder05
1while_while_cond_1378187___redundant_placeholder15
1while_while_cond_1378187___redundant_placeholder25
1while_while_cond_1378187___redundant_placeholder3
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
*__inference_lstm_214_layer_call_fn_1377480
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
E__inference_lstm_214_layer_call_and_return_conditional_losses_1374185|
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
E__inference_lstm_215_layer_call_and_return_conditional_losses_1378558

inputs>
,lstm_cell_227_matmul_readvariableop_resource:2(@
.lstm_cell_227_matmul_1_readvariableop_resource:
(;
-lstm_cell_227_biasadd_readvariableop_resource:(
identity??$lstm_cell_227/BiasAdd/ReadVariableOp?#lstm_cell_227/MatMul/ReadVariableOp?%lstm_cell_227/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_227/MatMul/ReadVariableOpReadVariableOp,lstm_cell_227_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_227/MatMulMatMulstrided_slice_2:output:0+lstm_cell_227/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_227/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_227_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_227/MatMul_1MatMulzeros:output:0-lstm_cell_227/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_227/addAddV2lstm_cell_227/MatMul:product:0 lstm_cell_227/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_227/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_227_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_227/BiasAddBiasAddlstm_cell_227/add:z:0,lstm_cell_227/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_227/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_227/splitSplit&lstm_cell_227/split/split_dim:output:0lstm_cell_227/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_227/SigmoidSigmoidlstm_cell_227/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_227/Sigmoid_1Sigmoidlstm_cell_227/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_227/mulMullstm_cell_227/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_227/ReluRelulstm_cell_227/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_227/mul_1Mullstm_cell_227/Sigmoid:y:0 lstm_cell_227/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_227/add_1AddV2lstm_cell_227/mul:z:0lstm_cell_227/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_227/Sigmoid_2Sigmoidlstm_cell_227/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_227/Relu_1Relulstm_cell_227/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_227/mul_2Mullstm_cell_227/Sigmoid_2:y:0"lstm_cell_227/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_227_matmul_readvariableop_resource.lstm_cell_227_matmul_1_readvariableop_resource-lstm_cell_227_biasadd_readvariableop_resource*
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
while_body_1378474*
condR
while_cond_1378473*K
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
NoOpNoOp%^lstm_cell_227/BiasAdd/ReadVariableOp$^lstm_cell_227/MatMul/ReadVariableOp&^lstm_cell_227/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_227/BiasAdd/ReadVariableOp$lstm_cell_227/BiasAdd/ReadVariableOp2J
#lstm_cell_227/MatMul/ReadVariableOp#lstm_cell_227/MatMul/ReadVariableOp2N
%lstm_cell_227/MatMul_1/ReadVariableOp%lstm_cell_227/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_225_layer_call_fn_1378737

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
J__inference_lstm_cell_225_layer_call_and_return_conditional_losses_1373752o
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
while_cond_1373765
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1373765___redundant_placeholder05
1while_while_cond_1373765___redundant_placeholder15
1while_while_cond_1373765___redundant_placeholder25
1while_while_cond_1373765___redundant_placeholder3
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
E__inference_dense_71_layer_call_and_return_conditional_losses_1375202

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
while_body_1375646
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_225_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_225_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_225_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_225_matmul_readvariableop_resource:	?G
4while_lstm_cell_225_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_225_biasadd_readvariableop_resource:	???*while/lstm_cell_225/BiasAdd/ReadVariableOp?)while/lstm_cell_225/MatMul/ReadVariableOp?+while/lstm_cell_225/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_225/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_225_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_225/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_225/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_225/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_225_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_225/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_225/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_225/addAddV2$while/lstm_cell_225/MatMul:product:0&while/lstm_cell_225/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_225/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_225_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_225/BiasAddBiasAddwhile/lstm_cell_225/add:z:02while/lstm_cell_225/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_225/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_225/splitSplit,while/lstm_cell_225/split/split_dim:output:0$while/lstm_cell_225/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_225/SigmoidSigmoid"while/lstm_cell_225/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_225/Sigmoid_1Sigmoid"while/lstm_cell_225/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_225/mulMul!while/lstm_cell_225/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_225/ReluRelu"while/lstm_cell_225/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_225/mul_1Mulwhile/lstm_cell_225/Sigmoid:y:0&while/lstm_cell_225/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_225/add_1AddV2while/lstm_cell_225/mul:z:0while/lstm_cell_225/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_225/Sigmoid_2Sigmoid"while/lstm_cell_225/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_225/Relu_1Reluwhile/lstm_cell_225/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_225/mul_2Mul!while/lstm_cell_225/Sigmoid_2:y:0(while/lstm_cell_225/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_225/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_225/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_225/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_225/BiasAdd/ReadVariableOp*^while/lstm_cell_225/MatMul/ReadVariableOp,^while/lstm_cell_225/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_225_biasadd_readvariableop_resource5while_lstm_cell_225_biasadd_readvariableop_resource_0"n
4while_lstm_cell_225_matmul_1_readvariableop_resource6while_lstm_cell_225_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_225_matmul_readvariableop_resource4while_lstm_cell_225_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_225/BiasAdd/ReadVariableOp*while/lstm_cell_225/BiasAdd/ReadVariableOp2V
)while/lstm_cell_225/MatMul/ReadVariableOp)while/lstm_cell_225/MatMul/ReadVariableOp2Z
+while/lstm_cell_225/MatMul_1/ReadVariableOp+while/lstm_cell_225/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)sequential_71_lstm_214_while_cond_1373455J
Fsequential_71_lstm_214_while_sequential_71_lstm_214_while_loop_counterP
Lsequential_71_lstm_214_while_sequential_71_lstm_214_while_maximum_iterations,
(sequential_71_lstm_214_while_placeholder.
*sequential_71_lstm_214_while_placeholder_1.
*sequential_71_lstm_214_while_placeholder_2.
*sequential_71_lstm_214_while_placeholder_3L
Hsequential_71_lstm_214_while_less_sequential_71_lstm_214_strided_slice_1c
_sequential_71_lstm_214_while_sequential_71_lstm_214_while_cond_1373455___redundant_placeholder0c
_sequential_71_lstm_214_while_sequential_71_lstm_214_while_cond_1373455___redundant_placeholder1c
_sequential_71_lstm_214_while_sequential_71_lstm_214_while_cond_1373455___redundant_placeholder2c
_sequential_71_lstm_214_while_sequential_71_lstm_214_while_cond_1373455___redundant_placeholder3)
%sequential_71_lstm_214_while_identity
?
!sequential_71/lstm_214/while/LessLess(sequential_71_lstm_214_while_placeholderHsequential_71_lstm_214_while_less_sequential_71_lstm_214_strided_slice_1*
T0*
_output_shapes
: y
%sequential_71/lstm_214/while/IdentityIdentity%sequential_71/lstm_214/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_71_lstm_214_while_identity.sequential_71/lstm_214/while/Identity:output:0*(
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
while_body_1377099
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_225_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_225_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_225_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_225_matmul_readvariableop_resource:	?G
4while_lstm_cell_225_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_225_biasadd_readvariableop_resource:	???*while/lstm_cell_225/BiasAdd/ReadVariableOp?)while/lstm_cell_225/MatMul/ReadVariableOp?+while/lstm_cell_225/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_225/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_225_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_225/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_225/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_225/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_225_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_225/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_225/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_225/addAddV2$while/lstm_cell_225/MatMul:product:0&while/lstm_cell_225/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_225/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_225_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_225/BiasAddBiasAddwhile/lstm_cell_225/add:z:02while/lstm_cell_225/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_225/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_225/splitSplit,while/lstm_cell_225/split/split_dim:output:0$while/lstm_cell_225/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_225/SigmoidSigmoid"while/lstm_cell_225/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_225/Sigmoid_1Sigmoid"while/lstm_cell_225/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_225/mulMul!while/lstm_cell_225/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_225/ReluRelu"while/lstm_cell_225/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_225/mul_1Mulwhile/lstm_cell_225/Sigmoid:y:0&while/lstm_cell_225/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_225/add_1AddV2while/lstm_cell_225/mul:z:0while/lstm_cell_225/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_225/Sigmoid_2Sigmoid"while/lstm_cell_225/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_225/Relu_1Reluwhile/lstm_cell_225/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_225/mul_2Mul!while/lstm_cell_225/Sigmoid_2:y:0(while/lstm_cell_225/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_225/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_225/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_225/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_225/BiasAdd/ReadVariableOp*^while/lstm_cell_225/MatMul/ReadVariableOp,^while/lstm_cell_225/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_225_biasadd_readvariableop_resource5while_lstm_cell_225_biasadd_readvariableop_resource_0"n
4while_lstm_cell_225_matmul_1_readvariableop_resource6while_lstm_cell_225_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_225_matmul_readvariableop_resource4while_lstm_cell_225_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_225/BiasAdd/ReadVariableOp*while/lstm_cell_225/BiasAdd/ReadVariableOp2V
)while/lstm_cell_225/MatMul/ReadVariableOp)while/lstm_cell_225/MatMul/ReadVariableOp2Z
+while/lstm_cell_225/MatMul_1/ReadVariableOp+while/lstm_cell_225/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1378331
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_227_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_227_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_227_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_227_matmul_readvariableop_resource:2(F
4while_lstm_cell_227_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_227_biasadd_readvariableop_resource:(??*while/lstm_cell_227/BiasAdd/ReadVariableOp?)while/lstm_cell_227/MatMul/ReadVariableOp?+while/lstm_cell_227/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_227/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_227_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_227/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_227/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_227/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_227_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_227/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_227/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_227/addAddV2$while/lstm_cell_227/MatMul:product:0&while/lstm_cell_227/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_227/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_227_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_227/BiasAddBiasAddwhile/lstm_cell_227/add:z:02while/lstm_cell_227/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_227/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_227/splitSplit,while/lstm_cell_227/split/split_dim:output:0$while/lstm_cell_227/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_227/SigmoidSigmoid"while/lstm_cell_227/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_227/Sigmoid_1Sigmoid"while/lstm_cell_227/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_227/mulMul!while/lstm_cell_227/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_227/ReluRelu"while/lstm_cell_227/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_227/mul_1Mulwhile/lstm_cell_227/Sigmoid:y:0&while/lstm_cell_227/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_227/add_1AddV2while/lstm_cell_227/mul:z:0while/lstm_cell_227/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_227/Sigmoid_2Sigmoid"while/lstm_cell_227/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_227/Relu_1Reluwhile/lstm_cell_227/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_227/mul_2Mul!while/lstm_cell_227/Sigmoid_2:y:0(while/lstm_cell_227/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_227/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_227/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_227/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_227/BiasAdd/ReadVariableOp*^while/lstm_cell_227/MatMul/ReadVariableOp,^while/lstm_cell_227/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_227_biasadd_readvariableop_resource5while_lstm_cell_227_biasadd_readvariableop_resource_0"n
4while_lstm_cell_227_matmul_1_readvariableop_resource6while_lstm_cell_227_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_227_matmul_readvariableop_resource4while_lstm_cell_227_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_227/BiasAdd/ReadVariableOp*while/lstm_cell_227/BiasAdd/ReadVariableOp2V
)while/lstm_cell_227/MatMul/ReadVariableOp)while/lstm_cell_227/MatMul/ReadVariableOp2Z
+while/lstm_cell_227/MatMul_1/ReadVariableOp+while/lstm_cell_227/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_225_layer_call_and_return_conditional_losses_1373752

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
J__inference_lstm_cell_227_layer_call_and_return_conditional_losses_1378982

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
while_cond_1373956
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1373956___redundant_placeholder05
1while_while_cond_1373956___redundant_placeholder15
1while_while_cond_1373956___redundant_placeholder25
1while_while_cond_1373956___redundant_placeholder3
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
*__inference_lstm_215_layer_call_fn_1378118

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
E__inference_lstm_215_layer_call_and_return_conditional_losses_1375184o
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
*__inference_lstm_213_layer_call_fn_1376864
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
E__inference_lstm_213_layer_call_and_return_conditional_losses_1373835|
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
??
?
#__inference__traced_restore_1379287
file_prefix2
 assignvariableop_dense_71_kernel:
.
 assignvariableop_1_dense_71_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_213_lstm_cell_213_kernel:	?M
:assignvariableop_8_lstm_213_lstm_cell_213_recurrent_kernel:	d?=
.assignvariableop_9_lstm_213_lstm_cell_213_bias:	?D
1assignvariableop_10_lstm_214_lstm_cell_214_kernel:	d?N
;assignvariableop_11_lstm_214_lstm_cell_214_recurrent_kernel:	2?>
/assignvariableop_12_lstm_214_lstm_cell_214_bias:	?C
1assignvariableop_13_lstm_215_lstm_cell_215_kernel:2(M
;assignvariableop_14_lstm_215_lstm_cell_215_recurrent_kernel:
(=
/assignvariableop_15_lstm_215_lstm_cell_215_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_71_kernel_m:
6
(assignvariableop_19_adam_dense_71_bias_m:K
8assignvariableop_20_adam_lstm_213_lstm_cell_213_kernel_m:	?U
Bassignvariableop_21_adam_lstm_213_lstm_cell_213_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_213_lstm_cell_213_bias_m:	?K
8assignvariableop_23_adam_lstm_214_lstm_cell_214_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_214_lstm_cell_214_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_214_lstm_cell_214_bias_m:	?J
8assignvariableop_26_adam_lstm_215_lstm_cell_215_kernel_m:2(T
Bassignvariableop_27_adam_lstm_215_lstm_cell_215_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_215_lstm_cell_215_bias_m:(<
*assignvariableop_29_adam_dense_71_kernel_v:
6
(assignvariableop_30_adam_dense_71_bias_v:K
8assignvariableop_31_adam_lstm_213_lstm_cell_213_kernel_v:	?U
Bassignvariableop_32_adam_lstm_213_lstm_cell_213_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_213_lstm_cell_213_bias_v:	?K
8assignvariableop_34_adam_lstm_214_lstm_cell_214_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_214_lstm_cell_214_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_214_lstm_cell_214_bias_v:	?J
8assignvariableop_37_adam_lstm_215_lstm_cell_215_kernel_v:2(T
Bassignvariableop_38_adam_lstm_215_lstm_cell_215_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_215_lstm_cell_215_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_71_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_71_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_213_lstm_cell_213_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_213_lstm_cell_213_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_213_lstm_cell_213_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_214_lstm_cell_214_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_214_lstm_cell_214_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_214_lstm_cell_214_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_215_lstm_cell_215_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_215_lstm_cell_215_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_215_lstm_cell_215_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_71_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_71_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_213_lstm_cell_213_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_213_lstm_cell_213_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_213_lstm_cell_213_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_214_lstm_cell_214_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_214_lstm_cell_214_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_214_lstm_cell_214_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_215_lstm_cell_215_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_215_lstm_cell_215_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_215_lstm_cell_215_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_71_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_71_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_213_lstm_cell_213_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_213_lstm_cell_213_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_213_lstm_cell_213_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_214_lstm_cell_214_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_214_lstm_cell_214_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_214_lstm_cell_214_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_215_lstm_cell_215_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_215_lstm_cell_215_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_215_lstm_cell_215_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_cond_1374799
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1374799___redundant_placeholder05
1while_while_cond_1374799___redundant_placeholder15
1while_while_cond_1374799___redundant_placeholder25
1while_while_cond_1374799___redundant_placeholder3
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
E__inference_lstm_215_layer_call_and_return_conditional_losses_1375400

inputs>
,lstm_cell_227_matmul_readvariableop_resource:2(@
.lstm_cell_227_matmul_1_readvariableop_resource:
(;
-lstm_cell_227_biasadd_readvariableop_resource:(
identity??$lstm_cell_227/BiasAdd/ReadVariableOp?#lstm_cell_227/MatMul/ReadVariableOp?%lstm_cell_227/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_227/MatMul/ReadVariableOpReadVariableOp,lstm_cell_227_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_227/MatMulMatMulstrided_slice_2:output:0+lstm_cell_227/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_227/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_227_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_227/MatMul_1MatMulzeros:output:0-lstm_cell_227/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_227/addAddV2lstm_cell_227/MatMul:product:0 lstm_cell_227/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_227/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_227_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_227/BiasAddBiasAddlstm_cell_227/add:z:0,lstm_cell_227/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_227/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_227/splitSplit&lstm_cell_227/split/split_dim:output:0lstm_cell_227/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_227/SigmoidSigmoidlstm_cell_227/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_227/Sigmoid_1Sigmoidlstm_cell_227/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_227/mulMullstm_cell_227/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_227/ReluRelulstm_cell_227/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_227/mul_1Mullstm_cell_227/Sigmoid:y:0 lstm_cell_227/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_227/add_1AddV2lstm_cell_227/mul:z:0lstm_cell_227/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_227/Sigmoid_2Sigmoidlstm_cell_227/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_227/Relu_1Relulstm_cell_227/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_227/mul_2Mullstm_cell_227/Sigmoid_2:y:0"lstm_cell_227/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_227_matmul_readvariableop_resource.lstm_cell_227_matmul_1_readvariableop_resource-lstm_cell_227_biasadd_readvariableop_resource*
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
while_body_1375316*
condR
while_cond_1375315*K
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
NoOpNoOp%^lstm_cell_227/BiasAdd/ReadVariableOp$^lstm_cell_227/MatMul/ReadVariableOp&^lstm_cell_227/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_227/BiasAdd/ReadVariableOp$lstm_cell_227/BiasAdd/ReadVariableOp2J
#lstm_cell_227/MatMul/ReadVariableOp#lstm_cell_227/MatMul/ReadVariableOp2N
%lstm_cell_227/MatMul_1/ReadVariableOp%lstm_cell_227/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?C
?

lstm_214_while_body_1376197.
*lstm_214_while_lstm_214_while_loop_counter4
0lstm_214_while_lstm_214_while_maximum_iterations
lstm_214_while_placeholder 
lstm_214_while_placeholder_1 
lstm_214_while_placeholder_2 
lstm_214_while_placeholder_3-
)lstm_214_while_lstm_214_strided_slice_1_0i
elstm_214_while_tensorarrayv2read_tensorlistgetitem_lstm_214_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_214_while_lstm_cell_226_matmul_readvariableop_resource_0:	d?R
?lstm_214_while_lstm_cell_226_matmul_1_readvariableop_resource_0:	2?M
>lstm_214_while_lstm_cell_226_biasadd_readvariableop_resource_0:	?
lstm_214_while_identity
lstm_214_while_identity_1
lstm_214_while_identity_2
lstm_214_while_identity_3
lstm_214_while_identity_4
lstm_214_while_identity_5+
'lstm_214_while_lstm_214_strided_slice_1g
clstm_214_while_tensorarrayv2read_tensorlistgetitem_lstm_214_tensorarrayunstack_tensorlistfromtensorN
;lstm_214_while_lstm_cell_226_matmul_readvariableop_resource:	d?P
=lstm_214_while_lstm_cell_226_matmul_1_readvariableop_resource:	2?K
<lstm_214_while_lstm_cell_226_biasadd_readvariableop_resource:	???3lstm_214/while/lstm_cell_226/BiasAdd/ReadVariableOp?2lstm_214/while/lstm_cell_226/MatMul/ReadVariableOp?4lstm_214/while/lstm_cell_226/MatMul_1/ReadVariableOp?
@lstm_214/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_214/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_214_while_tensorarrayv2read_tensorlistgetitem_lstm_214_tensorarrayunstack_tensorlistfromtensor_0lstm_214_while_placeholderIlstm_214/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_214/while/lstm_cell_226/MatMul/ReadVariableOpReadVariableOp=lstm_214_while_lstm_cell_226_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_214/while/lstm_cell_226/MatMulMatMul9lstm_214/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_214/while/lstm_cell_226/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_214/while/lstm_cell_226/MatMul_1/ReadVariableOpReadVariableOp?lstm_214_while_lstm_cell_226_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_214/while/lstm_cell_226/MatMul_1MatMullstm_214_while_placeholder_2<lstm_214/while/lstm_cell_226/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_214/while/lstm_cell_226/addAddV2-lstm_214/while/lstm_cell_226/MatMul:product:0/lstm_214/while/lstm_cell_226/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_214/while/lstm_cell_226/BiasAdd/ReadVariableOpReadVariableOp>lstm_214_while_lstm_cell_226_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_214/while/lstm_cell_226/BiasAddBiasAdd$lstm_214/while/lstm_cell_226/add:z:0;lstm_214/while/lstm_cell_226/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_214/while/lstm_cell_226/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_214/while/lstm_cell_226/splitSplit5lstm_214/while/lstm_cell_226/split/split_dim:output:0-lstm_214/while/lstm_cell_226/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_214/while/lstm_cell_226/SigmoidSigmoid+lstm_214/while/lstm_cell_226/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_214/while/lstm_cell_226/Sigmoid_1Sigmoid+lstm_214/while/lstm_cell_226/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_214/while/lstm_cell_226/mulMul*lstm_214/while/lstm_cell_226/Sigmoid_1:y:0lstm_214_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_214/while/lstm_cell_226/ReluRelu+lstm_214/while/lstm_cell_226/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_214/while/lstm_cell_226/mul_1Mul(lstm_214/while/lstm_cell_226/Sigmoid:y:0/lstm_214/while/lstm_cell_226/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_214/while/lstm_cell_226/add_1AddV2$lstm_214/while/lstm_cell_226/mul:z:0&lstm_214/while/lstm_cell_226/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_214/while/lstm_cell_226/Sigmoid_2Sigmoid+lstm_214/while/lstm_cell_226/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_214/while/lstm_cell_226/Relu_1Relu&lstm_214/while/lstm_cell_226/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_214/while/lstm_cell_226/mul_2Mul*lstm_214/while/lstm_cell_226/Sigmoid_2:y:01lstm_214/while/lstm_cell_226/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_214/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_214_while_placeholder_1lstm_214_while_placeholder&lstm_214/while/lstm_cell_226/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_214/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_214/while/addAddV2lstm_214_while_placeholderlstm_214/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_214/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_214/while/add_1AddV2*lstm_214_while_lstm_214_while_loop_counterlstm_214/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_214/while/IdentityIdentitylstm_214/while/add_1:z:0^lstm_214/while/NoOp*
T0*
_output_shapes
: ?
lstm_214/while/Identity_1Identity0lstm_214_while_lstm_214_while_maximum_iterations^lstm_214/while/NoOp*
T0*
_output_shapes
: t
lstm_214/while/Identity_2Identitylstm_214/while/add:z:0^lstm_214/while/NoOp*
T0*
_output_shapes
: ?
lstm_214/while/Identity_3IdentityClstm_214/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_214/while/NoOp*
T0*
_output_shapes
: ?
lstm_214/while/Identity_4Identity&lstm_214/while/lstm_cell_226/mul_2:z:0^lstm_214/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_214/while/Identity_5Identity&lstm_214/while/lstm_cell_226/add_1:z:0^lstm_214/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_214/while/NoOpNoOp4^lstm_214/while/lstm_cell_226/BiasAdd/ReadVariableOp3^lstm_214/while/lstm_cell_226/MatMul/ReadVariableOp5^lstm_214/while/lstm_cell_226/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_214_while_identity lstm_214/while/Identity:output:0"?
lstm_214_while_identity_1"lstm_214/while/Identity_1:output:0"?
lstm_214_while_identity_2"lstm_214/while/Identity_2:output:0"?
lstm_214_while_identity_3"lstm_214/while/Identity_3:output:0"?
lstm_214_while_identity_4"lstm_214/while/Identity_4:output:0"?
lstm_214_while_identity_5"lstm_214/while/Identity_5:output:0"T
'lstm_214_while_lstm_214_strided_slice_1)lstm_214_while_lstm_214_strided_slice_1_0"~
<lstm_214_while_lstm_cell_226_biasadd_readvariableop_resource>lstm_214_while_lstm_cell_226_biasadd_readvariableop_resource_0"?
=lstm_214_while_lstm_cell_226_matmul_1_readvariableop_resource?lstm_214_while_lstm_cell_226_matmul_1_readvariableop_resource_0"|
;lstm_214_while_lstm_cell_226_matmul_readvariableop_resource=lstm_214_while_lstm_cell_226_matmul_readvariableop_resource_0"?
clstm_214_while_tensorarrayv2read_tensorlistgetitem_lstm_214_tensorarrayunstack_tensorlistfromtensorelstm_214_while_tensorarrayv2read_tensorlistgetitem_lstm_214_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_214/while/lstm_cell_226/BiasAdd/ReadVariableOp3lstm_214/while/lstm_cell_226/BiasAdd/ReadVariableOp2h
2lstm_214/while/lstm_cell_226/MatMul/ReadVariableOp2lstm_214/while/lstm_cell_226/MatMul/ReadVariableOp2l
4lstm_214/while/lstm_cell_226/MatMul_1/ReadVariableOp4lstm_214/while/lstm_cell_226/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_214_layer_call_and_return_conditional_losses_1374185

inputs(
lstm_cell_226_1374103:	d?(
lstm_cell_226_1374105:	2?$
lstm_cell_226_1374107:	?
identity??%lstm_cell_226/StatefulPartitionedCall?while;
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
%lstm_cell_226/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_226_1374103lstm_cell_226_1374105lstm_cell_226_1374107*
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
J__inference_lstm_cell_226_layer_call_and_return_conditional_losses_1374102n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_226_1374103lstm_cell_226_1374105lstm_cell_226_1374107*
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
while_body_1374116*
condR
while_cond_1374115*K
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
NoOpNoOp&^lstm_cell_226/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_226/StatefulPartitionedCall%lstm_cell_226/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_213_layer_call_and_return_conditional_losses_1377469

inputs?
,lstm_cell_225_matmul_readvariableop_resource:	?A
.lstm_cell_225_matmul_1_readvariableop_resource:	d?<
-lstm_cell_225_biasadd_readvariableop_resource:	?
identity??$lstm_cell_225/BiasAdd/ReadVariableOp?#lstm_cell_225/MatMul/ReadVariableOp?%lstm_cell_225/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_225/MatMul/ReadVariableOpReadVariableOp,lstm_cell_225_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_225/MatMulMatMulstrided_slice_2:output:0+lstm_cell_225/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_225/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_225_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_225/MatMul_1MatMulzeros:output:0-lstm_cell_225/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_225/addAddV2lstm_cell_225/MatMul:product:0 lstm_cell_225/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_225/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_225_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_225/BiasAddBiasAddlstm_cell_225/add:z:0,lstm_cell_225/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_225/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_225/splitSplit&lstm_cell_225/split/split_dim:output:0lstm_cell_225/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_225/SigmoidSigmoidlstm_cell_225/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_225/Sigmoid_1Sigmoidlstm_cell_225/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_225/mulMullstm_cell_225/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_225/ReluRelulstm_cell_225/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_225/mul_1Mullstm_cell_225/Sigmoid:y:0 lstm_cell_225/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_225/add_1AddV2lstm_cell_225/mul:z:0lstm_cell_225/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_225/Sigmoid_2Sigmoidlstm_cell_225/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_225/Relu_1Relulstm_cell_225/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_225/mul_2Mullstm_cell_225/Sigmoid_2:y:0"lstm_cell_225/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_225_matmul_readvariableop_resource.lstm_cell_225_matmul_1_readvariableop_resource-lstm_cell_225_biasadd_readvariableop_resource*
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
while_body_1377385*
condR
while_cond_1377384*K
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
NoOpNoOp%^lstm_cell_225/BiasAdd/ReadVariableOp$^lstm_cell_225/MatMul/ReadVariableOp&^lstm_cell_225/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_225/BiasAdd/ReadVariableOp$lstm_cell_225/BiasAdd/ReadVariableOp2J
#lstm_cell_225/MatMul/ReadVariableOp#lstm_cell_225/MatMul/ReadVariableOp2N
%lstm_cell_225/MatMul_1/ReadVariableOp%lstm_cell_225/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_215_layer_call_and_return_conditional_losses_1375184

inputs>
,lstm_cell_227_matmul_readvariableop_resource:2(@
.lstm_cell_227_matmul_1_readvariableop_resource:
(;
-lstm_cell_227_biasadd_readvariableop_resource:(
identity??$lstm_cell_227/BiasAdd/ReadVariableOp?#lstm_cell_227/MatMul/ReadVariableOp?%lstm_cell_227/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_227/MatMul/ReadVariableOpReadVariableOp,lstm_cell_227_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_227/MatMulMatMulstrided_slice_2:output:0+lstm_cell_227/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_227/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_227_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_227/MatMul_1MatMulzeros:output:0-lstm_cell_227/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_227/addAddV2lstm_cell_227/MatMul:product:0 lstm_cell_227/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_227/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_227_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_227/BiasAddBiasAddlstm_cell_227/add:z:0,lstm_cell_227/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_227/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_227/splitSplit&lstm_cell_227/split/split_dim:output:0lstm_cell_227/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_227/SigmoidSigmoidlstm_cell_227/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_227/Sigmoid_1Sigmoidlstm_cell_227/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_227/mulMullstm_cell_227/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_227/ReluRelulstm_cell_227/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_227/mul_1Mullstm_cell_227/Sigmoid:y:0 lstm_cell_227/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_227/add_1AddV2lstm_cell_227/mul:z:0lstm_cell_227/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_227/Sigmoid_2Sigmoidlstm_cell_227/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_227/Relu_1Relulstm_cell_227/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_227/mul_2Mullstm_cell_227/Sigmoid_2:y:0"lstm_cell_227/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_227_matmul_readvariableop_resource.lstm_cell_227_matmul_1_readvariableop_resource-lstm_cell_227_biasadd_readvariableop_resource*
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
while_body_1375100*
condR
while_cond_1375099*K
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
NoOpNoOp%^lstm_cell_227/BiasAdd/ReadVariableOp$^lstm_cell_227/MatMul/ReadVariableOp&^lstm_cell_227/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_227/BiasAdd/ReadVariableOp$lstm_cell_227/BiasAdd/ReadVariableOp2J
#lstm_cell_227/MatMul/ReadVariableOp#lstm_cell_227/MatMul/ReadVariableOp2N
%lstm_cell_227/MatMul_1/ReadVariableOp%lstm_cell_227/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?K
?
E__inference_lstm_215_layer_call_and_return_conditional_losses_1378415
inputs_0>
,lstm_cell_227_matmul_readvariableop_resource:2(@
.lstm_cell_227_matmul_1_readvariableop_resource:
(;
-lstm_cell_227_biasadd_readvariableop_resource:(
identity??$lstm_cell_227/BiasAdd/ReadVariableOp?#lstm_cell_227/MatMul/ReadVariableOp?%lstm_cell_227/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_227/MatMul/ReadVariableOpReadVariableOp,lstm_cell_227_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_227/MatMulMatMulstrided_slice_2:output:0+lstm_cell_227/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_227/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_227_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_227/MatMul_1MatMulzeros:output:0-lstm_cell_227/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_227/addAddV2lstm_cell_227/MatMul:product:0 lstm_cell_227/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_227/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_227_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_227/BiasAddBiasAddlstm_cell_227/add:z:0,lstm_cell_227/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_227/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_227/splitSplit&lstm_cell_227/split/split_dim:output:0lstm_cell_227/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_227/SigmoidSigmoidlstm_cell_227/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_227/Sigmoid_1Sigmoidlstm_cell_227/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_227/mulMullstm_cell_227/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_227/ReluRelulstm_cell_227/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_227/mul_1Mullstm_cell_227/Sigmoid:y:0 lstm_cell_227/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_227/add_1AddV2lstm_cell_227/mul:z:0lstm_cell_227/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_227/Sigmoid_2Sigmoidlstm_cell_227/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_227/Relu_1Relulstm_cell_227/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_227/mul_2Mullstm_cell_227/Sigmoid_2:y:0"lstm_cell_227/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_227_matmul_readvariableop_resource.lstm_cell_227_matmul_1_readvariableop_resource-lstm_cell_227_biasadd_readvariableop_resource*
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
while_body_1378331*
condR
while_cond_1378330*K
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
NoOpNoOp%^lstm_cell_227/BiasAdd/ReadVariableOp$^lstm_cell_227/MatMul/ReadVariableOp&^lstm_cell_227/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_227/BiasAdd/ReadVariableOp$lstm_cell_227/BiasAdd/ReadVariableOp2J
#lstm_cell_227/MatMul/ReadVariableOp#lstm_cell_227/MatMul/ReadVariableOp2N
%lstm_cell_227/MatMul_1/ReadVariableOp%lstm_cell_227/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_227_layer_call_and_return_conditional_losses_1379014

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
?K
?
E__inference_lstm_214_layer_call_and_return_conditional_losses_1377656
inputs_0?
,lstm_cell_226_matmul_readvariableop_resource:	d?A
.lstm_cell_226_matmul_1_readvariableop_resource:	2?<
-lstm_cell_226_biasadd_readvariableop_resource:	?
identity??$lstm_cell_226/BiasAdd/ReadVariableOp?#lstm_cell_226/MatMul/ReadVariableOp?%lstm_cell_226/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_226/MatMul/ReadVariableOpReadVariableOp,lstm_cell_226_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_226/MatMulMatMulstrided_slice_2:output:0+lstm_cell_226/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_226/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_226_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_226/MatMul_1MatMulzeros:output:0-lstm_cell_226/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_226/addAddV2lstm_cell_226/MatMul:product:0 lstm_cell_226/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_226/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_226_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_226/BiasAddBiasAddlstm_cell_226/add:z:0,lstm_cell_226/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_226/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_226/splitSplit&lstm_cell_226/split/split_dim:output:0lstm_cell_226/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_226/SigmoidSigmoidlstm_cell_226/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_226/Sigmoid_1Sigmoidlstm_cell_226/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_226/mulMullstm_cell_226/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_226/ReluRelulstm_cell_226/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_226/mul_1Mullstm_cell_226/Sigmoid:y:0 lstm_cell_226/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_226/add_1AddV2lstm_cell_226/mul:z:0lstm_cell_226/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_226/Sigmoid_2Sigmoidlstm_cell_226/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_226/Relu_1Relulstm_cell_226/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_226/mul_2Mullstm_cell_226/Sigmoid_2:y:0"lstm_cell_226/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_226_matmul_readvariableop_resource.lstm_cell_226_matmul_1_readvariableop_resource-lstm_cell_226_biasadd_readvariableop_resource*
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
while_body_1377572*
condR
while_cond_1377571*K
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
NoOpNoOp%^lstm_cell_226/BiasAdd/ReadVariableOp$^lstm_cell_226/MatMul/ReadVariableOp&^lstm_cell_226/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_226/BiasAdd/ReadVariableOp$lstm_cell_226/BiasAdd/ReadVariableOp2J
#lstm_cell_226/MatMul/ReadVariableOp#lstm_cell_226/MatMul/ReadVariableOp2N
%lstm_cell_226/MatMul_1/ReadVariableOp%lstm_cell_226/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_1374465
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1374465___redundant_placeholder05
1while_while_cond_1374465___redundant_placeholder15
1while_while_cond_1374465___redundant_placeholder25
1while_while_cond_1374465___redundant_placeholder3
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
J__inference_sequential_71_layer_call_and_return_conditional_losses_1375910
lstm_213_input#
lstm_213_1375883:	?#
lstm_213_1375885:	d?
lstm_213_1375887:	?#
lstm_214_1375890:	d?#
lstm_214_1375892:	2?
lstm_214_1375894:	?"
lstm_215_1375897:2("
lstm_215_1375899:
(
lstm_215_1375901:("
dense_71_1375904:

dense_71_1375906:
identity?? dense_71/StatefulPartitionedCall? lstm_213/StatefulPartitionedCall? lstm_214/StatefulPartitionedCall? lstm_215/StatefulPartitionedCall?
 lstm_213/StatefulPartitionedCallStatefulPartitionedCalllstm_213_inputlstm_213_1375883lstm_213_1375885lstm_213_1375887*
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
E__inference_lstm_213_layer_call_and_return_conditional_losses_1375730?
 lstm_214/StatefulPartitionedCallStatefulPartitionedCall)lstm_213/StatefulPartitionedCall:output:0lstm_214_1375890lstm_214_1375892lstm_214_1375894*
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
E__inference_lstm_214_layer_call_and_return_conditional_losses_1375565?
 lstm_215/StatefulPartitionedCallStatefulPartitionedCall)lstm_214/StatefulPartitionedCall:output:0lstm_215_1375897lstm_215_1375899lstm_215_1375901*
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
E__inference_lstm_215_layer_call_and_return_conditional_losses_1375400?
 dense_71/StatefulPartitionedCallStatefulPartitionedCall)lstm_215/StatefulPartitionedCall:output:0dense_71_1375904dense_71_1375906*
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
E__inference_dense_71_layer_call_and_return_conditional_losses_1375202x
IdentityIdentity)dense_71/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_71/StatefulPartitionedCall!^lstm_213/StatefulPartitionedCall!^lstm_214/StatefulPartitionedCall!^lstm_215/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_71/StatefulPartitionedCall dense_71/StatefulPartitionedCall2D
 lstm_213/StatefulPartitionedCall lstm_213/StatefulPartitionedCall2D
 lstm_214/StatefulPartitionedCall lstm_214/StatefulPartitionedCall2D
 lstm_215/StatefulPartitionedCall lstm_215/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_213_input
?8
?
while_body_1377572
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_226_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_226_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_226_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_226_matmul_readvariableop_resource:	d?G
4while_lstm_cell_226_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_226_biasadd_readvariableop_resource:	???*while/lstm_cell_226/BiasAdd/ReadVariableOp?)while/lstm_cell_226/MatMul/ReadVariableOp?+while/lstm_cell_226/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_226/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_226_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_226/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_226/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_226/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_226_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_226/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_226/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_226/addAddV2$while/lstm_cell_226/MatMul:product:0&while/lstm_cell_226/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_226/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_226_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_226/BiasAddBiasAddwhile/lstm_cell_226/add:z:02while/lstm_cell_226/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_226/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_226/splitSplit,while/lstm_cell_226/split/split_dim:output:0$while/lstm_cell_226/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_226/SigmoidSigmoid"while/lstm_cell_226/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_226/Sigmoid_1Sigmoid"while/lstm_cell_226/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_226/mulMul!while/lstm_cell_226/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_226/ReluRelu"while/lstm_cell_226/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_226/mul_1Mulwhile/lstm_cell_226/Sigmoid:y:0&while/lstm_cell_226/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_226/add_1AddV2while/lstm_cell_226/mul:z:0while/lstm_cell_226/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_226/Sigmoid_2Sigmoid"while/lstm_cell_226/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_226/Relu_1Reluwhile/lstm_cell_226/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_226/mul_2Mul!while/lstm_cell_226/Sigmoid_2:y:0(while/lstm_cell_226/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_226/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_226/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_226/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_226/BiasAdd/ReadVariableOp*^while/lstm_cell_226/MatMul/ReadVariableOp,^while/lstm_cell_226/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_226_biasadd_readvariableop_resource5while_lstm_cell_226_biasadd_readvariableop_resource_0"n
4while_lstm_cell_226_matmul_1_readvariableop_resource6while_lstm_cell_226_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_226_matmul_readvariableop_resource4while_lstm_cell_226_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_226/BiasAdd/ReadVariableOp*while/lstm_cell_226/BiasAdd/ReadVariableOp2V
)while/lstm_cell_226/MatMul/ReadVariableOp)while/lstm_cell_226/MatMul/ReadVariableOp2Z
+while/lstm_cell_226/MatMul_1/ReadVariableOp+while/lstm_cell_226/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1377715
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_226_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_226_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_226_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_226_matmul_readvariableop_resource:	d?G
4while_lstm_cell_226_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_226_biasadd_readvariableop_resource:	???*while/lstm_cell_226/BiasAdd/ReadVariableOp?)while/lstm_cell_226/MatMul/ReadVariableOp?+while/lstm_cell_226/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_226/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_226_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_226/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_226/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_226/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_226_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_226/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_226/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_226/addAddV2$while/lstm_cell_226/MatMul:product:0&while/lstm_cell_226/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_226/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_226_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_226/BiasAddBiasAddwhile/lstm_cell_226/add:z:02while/lstm_cell_226/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_226/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_226/splitSplit,while/lstm_cell_226/split/split_dim:output:0$while/lstm_cell_226/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_226/SigmoidSigmoid"while/lstm_cell_226/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_226/Sigmoid_1Sigmoid"while/lstm_cell_226/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_226/mulMul!while/lstm_cell_226/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_226/ReluRelu"while/lstm_cell_226/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_226/mul_1Mulwhile/lstm_cell_226/Sigmoid:y:0&while/lstm_cell_226/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_226/add_1AddV2while/lstm_cell_226/mul:z:0while/lstm_cell_226/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_226/Sigmoid_2Sigmoid"while/lstm_cell_226/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_226/Relu_1Reluwhile/lstm_cell_226/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_226/mul_2Mul!while/lstm_cell_226/Sigmoid_2:y:0(while/lstm_cell_226/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_226/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_226/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_226/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_226/BiasAdd/ReadVariableOp*^while/lstm_cell_226/MatMul/ReadVariableOp,^while/lstm_cell_226/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_226_biasadd_readvariableop_resource5while_lstm_cell_226_biasadd_readvariableop_resource_0"n
4while_lstm_cell_226_matmul_1_readvariableop_resource6while_lstm_cell_226_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_226_matmul_readvariableop_resource4while_lstm_cell_226_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_226/BiasAdd/ReadVariableOp*while/lstm_cell_226/BiasAdd/ReadVariableOp2V
)while/lstm_cell_226/MatMul/ReadVariableOp)while/lstm_cell_226/MatMul/ReadVariableOp2Z
+while/lstm_cell_226/MatMul_1/ReadVariableOp+while/lstm_cell_226/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1378000
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1378000___redundant_placeholder05
1while_while_cond_1378000___redundant_placeholder15
1while_while_cond_1378000___redundant_placeholder25
1while_while_cond_1378000___redundant_placeholder3
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
)sequential_71_lstm_213_while_cond_1373316J
Fsequential_71_lstm_213_while_sequential_71_lstm_213_while_loop_counterP
Lsequential_71_lstm_213_while_sequential_71_lstm_213_while_maximum_iterations,
(sequential_71_lstm_213_while_placeholder.
*sequential_71_lstm_213_while_placeholder_1.
*sequential_71_lstm_213_while_placeholder_2.
*sequential_71_lstm_213_while_placeholder_3L
Hsequential_71_lstm_213_while_less_sequential_71_lstm_213_strided_slice_1c
_sequential_71_lstm_213_while_sequential_71_lstm_213_while_cond_1373316___redundant_placeholder0c
_sequential_71_lstm_213_while_sequential_71_lstm_213_while_cond_1373316___redundant_placeholder1c
_sequential_71_lstm_213_while_sequential_71_lstm_213_while_cond_1373316___redundant_placeholder2c
_sequential_71_lstm_213_while_sequential_71_lstm_213_while_cond_1373316___redundant_placeholder3)
%sequential_71_lstm_213_while_identity
?
!sequential_71/lstm_213/while/LessLess(sequential_71_lstm_213_while_placeholderHsequential_71_lstm_213_while_less_sequential_71_lstm_213_strided_slice_1*
T0*
_output_shapes
: y
%sequential_71/lstm_213/while/IdentityIdentity%sequential_71/lstm_213/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_71_lstm_213_while_identity.sequential_71/lstm_213/while/Identity:output:0*(
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
while_body_1375316
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_227_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_227_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_227_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_227_matmul_readvariableop_resource:2(F
4while_lstm_cell_227_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_227_biasadd_readvariableop_resource:(??*while/lstm_cell_227/BiasAdd/ReadVariableOp?)while/lstm_cell_227/MatMul/ReadVariableOp?+while/lstm_cell_227/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_227/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_227_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_227/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_227/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_227/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_227_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_227/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_227/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_227/addAddV2$while/lstm_cell_227/MatMul:product:0&while/lstm_cell_227/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_227/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_227_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_227/BiasAddBiasAddwhile/lstm_cell_227/add:z:02while/lstm_cell_227/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_227/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_227/splitSplit,while/lstm_cell_227/split/split_dim:output:0$while/lstm_cell_227/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_227/SigmoidSigmoid"while/lstm_cell_227/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_227/Sigmoid_1Sigmoid"while/lstm_cell_227/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_227/mulMul!while/lstm_cell_227/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_227/ReluRelu"while/lstm_cell_227/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_227/mul_1Mulwhile/lstm_cell_227/Sigmoid:y:0&while/lstm_cell_227/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_227/add_1AddV2while/lstm_cell_227/mul:z:0while/lstm_cell_227/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_227/Sigmoid_2Sigmoid"while/lstm_cell_227/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_227/Relu_1Reluwhile/lstm_cell_227/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_227/mul_2Mul!while/lstm_cell_227/Sigmoid_2:y:0(while/lstm_cell_227/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_227/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_227/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_227/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_227/BiasAdd/ReadVariableOp*^while/lstm_cell_227/MatMul/ReadVariableOp,^while/lstm_cell_227/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_227_biasadd_readvariableop_resource5while_lstm_cell_227_biasadd_readvariableop_resource_0"n
4while_lstm_cell_227_matmul_1_readvariableop_resource6while_lstm_cell_227_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_227_matmul_readvariableop_resource4while_lstm_cell_227_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_227/BiasAdd/ReadVariableOp*while/lstm_cell_227/BiasAdd/ReadVariableOp2V
)while/lstm_cell_227/MatMul/ReadVariableOp)while/lstm_cell_227/MatMul/ReadVariableOp2Z
+while/lstm_cell_227/MatMul_1/ReadVariableOp+while/lstm_cell_227/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_215_layer_call_fn_1378107
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
E__inference_lstm_215_layer_call_and_return_conditional_losses_1374726o
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
/__inference_sequential_71_layer_call_fn_1375999

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
J__inference_sequential_71_layer_call_and_return_conditional_losses_1375798o
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
while_body_1374800
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_225_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_225_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_225_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_225_matmul_readvariableop_resource:	?G
4while_lstm_cell_225_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_225_biasadd_readvariableop_resource:	???*while/lstm_cell_225/BiasAdd/ReadVariableOp?)while/lstm_cell_225/MatMul/ReadVariableOp?+while/lstm_cell_225/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_225/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_225_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_225/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_225/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_225/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_225_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_225/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_225/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_225/addAddV2$while/lstm_cell_225/MatMul:product:0&while/lstm_cell_225/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_225/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_225_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_225/BiasAddBiasAddwhile/lstm_cell_225/add:z:02while/lstm_cell_225/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_225/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_225/splitSplit,while/lstm_cell_225/split/split_dim:output:0$while/lstm_cell_225/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_225/SigmoidSigmoid"while/lstm_cell_225/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_225/Sigmoid_1Sigmoid"while/lstm_cell_225/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_225/mulMul!while/lstm_cell_225/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_225/ReluRelu"while/lstm_cell_225/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_225/mul_1Mulwhile/lstm_cell_225/Sigmoid:y:0&while/lstm_cell_225/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_225/add_1AddV2while/lstm_cell_225/mul:z:0while/lstm_cell_225/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_225/Sigmoid_2Sigmoid"while/lstm_cell_225/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_225/Relu_1Reluwhile/lstm_cell_225/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_225/mul_2Mul!while/lstm_cell_225/Sigmoid_2:y:0(while/lstm_cell_225/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_225/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_225/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_225/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_225/BiasAdd/ReadVariableOp*^while/lstm_cell_225/MatMul/ReadVariableOp,^while/lstm_cell_225/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_225_biasadd_readvariableop_resource5while_lstm_cell_225_biasadd_readvariableop_resource_0"n
4while_lstm_cell_225_matmul_1_readvariableop_resource6while_lstm_cell_225_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_225_matmul_readvariableop_resource4while_lstm_cell_225_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_225/BiasAdd/ReadVariableOp*while/lstm_cell_225/BiasAdd/ReadVariableOp2V
)while/lstm_cell_225/MatMul/ReadVariableOp)while/lstm_cell_225/MatMul/ReadVariableOp2Z
+while/lstm_cell_225/MatMul_1/ReadVariableOp+while/lstm_cell_225/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_215_layer_call_and_return_conditional_losses_1378272
inputs_0>
,lstm_cell_227_matmul_readvariableop_resource:2(@
.lstm_cell_227_matmul_1_readvariableop_resource:
(;
-lstm_cell_227_biasadd_readvariableop_resource:(
identity??$lstm_cell_227/BiasAdd/ReadVariableOp?#lstm_cell_227/MatMul/ReadVariableOp?%lstm_cell_227/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_227/MatMul/ReadVariableOpReadVariableOp,lstm_cell_227_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_227/MatMulMatMulstrided_slice_2:output:0+lstm_cell_227/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_227/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_227_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_227/MatMul_1MatMulzeros:output:0-lstm_cell_227/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_227/addAddV2lstm_cell_227/MatMul:product:0 lstm_cell_227/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_227/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_227_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_227/BiasAddBiasAddlstm_cell_227/add:z:0,lstm_cell_227/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_227/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_227/splitSplit&lstm_cell_227/split/split_dim:output:0lstm_cell_227/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_227/SigmoidSigmoidlstm_cell_227/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_227/Sigmoid_1Sigmoidlstm_cell_227/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_227/mulMullstm_cell_227/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_227/ReluRelulstm_cell_227/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_227/mul_1Mullstm_cell_227/Sigmoid:y:0 lstm_cell_227/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_227/add_1AddV2lstm_cell_227/mul:z:0lstm_cell_227/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_227/Sigmoid_2Sigmoidlstm_cell_227/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_227/Relu_1Relulstm_cell_227/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_227/mul_2Mullstm_cell_227/Sigmoid_2:y:0"lstm_cell_227/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_227_matmul_readvariableop_resource.lstm_cell_227_matmul_1_readvariableop_resource-lstm_cell_227_biasadd_readvariableop_resource*
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
while_body_1378188*
condR
while_cond_1378187*K
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
NoOpNoOp%^lstm_cell_227/BiasAdd/ReadVariableOp$^lstm_cell_227/MatMul/ReadVariableOp&^lstm_cell_227/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_227/BiasAdd/ReadVariableOp$lstm_cell_227/BiasAdd/ReadVariableOp2J
#lstm_cell_227/MatMul/ReadVariableOp#lstm_cell_227/MatMul/ReadVariableOp2N
%lstm_cell_227/MatMul_1/ReadVariableOp%lstm_cell_227/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?#
?
while_body_1373957
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_225_1373981_0:	?0
while_lstm_cell_225_1373983_0:	d?,
while_lstm_cell_225_1373985_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_225_1373981:	?.
while_lstm_cell_225_1373983:	d?*
while_lstm_cell_225_1373985:	???+while/lstm_cell_225/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_225/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_225_1373981_0while_lstm_cell_225_1373983_0while_lstm_cell_225_1373985_0*
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
J__inference_lstm_cell_225_layer_call_and_return_conditional_losses_1373898?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_225/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_225/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_225/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_225/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_225_1373981while_lstm_cell_225_1373981_0"<
while_lstm_cell_225_1373983while_lstm_cell_225_1373983_0"<
while_lstm_cell_225_1373985while_lstm_cell_225_1373985_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_225/StatefulPartitionedCall+while/lstm_cell_225/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_215_while_cond_1376335.
*lstm_215_while_lstm_215_while_loop_counter4
0lstm_215_while_lstm_215_while_maximum_iterations
lstm_215_while_placeholder 
lstm_215_while_placeholder_1 
lstm_215_while_placeholder_2 
lstm_215_while_placeholder_30
,lstm_215_while_less_lstm_215_strided_slice_1G
Clstm_215_while_lstm_215_while_cond_1376335___redundant_placeholder0G
Clstm_215_while_lstm_215_while_cond_1376335___redundant_placeholder1G
Clstm_215_while_lstm_215_while_cond_1376335___redundant_placeholder2G
Clstm_215_while_lstm_215_while_cond_1376335___redundant_placeholder3
lstm_215_while_identity
?
lstm_215/while/LessLesslstm_215_while_placeholder,lstm_215_while_less_lstm_215_strided_slice_1*
T0*
_output_shapes
: ]
lstm_215/while/IdentityIdentitylstm_215/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_215_while_identity lstm_215/while/Identity:output:0*(
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
while_cond_1377857
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1377857___redundant_placeholder05
1while_while_cond_1377857___redundant_placeholder15
1while_while_cond_1377857___redundant_placeholder25
1while_while_cond_1377857___redundant_placeholder3
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
E__inference_dense_71_layer_call_and_return_conditional_losses_1378720

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
??
?
J__inference_sequential_71_layer_call_and_return_conditional_losses_1376426

inputsH
5lstm_213_lstm_cell_225_matmul_readvariableop_resource:	?J
7lstm_213_lstm_cell_225_matmul_1_readvariableop_resource:	d?E
6lstm_213_lstm_cell_225_biasadd_readvariableop_resource:	?H
5lstm_214_lstm_cell_226_matmul_readvariableop_resource:	d?J
7lstm_214_lstm_cell_226_matmul_1_readvariableop_resource:	2?E
6lstm_214_lstm_cell_226_biasadd_readvariableop_resource:	?G
5lstm_215_lstm_cell_227_matmul_readvariableop_resource:2(I
7lstm_215_lstm_cell_227_matmul_1_readvariableop_resource:
(D
6lstm_215_lstm_cell_227_biasadd_readvariableop_resource:(9
'dense_71_matmul_readvariableop_resource:
6
(dense_71_biasadd_readvariableop_resource:
identity??dense_71/BiasAdd/ReadVariableOp?dense_71/MatMul/ReadVariableOp?-lstm_213/lstm_cell_225/BiasAdd/ReadVariableOp?,lstm_213/lstm_cell_225/MatMul/ReadVariableOp?.lstm_213/lstm_cell_225/MatMul_1/ReadVariableOp?lstm_213/while?-lstm_214/lstm_cell_226/BiasAdd/ReadVariableOp?,lstm_214/lstm_cell_226/MatMul/ReadVariableOp?.lstm_214/lstm_cell_226/MatMul_1/ReadVariableOp?lstm_214/while?-lstm_215/lstm_cell_227/BiasAdd/ReadVariableOp?,lstm_215/lstm_cell_227/MatMul/ReadVariableOp?.lstm_215/lstm_cell_227/MatMul_1/ReadVariableOp?lstm_215/whileD
lstm_213/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_213/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_213/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_213/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_213/strided_sliceStridedSlicelstm_213/Shape:output:0%lstm_213/strided_slice/stack:output:0'lstm_213/strided_slice/stack_1:output:0'lstm_213/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_213/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_213/zeros/packedPacklstm_213/strided_slice:output:0 lstm_213/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_213/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_213/zerosFilllstm_213/zeros/packed:output:0lstm_213/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_213/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_213/zeros_1/packedPacklstm_213/strided_slice:output:0"lstm_213/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_213/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_213/zeros_1Fill lstm_213/zeros_1/packed:output:0lstm_213/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_213/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_213/transpose	Transposeinputs lstm_213/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_213/Shape_1Shapelstm_213/transpose:y:0*
T0*
_output_shapes
:h
lstm_213/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_213/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_213/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_213/strided_slice_1StridedSlicelstm_213/Shape_1:output:0'lstm_213/strided_slice_1/stack:output:0)lstm_213/strided_slice_1/stack_1:output:0)lstm_213/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_213/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_213/TensorArrayV2TensorListReserve-lstm_213/TensorArrayV2/element_shape:output:0!lstm_213/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_213/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_213/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_213/transpose:y:0Glstm_213/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_213/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_213/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_213/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_213/strided_slice_2StridedSlicelstm_213/transpose:y:0'lstm_213/strided_slice_2/stack:output:0)lstm_213/strided_slice_2/stack_1:output:0)lstm_213/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_213/lstm_cell_225/MatMul/ReadVariableOpReadVariableOp5lstm_213_lstm_cell_225_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_213/lstm_cell_225/MatMulMatMul!lstm_213/strided_slice_2:output:04lstm_213/lstm_cell_225/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_213/lstm_cell_225/MatMul_1/ReadVariableOpReadVariableOp7lstm_213_lstm_cell_225_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_213/lstm_cell_225/MatMul_1MatMullstm_213/zeros:output:06lstm_213/lstm_cell_225/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_213/lstm_cell_225/addAddV2'lstm_213/lstm_cell_225/MatMul:product:0)lstm_213/lstm_cell_225/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_213/lstm_cell_225/BiasAdd/ReadVariableOpReadVariableOp6lstm_213_lstm_cell_225_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_213/lstm_cell_225/BiasAddBiasAddlstm_213/lstm_cell_225/add:z:05lstm_213/lstm_cell_225/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_213/lstm_cell_225/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_213/lstm_cell_225/splitSplit/lstm_213/lstm_cell_225/split/split_dim:output:0'lstm_213/lstm_cell_225/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_213/lstm_cell_225/SigmoidSigmoid%lstm_213/lstm_cell_225/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_213/lstm_cell_225/Sigmoid_1Sigmoid%lstm_213/lstm_cell_225/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_213/lstm_cell_225/mulMul$lstm_213/lstm_cell_225/Sigmoid_1:y:0lstm_213/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_213/lstm_cell_225/ReluRelu%lstm_213/lstm_cell_225/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_213/lstm_cell_225/mul_1Mul"lstm_213/lstm_cell_225/Sigmoid:y:0)lstm_213/lstm_cell_225/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_213/lstm_cell_225/add_1AddV2lstm_213/lstm_cell_225/mul:z:0 lstm_213/lstm_cell_225/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_213/lstm_cell_225/Sigmoid_2Sigmoid%lstm_213/lstm_cell_225/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_213/lstm_cell_225/Relu_1Relu lstm_213/lstm_cell_225/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_213/lstm_cell_225/mul_2Mul$lstm_213/lstm_cell_225/Sigmoid_2:y:0+lstm_213/lstm_cell_225/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_213/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_213/TensorArrayV2_1TensorListReserve/lstm_213/TensorArrayV2_1/element_shape:output:0!lstm_213/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_213/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_213/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_213/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_213/whileWhile$lstm_213/while/loop_counter:output:0*lstm_213/while/maximum_iterations:output:0lstm_213/time:output:0!lstm_213/TensorArrayV2_1:handle:0lstm_213/zeros:output:0lstm_213/zeros_1:output:0!lstm_213/strided_slice_1:output:0@lstm_213/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_213_lstm_cell_225_matmul_readvariableop_resource7lstm_213_lstm_cell_225_matmul_1_readvariableop_resource6lstm_213_lstm_cell_225_biasadd_readvariableop_resource*
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
lstm_213_while_body_1376058*'
condR
lstm_213_while_cond_1376057*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_213/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_213/TensorArrayV2Stack/TensorListStackTensorListStacklstm_213/while:output:3Blstm_213/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_213/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_213/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_213/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_213/strided_slice_3StridedSlice4lstm_213/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_213/strided_slice_3/stack:output:0)lstm_213/strided_slice_3/stack_1:output:0)lstm_213/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_213/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_213/transpose_1	Transpose4lstm_213/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_213/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_213/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_214/ShapeShapelstm_213/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_214/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_214/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_214/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_214/strided_sliceStridedSlicelstm_214/Shape:output:0%lstm_214/strided_slice/stack:output:0'lstm_214/strided_slice/stack_1:output:0'lstm_214/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_214/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_214/zeros/packedPacklstm_214/strided_slice:output:0 lstm_214/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_214/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_214/zerosFilllstm_214/zeros/packed:output:0lstm_214/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_214/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_214/zeros_1/packedPacklstm_214/strided_slice:output:0"lstm_214/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_214/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_214/zeros_1Fill lstm_214/zeros_1/packed:output:0lstm_214/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_214/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_214/transpose	Transposelstm_213/transpose_1:y:0 lstm_214/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_214/Shape_1Shapelstm_214/transpose:y:0*
T0*
_output_shapes
:h
lstm_214/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_214/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_214/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_214/strided_slice_1StridedSlicelstm_214/Shape_1:output:0'lstm_214/strided_slice_1/stack:output:0)lstm_214/strided_slice_1/stack_1:output:0)lstm_214/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_214/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_214/TensorArrayV2TensorListReserve-lstm_214/TensorArrayV2/element_shape:output:0!lstm_214/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_214/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_214/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_214/transpose:y:0Glstm_214/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_214/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_214/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_214/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_214/strided_slice_2StridedSlicelstm_214/transpose:y:0'lstm_214/strided_slice_2/stack:output:0)lstm_214/strided_slice_2/stack_1:output:0)lstm_214/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_214/lstm_cell_226/MatMul/ReadVariableOpReadVariableOp5lstm_214_lstm_cell_226_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_214/lstm_cell_226/MatMulMatMul!lstm_214/strided_slice_2:output:04lstm_214/lstm_cell_226/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_214/lstm_cell_226/MatMul_1/ReadVariableOpReadVariableOp7lstm_214_lstm_cell_226_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_214/lstm_cell_226/MatMul_1MatMullstm_214/zeros:output:06lstm_214/lstm_cell_226/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_214/lstm_cell_226/addAddV2'lstm_214/lstm_cell_226/MatMul:product:0)lstm_214/lstm_cell_226/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_214/lstm_cell_226/BiasAdd/ReadVariableOpReadVariableOp6lstm_214_lstm_cell_226_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_214/lstm_cell_226/BiasAddBiasAddlstm_214/lstm_cell_226/add:z:05lstm_214/lstm_cell_226/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_214/lstm_cell_226/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_214/lstm_cell_226/splitSplit/lstm_214/lstm_cell_226/split/split_dim:output:0'lstm_214/lstm_cell_226/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_214/lstm_cell_226/SigmoidSigmoid%lstm_214/lstm_cell_226/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_214/lstm_cell_226/Sigmoid_1Sigmoid%lstm_214/lstm_cell_226/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_214/lstm_cell_226/mulMul$lstm_214/lstm_cell_226/Sigmoid_1:y:0lstm_214/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_214/lstm_cell_226/ReluRelu%lstm_214/lstm_cell_226/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_214/lstm_cell_226/mul_1Mul"lstm_214/lstm_cell_226/Sigmoid:y:0)lstm_214/lstm_cell_226/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_214/lstm_cell_226/add_1AddV2lstm_214/lstm_cell_226/mul:z:0 lstm_214/lstm_cell_226/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_214/lstm_cell_226/Sigmoid_2Sigmoid%lstm_214/lstm_cell_226/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_214/lstm_cell_226/Relu_1Relu lstm_214/lstm_cell_226/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_214/lstm_cell_226/mul_2Mul$lstm_214/lstm_cell_226/Sigmoid_2:y:0+lstm_214/lstm_cell_226/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_214/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_214/TensorArrayV2_1TensorListReserve/lstm_214/TensorArrayV2_1/element_shape:output:0!lstm_214/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_214/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_214/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_214/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_214/whileWhile$lstm_214/while/loop_counter:output:0*lstm_214/while/maximum_iterations:output:0lstm_214/time:output:0!lstm_214/TensorArrayV2_1:handle:0lstm_214/zeros:output:0lstm_214/zeros_1:output:0!lstm_214/strided_slice_1:output:0@lstm_214/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_214_lstm_cell_226_matmul_readvariableop_resource7lstm_214_lstm_cell_226_matmul_1_readvariableop_resource6lstm_214_lstm_cell_226_biasadd_readvariableop_resource*
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
lstm_214_while_body_1376197*'
condR
lstm_214_while_cond_1376196*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_214/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_214/TensorArrayV2Stack/TensorListStackTensorListStacklstm_214/while:output:3Blstm_214/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_214/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_214/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_214/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_214/strided_slice_3StridedSlice4lstm_214/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_214/strided_slice_3/stack:output:0)lstm_214/strided_slice_3/stack_1:output:0)lstm_214/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_214/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_214/transpose_1	Transpose4lstm_214/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_214/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_214/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_215/ShapeShapelstm_214/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_215/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_215/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_215/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_215/strided_sliceStridedSlicelstm_215/Shape:output:0%lstm_215/strided_slice/stack:output:0'lstm_215/strided_slice/stack_1:output:0'lstm_215/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_215/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_215/zeros/packedPacklstm_215/strided_slice:output:0 lstm_215/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_215/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_215/zerosFilllstm_215/zeros/packed:output:0lstm_215/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_215/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_215/zeros_1/packedPacklstm_215/strided_slice:output:0"lstm_215/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_215/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_215/zeros_1Fill lstm_215/zeros_1/packed:output:0lstm_215/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_215/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_215/transpose	Transposelstm_214/transpose_1:y:0 lstm_215/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_215/Shape_1Shapelstm_215/transpose:y:0*
T0*
_output_shapes
:h
lstm_215/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_215/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_215/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_215/strided_slice_1StridedSlicelstm_215/Shape_1:output:0'lstm_215/strided_slice_1/stack:output:0)lstm_215/strided_slice_1/stack_1:output:0)lstm_215/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_215/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_215/TensorArrayV2TensorListReserve-lstm_215/TensorArrayV2/element_shape:output:0!lstm_215/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_215/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_215/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_215/transpose:y:0Glstm_215/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_215/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_215/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_215/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_215/strided_slice_2StridedSlicelstm_215/transpose:y:0'lstm_215/strided_slice_2/stack:output:0)lstm_215/strided_slice_2/stack_1:output:0)lstm_215/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_215/lstm_cell_227/MatMul/ReadVariableOpReadVariableOp5lstm_215_lstm_cell_227_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_215/lstm_cell_227/MatMulMatMul!lstm_215/strided_slice_2:output:04lstm_215/lstm_cell_227/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_215/lstm_cell_227/MatMul_1/ReadVariableOpReadVariableOp7lstm_215_lstm_cell_227_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_215/lstm_cell_227/MatMul_1MatMullstm_215/zeros:output:06lstm_215/lstm_cell_227/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_215/lstm_cell_227/addAddV2'lstm_215/lstm_cell_227/MatMul:product:0)lstm_215/lstm_cell_227/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_215/lstm_cell_227/BiasAdd/ReadVariableOpReadVariableOp6lstm_215_lstm_cell_227_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_215/lstm_cell_227/BiasAddBiasAddlstm_215/lstm_cell_227/add:z:05lstm_215/lstm_cell_227/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_215/lstm_cell_227/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_215/lstm_cell_227/splitSplit/lstm_215/lstm_cell_227/split/split_dim:output:0'lstm_215/lstm_cell_227/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_215/lstm_cell_227/SigmoidSigmoid%lstm_215/lstm_cell_227/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_215/lstm_cell_227/Sigmoid_1Sigmoid%lstm_215/lstm_cell_227/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_215/lstm_cell_227/mulMul$lstm_215/lstm_cell_227/Sigmoid_1:y:0lstm_215/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_215/lstm_cell_227/ReluRelu%lstm_215/lstm_cell_227/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_215/lstm_cell_227/mul_1Mul"lstm_215/lstm_cell_227/Sigmoid:y:0)lstm_215/lstm_cell_227/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_215/lstm_cell_227/add_1AddV2lstm_215/lstm_cell_227/mul:z:0 lstm_215/lstm_cell_227/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_215/lstm_cell_227/Sigmoid_2Sigmoid%lstm_215/lstm_cell_227/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_215/lstm_cell_227/Relu_1Relu lstm_215/lstm_cell_227/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_215/lstm_cell_227/mul_2Mul$lstm_215/lstm_cell_227/Sigmoid_2:y:0+lstm_215/lstm_cell_227/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_215/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_215/TensorArrayV2_1TensorListReserve/lstm_215/TensorArrayV2_1/element_shape:output:0!lstm_215/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_215/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_215/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_215/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_215/whileWhile$lstm_215/while/loop_counter:output:0*lstm_215/while/maximum_iterations:output:0lstm_215/time:output:0!lstm_215/TensorArrayV2_1:handle:0lstm_215/zeros:output:0lstm_215/zeros_1:output:0!lstm_215/strided_slice_1:output:0@lstm_215/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_215_lstm_cell_227_matmul_readvariableop_resource7lstm_215_lstm_cell_227_matmul_1_readvariableop_resource6lstm_215_lstm_cell_227_biasadd_readvariableop_resource*
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
lstm_215_while_body_1376336*'
condR
lstm_215_while_cond_1376335*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_215/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_215/TensorArrayV2Stack/TensorListStackTensorListStacklstm_215/while:output:3Blstm_215/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_215/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_215/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_215/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_215/strided_slice_3StridedSlice4lstm_215/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_215/strided_slice_3/stack:output:0)lstm_215/strided_slice_3/stack_1:output:0)lstm_215/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_215/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_215/transpose_1	Transpose4lstm_215/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_215/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_215/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_71/MatMul/ReadVariableOpReadVariableOp'dense_71_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_71/MatMulMatMul!lstm_215/strided_slice_3:output:0&dense_71/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_71/BiasAdd/ReadVariableOpReadVariableOp(dense_71_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_71/BiasAddBiasAdddense_71/MatMul:product:0'dense_71/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_71/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_71/BiasAdd/ReadVariableOp^dense_71/MatMul/ReadVariableOp.^lstm_213/lstm_cell_225/BiasAdd/ReadVariableOp-^lstm_213/lstm_cell_225/MatMul/ReadVariableOp/^lstm_213/lstm_cell_225/MatMul_1/ReadVariableOp^lstm_213/while.^lstm_214/lstm_cell_226/BiasAdd/ReadVariableOp-^lstm_214/lstm_cell_226/MatMul/ReadVariableOp/^lstm_214/lstm_cell_226/MatMul_1/ReadVariableOp^lstm_214/while.^lstm_215/lstm_cell_227/BiasAdd/ReadVariableOp-^lstm_215/lstm_cell_227/MatMul/ReadVariableOp/^lstm_215/lstm_cell_227/MatMul_1/ReadVariableOp^lstm_215/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_71/BiasAdd/ReadVariableOpdense_71/BiasAdd/ReadVariableOp2@
dense_71/MatMul/ReadVariableOpdense_71/MatMul/ReadVariableOp2^
-lstm_213/lstm_cell_225/BiasAdd/ReadVariableOp-lstm_213/lstm_cell_225/BiasAdd/ReadVariableOp2\
,lstm_213/lstm_cell_225/MatMul/ReadVariableOp,lstm_213/lstm_cell_225/MatMul/ReadVariableOp2`
.lstm_213/lstm_cell_225/MatMul_1/ReadVariableOp.lstm_213/lstm_cell_225/MatMul_1/ReadVariableOp2 
lstm_213/whilelstm_213/while2^
-lstm_214/lstm_cell_226/BiasAdd/ReadVariableOp-lstm_214/lstm_cell_226/BiasAdd/ReadVariableOp2\
,lstm_214/lstm_cell_226/MatMul/ReadVariableOp,lstm_214/lstm_cell_226/MatMul/ReadVariableOp2`
.lstm_214/lstm_cell_226/MatMul_1/ReadVariableOp.lstm_214/lstm_cell_226/MatMul_1/ReadVariableOp2 
lstm_214/whilelstm_214/while2^
-lstm_215/lstm_cell_227/BiasAdd/ReadVariableOp-lstm_215/lstm_cell_227/BiasAdd/ReadVariableOp2\
,lstm_215/lstm_cell_227/MatMul/ReadVariableOp,lstm_215/lstm_cell_227/MatMul/ReadVariableOp2`
.lstm_215/lstm_cell_227/MatMul_1/ReadVariableOp.lstm_215/lstm_cell_227/MatMul_1/ReadVariableOp2 
lstm_215/whilelstm_215/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_214_while_body_1376624.
*lstm_214_while_lstm_214_while_loop_counter4
0lstm_214_while_lstm_214_while_maximum_iterations
lstm_214_while_placeholder 
lstm_214_while_placeholder_1 
lstm_214_while_placeholder_2 
lstm_214_while_placeholder_3-
)lstm_214_while_lstm_214_strided_slice_1_0i
elstm_214_while_tensorarrayv2read_tensorlistgetitem_lstm_214_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_214_while_lstm_cell_226_matmul_readvariableop_resource_0:	d?R
?lstm_214_while_lstm_cell_226_matmul_1_readvariableop_resource_0:	2?M
>lstm_214_while_lstm_cell_226_biasadd_readvariableop_resource_0:	?
lstm_214_while_identity
lstm_214_while_identity_1
lstm_214_while_identity_2
lstm_214_while_identity_3
lstm_214_while_identity_4
lstm_214_while_identity_5+
'lstm_214_while_lstm_214_strided_slice_1g
clstm_214_while_tensorarrayv2read_tensorlistgetitem_lstm_214_tensorarrayunstack_tensorlistfromtensorN
;lstm_214_while_lstm_cell_226_matmul_readvariableop_resource:	d?P
=lstm_214_while_lstm_cell_226_matmul_1_readvariableop_resource:	2?K
<lstm_214_while_lstm_cell_226_biasadd_readvariableop_resource:	???3lstm_214/while/lstm_cell_226/BiasAdd/ReadVariableOp?2lstm_214/while/lstm_cell_226/MatMul/ReadVariableOp?4lstm_214/while/lstm_cell_226/MatMul_1/ReadVariableOp?
@lstm_214/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_214/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_214_while_tensorarrayv2read_tensorlistgetitem_lstm_214_tensorarrayunstack_tensorlistfromtensor_0lstm_214_while_placeholderIlstm_214/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_214/while/lstm_cell_226/MatMul/ReadVariableOpReadVariableOp=lstm_214_while_lstm_cell_226_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_214/while/lstm_cell_226/MatMulMatMul9lstm_214/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_214/while/lstm_cell_226/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_214/while/lstm_cell_226/MatMul_1/ReadVariableOpReadVariableOp?lstm_214_while_lstm_cell_226_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_214/while/lstm_cell_226/MatMul_1MatMullstm_214_while_placeholder_2<lstm_214/while/lstm_cell_226/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_214/while/lstm_cell_226/addAddV2-lstm_214/while/lstm_cell_226/MatMul:product:0/lstm_214/while/lstm_cell_226/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_214/while/lstm_cell_226/BiasAdd/ReadVariableOpReadVariableOp>lstm_214_while_lstm_cell_226_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_214/while/lstm_cell_226/BiasAddBiasAdd$lstm_214/while/lstm_cell_226/add:z:0;lstm_214/while/lstm_cell_226/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_214/while/lstm_cell_226/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_214/while/lstm_cell_226/splitSplit5lstm_214/while/lstm_cell_226/split/split_dim:output:0-lstm_214/while/lstm_cell_226/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_214/while/lstm_cell_226/SigmoidSigmoid+lstm_214/while/lstm_cell_226/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_214/while/lstm_cell_226/Sigmoid_1Sigmoid+lstm_214/while/lstm_cell_226/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_214/while/lstm_cell_226/mulMul*lstm_214/while/lstm_cell_226/Sigmoid_1:y:0lstm_214_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_214/while/lstm_cell_226/ReluRelu+lstm_214/while/lstm_cell_226/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_214/while/lstm_cell_226/mul_1Mul(lstm_214/while/lstm_cell_226/Sigmoid:y:0/lstm_214/while/lstm_cell_226/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_214/while/lstm_cell_226/add_1AddV2$lstm_214/while/lstm_cell_226/mul:z:0&lstm_214/while/lstm_cell_226/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_214/while/lstm_cell_226/Sigmoid_2Sigmoid+lstm_214/while/lstm_cell_226/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_214/while/lstm_cell_226/Relu_1Relu&lstm_214/while/lstm_cell_226/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_214/while/lstm_cell_226/mul_2Mul*lstm_214/while/lstm_cell_226/Sigmoid_2:y:01lstm_214/while/lstm_cell_226/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_214/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_214_while_placeholder_1lstm_214_while_placeholder&lstm_214/while/lstm_cell_226/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_214/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_214/while/addAddV2lstm_214_while_placeholderlstm_214/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_214/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_214/while/add_1AddV2*lstm_214_while_lstm_214_while_loop_counterlstm_214/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_214/while/IdentityIdentitylstm_214/while/add_1:z:0^lstm_214/while/NoOp*
T0*
_output_shapes
: ?
lstm_214/while/Identity_1Identity0lstm_214_while_lstm_214_while_maximum_iterations^lstm_214/while/NoOp*
T0*
_output_shapes
: t
lstm_214/while/Identity_2Identitylstm_214/while/add:z:0^lstm_214/while/NoOp*
T0*
_output_shapes
: ?
lstm_214/while/Identity_3IdentityClstm_214/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_214/while/NoOp*
T0*
_output_shapes
: ?
lstm_214/while/Identity_4Identity&lstm_214/while/lstm_cell_226/mul_2:z:0^lstm_214/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_214/while/Identity_5Identity&lstm_214/while/lstm_cell_226/add_1:z:0^lstm_214/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_214/while/NoOpNoOp4^lstm_214/while/lstm_cell_226/BiasAdd/ReadVariableOp3^lstm_214/while/lstm_cell_226/MatMul/ReadVariableOp5^lstm_214/while/lstm_cell_226/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_214_while_identity lstm_214/while/Identity:output:0"?
lstm_214_while_identity_1"lstm_214/while/Identity_1:output:0"?
lstm_214_while_identity_2"lstm_214/while/Identity_2:output:0"?
lstm_214_while_identity_3"lstm_214/while/Identity_3:output:0"?
lstm_214_while_identity_4"lstm_214/while/Identity_4:output:0"?
lstm_214_while_identity_5"lstm_214/while/Identity_5:output:0"T
'lstm_214_while_lstm_214_strided_slice_1)lstm_214_while_lstm_214_strided_slice_1_0"~
<lstm_214_while_lstm_cell_226_biasadd_readvariableop_resource>lstm_214_while_lstm_cell_226_biasadd_readvariableop_resource_0"?
=lstm_214_while_lstm_cell_226_matmul_1_readvariableop_resource?lstm_214_while_lstm_cell_226_matmul_1_readvariableop_resource_0"|
;lstm_214_while_lstm_cell_226_matmul_readvariableop_resource=lstm_214_while_lstm_cell_226_matmul_readvariableop_resource_0"?
clstm_214_while_tensorarrayv2read_tensorlistgetitem_lstm_214_tensorarrayunstack_tensorlistfromtensorelstm_214_while_tensorarrayv2read_tensorlistgetitem_lstm_214_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_214/while/lstm_cell_226/BiasAdd/ReadVariableOp3lstm_214/while/lstm_cell_226/BiasAdd/ReadVariableOp2h
2lstm_214/while/lstm_cell_226/MatMul/ReadVariableOp2lstm_214/while/lstm_cell_226/MatMul/ReadVariableOp2l
4lstm_214/while/lstm_cell_226/MatMul_1/ReadVariableOp4lstm_214/while/lstm_cell_226/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_215_layer_call_fn_1378096
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
E__inference_lstm_215_layer_call_and_return_conditional_losses_1374535o
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
?#
?
while_body_1374657
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_227_1374681_0:2(/
while_lstm_cell_227_1374683_0:
(+
while_lstm_cell_227_1374685_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_227_1374681:2(-
while_lstm_cell_227_1374683:
()
while_lstm_cell_227_1374685:(??+while/lstm_cell_227/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_227/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_227_1374681_0while_lstm_cell_227_1374683_0while_lstm_cell_227_1374685_0*
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
J__inference_lstm_cell_227_layer_call_and_return_conditional_losses_1374598?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_227/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_227/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_227/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_227/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_227_1374681while_lstm_cell_227_1374681_0"<
while_lstm_cell_227_1374683while_lstm_cell_227_1374683_0"<
while_lstm_cell_227_1374685while_lstm_cell_227_1374685_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_227/StatefulPartitionedCall+while/lstm_cell_227/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_226_layer_call_fn_1378835

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
J__inference_lstm_cell_226_layer_call_and_return_conditional_losses_1374102o
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
/__inference_lstm_cell_227_layer_call_fn_1378933

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
J__inference_lstm_cell_227_layer_call_and_return_conditional_losses_1374452o
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
?
?
*__inference_lstm_215_layer_call_fn_1378129

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
E__inference_lstm_215_layer_call_and_return_conditional_losses_1375400o
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
J__inference_lstm_cell_225_layer_call_and_return_conditional_losses_1378786

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
"__inference__wrapped_model_1373685
lstm_213_inputV
Csequential_71_lstm_213_lstm_cell_225_matmul_readvariableop_resource:	?X
Esequential_71_lstm_213_lstm_cell_225_matmul_1_readvariableop_resource:	d?S
Dsequential_71_lstm_213_lstm_cell_225_biasadd_readvariableop_resource:	?V
Csequential_71_lstm_214_lstm_cell_226_matmul_readvariableop_resource:	d?X
Esequential_71_lstm_214_lstm_cell_226_matmul_1_readvariableop_resource:	2?S
Dsequential_71_lstm_214_lstm_cell_226_biasadd_readvariableop_resource:	?U
Csequential_71_lstm_215_lstm_cell_227_matmul_readvariableop_resource:2(W
Esequential_71_lstm_215_lstm_cell_227_matmul_1_readvariableop_resource:
(R
Dsequential_71_lstm_215_lstm_cell_227_biasadd_readvariableop_resource:(G
5sequential_71_dense_71_matmul_readvariableop_resource:
D
6sequential_71_dense_71_biasadd_readvariableop_resource:
identity??-sequential_71/dense_71/BiasAdd/ReadVariableOp?,sequential_71/dense_71/MatMul/ReadVariableOp?;sequential_71/lstm_213/lstm_cell_225/BiasAdd/ReadVariableOp?:sequential_71/lstm_213/lstm_cell_225/MatMul/ReadVariableOp?<sequential_71/lstm_213/lstm_cell_225/MatMul_1/ReadVariableOp?sequential_71/lstm_213/while?;sequential_71/lstm_214/lstm_cell_226/BiasAdd/ReadVariableOp?:sequential_71/lstm_214/lstm_cell_226/MatMul/ReadVariableOp?<sequential_71/lstm_214/lstm_cell_226/MatMul_1/ReadVariableOp?sequential_71/lstm_214/while?;sequential_71/lstm_215/lstm_cell_227/BiasAdd/ReadVariableOp?:sequential_71/lstm_215/lstm_cell_227/MatMul/ReadVariableOp?<sequential_71/lstm_215/lstm_cell_227/MatMul_1/ReadVariableOp?sequential_71/lstm_215/whileZ
sequential_71/lstm_213/ShapeShapelstm_213_input*
T0*
_output_shapes
:t
*sequential_71/lstm_213/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_71/lstm_213/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_71/lstm_213/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_71/lstm_213/strided_sliceStridedSlice%sequential_71/lstm_213/Shape:output:03sequential_71/lstm_213/strided_slice/stack:output:05sequential_71/lstm_213/strided_slice/stack_1:output:05sequential_71/lstm_213/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_71/lstm_213/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
#sequential_71/lstm_213/zeros/packedPack-sequential_71/lstm_213/strided_slice:output:0.sequential_71/lstm_213/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_71/lstm_213/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_71/lstm_213/zerosFill,sequential_71/lstm_213/zeros/packed:output:0+sequential_71/lstm_213/zeros/Const:output:0*
T0*'
_output_shapes
:?????????di
'sequential_71/lstm_213/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
%sequential_71/lstm_213/zeros_1/packedPack-sequential_71/lstm_213/strided_slice:output:00sequential_71/lstm_213/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_71/lstm_213/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_71/lstm_213/zeros_1Fill.sequential_71/lstm_213/zeros_1/packed:output:0-sequential_71/lstm_213/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dz
%sequential_71/lstm_213/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_71/lstm_213/transpose	Transposelstm_213_input.sequential_71/lstm_213/transpose/perm:output:0*
T0*+
_output_shapes
:?????????r
sequential_71/lstm_213/Shape_1Shape$sequential_71/lstm_213/transpose:y:0*
T0*
_output_shapes
:v
,sequential_71/lstm_213/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_71/lstm_213/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_71/lstm_213/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_71/lstm_213/strided_slice_1StridedSlice'sequential_71/lstm_213/Shape_1:output:05sequential_71/lstm_213/strided_slice_1/stack:output:07sequential_71/lstm_213/strided_slice_1/stack_1:output:07sequential_71/lstm_213/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_71/lstm_213/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_71/lstm_213/TensorArrayV2TensorListReserve;sequential_71/lstm_213/TensorArrayV2/element_shape:output:0/sequential_71/lstm_213/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_71/lstm_213/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
>sequential_71/lstm_213/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_71/lstm_213/transpose:y:0Usequential_71/lstm_213/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_71/lstm_213/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_71/lstm_213/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_71/lstm_213/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_71/lstm_213/strided_slice_2StridedSlice$sequential_71/lstm_213/transpose:y:05sequential_71/lstm_213/strided_slice_2/stack:output:07sequential_71/lstm_213/strided_slice_2/stack_1:output:07sequential_71/lstm_213/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
:sequential_71/lstm_213/lstm_cell_225/MatMul/ReadVariableOpReadVariableOpCsequential_71_lstm_213_lstm_cell_225_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
+sequential_71/lstm_213/lstm_cell_225/MatMulMatMul/sequential_71/lstm_213/strided_slice_2:output:0Bsequential_71/lstm_213/lstm_cell_225/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_71/lstm_213/lstm_cell_225/MatMul_1/ReadVariableOpReadVariableOpEsequential_71_lstm_213_lstm_cell_225_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
-sequential_71/lstm_213/lstm_cell_225/MatMul_1MatMul%sequential_71/lstm_213/zeros:output:0Dsequential_71/lstm_213/lstm_cell_225/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_71/lstm_213/lstm_cell_225/addAddV25sequential_71/lstm_213/lstm_cell_225/MatMul:product:07sequential_71/lstm_213/lstm_cell_225/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_71/lstm_213/lstm_cell_225/BiasAdd/ReadVariableOpReadVariableOpDsequential_71_lstm_213_lstm_cell_225_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_71/lstm_213/lstm_cell_225/BiasAddBiasAdd,sequential_71/lstm_213/lstm_cell_225/add:z:0Csequential_71/lstm_213/lstm_cell_225/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_71/lstm_213/lstm_cell_225/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_71/lstm_213/lstm_cell_225/splitSplit=sequential_71/lstm_213/lstm_cell_225/split/split_dim:output:05sequential_71/lstm_213/lstm_cell_225/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
,sequential_71/lstm_213/lstm_cell_225/SigmoidSigmoid3sequential_71/lstm_213/lstm_cell_225/split:output:0*
T0*'
_output_shapes
:?????????d?
.sequential_71/lstm_213/lstm_cell_225/Sigmoid_1Sigmoid3sequential_71/lstm_213/lstm_cell_225/split:output:1*
T0*'
_output_shapes
:?????????d?
(sequential_71/lstm_213/lstm_cell_225/mulMul2sequential_71/lstm_213/lstm_cell_225/Sigmoid_1:y:0'sequential_71/lstm_213/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
)sequential_71/lstm_213/lstm_cell_225/ReluRelu3sequential_71/lstm_213/lstm_cell_225/split:output:2*
T0*'
_output_shapes
:?????????d?
*sequential_71/lstm_213/lstm_cell_225/mul_1Mul0sequential_71/lstm_213/lstm_cell_225/Sigmoid:y:07sequential_71/lstm_213/lstm_cell_225/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
*sequential_71/lstm_213/lstm_cell_225/add_1AddV2,sequential_71/lstm_213/lstm_cell_225/mul:z:0.sequential_71/lstm_213/lstm_cell_225/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
.sequential_71/lstm_213/lstm_cell_225/Sigmoid_2Sigmoid3sequential_71/lstm_213/lstm_cell_225/split:output:3*
T0*'
_output_shapes
:?????????d?
+sequential_71/lstm_213/lstm_cell_225/Relu_1Relu.sequential_71/lstm_213/lstm_cell_225/add_1:z:0*
T0*'
_output_shapes
:?????????d?
*sequential_71/lstm_213/lstm_cell_225/mul_2Mul2sequential_71/lstm_213/lstm_cell_225/Sigmoid_2:y:09sequential_71/lstm_213/lstm_cell_225/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
4sequential_71/lstm_213/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
&sequential_71/lstm_213/TensorArrayV2_1TensorListReserve=sequential_71/lstm_213/TensorArrayV2_1/element_shape:output:0/sequential_71/lstm_213/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_71/lstm_213/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_71/lstm_213/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_71/lstm_213/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_71/lstm_213/whileWhile2sequential_71/lstm_213/while/loop_counter:output:08sequential_71/lstm_213/while/maximum_iterations:output:0$sequential_71/lstm_213/time:output:0/sequential_71/lstm_213/TensorArrayV2_1:handle:0%sequential_71/lstm_213/zeros:output:0'sequential_71/lstm_213/zeros_1:output:0/sequential_71/lstm_213/strided_slice_1:output:0Nsequential_71/lstm_213/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_71_lstm_213_lstm_cell_225_matmul_readvariableop_resourceEsequential_71_lstm_213_lstm_cell_225_matmul_1_readvariableop_resourceDsequential_71_lstm_213_lstm_cell_225_biasadd_readvariableop_resource*
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
)sequential_71_lstm_213_while_body_1373317*5
cond-R+
)sequential_71_lstm_213_while_cond_1373316*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Gsequential_71/lstm_213/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
9sequential_71/lstm_213/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_71/lstm_213/while:output:3Psequential_71/lstm_213/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0
,sequential_71/lstm_213/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_71/lstm_213/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_71/lstm_213/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_71/lstm_213/strided_slice_3StridedSliceBsequential_71/lstm_213/TensorArrayV2Stack/TensorListStack:tensor:05sequential_71/lstm_213/strided_slice_3/stack:output:07sequential_71/lstm_213/strided_slice_3/stack_1:output:07sequential_71/lstm_213/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask|
'sequential_71/lstm_213/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_71/lstm_213/transpose_1	TransposeBsequential_71/lstm_213/TensorArrayV2Stack/TensorListStack:tensor:00sequential_71/lstm_213/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_71/lstm_213/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_71/lstm_214/ShapeShape&sequential_71/lstm_213/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_71/lstm_214/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_71/lstm_214/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_71/lstm_214/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_71/lstm_214/strided_sliceStridedSlice%sequential_71/lstm_214/Shape:output:03sequential_71/lstm_214/strided_slice/stack:output:05sequential_71/lstm_214/strided_slice/stack_1:output:05sequential_71/lstm_214/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_71/lstm_214/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
#sequential_71/lstm_214/zeros/packedPack-sequential_71/lstm_214/strided_slice:output:0.sequential_71/lstm_214/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_71/lstm_214/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_71/lstm_214/zerosFill,sequential_71/lstm_214/zeros/packed:output:0+sequential_71/lstm_214/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2i
'sequential_71/lstm_214/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
%sequential_71/lstm_214/zeros_1/packedPack-sequential_71/lstm_214/strided_slice:output:00sequential_71/lstm_214/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_71/lstm_214/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_71/lstm_214/zeros_1Fill.sequential_71/lstm_214/zeros_1/packed:output:0-sequential_71/lstm_214/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2z
%sequential_71/lstm_214/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_71/lstm_214/transpose	Transpose&sequential_71/lstm_213/transpose_1:y:0.sequential_71/lstm_214/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_71/lstm_214/Shape_1Shape$sequential_71/lstm_214/transpose:y:0*
T0*
_output_shapes
:v
,sequential_71/lstm_214/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_71/lstm_214/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_71/lstm_214/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_71/lstm_214/strided_slice_1StridedSlice'sequential_71/lstm_214/Shape_1:output:05sequential_71/lstm_214/strided_slice_1/stack:output:07sequential_71/lstm_214/strided_slice_1/stack_1:output:07sequential_71/lstm_214/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_71/lstm_214/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_71/lstm_214/TensorArrayV2TensorListReserve;sequential_71/lstm_214/TensorArrayV2/element_shape:output:0/sequential_71/lstm_214/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_71/lstm_214/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
>sequential_71/lstm_214/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_71/lstm_214/transpose:y:0Usequential_71/lstm_214/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_71/lstm_214/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_71/lstm_214/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_71/lstm_214/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_71/lstm_214/strided_slice_2StridedSlice$sequential_71/lstm_214/transpose:y:05sequential_71/lstm_214/strided_slice_2/stack:output:07sequential_71/lstm_214/strided_slice_2/stack_1:output:07sequential_71/lstm_214/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
:sequential_71/lstm_214/lstm_cell_226/MatMul/ReadVariableOpReadVariableOpCsequential_71_lstm_214_lstm_cell_226_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
+sequential_71/lstm_214/lstm_cell_226/MatMulMatMul/sequential_71/lstm_214/strided_slice_2:output:0Bsequential_71/lstm_214/lstm_cell_226/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_71/lstm_214/lstm_cell_226/MatMul_1/ReadVariableOpReadVariableOpEsequential_71_lstm_214_lstm_cell_226_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
-sequential_71/lstm_214/lstm_cell_226/MatMul_1MatMul%sequential_71/lstm_214/zeros:output:0Dsequential_71/lstm_214/lstm_cell_226/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_71/lstm_214/lstm_cell_226/addAddV25sequential_71/lstm_214/lstm_cell_226/MatMul:product:07sequential_71/lstm_214/lstm_cell_226/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_71/lstm_214/lstm_cell_226/BiasAdd/ReadVariableOpReadVariableOpDsequential_71_lstm_214_lstm_cell_226_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_71/lstm_214/lstm_cell_226/BiasAddBiasAdd,sequential_71/lstm_214/lstm_cell_226/add:z:0Csequential_71/lstm_214/lstm_cell_226/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_71/lstm_214/lstm_cell_226/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_71/lstm_214/lstm_cell_226/splitSplit=sequential_71/lstm_214/lstm_cell_226/split/split_dim:output:05sequential_71/lstm_214/lstm_cell_226/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
,sequential_71/lstm_214/lstm_cell_226/SigmoidSigmoid3sequential_71/lstm_214/lstm_cell_226/split:output:0*
T0*'
_output_shapes
:?????????2?
.sequential_71/lstm_214/lstm_cell_226/Sigmoid_1Sigmoid3sequential_71/lstm_214/lstm_cell_226/split:output:1*
T0*'
_output_shapes
:?????????2?
(sequential_71/lstm_214/lstm_cell_226/mulMul2sequential_71/lstm_214/lstm_cell_226/Sigmoid_1:y:0'sequential_71/lstm_214/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
)sequential_71/lstm_214/lstm_cell_226/ReluRelu3sequential_71/lstm_214/lstm_cell_226/split:output:2*
T0*'
_output_shapes
:?????????2?
*sequential_71/lstm_214/lstm_cell_226/mul_1Mul0sequential_71/lstm_214/lstm_cell_226/Sigmoid:y:07sequential_71/lstm_214/lstm_cell_226/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
*sequential_71/lstm_214/lstm_cell_226/add_1AddV2,sequential_71/lstm_214/lstm_cell_226/mul:z:0.sequential_71/lstm_214/lstm_cell_226/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
.sequential_71/lstm_214/lstm_cell_226/Sigmoid_2Sigmoid3sequential_71/lstm_214/lstm_cell_226/split:output:3*
T0*'
_output_shapes
:?????????2?
+sequential_71/lstm_214/lstm_cell_226/Relu_1Relu.sequential_71/lstm_214/lstm_cell_226/add_1:z:0*
T0*'
_output_shapes
:?????????2?
*sequential_71/lstm_214/lstm_cell_226/mul_2Mul2sequential_71/lstm_214/lstm_cell_226/Sigmoid_2:y:09sequential_71/lstm_214/lstm_cell_226/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
4sequential_71/lstm_214/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
&sequential_71/lstm_214/TensorArrayV2_1TensorListReserve=sequential_71/lstm_214/TensorArrayV2_1/element_shape:output:0/sequential_71/lstm_214/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_71/lstm_214/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_71/lstm_214/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_71/lstm_214/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_71/lstm_214/whileWhile2sequential_71/lstm_214/while/loop_counter:output:08sequential_71/lstm_214/while/maximum_iterations:output:0$sequential_71/lstm_214/time:output:0/sequential_71/lstm_214/TensorArrayV2_1:handle:0%sequential_71/lstm_214/zeros:output:0'sequential_71/lstm_214/zeros_1:output:0/sequential_71/lstm_214/strided_slice_1:output:0Nsequential_71/lstm_214/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_71_lstm_214_lstm_cell_226_matmul_readvariableop_resourceEsequential_71_lstm_214_lstm_cell_226_matmul_1_readvariableop_resourceDsequential_71_lstm_214_lstm_cell_226_biasadd_readvariableop_resource*
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
)sequential_71_lstm_214_while_body_1373456*5
cond-R+
)sequential_71_lstm_214_while_cond_1373455*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Gsequential_71/lstm_214/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
9sequential_71/lstm_214/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_71/lstm_214/while:output:3Psequential_71/lstm_214/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0
,sequential_71/lstm_214/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_71/lstm_214/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_71/lstm_214/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_71/lstm_214/strided_slice_3StridedSliceBsequential_71/lstm_214/TensorArrayV2Stack/TensorListStack:tensor:05sequential_71/lstm_214/strided_slice_3/stack:output:07sequential_71/lstm_214/strided_slice_3/stack_1:output:07sequential_71/lstm_214/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask|
'sequential_71/lstm_214/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_71/lstm_214/transpose_1	TransposeBsequential_71/lstm_214/TensorArrayV2Stack/TensorListStack:tensor:00sequential_71/lstm_214/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_71/lstm_214/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_71/lstm_215/ShapeShape&sequential_71/lstm_214/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_71/lstm_215/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_71/lstm_215/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_71/lstm_215/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_71/lstm_215/strided_sliceStridedSlice%sequential_71/lstm_215/Shape:output:03sequential_71/lstm_215/strided_slice/stack:output:05sequential_71/lstm_215/strided_slice/stack_1:output:05sequential_71/lstm_215/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_71/lstm_215/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
#sequential_71/lstm_215/zeros/packedPack-sequential_71/lstm_215/strided_slice:output:0.sequential_71/lstm_215/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_71/lstm_215/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_71/lstm_215/zerosFill,sequential_71/lstm_215/zeros/packed:output:0+sequential_71/lstm_215/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
i
'sequential_71/lstm_215/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
%sequential_71/lstm_215/zeros_1/packedPack-sequential_71/lstm_215/strided_slice:output:00sequential_71/lstm_215/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_71/lstm_215/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_71/lstm_215/zeros_1Fill.sequential_71/lstm_215/zeros_1/packed:output:0-sequential_71/lstm_215/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
z
%sequential_71/lstm_215/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_71/lstm_215/transpose	Transpose&sequential_71/lstm_214/transpose_1:y:0.sequential_71/lstm_215/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_71/lstm_215/Shape_1Shape$sequential_71/lstm_215/transpose:y:0*
T0*
_output_shapes
:v
,sequential_71/lstm_215/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_71/lstm_215/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_71/lstm_215/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_71/lstm_215/strided_slice_1StridedSlice'sequential_71/lstm_215/Shape_1:output:05sequential_71/lstm_215/strided_slice_1/stack:output:07sequential_71/lstm_215/strided_slice_1/stack_1:output:07sequential_71/lstm_215/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_71/lstm_215/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_71/lstm_215/TensorArrayV2TensorListReserve;sequential_71/lstm_215/TensorArrayV2/element_shape:output:0/sequential_71/lstm_215/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_71/lstm_215/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
>sequential_71/lstm_215/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_71/lstm_215/transpose:y:0Usequential_71/lstm_215/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_71/lstm_215/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_71/lstm_215/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_71/lstm_215/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_71/lstm_215/strided_slice_2StridedSlice$sequential_71/lstm_215/transpose:y:05sequential_71/lstm_215/strided_slice_2/stack:output:07sequential_71/lstm_215/strided_slice_2/stack_1:output:07sequential_71/lstm_215/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
:sequential_71/lstm_215/lstm_cell_227/MatMul/ReadVariableOpReadVariableOpCsequential_71_lstm_215_lstm_cell_227_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
+sequential_71/lstm_215/lstm_cell_227/MatMulMatMul/sequential_71/lstm_215/strided_slice_2:output:0Bsequential_71/lstm_215/lstm_cell_227/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
<sequential_71/lstm_215/lstm_cell_227/MatMul_1/ReadVariableOpReadVariableOpEsequential_71_lstm_215_lstm_cell_227_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
-sequential_71/lstm_215/lstm_cell_227/MatMul_1MatMul%sequential_71/lstm_215/zeros:output:0Dsequential_71/lstm_215/lstm_cell_227/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
(sequential_71/lstm_215/lstm_cell_227/addAddV25sequential_71/lstm_215/lstm_cell_227/MatMul:product:07sequential_71/lstm_215/lstm_cell_227/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
;sequential_71/lstm_215/lstm_cell_227/BiasAdd/ReadVariableOpReadVariableOpDsequential_71_lstm_215_lstm_cell_227_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
,sequential_71/lstm_215/lstm_cell_227/BiasAddBiasAdd,sequential_71/lstm_215/lstm_cell_227/add:z:0Csequential_71/lstm_215/lstm_cell_227/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(v
4sequential_71/lstm_215/lstm_cell_227/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_71/lstm_215/lstm_cell_227/splitSplit=sequential_71/lstm_215/lstm_cell_227/split/split_dim:output:05sequential_71/lstm_215/lstm_cell_227/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
,sequential_71/lstm_215/lstm_cell_227/SigmoidSigmoid3sequential_71/lstm_215/lstm_cell_227/split:output:0*
T0*'
_output_shapes
:?????????
?
.sequential_71/lstm_215/lstm_cell_227/Sigmoid_1Sigmoid3sequential_71/lstm_215/lstm_cell_227/split:output:1*
T0*'
_output_shapes
:?????????
?
(sequential_71/lstm_215/lstm_cell_227/mulMul2sequential_71/lstm_215/lstm_cell_227/Sigmoid_1:y:0'sequential_71/lstm_215/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
)sequential_71/lstm_215/lstm_cell_227/ReluRelu3sequential_71/lstm_215/lstm_cell_227/split:output:2*
T0*'
_output_shapes
:?????????
?
*sequential_71/lstm_215/lstm_cell_227/mul_1Mul0sequential_71/lstm_215/lstm_cell_227/Sigmoid:y:07sequential_71/lstm_215/lstm_cell_227/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
*sequential_71/lstm_215/lstm_cell_227/add_1AddV2,sequential_71/lstm_215/lstm_cell_227/mul:z:0.sequential_71/lstm_215/lstm_cell_227/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
.sequential_71/lstm_215/lstm_cell_227/Sigmoid_2Sigmoid3sequential_71/lstm_215/lstm_cell_227/split:output:3*
T0*'
_output_shapes
:?????????
?
+sequential_71/lstm_215/lstm_cell_227/Relu_1Relu.sequential_71/lstm_215/lstm_cell_227/add_1:z:0*
T0*'
_output_shapes
:?????????
?
*sequential_71/lstm_215/lstm_cell_227/mul_2Mul2sequential_71/lstm_215/lstm_cell_227/Sigmoid_2:y:09sequential_71/lstm_215/lstm_cell_227/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
4sequential_71/lstm_215/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
&sequential_71/lstm_215/TensorArrayV2_1TensorListReserve=sequential_71/lstm_215/TensorArrayV2_1/element_shape:output:0/sequential_71/lstm_215/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_71/lstm_215/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_71/lstm_215/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_71/lstm_215/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_71/lstm_215/whileWhile2sequential_71/lstm_215/while/loop_counter:output:08sequential_71/lstm_215/while/maximum_iterations:output:0$sequential_71/lstm_215/time:output:0/sequential_71/lstm_215/TensorArrayV2_1:handle:0%sequential_71/lstm_215/zeros:output:0'sequential_71/lstm_215/zeros_1:output:0/sequential_71/lstm_215/strided_slice_1:output:0Nsequential_71/lstm_215/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_71_lstm_215_lstm_cell_227_matmul_readvariableop_resourceEsequential_71_lstm_215_lstm_cell_227_matmul_1_readvariableop_resourceDsequential_71_lstm_215_lstm_cell_227_biasadd_readvariableop_resource*
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
)sequential_71_lstm_215_while_body_1373595*5
cond-R+
)sequential_71_lstm_215_while_cond_1373594*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Gsequential_71/lstm_215/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
9sequential_71/lstm_215/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_71/lstm_215/while:output:3Psequential_71/lstm_215/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0
,sequential_71/lstm_215/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_71/lstm_215/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_71/lstm_215/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_71/lstm_215/strided_slice_3StridedSliceBsequential_71/lstm_215/TensorArrayV2Stack/TensorListStack:tensor:05sequential_71/lstm_215/strided_slice_3/stack:output:07sequential_71/lstm_215/strided_slice_3/stack_1:output:07sequential_71/lstm_215/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask|
'sequential_71/lstm_215/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_71/lstm_215/transpose_1	TransposeBsequential_71/lstm_215/TensorArrayV2Stack/TensorListStack:tensor:00sequential_71/lstm_215/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
r
sequential_71/lstm_215/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_71/dense_71/MatMul/ReadVariableOpReadVariableOp5sequential_71_dense_71_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_71/dense_71/MatMulMatMul/sequential_71/lstm_215/strided_slice_3:output:04sequential_71/dense_71/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_71/dense_71/BiasAdd/ReadVariableOpReadVariableOp6sequential_71_dense_71_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_71/dense_71/BiasAddBiasAdd'sequential_71/dense_71/MatMul:product:05sequential_71/dense_71/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_71/dense_71/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_71/dense_71/BiasAdd/ReadVariableOp-^sequential_71/dense_71/MatMul/ReadVariableOp<^sequential_71/lstm_213/lstm_cell_225/BiasAdd/ReadVariableOp;^sequential_71/lstm_213/lstm_cell_225/MatMul/ReadVariableOp=^sequential_71/lstm_213/lstm_cell_225/MatMul_1/ReadVariableOp^sequential_71/lstm_213/while<^sequential_71/lstm_214/lstm_cell_226/BiasAdd/ReadVariableOp;^sequential_71/lstm_214/lstm_cell_226/MatMul/ReadVariableOp=^sequential_71/lstm_214/lstm_cell_226/MatMul_1/ReadVariableOp^sequential_71/lstm_214/while<^sequential_71/lstm_215/lstm_cell_227/BiasAdd/ReadVariableOp;^sequential_71/lstm_215/lstm_cell_227/MatMul/ReadVariableOp=^sequential_71/lstm_215/lstm_cell_227/MatMul_1/ReadVariableOp^sequential_71/lstm_215/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2^
-sequential_71/dense_71/BiasAdd/ReadVariableOp-sequential_71/dense_71/BiasAdd/ReadVariableOp2\
,sequential_71/dense_71/MatMul/ReadVariableOp,sequential_71/dense_71/MatMul/ReadVariableOp2z
;sequential_71/lstm_213/lstm_cell_225/BiasAdd/ReadVariableOp;sequential_71/lstm_213/lstm_cell_225/BiasAdd/ReadVariableOp2x
:sequential_71/lstm_213/lstm_cell_225/MatMul/ReadVariableOp:sequential_71/lstm_213/lstm_cell_225/MatMul/ReadVariableOp2|
<sequential_71/lstm_213/lstm_cell_225/MatMul_1/ReadVariableOp<sequential_71/lstm_213/lstm_cell_225/MatMul_1/ReadVariableOp2<
sequential_71/lstm_213/whilesequential_71/lstm_213/while2z
;sequential_71/lstm_214/lstm_cell_226/BiasAdd/ReadVariableOp;sequential_71/lstm_214/lstm_cell_226/BiasAdd/ReadVariableOp2x
:sequential_71/lstm_214/lstm_cell_226/MatMul/ReadVariableOp:sequential_71/lstm_214/lstm_cell_226/MatMul/ReadVariableOp2|
<sequential_71/lstm_214/lstm_cell_226/MatMul_1/ReadVariableOp<sequential_71/lstm_214/lstm_cell_226/MatMul_1/ReadVariableOp2<
sequential_71/lstm_214/whilesequential_71/lstm_214/while2z
;sequential_71/lstm_215/lstm_cell_227/BiasAdd/ReadVariableOp;sequential_71/lstm_215/lstm_cell_227/BiasAdd/ReadVariableOp2x
:sequential_71/lstm_215/lstm_cell_227/MatMul/ReadVariableOp:sequential_71/lstm_215/lstm_cell_227/MatMul/ReadVariableOp2|
<sequential_71/lstm_215/lstm_cell_227/MatMul_1/ReadVariableOp<sequential_71/lstm_215/lstm_cell_227/MatMul_1/ReadVariableOp2<
sequential_71/lstm_215/whilesequential_71/lstm_215/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_213_input
?8
?
E__inference_lstm_213_layer_call_and_return_conditional_losses_1374026

inputs(
lstm_cell_225_1373944:	?(
lstm_cell_225_1373946:	d?$
lstm_cell_225_1373948:	?
identity??%lstm_cell_225/StatefulPartitionedCall?while;
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
%lstm_cell_225/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_225_1373944lstm_cell_225_1373946lstm_cell_225_1373948*
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
J__inference_lstm_cell_225_layer_call_and_return_conditional_losses_1373898n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_225_1373944lstm_cell_225_1373946lstm_cell_225_1373948*
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
while_body_1373957*
condR
while_cond_1373956*K
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
NoOpNoOp&^lstm_cell_225/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_225/StatefulPartitionedCall%lstm_cell_225/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
J__inference_sequential_71_layer_call_and_return_conditional_losses_1375880
lstm_213_input#
lstm_213_1375853:	?#
lstm_213_1375855:	d?
lstm_213_1375857:	?#
lstm_214_1375860:	d?#
lstm_214_1375862:	2?
lstm_214_1375864:	?"
lstm_215_1375867:2("
lstm_215_1375869:
(
lstm_215_1375871:("
dense_71_1375874:

dense_71_1375876:
identity?? dense_71/StatefulPartitionedCall? lstm_213/StatefulPartitionedCall? lstm_214/StatefulPartitionedCall? lstm_215/StatefulPartitionedCall?
 lstm_213/StatefulPartitionedCallStatefulPartitionedCalllstm_213_inputlstm_213_1375853lstm_213_1375855lstm_213_1375857*
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
E__inference_lstm_213_layer_call_and_return_conditional_losses_1374884?
 lstm_214/StatefulPartitionedCallStatefulPartitionedCall)lstm_213/StatefulPartitionedCall:output:0lstm_214_1375860lstm_214_1375862lstm_214_1375864*
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
E__inference_lstm_214_layer_call_and_return_conditional_losses_1375034?
 lstm_215/StatefulPartitionedCallStatefulPartitionedCall)lstm_214/StatefulPartitionedCall:output:0lstm_215_1375867lstm_215_1375869lstm_215_1375871*
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
E__inference_lstm_215_layer_call_and_return_conditional_losses_1375184?
 dense_71/StatefulPartitionedCallStatefulPartitionedCall)lstm_215/StatefulPartitionedCall:output:0dense_71_1375874dense_71_1375876*
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
E__inference_dense_71_layer_call_and_return_conditional_losses_1375202x
IdentityIdentity)dense_71/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_71/StatefulPartitionedCall!^lstm_213/StatefulPartitionedCall!^lstm_214/StatefulPartitionedCall!^lstm_215/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_71/StatefulPartitionedCall dense_71/StatefulPartitionedCall2D
 lstm_213/StatefulPartitionedCall lstm_213/StatefulPartitionedCall2D
 lstm_214/StatefulPartitionedCall lstm_214/StatefulPartitionedCall2D
 lstm_215/StatefulPartitionedCall lstm_215/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_213_input
?J
?
E__inference_lstm_213_layer_call_and_return_conditional_losses_1375730

inputs?
,lstm_cell_225_matmul_readvariableop_resource:	?A
.lstm_cell_225_matmul_1_readvariableop_resource:	d?<
-lstm_cell_225_biasadd_readvariableop_resource:	?
identity??$lstm_cell_225/BiasAdd/ReadVariableOp?#lstm_cell_225/MatMul/ReadVariableOp?%lstm_cell_225/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_225/MatMul/ReadVariableOpReadVariableOp,lstm_cell_225_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_225/MatMulMatMulstrided_slice_2:output:0+lstm_cell_225/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_225/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_225_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_225/MatMul_1MatMulzeros:output:0-lstm_cell_225/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_225/addAddV2lstm_cell_225/MatMul:product:0 lstm_cell_225/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_225/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_225_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_225/BiasAddBiasAddlstm_cell_225/add:z:0,lstm_cell_225/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_225/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_225/splitSplit&lstm_cell_225/split/split_dim:output:0lstm_cell_225/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_225/SigmoidSigmoidlstm_cell_225/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_225/Sigmoid_1Sigmoidlstm_cell_225/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_225/mulMullstm_cell_225/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_225/ReluRelulstm_cell_225/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_225/mul_1Mullstm_cell_225/Sigmoid:y:0 lstm_cell_225/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_225/add_1AddV2lstm_cell_225/mul:z:0lstm_cell_225/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_225/Sigmoid_2Sigmoidlstm_cell_225/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_225/Relu_1Relulstm_cell_225/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_225/mul_2Mullstm_cell_225/Sigmoid_2:y:0"lstm_cell_225/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_225_matmul_readvariableop_resource.lstm_cell_225_matmul_1_readvariableop_resource-lstm_cell_225_biasadd_readvariableop_resource*
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
while_body_1375646*
condR
while_cond_1375645*K
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
NoOpNoOp%^lstm_cell_225/BiasAdd/ReadVariableOp$^lstm_cell_225/MatMul/ReadVariableOp&^lstm_cell_225/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_225/BiasAdd/ReadVariableOp$lstm_cell_225/BiasAdd/ReadVariableOp2J
#lstm_cell_225/MatMul/ReadVariableOp#lstm_cell_225/MatMul/ReadVariableOp2N
%lstm_cell_225/MatMul_1/ReadVariableOp%lstm_cell_225/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_1374466
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_227_1374490_0:2(/
while_lstm_cell_227_1374492_0:
(+
while_lstm_cell_227_1374494_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_227_1374490:2(-
while_lstm_cell_227_1374492:
()
while_lstm_cell_227_1374494:(??+while/lstm_cell_227/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_227/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_227_1374490_0while_lstm_cell_227_1374492_0while_lstm_cell_227_1374494_0*
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
J__inference_lstm_cell_227_layer_call_and_return_conditional_losses_1374452?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_227/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_227/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_227/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_227/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_227_1374490while_lstm_cell_227_1374490_0"<
while_lstm_cell_227_1374492while_lstm_cell_227_1374492_0"<
while_lstm_cell_227_1374494while_lstm_cell_227_1374494_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_227/StatefulPartitionedCall+while/lstm_cell_227/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_226_layer_call_and_return_conditional_losses_1374248

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
E__inference_lstm_213_layer_call_and_return_conditional_losses_1377326

inputs?
,lstm_cell_225_matmul_readvariableop_resource:	?A
.lstm_cell_225_matmul_1_readvariableop_resource:	d?<
-lstm_cell_225_biasadd_readvariableop_resource:	?
identity??$lstm_cell_225/BiasAdd/ReadVariableOp?#lstm_cell_225/MatMul/ReadVariableOp?%lstm_cell_225/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_225/MatMul/ReadVariableOpReadVariableOp,lstm_cell_225_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_225/MatMulMatMulstrided_slice_2:output:0+lstm_cell_225/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_225/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_225_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_225/MatMul_1MatMulzeros:output:0-lstm_cell_225/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_225/addAddV2lstm_cell_225/MatMul:product:0 lstm_cell_225/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_225/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_225_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_225/BiasAddBiasAddlstm_cell_225/add:z:0,lstm_cell_225/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_225/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_225/splitSplit&lstm_cell_225/split/split_dim:output:0lstm_cell_225/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_225/SigmoidSigmoidlstm_cell_225/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_225/Sigmoid_1Sigmoidlstm_cell_225/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_225/mulMullstm_cell_225/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_225/ReluRelulstm_cell_225/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_225/mul_1Mullstm_cell_225/Sigmoid:y:0 lstm_cell_225/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_225/add_1AddV2lstm_cell_225/mul:z:0lstm_cell_225/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_225/Sigmoid_2Sigmoidlstm_cell_225/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_225/Relu_1Relulstm_cell_225/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_225/mul_2Mullstm_cell_225/Sigmoid_2:y:0"lstm_cell_225/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_225_matmul_readvariableop_resource.lstm_cell_225_matmul_1_readvariableop_resource-lstm_cell_225_biasadd_readvariableop_resource*
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
while_body_1377242*
condR
while_cond_1377241*K
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
NoOpNoOp%^lstm_cell_225/BiasAdd/ReadVariableOp$^lstm_cell_225/MatMul/ReadVariableOp&^lstm_cell_225/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_225/BiasAdd/ReadVariableOp$lstm_cell_225/BiasAdd/ReadVariableOp2J
#lstm_cell_225/MatMul/ReadVariableOp#lstm_cell_225/MatMul/ReadVariableOp2N
%lstm_cell_225/MatMul_1/ReadVariableOp%lstm_cell_225/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_227_layer_call_fn_1378950

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
J__inference_lstm_cell_227_layer_call_and_return_conditional_losses_1374598o
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
while_cond_1375480
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1375480___redundant_placeholder05
1while_while_cond_1375480___redundant_placeholder15
1while_while_cond_1375480___redundant_placeholder25
1while_while_cond_1375480___redundant_placeholder3
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
*__inference_lstm_214_layer_call_fn_1377502

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
E__inference_lstm_214_layer_call_and_return_conditional_losses_1375034s
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
J__inference_lstm_cell_227_layer_call_and_return_conditional_losses_1374598

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
while_body_1375100
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_227_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_227_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_227_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_227_matmul_readvariableop_resource:2(F
4while_lstm_cell_227_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_227_biasadd_readvariableop_resource:(??*while/lstm_cell_227/BiasAdd/ReadVariableOp?)while/lstm_cell_227/MatMul/ReadVariableOp?+while/lstm_cell_227/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_227/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_227_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_227/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_227/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_227/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_227_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_227/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_227/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_227/addAddV2$while/lstm_cell_227/MatMul:product:0&while/lstm_cell_227/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_227/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_227_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_227/BiasAddBiasAddwhile/lstm_cell_227/add:z:02while/lstm_cell_227/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_227/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_227/splitSplit,while/lstm_cell_227/split/split_dim:output:0$while/lstm_cell_227/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_227/SigmoidSigmoid"while/lstm_cell_227/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_227/Sigmoid_1Sigmoid"while/lstm_cell_227/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_227/mulMul!while/lstm_cell_227/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_227/ReluRelu"while/lstm_cell_227/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_227/mul_1Mulwhile/lstm_cell_227/Sigmoid:y:0&while/lstm_cell_227/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_227/add_1AddV2while/lstm_cell_227/mul:z:0while/lstm_cell_227/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_227/Sigmoid_2Sigmoid"while/lstm_cell_227/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_227/Relu_1Reluwhile/lstm_cell_227/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_227/mul_2Mul!while/lstm_cell_227/Sigmoid_2:y:0(while/lstm_cell_227/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_227/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_227/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_227/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_227/BiasAdd/ReadVariableOp*^while/lstm_cell_227/MatMul/ReadVariableOp,^while/lstm_cell_227/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_227_biasadd_readvariableop_resource5while_lstm_cell_227_biasadd_readvariableop_resource_0"n
4while_lstm_cell_227_matmul_1_readvariableop_resource6while_lstm_cell_227_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_227_matmul_readvariableop_resource4while_lstm_cell_227_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_227/BiasAdd/ReadVariableOp*while/lstm_cell_227/BiasAdd/ReadVariableOp2V
)while/lstm_cell_227/MatMul/ReadVariableOp)while/lstm_cell_227/MatMul/ReadVariableOp2Z
+while/lstm_cell_227/MatMul_1/ReadVariableOp+while/lstm_cell_227/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_71_layer_call_and_return_conditional_losses_1376853

inputsH
5lstm_213_lstm_cell_225_matmul_readvariableop_resource:	?J
7lstm_213_lstm_cell_225_matmul_1_readvariableop_resource:	d?E
6lstm_213_lstm_cell_225_biasadd_readvariableop_resource:	?H
5lstm_214_lstm_cell_226_matmul_readvariableop_resource:	d?J
7lstm_214_lstm_cell_226_matmul_1_readvariableop_resource:	2?E
6lstm_214_lstm_cell_226_biasadd_readvariableop_resource:	?G
5lstm_215_lstm_cell_227_matmul_readvariableop_resource:2(I
7lstm_215_lstm_cell_227_matmul_1_readvariableop_resource:
(D
6lstm_215_lstm_cell_227_biasadd_readvariableop_resource:(9
'dense_71_matmul_readvariableop_resource:
6
(dense_71_biasadd_readvariableop_resource:
identity??dense_71/BiasAdd/ReadVariableOp?dense_71/MatMul/ReadVariableOp?-lstm_213/lstm_cell_225/BiasAdd/ReadVariableOp?,lstm_213/lstm_cell_225/MatMul/ReadVariableOp?.lstm_213/lstm_cell_225/MatMul_1/ReadVariableOp?lstm_213/while?-lstm_214/lstm_cell_226/BiasAdd/ReadVariableOp?,lstm_214/lstm_cell_226/MatMul/ReadVariableOp?.lstm_214/lstm_cell_226/MatMul_1/ReadVariableOp?lstm_214/while?-lstm_215/lstm_cell_227/BiasAdd/ReadVariableOp?,lstm_215/lstm_cell_227/MatMul/ReadVariableOp?.lstm_215/lstm_cell_227/MatMul_1/ReadVariableOp?lstm_215/whileD
lstm_213/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_213/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_213/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_213/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_213/strided_sliceStridedSlicelstm_213/Shape:output:0%lstm_213/strided_slice/stack:output:0'lstm_213/strided_slice/stack_1:output:0'lstm_213/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_213/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_213/zeros/packedPacklstm_213/strided_slice:output:0 lstm_213/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_213/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_213/zerosFilllstm_213/zeros/packed:output:0lstm_213/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_213/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_213/zeros_1/packedPacklstm_213/strided_slice:output:0"lstm_213/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_213/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_213/zeros_1Fill lstm_213/zeros_1/packed:output:0lstm_213/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_213/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_213/transpose	Transposeinputs lstm_213/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_213/Shape_1Shapelstm_213/transpose:y:0*
T0*
_output_shapes
:h
lstm_213/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_213/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_213/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_213/strided_slice_1StridedSlicelstm_213/Shape_1:output:0'lstm_213/strided_slice_1/stack:output:0)lstm_213/strided_slice_1/stack_1:output:0)lstm_213/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_213/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_213/TensorArrayV2TensorListReserve-lstm_213/TensorArrayV2/element_shape:output:0!lstm_213/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_213/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_213/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_213/transpose:y:0Glstm_213/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_213/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_213/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_213/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_213/strided_slice_2StridedSlicelstm_213/transpose:y:0'lstm_213/strided_slice_2/stack:output:0)lstm_213/strided_slice_2/stack_1:output:0)lstm_213/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_213/lstm_cell_225/MatMul/ReadVariableOpReadVariableOp5lstm_213_lstm_cell_225_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_213/lstm_cell_225/MatMulMatMul!lstm_213/strided_slice_2:output:04lstm_213/lstm_cell_225/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_213/lstm_cell_225/MatMul_1/ReadVariableOpReadVariableOp7lstm_213_lstm_cell_225_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_213/lstm_cell_225/MatMul_1MatMullstm_213/zeros:output:06lstm_213/lstm_cell_225/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_213/lstm_cell_225/addAddV2'lstm_213/lstm_cell_225/MatMul:product:0)lstm_213/lstm_cell_225/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_213/lstm_cell_225/BiasAdd/ReadVariableOpReadVariableOp6lstm_213_lstm_cell_225_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_213/lstm_cell_225/BiasAddBiasAddlstm_213/lstm_cell_225/add:z:05lstm_213/lstm_cell_225/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_213/lstm_cell_225/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_213/lstm_cell_225/splitSplit/lstm_213/lstm_cell_225/split/split_dim:output:0'lstm_213/lstm_cell_225/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_213/lstm_cell_225/SigmoidSigmoid%lstm_213/lstm_cell_225/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_213/lstm_cell_225/Sigmoid_1Sigmoid%lstm_213/lstm_cell_225/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_213/lstm_cell_225/mulMul$lstm_213/lstm_cell_225/Sigmoid_1:y:0lstm_213/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_213/lstm_cell_225/ReluRelu%lstm_213/lstm_cell_225/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_213/lstm_cell_225/mul_1Mul"lstm_213/lstm_cell_225/Sigmoid:y:0)lstm_213/lstm_cell_225/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_213/lstm_cell_225/add_1AddV2lstm_213/lstm_cell_225/mul:z:0 lstm_213/lstm_cell_225/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_213/lstm_cell_225/Sigmoid_2Sigmoid%lstm_213/lstm_cell_225/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_213/lstm_cell_225/Relu_1Relu lstm_213/lstm_cell_225/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_213/lstm_cell_225/mul_2Mul$lstm_213/lstm_cell_225/Sigmoid_2:y:0+lstm_213/lstm_cell_225/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_213/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_213/TensorArrayV2_1TensorListReserve/lstm_213/TensorArrayV2_1/element_shape:output:0!lstm_213/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_213/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_213/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_213/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_213/whileWhile$lstm_213/while/loop_counter:output:0*lstm_213/while/maximum_iterations:output:0lstm_213/time:output:0!lstm_213/TensorArrayV2_1:handle:0lstm_213/zeros:output:0lstm_213/zeros_1:output:0!lstm_213/strided_slice_1:output:0@lstm_213/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_213_lstm_cell_225_matmul_readvariableop_resource7lstm_213_lstm_cell_225_matmul_1_readvariableop_resource6lstm_213_lstm_cell_225_biasadd_readvariableop_resource*
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
lstm_213_while_body_1376485*'
condR
lstm_213_while_cond_1376484*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_213/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_213/TensorArrayV2Stack/TensorListStackTensorListStacklstm_213/while:output:3Blstm_213/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_213/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_213/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_213/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_213/strided_slice_3StridedSlice4lstm_213/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_213/strided_slice_3/stack:output:0)lstm_213/strided_slice_3/stack_1:output:0)lstm_213/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_213/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_213/transpose_1	Transpose4lstm_213/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_213/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_213/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_214/ShapeShapelstm_213/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_214/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_214/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_214/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_214/strided_sliceStridedSlicelstm_214/Shape:output:0%lstm_214/strided_slice/stack:output:0'lstm_214/strided_slice/stack_1:output:0'lstm_214/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_214/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_214/zeros/packedPacklstm_214/strided_slice:output:0 lstm_214/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_214/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_214/zerosFilllstm_214/zeros/packed:output:0lstm_214/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_214/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_214/zeros_1/packedPacklstm_214/strided_slice:output:0"lstm_214/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_214/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_214/zeros_1Fill lstm_214/zeros_1/packed:output:0lstm_214/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_214/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_214/transpose	Transposelstm_213/transpose_1:y:0 lstm_214/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_214/Shape_1Shapelstm_214/transpose:y:0*
T0*
_output_shapes
:h
lstm_214/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_214/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_214/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_214/strided_slice_1StridedSlicelstm_214/Shape_1:output:0'lstm_214/strided_slice_1/stack:output:0)lstm_214/strided_slice_1/stack_1:output:0)lstm_214/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_214/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_214/TensorArrayV2TensorListReserve-lstm_214/TensorArrayV2/element_shape:output:0!lstm_214/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_214/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_214/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_214/transpose:y:0Glstm_214/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_214/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_214/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_214/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_214/strided_slice_2StridedSlicelstm_214/transpose:y:0'lstm_214/strided_slice_2/stack:output:0)lstm_214/strided_slice_2/stack_1:output:0)lstm_214/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_214/lstm_cell_226/MatMul/ReadVariableOpReadVariableOp5lstm_214_lstm_cell_226_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_214/lstm_cell_226/MatMulMatMul!lstm_214/strided_slice_2:output:04lstm_214/lstm_cell_226/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_214/lstm_cell_226/MatMul_1/ReadVariableOpReadVariableOp7lstm_214_lstm_cell_226_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_214/lstm_cell_226/MatMul_1MatMullstm_214/zeros:output:06lstm_214/lstm_cell_226/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_214/lstm_cell_226/addAddV2'lstm_214/lstm_cell_226/MatMul:product:0)lstm_214/lstm_cell_226/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_214/lstm_cell_226/BiasAdd/ReadVariableOpReadVariableOp6lstm_214_lstm_cell_226_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_214/lstm_cell_226/BiasAddBiasAddlstm_214/lstm_cell_226/add:z:05lstm_214/lstm_cell_226/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_214/lstm_cell_226/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_214/lstm_cell_226/splitSplit/lstm_214/lstm_cell_226/split/split_dim:output:0'lstm_214/lstm_cell_226/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_214/lstm_cell_226/SigmoidSigmoid%lstm_214/lstm_cell_226/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_214/lstm_cell_226/Sigmoid_1Sigmoid%lstm_214/lstm_cell_226/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_214/lstm_cell_226/mulMul$lstm_214/lstm_cell_226/Sigmoid_1:y:0lstm_214/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_214/lstm_cell_226/ReluRelu%lstm_214/lstm_cell_226/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_214/lstm_cell_226/mul_1Mul"lstm_214/lstm_cell_226/Sigmoid:y:0)lstm_214/lstm_cell_226/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_214/lstm_cell_226/add_1AddV2lstm_214/lstm_cell_226/mul:z:0 lstm_214/lstm_cell_226/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_214/lstm_cell_226/Sigmoid_2Sigmoid%lstm_214/lstm_cell_226/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_214/lstm_cell_226/Relu_1Relu lstm_214/lstm_cell_226/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_214/lstm_cell_226/mul_2Mul$lstm_214/lstm_cell_226/Sigmoid_2:y:0+lstm_214/lstm_cell_226/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_214/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_214/TensorArrayV2_1TensorListReserve/lstm_214/TensorArrayV2_1/element_shape:output:0!lstm_214/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_214/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_214/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_214/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_214/whileWhile$lstm_214/while/loop_counter:output:0*lstm_214/while/maximum_iterations:output:0lstm_214/time:output:0!lstm_214/TensorArrayV2_1:handle:0lstm_214/zeros:output:0lstm_214/zeros_1:output:0!lstm_214/strided_slice_1:output:0@lstm_214/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_214_lstm_cell_226_matmul_readvariableop_resource7lstm_214_lstm_cell_226_matmul_1_readvariableop_resource6lstm_214_lstm_cell_226_biasadd_readvariableop_resource*
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
lstm_214_while_body_1376624*'
condR
lstm_214_while_cond_1376623*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_214/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_214/TensorArrayV2Stack/TensorListStackTensorListStacklstm_214/while:output:3Blstm_214/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_214/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_214/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_214/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_214/strided_slice_3StridedSlice4lstm_214/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_214/strided_slice_3/stack:output:0)lstm_214/strided_slice_3/stack_1:output:0)lstm_214/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_214/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_214/transpose_1	Transpose4lstm_214/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_214/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_214/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_215/ShapeShapelstm_214/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_215/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_215/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_215/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_215/strided_sliceStridedSlicelstm_215/Shape:output:0%lstm_215/strided_slice/stack:output:0'lstm_215/strided_slice/stack_1:output:0'lstm_215/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_215/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_215/zeros/packedPacklstm_215/strided_slice:output:0 lstm_215/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_215/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_215/zerosFilllstm_215/zeros/packed:output:0lstm_215/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_215/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_215/zeros_1/packedPacklstm_215/strided_slice:output:0"lstm_215/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_215/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_215/zeros_1Fill lstm_215/zeros_1/packed:output:0lstm_215/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_215/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_215/transpose	Transposelstm_214/transpose_1:y:0 lstm_215/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_215/Shape_1Shapelstm_215/transpose:y:0*
T0*
_output_shapes
:h
lstm_215/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_215/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_215/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_215/strided_slice_1StridedSlicelstm_215/Shape_1:output:0'lstm_215/strided_slice_1/stack:output:0)lstm_215/strided_slice_1/stack_1:output:0)lstm_215/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_215/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_215/TensorArrayV2TensorListReserve-lstm_215/TensorArrayV2/element_shape:output:0!lstm_215/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_215/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_215/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_215/transpose:y:0Glstm_215/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_215/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_215/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_215/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_215/strided_slice_2StridedSlicelstm_215/transpose:y:0'lstm_215/strided_slice_2/stack:output:0)lstm_215/strided_slice_2/stack_1:output:0)lstm_215/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_215/lstm_cell_227/MatMul/ReadVariableOpReadVariableOp5lstm_215_lstm_cell_227_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_215/lstm_cell_227/MatMulMatMul!lstm_215/strided_slice_2:output:04lstm_215/lstm_cell_227/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_215/lstm_cell_227/MatMul_1/ReadVariableOpReadVariableOp7lstm_215_lstm_cell_227_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_215/lstm_cell_227/MatMul_1MatMullstm_215/zeros:output:06lstm_215/lstm_cell_227/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_215/lstm_cell_227/addAddV2'lstm_215/lstm_cell_227/MatMul:product:0)lstm_215/lstm_cell_227/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_215/lstm_cell_227/BiasAdd/ReadVariableOpReadVariableOp6lstm_215_lstm_cell_227_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_215/lstm_cell_227/BiasAddBiasAddlstm_215/lstm_cell_227/add:z:05lstm_215/lstm_cell_227/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_215/lstm_cell_227/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_215/lstm_cell_227/splitSplit/lstm_215/lstm_cell_227/split/split_dim:output:0'lstm_215/lstm_cell_227/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_215/lstm_cell_227/SigmoidSigmoid%lstm_215/lstm_cell_227/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_215/lstm_cell_227/Sigmoid_1Sigmoid%lstm_215/lstm_cell_227/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_215/lstm_cell_227/mulMul$lstm_215/lstm_cell_227/Sigmoid_1:y:0lstm_215/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_215/lstm_cell_227/ReluRelu%lstm_215/lstm_cell_227/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_215/lstm_cell_227/mul_1Mul"lstm_215/lstm_cell_227/Sigmoid:y:0)lstm_215/lstm_cell_227/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_215/lstm_cell_227/add_1AddV2lstm_215/lstm_cell_227/mul:z:0 lstm_215/lstm_cell_227/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_215/lstm_cell_227/Sigmoid_2Sigmoid%lstm_215/lstm_cell_227/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_215/lstm_cell_227/Relu_1Relu lstm_215/lstm_cell_227/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_215/lstm_cell_227/mul_2Mul$lstm_215/lstm_cell_227/Sigmoid_2:y:0+lstm_215/lstm_cell_227/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_215/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_215/TensorArrayV2_1TensorListReserve/lstm_215/TensorArrayV2_1/element_shape:output:0!lstm_215/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_215/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_215/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_215/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_215/whileWhile$lstm_215/while/loop_counter:output:0*lstm_215/while/maximum_iterations:output:0lstm_215/time:output:0!lstm_215/TensorArrayV2_1:handle:0lstm_215/zeros:output:0lstm_215/zeros_1:output:0!lstm_215/strided_slice_1:output:0@lstm_215/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_215_lstm_cell_227_matmul_readvariableop_resource7lstm_215_lstm_cell_227_matmul_1_readvariableop_resource6lstm_215_lstm_cell_227_biasadd_readvariableop_resource*
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
lstm_215_while_body_1376763*'
condR
lstm_215_while_cond_1376762*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_215/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_215/TensorArrayV2Stack/TensorListStackTensorListStacklstm_215/while:output:3Blstm_215/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_215/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_215/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_215/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_215/strided_slice_3StridedSlice4lstm_215/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_215/strided_slice_3/stack:output:0)lstm_215/strided_slice_3/stack_1:output:0)lstm_215/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_215/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_215/transpose_1	Transpose4lstm_215/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_215/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_215/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_71/MatMul/ReadVariableOpReadVariableOp'dense_71_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_71/MatMulMatMul!lstm_215/strided_slice_3:output:0&dense_71/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_71/BiasAdd/ReadVariableOpReadVariableOp(dense_71_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_71/BiasAddBiasAdddense_71/MatMul:product:0'dense_71/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_71/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_71/BiasAdd/ReadVariableOp^dense_71/MatMul/ReadVariableOp.^lstm_213/lstm_cell_225/BiasAdd/ReadVariableOp-^lstm_213/lstm_cell_225/MatMul/ReadVariableOp/^lstm_213/lstm_cell_225/MatMul_1/ReadVariableOp^lstm_213/while.^lstm_214/lstm_cell_226/BiasAdd/ReadVariableOp-^lstm_214/lstm_cell_226/MatMul/ReadVariableOp/^lstm_214/lstm_cell_226/MatMul_1/ReadVariableOp^lstm_214/while.^lstm_215/lstm_cell_227/BiasAdd/ReadVariableOp-^lstm_215/lstm_cell_227/MatMul/ReadVariableOp/^lstm_215/lstm_cell_227/MatMul_1/ReadVariableOp^lstm_215/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_71/BiasAdd/ReadVariableOpdense_71/BiasAdd/ReadVariableOp2@
dense_71/MatMul/ReadVariableOpdense_71/MatMul/ReadVariableOp2^
-lstm_213/lstm_cell_225/BiasAdd/ReadVariableOp-lstm_213/lstm_cell_225/BiasAdd/ReadVariableOp2\
,lstm_213/lstm_cell_225/MatMul/ReadVariableOp,lstm_213/lstm_cell_225/MatMul/ReadVariableOp2`
.lstm_213/lstm_cell_225/MatMul_1/ReadVariableOp.lstm_213/lstm_cell_225/MatMul_1/ReadVariableOp2 
lstm_213/whilelstm_213/while2^
-lstm_214/lstm_cell_226/BiasAdd/ReadVariableOp-lstm_214/lstm_cell_226/BiasAdd/ReadVariableOp2\
,lstm_214/lstm_cell_226/MatMul/ReadVariableOp,lstm_214/lstm_cell_226/MatMul/ReadVariableOp2`
.lstm_214/lstm_cell_226/MatMul_1/ReadVariableOp.lstm_214/lstm_cell_226/MatMul_1/ReadVariableOp2 
lstm_214/whilelstm_214/while2^
-lstm_215/lstm_cell_227/BiasAdd/ReadVariableOp-lstm_215/lstm_cell_227/BiasAdd/ReadVariableOp2\
,lstm_215/lstm_cell_227/MatMul/ReadVariableOp,lstm_215/lstm_cell_227/MatMul/ReadVariableOp2`
.lstm_215/lstm_cell_227/MatMul_1/ReadVariableOp.lstm_215/lstm_cell_227/MatMul_1/ReadVariableOp2 
lstm_215/whilelstm_215/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_1376956
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_225_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_225_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_225_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_225_matmul_readvariableop_resource:	?G
4while_lstm_cell_225_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_225_biasadd_readvariableop_resource:	???*while/lstm_cell_225/BiasAdd/ReadVariableOp?)while/lstm_cell_225/MatMul/ReadVariableOp?+while/lstm_cell_225/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_225/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_225_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_225/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_225/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_225/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_225_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_225/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_225/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_225/addAddV2$while/lstm_cell_225/MatMul:product:0&while/lstm_cell_225/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_225/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_225_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_225/BiasAddBiasAddwhile/lstm_cell_225/add:z:02while/lstm_cell_225/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_225/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_225/splitSplit,while/lstm_cell_225/split/split_dim:output:0$while/lstm_cell_225/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_225/SigmoidSigmoid"while/lstm_cell_225/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_225/Sigmoid_1Sigmoid"while/lstm_cell_225/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_225/mulMul!while/lstm_cell_225/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_225/ReluRelu"while/lstm_cell_225/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_225/mul_1Mulwhile/lstm_cell_225/Sigmoid:y:0&while/lstm_cell_225/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_225/add_1AddV2while/lstm_cell_225/mul:z:0while/lstm_cell_225/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_225/Sigmoid_2Sigmoid"while/lstm_cell_225/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_225/Relu_1Reluwhile/lstm_cell_225/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_225/mul_2Mul!while/lstm_cell_225/Sigmoid_2:y:0(while/lstm_cell_225/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_225/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_225/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_225/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_225/BiasAdd/ReadVariableOp*^while/lstm_cell_225/MatMul/ReadVariableOp,^while/lstm_cell_225/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_225_biasadd_readvariableop_resource5while_lstm_cell_225_biasadd_readvariableop_resource_0"n
4while_lstm_cell_225_matmul_1_readvariableop_resource6while_lstm_cell_225_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_225_matmul_readvariableop_resource4while_lstm_cell_225_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_225/BiasAdd/ReadVariableOp*while/lstm_cell_225/BiasAdd/ReadVariableOp2V
)while/lstm_cell_225/MatMul/ReadVariableOp)while/lstm_cell_225/MatMul/ReadVariableOp2Z
+while/lstm_cell_225/MatMul_1/ReadVariableOp+while/lstm_cell_225/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_214_layer_call_fn_1377513

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
E__inference_lstm_214_layer_call_and_return_conditional_losses_1375565s
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
)sequential_71_lstm_215_while_body_1373595J
Fsequential_71_lstm_215_while_sequential_71_lstm_215_while_loop_counterP
Lsequential_71_lstm_215_while_sequential_71_lstm_215_while_maximum_iterations,
(sequential_71_lstm_215_while_placeholder.
*sequential_71_lstm_215_while_placeholder_1.
*sequential_71_lstm_215_while_placeholder_2.
*sequential_71_lstm_215_while_placeholder_3I
Esequential_71_lstm_215_while_sequential_71_lstm_215_strided_slice_1_0?
?sequential_71_lstm_215_while_tensorarrayv2read_tensorlistgetitem_sequential_71_lstm_215_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_71_lstm_215_while_lstm_cell_227_matmul_readvariableop_resource_0:2(_
Msequential_71_lstm_215_while_lstm_cell_227_matmul_1_readvariableop_resource_0:
(Z
Lsequential_71_lstm_215_while_lstm_cell_227_biasadd_readvariableop_resource_0:()
%sequential_71_lstm_215_while_identity+
'sequential_71_lstm_215_while_identity_1+
'sequential_71_lstm_215_while_identity_2+
'sequential_71_lstm_215_while_identity_3+
'sequential_71_lstm_215_while_identity_4+
'sequential_71_lstm_215_while_identity_5G
Csequential_71_lstm_215_while_sequential_71_lstm_215_strided_slice_1?
sequential_71_lstm_215_while_tensorarrayv2read_tensorlistgetitem_sequential_71_lstm_215_tensorarrayunstack_tensorlistfromtensor[
Isequential_71_lstm_215_while_lstm_cell_227_matmul_readvariableop_resource:2(]
Ksequential_71_lstm_215_while_lstm_cell_227_matmul_1_readvariableop_resource:
(X
Jsequential_71_lstm_215_while_lstm_cell_227_biasadd_readvariableop_resource:(??Asequential_71/lstm_215/while/lstm_cell_227/BiasAdd/ReadVariableOp?@sequential_71/lstm_215/while/lstm_cell_227/MatMul/ReadVariableOp?Bsequential_71/lstm_215/while/lstm_cell_227/MatMul_1/ReadVariableOp?
Nsequential_71/lstm_215/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
@sequential_71/lstm_215/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_71_lstm_215_while_tensorarrayv2read_tensorlistgetitem_sequential_71_lstm_215_tensorarrayunstack_tensorlistfromtensor_0(sequential_71_lstm_215_while_placeholderWsequential_71/lstm_215/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
@sequential_71/lstm_215/while/lstm_cell_227/MatMul/ReadVariableOpReadVariableOpKsequential_71_lstm_215_while_lstm_cell_227_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
1sequential_71/lstm_215/while/lstm_cell_227/MatMulMatMulGsequential_71/lstm_215/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_71/lstm_215/while/lstm_cell_227/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Bsequential_71/lstm_215/while/lstm_cell_227/MatMul_1/ReadVariableOpReadVariableOpMsequential_71_lstm_215_while_lstm_cell_227_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
3sequential_71/lstm_215/while/lstm_cell_227/MatMul_1MatMul*sequential_71_lstm_215_while_placeholder_2Jsequential_71/lstm_215/while/lstm_cell_227/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.sequential_71/lstm_215/while/lstm_cell_227/addAddV2;sequential_71/lstm_215/while/lstm_cell_227/MatMul:product:0=sequential_71/lstm_215/while/lstm_cell_227/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Asequential_71/lstm_215/while/lstm_cell_227/BiasAdd/ReadVariableOpReadVariableOpLsequential_71_lstm_215_while_lstm_cell_227_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
2sequential_71/lstm_215/while/lstm_cell_227/BiasAddBiasAdd2sequential_71/lstm_215/while/lstm_cell_227/add:z:0Isequential_71/lstm_215/while/lstm_cell_227/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(|
:sequential_71/lstm_215/while/lstm_cell_227/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_71/lstm_215/while/lstm_cell_227/splitSplitCsequential_71/lstm_215/while/lstm_cell_227/split/split_dim:output:0;sequential_71/lstm_215/while/lstm_cell_227/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
2sequential_71/lstm_215/while/lstm_cell_227/SigmoidSigmoid9sequential_71/lstm_215/while/lstm_cell_227/split:output:0*
T0*'
_output_shapes
:?????????
?
4sequential_71/lstm_215/while/lstm_cell_227/Sigmoid_1Sigmoid9sequential_71/lstm_215/while/lstm_cell_227/split:output:1*
T0*'
_output_shapes
:?????????
?
.sequential_71/lstm_215/while/lstm_cell_227/mulMul8sequential_71/lstm_215/while/lstm_cell_227/Sigmoid_1:y:0*sequential_71_lstm_215_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
/sequential_71/lstm_215/while/lstm_cell_227/ReluRelu9sequential_71/lstm_215/while/lstm_cell_227/split:output:2*
T0*'
_output_shapes
:?????????
?
0sequential_71/lstm_215/while/lstm_cell_227/mul_1Mul6sequential_71/lstm_215/while/lstm_cell_227/Sigmoid:y:0=sequential_71/lstm_215/while/lstm_cell_227/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
0sequential_71/lstm_215/while/lstm_cell_227/add_1AddV22sequential_71/lstm_215/while/lstm_cell_227/mul:z:04sequential_71/lstm_215/while/lstm_cell_227/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
4sequential_71/lstm_215/while/lstm_cell_227/Sigmoid_2Sigmoid9sequential_71/lstm_215/while/lstm_cell_227/split:output:3*
T0*'
_output_shapes
:?????????
?
1sequential_71/lstm_215/while/lstm_cell_227/Relu_1Relu4sequential_71/lstm_215/while/lstm_cell_227/add_1:z:0*
T0*'
_output_shapes
:?????????
?
0sequential_71/lstm_215/while/lstm_cell_227/mul_2Mul8sequential_71/lstm_215/while/lstm_cell_227/Sigmoid_2:y:0?sequential_71/lstm_215/while/lstm_cell_227/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Asequential_71/lstm_215/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_71_lstm_215_while_placeholder_1(sequential_71_lstm_215_while_placeholder4sequential_71/lstm_215/while/lstm_cell_227/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_71/lstm_215/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_71/lstm_215/while/addAddV2(sequential_71_lstm_215_while_placeholder+sequential_71/lstm_215/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_71/lstm_215/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_71/lstm_215/while/add_1AddV2Fsequential_71_lstm_215_while_sequential_71_lstm_215_while_loop_counter-sequential_71/lstm_215/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_71/lstm_215/while/IdentityIdentity&sequential_71/lstm_215/while/add_1:z:0"^sequential_71/lstm_215/while/NoOp*
T0*
_output_shapes
: ?
'sequential_71/lstm_215/while/Identity_1IdentityLsequential_71_lstm_215_while_sequential_71_lstm_215_while_maximum_iterations"^sequential_71/lstm_215/while/NoOp*
T0*
_output_shapes
: ?
'sequential_71/lstm_215/while/Identity_2Identity$sequential_71/lstm_215/while/add:z:0"^sequential_71/lstm_215/while/NoOp*
T0*
_output_shapes
: ?
'sequential_71/lstm_215/while/Identity_3IdentityQsequential_71/lstm_215/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_71/lstm_215/while/NoOp*
T0*
_output_shapes
: ?
'sequential_71/lstm_215/while/Identity_4Identity4sequential_71/lstm_215/while/lstm_cell_227/mul_2:z:0"^sequential_71/lstm_215/while/NoOp*
T0*'
_output_shapes
:?????????
?
'sequential_71/lstm_215/while/Identity_5Identity4sequential_71/lstm_215/while/lstm_cell_227/add_1:z:0"^sequential_71/lstm_215/while/NoOp*
T0*'
_output_shapes
:?????????
?
!sequential_71/lstm_215/while/NoOpNoOpB^sequential_71/lstm_215/while/lstm_cell_227/BiasAdd/ReadVariableOpA^sequential_71/lstm_215/while/lstm_cell_227/MatMul/ReadVariableOpC^sequential_71/lstm_215/while/lstm_cell_227/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_71_lstm_215_while_identity.sequential_71/lstm_215/while/Identity:output:0"[
'sequential_71_lstm_215_while_identity_10sequential_71/lstm_215/while/Identity_1:output:0"[
'sequential_71_lstm_215_while_identity_20sequential_71/lstm_215/while/Identity_2:output:0"[
'sequential_71_lstm_215_while_identity_30sequential_71/lstm_215/while/Identity_3:output:0"[
'sequential_71_lstm_215_while_identity_40sequential_71/lstm_215/while/Identity_4:output:0"[
'sequential_71_lstm_215_while_identity_50sequential_71/lstm_215/while/Identity_5:output:0"?
Jsequential_71_lstm_215_while_lstm_cell_227_biasadd_readvariableop_resourceLsequential_71_lstm_215_while_lstm_cell_227_biasadd_readvariableop_resource_0"?
Ksequential_71_lstm_215_while_lstm_cell_227_matmul_1_readvariableop_resourceMsequential_71_lstm_215_while_lstm_cell_227_matmul_1_readvariableop_resource_0"?
Isequential_71_lstm_215_while_lstm_cell_227_matmul_readvariableop_resourceKsequential_71_lstm_215_while_lstm_cell_227_matmul_readvariableop_resource_0"?
Csequential_71_lstm_215_while_sequential_71_lstm_215_strided_slice_1Esequential_71_lstm_215_while_sequential_71_lstm_215_strided_slice_1_0"?
sequential_71_lstm_215_while_tensorarrayv2read_tensorlistgetitem_sequential_71_lstm_215_tensorarrayunstack_tensorlistfromtensor?sequential_71_lstm_215_while_tensorarrayv2read_tensorlistgetitem_sequential_71_lstm_215_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Asequential_71/lstm_215/while/lstm_cell_227/BiasAdd/ReadVariableOpAsequential_71/lstm_215/while/lstm_cell_227/BiasAdd/ReadVariableOp2?
@sequential_71/lstm_215/while/lstm_cell_227/MatMul/ReadVariableOp@sequential_71/lstm_215/while/lstm_cell_227/MatMul/ReadVariableOp2?
Bsequential_71/lstm_215/while/lstm_cell_227/MatMul_1/ReadVariableOpBsequential_71/lstm_215/while/lstm_cell_227/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1376955
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1376955___redundant_placeholder05
1while_while_cond_1376955___redundant_placeholder15
1while_while_cond_1376955___redundant_placeholder25
1while_while_cond_1376955___redundant_placeholder3
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
E__inference_lstm_214_layer_call_and_return_conditional_losses_1377799
inputs_0?
,lstm_cell_226_matmul_readvariableop_resource:	d?A
.lstm_cell_226_matmul_1_readvariableop_resource:	2?<
-lstm_cell_226_biasadd_readvariableop_resource:	?
identity??$lstm_cell_226/BiasAdd/ReadVariableOp?#lstm_cell_226/MatMul/ReadVariableOp?%lstm_cell_226/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_226/MatMul/ReadVariableOpReadVariableOp,lstm_cell_226_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_226/MatMulMatMulstrided_slice_2:output:0+lstm_cell_226/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_226/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_226_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_226/MatMul_1MatMulzeros:output:0-lstm_cell_226/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_226/addAddV2lstm_cell_226/MatMul:product:0 lstm_cell_226/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_226/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_226_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_226/BiasAddBiasAddlstm_cell_226/add:z:0,lstm_cell_226/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_226/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_226/splitSplit&lstm_cell_226/split/split_dim:output:0lstm_cell_226/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_226/SigmoidSigmoidlstm_cell_226/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_226/Sigmoid_1Sigmoidlstm_cell_226/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_226/mulMullstm_cell_226/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_226/ReluRelulstm_cell_226/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_226/mul_1Mullstm_cell_226/Sigmoid:y:0 lstm_cell_226/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_226/add_1AddV2lstm_cell_226/mul:z:0lstm_cell_226/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_226/Sigmoid_2Sigmoidlstm_cell_226/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_226/Relu_1Relulstm_cell_226/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_226/mul_2Mullstm_cell_226/Sigmoid_2:y:0"lstm_cell_226/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_226_matmul_readvariableop_resource.lstm_cell_226_matmul_1_readvariableop_resource-lstm_cell_226_biasadd_readvariableop_resource*
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
while_body_1377715*
condR
while_cond_1377714*K
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
NoOpNoOp%^lstm_cell_226/BiasAdd/ReadVariableOp$^lstm_cell_226/MatMul/ReadVariableOp&^lstm_cell_226/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_226/BiasAdd/ReadVariableOp$lstm_cell_226/BiasAdd/ReadVariableOp2J
#lstm_cell_226/MatMul/ReadVariableOp#lstm_cell_226/MatMul/ReadVariableOp2N
%lstm_cell_226/MatMul_1/ReadVariableOp%lstm_cell_226/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_1377571
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1377571___redundant_placeholder05
1while_while_cond_1377571___redundant_placeholder15
1while_while_cond_1377571___redundant_placeholder25
1while_while_cond_1377571___redundant_placeholder3
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
J__inference_lstm_cell_225_layer_call_and_return_conditional_losses_1373898

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
E__inference_lstm_213_layer_call_and_return_conditional_losses_1374884

inputs?
,lstm_cell_225_matmul_readvariableop_resource:	?A
.lstm_cell_225_matmul_1_readvariableop_resource:	d?<
-lstm_cell_225_biasadd_readvariableop_resource:	?
identity??$lstm_cell_225/BiasAdd/ReadVariableOp?#lstm_cell_225/MatMul/ReadVariableOp?%lstm_cell_225/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_225/MatMul/ReadVariableOpReadVariableOp,lstm_cell_225_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_225/MatMulMatMulstrided_slice_2:output:0+lstm_cell_225/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_225/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_225_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_225/MatMul_1MatMulzeros:output:0-lstm_cell_225/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_225/addAddV2lstm_cell_225/MatMul:product:0 lstm_cell_225/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_225/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_225_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_225/BiasAddBiasAddlstm_cell_225/add:z:0,lstm_cell_225/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_225/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_225/splitSplit&lstm_cell_225/split/split_dim:output:0lstm_cell_225/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_225/SigmoidSigmoidlstm_cell_225/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_225/Sigmoid_1Sigmoidlstm_cell_225/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_225/mulMullstm_cell_225/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_225/ReluRelulstm_cell_225/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_225/mul_1Mullstm_cell_225/Sigmoid:y:0 lstm_cell_225/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_225/add_1AddV2lstm_cell_225/mul:z:0lstm_cell_225/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_225/Sigmoid_2Sigmoidlstm_cell_225/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_225/Relu_1Relulstm_cell_225/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_225/mul_2Mullstm_cell_225/Sigmoid_2:y:0"lstm_cell_225/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_225_matmul_readvariableop_resource.lstm_cell_225_matmul_1_readvariableop_resource-lstm_cell_225_biasadd_readvariableop_resource*
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
while_body_1374800*
condR
while_cond_1374799*K
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
NoOpNoOp%^lstm_cell_225/BiasAdd/ReadVariableOp$^lstm_cell_225/MatMul/ReadVariableOp&^lstm_cell_225/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_225/BiasAdd/ReadVariableOp$lstm_cell_225/BiasAdd/ReadVariableOp2J
#lstm_cell_225/MatMul/ReadVariableOp#lstm_cell_225/MatMul/ReadVariableOp2N
%lstm_cell_225/MatMul_1/ReadVariableOp%lstm_cell_225/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_213_while_body_1376058.
*lstm_213_while_lstm_213_while_loop_counter4
0lstm_213_while_lstm_213_while_maximum_iterations
lstm_213_while_placeholder 
lstm_213_while_placeholder_1 
lstm_213_while_placeholder_2 
lstm_213_while_placeholder_3-
)lstm_213_while_lstm_213_strided_slice_1_0i
elstm_213_while_tensorarrayv2read_tensorlistgetitem_lstm_213_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_213_while_lstm_cell_225_matmul_readvariableop_resource_0:	?R
?lstm_213_while_lstm_cell_225_matmul_1_readvariableop_resource_0:	d?M
>lstm_213_while_lstm_cell_225_biasadd_readvariableop_resource_0:	?
lstm_213_while_identity
lstm_213_while_identity_1
lstm_213_while_identity_2
lstm_213_while_identity_3
lstm_213_while_identity_4
lstm_213_while_identity_5+
'lstm_213_while_lstm_213_strided_slice_1g
clstm_213_while_tensorarrayv2read_tensorlistgetitem_lstm_213_tensorarrayunstack_tensorlistfromtensorN
;lstm_213_while_lstm_cell_225_matmul_readvariableop_resource:	?P
=lstm_213_while_lstm_cell_225_matmul_1_readvariableop_resource:	d?K
<lstm_213_while_lstm_cell_225_biasadd_readvariableop_resource:	???3lstm_213/while/lstm_cell_225/BiasAdd/ReadVariableOp?2lstm_213/while/lstm_cell_225/MatMul/ReadVariableOp?4lstm_213/while/lstm_cell_225/MatMul_1/ReadVariableOp?
@lstm_213/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_213/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_213_while_tensorarrayv2read_tensorlistgetitem_lstm_213_tensorarrayunstack_tensorlistfromtensor_0lstm_213_while_placeholderIlstm_213/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_213/while/lstm_cell_225/MatMul/ReadVariableOpReadVariableOp=lstm_213_while_lstm_cell_225_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_213/while/lstm_cell_225/MatMulMatMul9lstm_213/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_213/while/lstm_cell_225/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_213/while/lstm_cell_225/MatMul_1/ReadVariableOpReadVariableOp?lstm_213_while_lstm_cell_225_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_213/while/lstm_cell_225/MatMul_1MatMullstm_213_while_placeholder_2<lstm_213/while/lstm_cell_225/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_213/while/lstm_cell_225/addAddV2-lstm_213/while/lstm_cell_225/MatMul:product:0/lstm_213/while/lstm_cell_225/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_213/while/lstm_cell_225/BiasAdd/ReadVariableOpReadVariableOp>lstm_213_while_lstm_cell_225_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_213/while/lstm_cell_225/BiasAddBiasAdd$lstm_213/while/lstm_cell_225/add:z:0;lstm_213/while/lstm_cell_225/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_213/while/lstm_cell_225/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_213/while/lstm_cell_225/splitSplit5lstm_213/while/lstm_cell_225/split/split_dim:output:0-lstm_213/while/lstm_cell_225/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_213/while/lstm_cell_225/SigmoidSigmoid+lstm_213/while/lstm_cell_225/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_213/while/lstm_cell_225/Sigmoid_1Sigmoid+lstm_213/while/lstm_cell_225/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_213/while/lstm_cell_225/mulMul*lstm_213/while/lstm_cell_225/Sigmoid_1:y:0lstm_213_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_213/while/lstm_cell_225/ReluRelu+lstm_213/while/lstm_cell_225/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_213/while/lstm_cell_225/mul_1Mul(lstm_213/while/lstm_cell_225/Sigmoid:y:0/lstm_213/while/lstm_cell_225/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_213/while/lstm_cell_225/add_1AddV2$lstm_213/while/lstm_cell_225/mul:z:0&lstm_213/while/lstm_cell_225/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_213/while/lstm_cell_225/Sigmoid_2Sigmoid+lstm_213/while/lstm_cell_225/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_213/while/lstm_cell_225/Relu_1Relu&lstm_213/while/lstm_cell_225/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_213/while/lstm_cell_225/mul_2Mul*lstm_213/while/lstm_cell_225/Sigmoid_2:y:01lstm_213/while/lstm_cell_225/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_213/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_213_while_placeholder_1lstm_213_while_placeholder&lstm_213/while/lstm_cell_225/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_213/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_213/while/addAddV2lstm_213_while_placeholderlstm_213/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_213/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_213/while/add_1AddV2*lstm_213_while_lstm_213_while_loop_counterlstm_213/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_213/while/IdentityIdentitylstm_213/while/add_1:z:0^lstm_213/while/NoOp*
T0*
_output_shapes
: ?
lstm_213/while/Identity_1Identity0lstm_213_while_lstm_213_while_maximum_iterations^lstm_213/while/NoOp*
T0*
_output_shapes
: t
lstm_213/while/Identity_2Identitylstm_213/while/add:z:0^lstm_213/while/NoOp*
T0*
_output_shapes
: ?
lstm_213/while/Identity_3IdentityClstm_213/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_213/while/NoOp*
T0*
_output_shapes
: ?
lstm_213/while/Identity_4Identity&lstm_213/while/lstm_cell_225/mul_2:z:0^lstm_213/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_213/while/Identity_5Identity&lstm_213/while/lstm_cell_225/add_1:z:0^lstm_213/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_213/while/NoOpNoOp4^lstm_213/while/lstm_cell_225/BiasAdd/ReadVariableOp3^lstm_213/while/lstm_cell_225/MatMul/ReadVariableOp5^lstm_213/while/lstm_cell_225/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_213_while_identity lstm_213/while/Identity:output:0"?
lstm_213_while_identity_1"lstm_213/while/Identity_1:output:0"?
lstm_213_while_identity_2"lstm_213/while/Identity_2:output:0"?
lstm_213_while_identity_3"lstm_213/while/Identity_3:output:0"?
lstm_213_while_identity_4"lstm_213/while/Identity_4:output:0"?
lstm_213_while_identity_5"lstm_213/while/Identity_5:output:0"T
'lstm_213_while_lstm_213_strided_slice_1)lstm_213_while_lstm_213_strided_slice_1_0"~
<lstm_213_while_lstm_cell_225_biasadd_readvariableop_resource>lstm_213_while_lstm_cell_225_biasadd_readvariableop_resource_0"?
=lstm_213_while_lstm_cell_225_matmul_1_readvariableop_resource?lstm_213_while_lstm_cell_225_matmul_1_readvariableop_resource_0"|
;lstm_213_while_lstm_cell_225_matmul_readvariableop_resource=lstm_213_while_lstm_cell_225_matmul_readvariableop_resource_0"?
clstm_213_while_tensorarrayv2read_tensorlistgetitem_lstm_213_tensorarrayunstack_tensorlistfromtensorelstm_213_while_tensorarrayv2read_tensorlistgetitem_lstm_213_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_213/while/lstm_cell_225/BiasAdd/ReadVariableOp3lstm_213/while/lstm_cell_225/BiasAdd/ReadVariableOp2h
2lstm_213/while/lstm_cell_225/MatMul/ReadVariableOp2lstm_213/while/lstm_cell_225/MatMul/ReadVariableOp2l
4lstm_213/while/lstm_cell_225/MatMul_1/ReadVariableOp4lstm_213/while/lstm_cell_225/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_sequential_71_layer_call_fn_1375850
lstm_213_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_213_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_71_layer_call_and_return_conditional_losses_1375798o
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
_user_specified_namelstm_213_input
?
?
*__inference_dense_71_layer_call_fn_1378710

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
E__inference_dense_71_layer_call_and_return_conditional_losses_1375202o
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
*__inference_lstm_213_layer_call_fn_1376875
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
E__inference_lstm_213_layer_call_and_return_conditional_losses_1374026|
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
while_body_1374116
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_226_1374140_0:	d?0
while_lstm_cell_226_1374142_0:	2?,
while_lstm_cell_226_1374144_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_226_1374140:	d?.
while_lstm_cell_226_1374142:	2?*
while_lstm_cell_226_1374144:	???+while/lstm_cell_226/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_226/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_226_1374140_0while_lstm_cell_226_1374142_0while_lstm_cell_226_1374144_0*
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
J__inference_lstm_cell_226_layer_call_and_return_conditional_losses_1374102?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_226/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_226/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_226/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_226/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_226_1374140while_lstm_cell_226_1374140_0"<
while_lstm_cell_226_1374142while_lstm_cell_226_1374142_0"<
while_lstm_cell_226_1374144while_lstm_cell_226_1374144_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_226/StatefulPartitionedCall+while/lstm_cell_226/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
)sequential_71_lstm_213_while_body_1373317J
Fsequential_71_lstm_213_while_sequential_71_lstm_213_while_loop_counterP
Lsequential_71_lstm_213_while_sequential_71_lstm_213_while_maximum_iterations,
(sequential_71_lstm_213_while_placeholder.
*sequential_71_lstm_213_while_placeholder_1.
*sequential_71_lstm_213_while_placeholder_2.
*sequential_71_lstm_213_while_placeholder_3I
Esequential_71_lstm_213_while_sequential_71_lstm_213_strided_slice_1_0?
?sequential_71_lstm_213_while_tensorarrayv2read_tensorlistgetitem_sequential_71_lstm_213_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_71_lstm_213_while_lstm_cell_225_matmul_readvariableop_resource_0:	?`
Msequential_71_lstm_213_while_lstm_cell_225_matmul_1_readvariableop_resource_0:	d?[
Lsequential_71_lstm_213_while_lstm_cell_225_biasadd_readvariableop_resource_0:	?)
%sequential_71_lstm_213_while_identity+
'sequential_71_lstm_213_while_identity_1+
'sequential_71_lstm_213_while_identity_2+
'sequential_71_lstm_213_while_identity_3+
'sequential_71_lstm_213_while_identity_4+
'sequential_71_lstm_213_while_identity_5G
Csequential_71_lstm_213_while_sequential_71_lstm_213_strided_slice_1?
sequential_71_lstm_213_while_tensorarrayv2read_tensorlistgetitem_sequential_71_lstm_213_tensorarrayunstack_tensorlistfromtensor\
Isequential_71_lstm_213_while_lstm_cell_225_matmul_readvariableop_resource:	?^
Ksequential_71_lstm_213_while_lstm_cell_225_matmul_1_readvariableop_resource:	d?Y
Jsequential_71_lstm_213_while_lstm_cell_225_biasadd_readvariableop_resource:	???Asequential_71/lstm_213/while/lstm_cell_225/BiasAdd/ReadVariableOp?@sequential_71/lstm_213/while/lstm_cell_225/MatMul/ReadVariableOp?Bsequential_71/lstm_213/while/lstm_cell_225/MatMul_1/ReadVariableOp?
Nsequential_71/lstm_213/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
@sequential_71/lstm_213/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_71_lstm_213_while_tensorarrayv2read_tensorlistgetitem_sequential_71_lstm_213_tensorarrayunstack_tensorlistfromtensor_0(sequential_71_lstm_213_while_placeholderWsequential_71/lstm_213/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
@sequential_71/lstm_213/while/lstm_cell_225/MatMul/ReadVariableOpReadVariableOpKsequential_71_lstm_213_while_lstm_cell_225_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
1sequential_71/lstm_213/while/lstm_cell_225/MatMulMatMulGsequential_71/lstm_213/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_71/lstm_213/while/lstm_cell_225/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_71/lstm_213/while/lstm_cell_225/MatMul_1/ReadVariableOpReadVariableOpMsequential_71_lstm_213_while_lstm_cell_225_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
3sequential_71/lstm_213/while/lstm_cell_225/MatMul_1MatMul*sequential_71_lstm_213_while_placeholder_2Jsequential_71/lstm_213/while/lstm_cell_225/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_71/lstm_213/while/lstm_cell_225/addAddV2;sequential_71/lstm_213/while/lstm_cell_225/MatMul:product:0=sequential_71/lstm_213/while/lstm_cell_225/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_71/lstm_213/while/lstm_cell_225/BiasAdd/ReadVariableOpReadVariableOpLsequential_71_lstm_213_while_lstm_cell_225_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_71/lstm_213/while/lstm_cell_225/BiasAddBiasAdd2sequential_71/lstm_213/while/lstm_cell_225/add:z:0Isequential_71/lstm_213/while/lstm_cell_225/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_71/lstm_213/while/lstm_cell_225/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_71/lstm_213/while/lstm_cell_225/splitSplitCsequential_71/lstm_213/while/lstm_cell_225/split/split_dim:output:0;sequential_71/lstm_213/while/lstm_cell_225/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
2sequential_71/lstm_213/while/lstm_cell_225/SigmoidSigmoid9sequential_71/lstm_213/while/lstm_cell_225/split:output:0*
T0*'
_output_shapes
:?????????d?
4sequential_71/lstm_213/while/lstm_cell_225/Sigmoid_1Sigmoid9sequential_71/lstm_213/while/lstm_cell_225/split:output:1*
T0*'
_output_shapes
:?????????d?
.sequential_71/lstm_213/while/lstm_cell_225/mulMul8sequential_71/lstm_213/while/lstm_cell_225/Sigmoid_1:y:0*sequential_71_lstm_213_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
/sequential_71/lstm_213/while/lstm_cell_225/ReluRelu9sequential_71/lstm_213/while/lstm_cell_225/split:output:2*
T0*'
_output_shapes
:?????????d?
0sequential_71/lstm_213/while/lstm_cell_225/mul_1Mul6sequential_71/lstm_213/while/lstm_cell_225/Sigmoid:y:0=sequential_71/lstm_213/while/lstm_cell_225/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
0sequential_71/lstm_213/while/lstm_cell_225/add_1AddV22sequential_71/lstm_213/while/lstm_cell_225/mul:z:04sequential_71/lstm_213/while/lstm_cell_225/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
4sequential_71/lstm_213/while/lstm_cell_225/Sigmoid_2Sigmoid9sequential_71/lstm_213/while/lstm_cell_225/split:output:3*
T0*'
_output_shapes
:?????????d?
1sequential_71/lstm_213/while/lstm_cell_225/Relu_1Relu4sequential_71/lstm_213/while/lstm_cell_225/add_1:z:0*
T0*'
_output_shapes
:?????????d?
0sequential_71/lstm_213/while/lstm_cell_225/mul_2Mul8sequential_71/lstm_213/while/lstm_cell_225/Sigmoid_2:y:0?sequential_71/lstm_213/while/lstm_cell_225/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Asequential_71/lstm_213/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_71_lstm_213_while_placeholder_1(sequential_71_lstm_213_while_placeholder4sequential_71/lstm_213/while/lstm_cell_225/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_71/lstm_213/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_71/lstm_213/while/addAddV2(sequential_71_lstm_213_while_placeholder+sequential_71/lstm_213/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_71/lstm_213/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_71/lstm_213/while/add_1AddV2Fsequential_71_lstm_213_while_sequential_71_lstm_213_while_loop_counter-sequential_71/lstm_213/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_71/lstm_213/while/IdentityIdentity&sequential_71/lstm_213/while/add_1:z:0"^sequential_71/lstm_213/while/NoOp*
T0*
_output_shapes
: ?
'sequential_71/lstm_213/while/Identity_1IdentityLsequential_71_lstm_213_while_sequential_71_lstm_213_while_maximum_iterations"^sequential_71/lstm_213/while/NoOp*
T0*
_output_shapes
: ?
'sequential_71/lstm_213/while/Identity_2Identity$sequential_71/lstm_213/while/add:z:0"^sequential_71/lstm_213/while/NoOp*
T0*
_output_shapes
: ?
'sequential_71/lstm_213/while/Identity_3IdentityQsequential_71/lstm_213/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_71/lstm_213/while/NoOp*
T0*
_output_shapes
: ?
'sequential_71/lstm_213/while/Identity_4Identity4sequential_71/lstm_213/while/lstm_cell_225/mul_2:z:0"^sequential_71/lstm_213/while/NoOp*
T0*'
_output_shapes
:?????????d?
'sequential_71/lstm_213/while/Identity_5Identity4sequential_71/lstm_213/while/lstm_cell_225/add_1:z:0"^sequential_71/lstm_213/while/NoOp*
T0*'
_output_shapes
:?????????d?
!sequential_71/lstm_213/while/NoOpNoOpB^sequential_71/lstm_213/while/lstm_cell_225/BiasAdd/ReadVariableOpA^sequential_71/lstm_213/while/lstm_cell_225/MatMul/ReadVariableOpC^sequential_71/lstm_213/while/lstm_cell_225/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_71_lstm_213_while_identity.sequential_71/lstm_213/while/Identity:output:0"[
'sequential_71_lstm_213_while_identity_10sequential_71/lstm_213/while/Identity_1:output:0"[
'sequential_71_lstm_213_while_identity_20sequential_71/lstm_213/while/Identity_2:output:0"[
'sequential_71_lstm_213_while_identity_30sequential_71/lstm_213/while/Identity_3:output:0"[
'sequential_71_lstm_213_while_identity_40sequential_71/lstm_213/while/Identity_4:output:0"[
'sequential_71_lstm_213_while_identity_50sequential_71/lstm_213/while/Identity_5:output:0"?
Jsequential_71_lstm_213_while_lstm_cell_225_biasadd_readvariableop_resourceLsequential_71_lstm_213_while_lstm_cell_225_biasadd_readvariableop_resource_0"?
Ksequential_71_lstm_213_while_lstm_cell_225_matmul_1_readvariableop_resourceMsequential_71_lstm_213_while_lstm_cell_225_matmul_1_readvariableop_resource_0"?
Isequential_71_lstm_213_while_lstm_cell_225_matmul_readvariableop_resourceKsequential_71_lstm_213_while_lstm_cell_225_matmul_readvariableop_resource_0"?
Csequential_71_lstm_213_while_sequential_71_lstm_213_strided_slice_1Esequential_71_lstm_213_while_sequential_71_lstm_213_strided_slice_1_0"?
sequential_71_lstm_213_while_tensorarrayv2read_tensorlistgetitem_sequential_71_lstm_213_tensorarrayunstack_tensorlistfromtensor?sequential_71_lstm_213_while_tensorarrayv2read_tensorlistgetitem_sequential_71_lstm_213_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Asequential_71/lstm_213/while/lstm_cell_225/BiasAdd/ReadVariableOpAsequential_71/lstm_213/while/lstm_cell_225/BiasAdd/ReadVariableOp2?
@sequential_71/lstm_213/while/lstm_cell_225/MatMul/ReadVariableOp@sequential_71/lstm_213/while/lstm_cell_225/MatMul/ReadVariableOp2?
Bsequential_71/lstm_213/while/lstm_cell_225/MatMul_1/ReadVariableOpBsequential_71/lstm_213/while/lstm_cell_225/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_213_layer_call_and_return_conditional_losses_1377040
inputs_0?
,lstm_cell_225_matmul_readvariableop_resource:	?A
.lstm_cell_225_matmul_1_readvariableop_resource:	d?<
-lstm_cell_225_biasadd_readvariableop_resource:	?
identity??$lstm_cell_225/BiasAdd/ReadVariableOp?#lstm_cell_225/MatMul/ReadVariableOp?%lstm_cell_225/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_225/MatMul/ReadVariableOpReadVariableOp,lstm_cell_225_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_225/MatMulMatMulstrided_slice_2:output:0+lstm_cell_225/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_225/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_225_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_225/MatMul_1MatMulzeros:output:0-lstm_cell_225/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_225/addAddV2lstm_cell_225/MatMul:product:0 lstm_cell_225/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_225/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_225_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_225/BiasAddBiasAddlstm_cell_225/add:z:0,lstm_cell_225/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_225/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_225/splitSplit&lstm_cell_225/split/split_dim:output:0lstm_cell_225/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_225/SigmoidSigmoidlstm_cell_225/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_225/Sigmoid_1Sigmoidlstm_cell_225/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_225/mulMullstm_cell_225/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_225/ReluRelulstm_cell_225/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_225/mul_1Mullstm_cell_225/Sigmoid:y:0 lstm_cell_225/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_225/add_1AddV2lstm_cell_225/mul:z:0lstm_cell_225/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_225/Sigmoid_2Sigmoidlstm_cell_225/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_225/Relu_1Relulstm_cell_225/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_225/mul_2Mullstm_cell_225/Sigmoid_2:y:0"lstm_cell_225/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_225_matmul_readvariableop_resource.lstm_cell_225_matmul_1_readvariableop_resource-lstm_cell_225_biasadd_readvariableop_resource*
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
while_body_1376956*
condR
while_cond_1376955*K
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
NoOpNoOp%^lstm_cell_225/BiasAdd/ReadVariableOp$^lstm_cell_225/MatMul/ReadVariableOp&^lstm_cell_225/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_225/BiasAdd/ReadVariableOp$lstm_cell_225/BiasAdd/ReadVariableOp2J
#lstm_cell_225/MatMul/ReadVariableOp#lstm_cell_225/MatMul/ReadVariableOp2N
%lstm_cell_225/MatMul_1/ReadVariableOp%lstm_cell_225/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_1375645
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1375645___redundant_placeholder05
1while_while_cond_1375645___redundant_placeholder15
1while_while_cond_1375645___redundant_placeholder25
1while_while_cond_1375645___redundant_placeholder3
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
while_cond_1377714
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1377714___redundant_placeholder05
1while_while_cond_1377714___redundant_placeholder15
1while_while_cond_1377714___redundant_placeholder25
1while_while_cond_1377714___redundant_placeholder3
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
E__inference_lstm_214_layer_call_and_return_conditional_losses_1374376

inputs(
lstm_cell_226_1374294:	d?(
lstm_cell_226_1374296:	2?$
lstm_cell_226_1374298:	?
identity??%lstm_cell_226/StatefulPartitionedCall?while;
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
%lstm_cell_226/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_226_1374294lstm_cell_226_1374296lstm_cell_226_1374298*
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
J__inference_lstm_cell_226_layer_call_and_return_conditional_losses_1374248n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_226_1374294lstm_cell_226_1374296lstm_cell_226_1374298*
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
while_body_1374307*
condR
while_cond_1374306*K
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
NoOpNoOp&^lstm_cell_226/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_226/StatefulPartitionedCall%lstm_cell_226/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
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
lstm_213_input;
 serving_default_lstm_213_input:0?????????<
dense_710
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
2dense_71/kernel
:2dense_71/bias
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
0:.	?2lstm_213/lstm_cell_213/kernel
::8	d?2'lstm_213/lstm_cell_213/recurrent_kernel
*:(?2lstm_213/lstm_cell_213/bias
0:.	d?2lstm_214/lstm_cell_214/kernel
::8	2?2'lstm_214/lstm_cell_214/recurrent_kernel
*:(?2lstm_214/lstm_cell_214/bias
/:-2(2lstm_215/lstm_cell_215/kernel
9:7
(2'lstm_215/lstm_cell_215/recurrent_kernel
):'(2lstm_215/lstm_cell_215/bias
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
2Adam/dense_71/kernel/m
 :2Adam/dense_71/bias/m
5:3	?2$Adam/lstm_213/lstm_cell_213/kernel/m
?:=	d?2.Adam/lstm_213/lstm_cell_213/recurrent_kernel/m
/:-?2"Adam/lstm_213/lstm_cell_213/bias/m
5:3	d?2$Adam/lstm_214/lstm_cell_214/kernel/m
?:=	2?2.Adam/lstm_214/lstm_cell_214/recurrent_kernel/m
/:-?2"Adam/lstm_214/lstm_cell_214/bias/m
4:22(2$Adam/lstm_215/lstm_cell_215/kernel/m
>:<
(2.Adam/lstm_215/lstm_cell_215/recurrent_kernel/m
.:,(2"Adam/lstm_215/lstm_cell_215/bias/m
&:$
2Adam/dense_71/kernel/v
 :2Adam/dense_71/bias/v
5:3	?2$Adam/lstm_213/lstm_cell_213/kernel/v
?:=	d?2.Adam/lstm_213/lstm_cell_213/recurrent_kernel/v
/:-?2"Adam/lstm_213/lstm_cell_213/bias/v
5:3	d?2$Adam/lstm_214/lstm_cell_214/kernel/v
?:=	2?2.Adam/lstm_214/lstm_cell_214/recurrent_kernel/v
/:-?2"Adam/lstm_214/lstm_cell_214/bias/v
4:22(2$Adam/lstm_215/lstm_cell_215/kernel/v
>:<
(2.Adam/lstm_215/lstm_cell_215/recurrent_kernel/v
.:,(2"Adam/lstm_215/lstm_cell_215/bias/v
?2?
/__inference_sequential_71_layer_call_fn_1375234
/__inference_sequential_71_layer_call_fn_1375972
/__inference_sequential_71_layer_call_fn_1375999
/__inference_sequential_71_layer_call_fn_1375850?
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
J__inference_sequential_71_layer_call_and_return_conditional_losses_1376426
J__inference_sequential_71_layer_call_and_return_conditional_losses_1376853
J__inference_sequential_71_layer_call_and_return_conditional_losses_1375880
J__inference_sequential_71_layer_call_and_return_conditional_losses_1375910?
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
"__inference__wrapped_model_1373685lstm_213_input"?
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
*__inference_lstm_213_layer_call_fn_1376864
*__inference_lstm_213_layer_call_fn_1376875
*__inference_lstm_213_layer_call_fn_1376886
*__inference_lstm_213_layer_call_fn_1376897?
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
E__inference_lstm_213_layer_call_and_return_conditional_losses_1377040
E__inference_lstm_213_layer_call_and_return_conditional_losses_1377183
E__inference_lstm_213_layer_call_and_return_conditional_losses_1377326
E__inference_lstm_213_layer_call_and_return_conditional_losses_1377469?
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
*__inference_lstm_214_layer_call_fn_1377480
*__inference_lstm_214_layer_call_fn_1377491
*__inference_lstm_214_layer_call_fn_1377502
*__inference_lstm_214_layer_call_fn_1377513?
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
E__inference_lstm_214_layer_call_and_return_conditional_losses_1377656
E__inference_lstm_214_layer_call_and_return_conditional_losses_1377799
E__inference_lstm_214_layer_call_and_return_conditional_losses_1377942
E__inference_lstm_214_layer_call_and_return_conditional_losses_1378085?
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
*__inference_lstm_215_layer_call_fn_1378096
*__inference_lstm_215_layer_call_fn_1378107
*__inference_lstm_215_layer_call_fn_1378118
*__inference_lstm_215_layer_call_fn_1378129?
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
E__inference_lstm_215_layer_call_and_return_conditional_losses_1378272
E__inference_lstm_215_layer_call_and_return_conditional_losses_1378415
E__inference_lstm_215_layer_call_and_return_conditional_losses_1378558
E__inference_lstm_215_layer_call_and_return_conditional_losses_1378701?
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
*__inference_dense_71_layer_call_fn_1378710?
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
E__inference_dense_71_layer_call_and_return_conditional_losses_1378720?
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
%__inference_signature_wrapper_1375945lstm_213_input"?
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
/__inference_lstm_cell_225_layer_call_fn_1378737
/__inference_lstm_cell_225_layer_call_fn_1378754?
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
J__inference_lstm_cell_225_layer_call_and_return_conditional_losses_1378786
J__inference_lstm_cell_225_layer_call_and_return_conditional_losses_1378818?
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
/__inference_lstm_cell_226_layer_call_fn_1378835
/__inference_lstm_cell_226_layer_call_fn_1378852?
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
J__inference_lstm_cell_226_layer_call_and_return_conditional_losses_1378884
J__inference_lstm_cell_226_layer_call_and_return_conditional_losses_1378916?
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
/__inference_lstm_cell_227_layer_call_fn_1378933
/__inference_lstm_cell_227_layer_call_fn_1378950?
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
J__inference_lstm_cell_227_layer_call_and_return_conditional_losses_1378982
J__inference_lstm_cell_227_layer_call_and_return_conditional_losses_1379014?
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
"__inference__wrapped_model_1373685-./012345!";?8
1?.
,?)
lstm_213_input?????????
? "3?0
.
dense_71"?
dense_71??????????
E__inference_dense_71_layer_call_and_return_conditional_losses_1378720\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_71_layer_call_fn_1378710O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_213_layer_call_and_return_conditional_losses_1377040?-./O?L
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
E__inference_lstm_213_layer_call_and_return_conditional_losses_1377183?-./O?L
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
E__inference_lstm_213_layer_call_and_return_conditional_losses_1377326q-./??<
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
E__inference_lstm_213_layer_call_and_return_conditional_losses_1377469q-./??<
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
*__inference_lstm_213_layer_call_fn_1376864}-./O?L
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
*__inference_lstm_213_layer_call_fn_1376875}-./O?L
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
*__inference_lstm_213_layer_call_fn_1376886d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_213_layer_call_fn_1376897d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_214_layer_call_and_return_conditional_losses_1377656?012O?L
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
E__inference_lstm_214_layer_call_and_return_conditional_losses_1377799?012O?L
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
E__inference_lstm_214_layer_call_and_return_conditional_losses_1377942q012??<
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
E__inference_lstm_214_layer_call_and_return_conditional_losses_1378085q012??<
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
*__inference_lstm_214_layer_call_fn_1377480}012O?L
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
*__inference_lstm_214_layer_call_fn_1377491}012O?L
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
*__inference_lstm_214_layer_call_fn_1377502d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_214_layer_call_fn_1377513d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_215_layer_call_and_return_conditional_losses_1378272}345O?L
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
E__inference_lstm_215_layer_call_and_return_conditional_losses_1378415}345O?L
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
E__inference_lstm_215_layer_call_and_return_conditional_losses_1378558m345??<
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
E__inference_lstm_215_layer_call_and_return_conditional_losses_1378701m345??<
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
*__inference_lstm_215_layer_call_fn_1378096p345O?L
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
*__inference_lstm_215_layer_call_fn_1378107p345O?L
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
*__inference_lstm_215_layer_call_fn_1378118`345??<
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
*__inference_lstm_215_layer_call_fn_1378129`345??<
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
J__inference_lstm_cell_225_layer_call_and_return_conditional_losses_1378786?-./??}
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
J__inference_lstm_cell_225_layer_call_and_return_conditional_losses_1378818?-./??}
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
/__inference_lstm_cell_225_layer_call_fn_1378737?-./??}
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
/__inference_lstm_cell_225_layer_call_fn_1378754?-./??}
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
J__inference_lstm_cell_226_layer_call_and_return_conditional_losses_1378884?012??}
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
J__inference_lstm_cell_226_layer_call_and_return_conditional_losses_1378916?012??}
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
/__inference_lstm_cell_226_layer_call_fn_1378835?012??}
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
/__inference_lstm_cell_226_layer_call_fn_1378852?012??}
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
J__inference_lstm_cell_227_layer_call_and_return_conditional_losses_1378982?345??}
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
J__inference_lstm_cell_227_layer_call_and_return_conditional_losses_1379014?345??}
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
/__inference_lstm_cell_227_layer_call_fn_1378933?345??}
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
/__inference_lstm_cell_227_layer_call_fn_1378950?345??}
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
J__inference_sequential_71_layer_call_and_return_conditional_losses_1375880y-./012345!"C?@
9?6
,?)
lstm_213_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_71_layer_call_and_return_conditional_losses_1375910y-./012345!"C?@
9?6
,?)
lstm_213_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_71_layer_call_and_return_conditional_losses_1376426q-./012345!";?8
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
J__inference_sequential_71_layer_call_and_return_conditional_losses_1376853q-./012345!";?8
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
/__inference_sequential_71_layer_call_fn_1375234l-./012345!"C?@
9?6
,?)
lstm_213_input?????????
p 

 
? "???????????
/__inference_sequential_71_layer_call_fn_1375850l-./012345!"C?@
9?6
,?)
lstm_213_input?????????
p

 
? "???????????
/__inference_sequential_71_layer_call_fn_1375972d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_71_layer_call_fn_1375999d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_1375945?-./012345!"M?J
? 
C?@
>
lstm_213_input,?)
lstm_213_input?????????"3?0
.
dense_71"?
dense_71?????????