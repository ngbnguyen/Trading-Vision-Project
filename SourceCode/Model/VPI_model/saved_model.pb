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
dense_98/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_98/kernel
s
#dense_98/kernel/Read/ReadVariableOpReadVariableOpdense_98/kernel*
_output_shapes

:
*
dtype0
r
dense_98/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_98/bias
k
!dense_98/bias/Read/ReadVariableOpReadVariableOpdense_98/bias*
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
lstm_294/lstm_cell_294/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_294/lstm_cell_294/kernel
?
1lstm_294/lstm_cell_294/kernel/Read/ReadVariableOpReadVariableOplstm_294/lstm_cell_294/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_294/lstm_cell_294/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_294/lstm_cell_294/recurrent_kernel
?
;lstm_294/lstm_cell_294/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_294/lstm_cell_294/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_294/lstm_cell_294/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_294/lstm_cell_294/bias
?
/lstm_294/lstm_cell_294/bias/Read/ReadVariableOpReadVariableOplstm_294/lstm_cell_294/bias*
_output_shapes	
:?*
dtype0
?
lstm_295/lstm_cell_295/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_295/lstm_cell_295/kernel
?
1lstm_295/lstm_cell_295/kernel/Read/ReadVariableOpReadVariableOplstm_295/lstm_cell_295/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_295/lstm_cell_295/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_295/lstm_cell_295/recurrent_kernel
?
;lstm_295/lstm_cell_295/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_295/lstm_cell_295/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_295/lstm_cell_295/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_295/lstm_cell_295/bias
?
/lstm_295/lstm_cell_295/bias/Read/ReadVariableOpReadVariableOplstm_295/lstm_cell_295/bias*
_output_shapes	
:?*
dtype0
?
lstm_296/lstm_cell_296/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_296/lstm_cell_296/kernel
?
1lstm_296/lstm_cell_296/kernel/Read/ReadVariableOpReadVariableOplstm_296/lstm_cell_296/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_296/lstm_cell_296/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_296/lstm_cell_296/recurrent_kernel
?
;lstm_296/lstm_cell_296/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_296/lstm_cell_296/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_296/lstm_cell_296/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_296/lstm_cell_296/bias
?
/lstm_296/lstm_cell_296/bias/Read/ReadVariableOpReadVariableOplstm_296/lstm_cell_296/bias*
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
Adam/dense_98/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_98/kernel/m
?
*Adam/dense_98/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_98/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_98/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_98/bias/m
y
(Adam/dense_98/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_98/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_294/lstm_cell_294/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_294/lstm_cell_294/kernel/m
?
8Adam/lstm_294/lstm_cell_294/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_294/lstm_cell_294/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_294/lstm_cell_294/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_294/lstm_cell_294/recurrent_kernel/m
?
BAdam/lstm_294/lstm_cell_294/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_294/lstm_cell_294/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_294/lstm_cell_294/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_294/lstm_cell_294/bias/m
?
6Adam/lstm_294/lstm_cell_294/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_294/lstm_cell_294/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_295/lstm_cell_295/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_295/lstm_cell_295/kernel/m
?
8Adam/lstm_295/lstm_cell_295/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_295/lstm_cell_295/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_295/lstm_cell_295/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_295/lstm_cell_295/recurrent_kernel/m
?
BAdam/lstm_295/lstm_cell_295/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_295/lstm_cell_295/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_295/lstm_cell_295/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_295/lstm_cell_295/bias/m
?
6Adam/lstm_295/lstm_cell_295/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_295/lstm_cell_295/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_296/lstm_cell_296/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_296/lstm_cell_296/kernel/m
?
8Adam/lstm_296/lstm_cell_296/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_296/lstm_cell_296/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_296/lstm_cell_296/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_296/lstm_cell_296/recurrent_kernel/m
?
BAdam/lstm_296/lstm_cell_296/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_296/lstm_cell_296/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_296/lstm_cell_296/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_296/lstm_cell_296/bias/m
?
6Adam/lstm_296/lstm_cell_296/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_296/lstm_cell_296/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_98/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_98/kernel/v
?
*Adam/dense_98/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_98/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_98/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_98/bias/v
y
(Adam/dense_98/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_98/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_294/lstm_cell_294/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_294/lstm_cell_294/kernel/v
?
8Adam/lstm_294/lstm_cell_294/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_294/lstm_cell_294/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_294/lstm_cell_294/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_294/lstm_cell_294/recurrent_kernel/v
?
BAdam/lstm_294/lstm_cell_294/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_294/lstm_cell_294/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_294/lstm_cell_294/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_294/lstm_cell_294/bias/v
?
6Adam/lstm_294/lstm_cell_294/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_294/lstm_cell_294/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_295/lstm_cell_295/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_295/lstm_cell_295/kernel/v
?
8Adam/lstm_295/lstm_cell_295/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_295/lstm_cell_295/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_295/lstm_cell_295/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_295/lstm_cell_295/recurrent_kernel/v
?
BAdam/lstm_295/lstm_cell_295/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_295/lstm_cell_295/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_295/lstm_cell_295/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_295/lstm_cell_295/bias/v
?
6Adam/lstm_295/lstm_cell_295/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_295/lstm_cell_295/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_296/lstm_cell_296/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_296/lstm_cell_296/kernel/v
?
8Adam/lstm_296/lstm_cell_296/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_296/lstm_cell_296/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_296/lstm_cell_296/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_296/lstm_cell_296/recurrent_kernel/v
?
BAdam/lstm_296/lstm_cell_296/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_296/lstm_cell_296/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_296/lstm_cell_296/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_296/lstm_cell_296/bias/v
?
6Adam/lstm_296/lstm_cell_296/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_296/lstm_cell_296/bias/v*
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
VARIABLE_VALUEdense_98/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_98/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_294/lstm_cell_294/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_294/lstm_cell_294/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_294/lstm_cell_294/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_295/lstm_cell_295/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_295/lstm_cell_295/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_295/lstm_cell_295/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_296/lstm_cell_296/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_296/lstm_cell_296/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_296/lstm_cell_296/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_98/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_98/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_294/lstm_cell_294/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_294/lstm_cell_294/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_294/lstm_cell_294/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_295/lstm_cell_295/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_295/lstm_cell_295/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_295/lstm_cell_295/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_296/lstm_cell_296/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_296/lstm_cell_296/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_296/lstm_cell_296/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_98/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_98/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_294/lstm_cell_294/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_294/lstm_cell_294/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_294/lstm_cell_294/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_295/lstm_cell_295/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_295/lstm_cell_295/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_295/lstm_cell_295/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_296/lstm_cell_296/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_296/lstm_cell_296/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_296/lstm_cell_296/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_294_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_294_inputlstm_294/lstm_cell_294/kernel'lstm_294/lstm_cell_294/recurrent_kernellstm_294/lstm_cell_294/biaslstm_295/lstm_cell_295/kernel'lstm_295/lstm_cell_295/recurrent_kernellstm_295/lstm_cell_295/biaslstm_296/lstm_cell_296/kernel'lstm_296/lstm_cell_296/recurrent_kernellstm_296/lstm_cell_296/biasdense_98/kerneldense_98/bias*
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
%__inference_signature_wrapper_1502823
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_98/kernel/Read/ReadVariableOp!dense_98/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_294/lstm_cell_294/kernel/Read/ReadVariableOp;lstm_294/lstm_cell_294/recurrent_kernel/Read/ReadVariableOp/lstm_294/lstm_cell_294/bias/Read/ReadVariableOp1lstm_295/lstm_cell_295/kernel/Read/ReadVariableOp;lstm_295/lstm_cell_295/recurrent_kernel/Read/ReadVariableOp/lstm_295/lstm_cell_295/bias/Read/ReadVariableOp1lstm_296/lstm_cell_296/kernel/Read/ReadVariableOp;lstm_296/lstm_cell_296/recurrent_kernel/Read/ReadVariableOp/lstm_296/lstm_cell_296/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_98/kernel/m/Read/ReadVariableOp(Adam/dense_98/bias/m/Read/ReadVariableOp8Adam/lstm_294/lstm_cell_294/kernel/m/Read/ReadVariableOpBAdam/lstm_294/lstm_cell_294/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_294/lstm_cell_294/bias/m/Read/ReadVariableOp8Adam/lstm_295/lstm_cell_295/kernel/m/Read/ReadVariableOpBAdam/lstm_295/lstm_cell_295/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_295/lstm_cell_295/bias/m/Read/ReadVariableOp8Adam/lstm_296/lstm_cell_296/kernel/m/Read/ReadVariableOpBAdam/lstm_296/lstm_cell_296/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_296/lstm_cell_296/bias/m/Read/ReadVariableOp*Adam/dense_98/kernel/v/Read/ReadVariableOp(Adam/dense_98/bias/v/Read/ReadVariableOp8Adam/lstm_294/lstm_cell_294/kernel/v/Read/ReadVariableOpBAdam/lstm_294/lstm_cell_294/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_294/lstm_cell_294/bias/v/Read/ReadVariableOp8Adam/lstm_295/lstm_cell_295/kernel/v/Read/ReadVariableOpBAdam/lstm_295/lstm_cell_295/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_295/lstm_cell_295/bias/v/Read/ReadVariableOp8Adam/lstm_296/lstm_cell_296/kernel/v/Read/ReadVariableOpBAdam/lstm_296/lstm_cell_296/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_296/lstm_cell_296/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_1506035
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_98/kerneldense_98/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_294/lstm_cell_294/kernel'lstm_294/lstm_cell_294/recurrent_kernellstm_294/lstm_cell_294/biaslstm_295/lstm_cell_295/kernel'lstm_295/lstm_cell_295/recurrent_kernellstm_295/lstm_cell_295/biaslstm_296/lstm_cell_296/kernel'lstm_296/lstm_cell_296/recurrent_kernellstm_296/lstm_cell_296/biastotalcountAdam/dense_98/kernel/mAdam/dense_98/bias/m$Adam/lstm_294/lstm_cell_294/kernel/m.Adam/lstm_294/lstm_cell_294/recurrent_kernel/m"Adam/lstm_294/lstm_cell_294/bias/m$Adam/lstm_295/lstm_cell_295/kernel/m.Adam/lstm_295/lstm_cell_295/recurrent_kernel/m"Adam/lstm_295/lstm_cell_295/bias/m$Adam/lstm_296/lstm_cell_296/kernel/m.Adam/lstm_296/lstm_cell_296/recurrent_kernel/m"Adam/lstm_296/lstm_cell_296/bias/mAdam/dense_98/kernel/vAdam/dense_98/bias/v$Adam/lstm_294/lstm_cell_294/kernel/v.Adam/lstm_294/lstm_cell_294/recurrent_kernel/v"Adam/lstm_294/lstm_cell_294/bias/v$Adam/lstm_295/lstm_cell_295/kernel/v.Adam/lstm_295/lstm_cell_295/recurrent_kernel/v"Adam/lstm_295/lstm_cell_295/bias/v$Adam/lstm_296/lstm_cell_296/kernel/v.Adam/lstm_296/lstm_cell_296/recurrent_kernel/v"Adam/lstm_296/lstm_cell_296/bias/v*4
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
#__inference__traced_restore_1506165??+
?
?
*__inference_lstm_296_layer_call_fn_1504985
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
E__inference_lstm_296_layer_call_and_return_conditional_losses_1501604o
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
E__inference_lstm_296_layer_call_and_return_conditional_losses_1505150
inputs_0>
,lstm_cell_248_matmul_readvariableop_resource:2(@
.lstm_cell_248_matmul_1_readvariableop_resource:
(;
-lstm_cell_248_biasadd_readvariableop_resource:(
identity??$lstm_cell_248/BiasAdd/ReadVariableOp?#lstm_cell_248/MatMul/ReadVariableOp?%lstm_cell_248/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_248/MatMul/ReadVariableOpReadVariableOp,lstm_cell_248_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_248/MatMulMatMulstrided_slice_2:output:0+lstm_cell_248/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_248/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_248_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_248/MatMul_1MatMulzeros:output:0-lstm_cell_248/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_248/addAddV2lstm_cell_248/MatMul:product:0 lstm_cell_248/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_248/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_248_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_248/BiasAddBiasAddlstm_cell_248/add:z:0,lstm_cell_248/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_248/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_248/splitSplit&lstm_cell_248/split/split_dim:output:0lstm_cell_248/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_248/SigmoidSigmoidlstm_cell_248/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_248/Sigmoid_1Sigmoidlstm_cell_248/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_248/mulMullstm_cell_248/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_248/ReluRelulstm_cell_248/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_248/mul_1Mullstm_cell_248/Sigmoid:y:0 lstm_cell_248/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_248/add_1AddV2lstm_cell_248/mul:z:0lstm_cell_248/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_248/Sigmoid_2Sigmoidlstm_cell_248/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_248/Relu_1Relulstm_cell_248/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_248/mul_2Mullstm_cell_248/Sigmoid_2:y:0"lstm_cell_248/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_248_matmul_readvariableop_resource.lstm_cell_248_matmul_1_readvariableop_resource-lstm_cell_248_biasadd_readvariableop_resource*
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
while_body_1505066*
condR
while_cond_1505065*K
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
NoOpNoOp%^lstm_cell_248/BiasAdd/ReadVariableOp$^lstm_cell_248/MatMul/ReadVariableOp&^lstm_cell_248/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_248/BiasAdd/ReadVariableOp$lstm_cell_248/BiasAdd/ReadVariableOp2J
#lstm_cell_248/MatMul/ReadVariableOp#lstm_cell_248/MatMul/ReadVariableOp2N
%lstm_cell_248/MatMul_1/ReadVariableOp%lstm_cell_248/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_1504878
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1504878___redundant_placeholder05
1while_while_cond_1504878___redundant_placeholder15
1while_while_cond_1504878___redundant_placeholder25
1while_while_cond_1504878___redundant_placeholder3
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
/__inference_sequential_98_layer_call_fn_1502112
lstm_294_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_294_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_98_layer_call_and_return_conditional_losses_1502087o
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
_user_specified_namelstm_294_input
??
?
"__inference__wrapped_model_1500563
lstm_294_inputV
Csequential_98_lstm_294_lstm_cell_246_matmul_readvariableop_resource:	?X
Esequential_98_lstm_294_lstm_cell_246_matmul_1_readvariableop_resource:	d?S
Dsequential_98_lstm_294_lstm_cell_246_biasadd_readvariableop_resource:	?V
Csequential_98_lstm_295_lstm_cell_247_matmul_readvariableop_resource:	d?X
Esequential_98_lstm_295_lstm_cell_247_matmul_1_readvariableop_resource:	2?S
Dsequential_98_lstm_295_lstm_cell_247_biasadd_readvariableop_resource:	?U
Csequential_98_lstm_296_lstm_cell_248_matmul_readvariableop_resource:2(W
Esequential_98_lstm_296_lstm_cell_248_matmul_1_readvariableop_resource:
(R
Dsequential_98_lstm_296_lstm_cell_248_biasadd_readvariableop_resource:(G
5sequential_98_dense_98_matmul_readvariableop_resource:
D
6sequential_98_dense_98_biasadd_readvariableop_resource:
identity??-sequential_98/dense_98/BiasAdd/ReadVariableOp?,sequential_98/dense_98/MatMul/ReadVariableOp?;sequential_98/lstm_294/lstm_cell_246/BiasAdd/ReadVariableOp?:sequential_98/lstm_294/lstm_cell_246/MatMul/ReadVariableOp?<sequential_98/lstm_294/lstm_cell_246/MatMul_1/ReadVariableOp?sequential_98/lstm_294/while?;sequential_98/lstm_295/lstm_cell_247/BiasAdd/ReadVariableOp?:sequential_98/lstm_295/lstm_cell_247/MatMul/ReadVariableOp?<sequential_98/lstm_295/lstm_cell_247/MatMul_1/ReadVariableOp?sequential_98/lstm_295/while?;sequential_98/lstm_296/lstm_cell_248/BiasAdd/ReadVariableOp?:sequential_98/lstm_296/lstm_cell_248/MatMul/ReadVariableOp?<sequential_98/lstm_296/lstm_cell_248/MatMul_1/ReadVariableOp?sequential_98/lstm_296/whileZ
sequential_98/lstm_294/ShapeShapelstm_294_input*
T0*
_output_shapes
:t
*sequential_98/lstm_294/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_98/lstm_294/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_98/lstm_294/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_98/lstm_294/strided_sliceStridedSlice%sequential_98/lstm_294/Shape:output:03sequential_98/lstm_294/strided_slice/stack:output:05sequential_98/lstm_294/strided_slice/stack_1:output:05sequential_98/lstm_294/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_98/lstm_294/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
#sequential_98/lstm_294/zeros/packedPack-sequential_98/lstm_294/strided_slice:output:0.sequential_98/lstm_294/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_98/lstm_294/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_98/lstm_294/zerosFill,sequential_98/lstm_294/zeros/packed:output:0+sequential_98/lstm_294/zeros/Const:output:0*
T0*'
_output_shapes
:?????????di
'sequential_98/lstm_294/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
%sequential_98/lstm_294/zeros_1/packedPack-sequential_98/lstm_294/strided_slice:output:00sequential_98/lstm_294/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_98/lstm_294/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_98/lstm_294/zeros_1Fill.sequential_98/lstm_294/zeros_1/packed:output:0-sequential_98/lstm_294/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dz
%sequential_98/lstm_294/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_98/lstm_294/transpose	Transposelstm_294_input.sequential_98/lstm_294/transpose/perm:output:0*
T0*+
_output_shapes
:?????????r
sequential_98/lstm_294/Shape_1Shape$sequential_98/lstm_294/transpose:y:0*
T0*
_output_shapes
:v
,sequential_98/lstm_294/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_98/lstm_294/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_98/lstm_294/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_98/lstm_294/strided_slice_1StridedSlice'sequential_98/lstm_294/Shape_1:output:05sequential_98/lstm_294/strided_slice_1/stack:output:07sequential_98/lstm_294/strided_slice_1/stack_1:output:07sequential_98/lstm_294/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_98/lstm_294/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_98/lstm_294/TensorArrayV2TensorListReserve;sequential_98/lstm_294/TensorArrayV2/element_shape:output:0/sequential_98/lstm_294/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_98/lstm_294/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
>sequential_98/lstm_294/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_98/lstm_294/transpose:y:0Usequential_98/lstm_294/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_98/lstm_294/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_98/lstm_294/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_98/lstm_294/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_98/lstm_294/strided_slice_2StridedSlice$sequential_98/lstm_294/transpose:y:05sequential_98/lstm_294/strided_slice_2/stack:output:07sequential_98/lstm_294/strided_slice_2/stack_1:output:07sequential_98/lstm_294/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
:sequential_98/lstm_294/lstm_cell_246/MatMul/ReadVariableOpReadVariableOpCsequential_98_lstm_294_lstm_cell_246_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
+sequential_98/lstm_294/lstm_cell_246/MatMulMatMul/sequential_98/lstm_294/strided_slice_2:output:0Bsequential_98/lstm_294/lstm_cell_246/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_98/lstm_294/lstm_cell_246/MatMul_1/ReadVariableOpReadVariableOpEsequential_98_lstm_294_lstm_cell_246_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
-sequential_98/lstm_294/lstm_cell_246/MatMul_1MatMul%sequential_98/lstm_294/zeros:output:0Dsequential_98/lstm_294/lstm_cell_246/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_98/lstm_294/lstm_cell_246/addAddV25sequential_98/lstm_294/lstm_cell_246/MatMul:product:07sequential_98/lstm_294/lstm_cell_246/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_98/lstm_294/lstm_cell_246/BiasAdd/ReadVariableOpReadVariableOpDsequential_98_lstm_294_lstm_cell_246_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_98/lstm_294/lstm_cell_246/BiasAddBiasAdd,sequential_98/lstm_294/lstm_cell_246/add:z:0Csequential_98/lstm_294/lstm_cell_246/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_98/lstm_294/lstm_cell_246/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_98/lstm_294/lstm_cell_246/splitSplit=sequential_98/lstm_294/lstm_cell_246/split/split_dim:output:05sequential_98/lstm_294/lstm_cell_246/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
,sequential_98/lstm_294/lstm_cell_246/SigmoidSigmoid3sequential_98/lstm_294/lstm_cell_246/split:output:0*
T0*'
_output_shapes
:?????????d?
.sequential_98/lstm_294/lstm_cell_246/Sigmoid_1Sigmoid3sequential_98/lstm_294/lstm_cell_246/split:output:1*
T0*'
_output_shapes
:?????????d?
(sequential_98/lstm_294/lstm_cell_246/mulMul2sequential_98/lstm_294/lstm_cell_246/Sigmoid_1:y:0'sequential_98/lstm_294/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
)sequential_98/lstm_294/lstm_cell_246/ReluRelu3sequential_98/lstm_294/lstm_cell_246/split:output:2*
T0*'
_output_shapes
:?????????d?
*sequential_98/lstm_294/lstm_cell_246/mul_1Mul0sequential_98/lstm_294/lstm_cell_246/Sigmoid:y:07sequential_98/lstm_294/lstm_cell_246/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
*sequential_98/lstm_294/lstm_cell_246/add_1AddV2,sequential_98/lstm_294/lstm_cell_246/mul:z:0.sequential_98/lstm_294/lstm_cell_246/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
.sequential_98/lstm_294/lstm_cell_246/Sigmoid_2Sigmoid3sequential_98/lstm_294/lstm_cell_246/split:output:3*
T0*'
_output_shapes
:?????????d?
+sequential_98/lstm_294/lstm_cell_246/Relu_1Relu.sequential_98/lstm_294/lstm_cell_246/add_1:z:0*
T0*'
_output_shapes
:?????????d?
*sequential_98/lstm_294/lstm_cell_246/mul_2Mul2sequential_98/lstm_294/lstm_cell_246/Sigmoid_2:y:09sequential_98/lstm_294/lstm_cell_246/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
4sequential_98/lstm_294/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
&sequential_98/lstm_294/TensorArrayV2_1TensorListReserve=sequential_98/lstm_294/TensorArrayV2_1/element_shape:output:0/sequential_98/lstm_294/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_98/lstm_294/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_98/lstm_294/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_98/lstm_294/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_98/lstm_294/whileWhile2sequential_98/lstm_294/while/loop_counter:output:08sequential_98/lstm_294/while/maximum_iterations:output:0$sequential_98/lstm_294/time:output:0/sequential_98/lstm_294/TensorArrayV2_1:handle:0%sequential_98/lstm_294/zeros:output:0'sequential_98/lstm_294/zeros_1:output:0/sequential_98/lstm_294/strided_slice_1:output:0Nsequential_98/lstm_294/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_98_lstm_294_lstm_cell_246_matmul_readvariableop_resourceEsequential_98_lstm_294_lstm_cell_246_matmul_1_readvariableop_resourceDsequential_98_lstm_294_lstm_cell_246_biasadd_readvariableop_resource*
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
)sequential_98_lstm_294_while_body_1500195*5
cond-R+
)sequential_98_lstm_294_while_cond_1500194*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Gsequential_98/lstm_294/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
9sequential_98/lstm_294/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_98/lstm_294/while:output:3Psequential_98/lstm_294/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0
,sequential_98/lstm_294/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_98/lstm_294/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_98/lstm_294/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_98/lstm_294/strided_slice_3StridedSliceBsequential_98/lstm_294/TensorArrayV2Stack/TensorListStack:tensor:05sequential_98/lstm_294/strided_slice_3/stack:output:07sequential_98/lstm_294/strided_slice_3/stack_1:output:07sequential_98/lstm_294/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask|
'sequential_98/lstm_294/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_98/lstm_294/transpose_1	TransposeBsequential_98/lstm_294/TensorArrayV2Stack/TensorListStack:tensor:00sequential_98/lstm_294/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_98/lstm_294/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_98/lstm_295/ShapeShape&sequential_98/lstm_294/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_98/lstm_295/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_98/lstm_295/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_98/lstm_295/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_98/lstm_295/strided_sliceStridedSlice%sequential_98/lstm_295/Shape:output:03sequential_98/lstm_295/strided_slice/stack:output:05sequential_98/lstm_295/strided_slice/stack_1:output:05sequential_98/lstm_295/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_98/lstm_295/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
#sequential_98/lstm_295/zeros/packedPack-sequential_98/lstm_295/strided_slice:output:0.sequential_98/lstm_295/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_98/lstm_295/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_98/lstm_295/zerosFill,sequential_98/lstm_295/zeros/packed:output:0+sequential_98/lstm_295/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2i
'sequential_98/lstm_295/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
%sequential_98/lstm_295/zeros_1/packedPack-sequential_98/lstm_295/strided_slice:output:00sequential_98/lstm_295/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_98/lstm_295/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_98/lstm_295/zeros_1Fill.sequential_98/lstm_295/zeros_1/packed:output:0-sequential_98/lstm_295/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2z
%sequential_98/lstm_295/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_98/lstm_295/transpose	Transpose&sequential_98/lstm_294/transpose_1:y:0.sequential_98/lstm_295/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_98/lstm_295/Shape_1Shape$sequential_98/lstm_295/transpose:y:0*
T0*
_output_shapes
:v
,sequential_98/lstm_295/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_98/lstm_295/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_98/lstm_295/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_98/lstm_295/strided_slice_1StridedSlice'sequential_98/lstm_295/Shape_1:output:05sequential_98/lstm_295/strided_slice_1/stack:output:07sequential_98/lstm_295/strided_slice_1/stack_1:output:07sequential_98/lstm_295/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_98/lstm_295/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_98/lstm_295/TensorArrayV2TensorListReserve;sequential_98/lstm_295/TensorArrayV2/element_shape:output:0/sequential_98/lstm_295/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_98/lstm_295/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
>sequential_98/lstm_295/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_98/lstm_295/transpose:y:0Usequential_98/lstm_295/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_98/lstm_295/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_98/lstm_295/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_98/lstm_295/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_98/lstm_295/strided_slice_2StridedSlice$sequential_98/lstm_295/transpose:y:05sequential_98/lstm_295/strided_slice_2/stack:output:07sequential_98/lstm_295/strided_slice_2/stack_1:output:07sequential_98/lstm_295/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
:sequential_98/lstm_295/lstm_cell_247/MatMul/ReadVariableOpReadVariableOpCsequential_98_lstm_295_lstm_cell_247_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
+sequential_98/lstm_295/lstm_cell_247/MatMulMatMul/sequential_98/lstm_295/strided_slice_2:output:0Bsequential_98/lstm_295/lstm_cell_247/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_98/lstm_295/lstm_cell_247/MatMul_1/ReadVariableOpReadVariableOpEsequential_98_lstm_295_lstm_cell_247_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
-sequential_98/lstm_295/lstm_cell_247/MatMul_1MatMul%sequential_98/lstm_295/zeros:output:0Dsequential_98/lstm_295/lstm_cell_247/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_98/lstm_295/lstm_cell_247/addAddV25sequential_98/lstm_295/lstm_cell_247/MatMul:product:07sequential_98/lstm_295/lstm_cell_247/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_98/lstm_295/lstm_cell_247/BiasAdd/ReadVariableOpReadVariableOpDsequential_98_lstm_295_lstm_cell_247_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_98/lstm_295/lstm_cell_247/BiasAddBiasAdd,sequential_98/lstm_295/lstm_cell_247/add:z:0Csequential_98/lstm_295/lstm_cell_247/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_98/lstm_295/lstm_cell_247/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_98/lstm_295/lstm_cell_247/splitSplit=sequential_98/lstm_295/lstm_cell_247/split/split_dim:output:05sequential_98/lstm_295/lstm_cell_247/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
,sequential_98/lstm_295/lstm_cell_247/SigmoidSigmoid3sequential_98/lstm_295/lstm_cell_247/split:output:0*
T0*'
_output_shapes
:?????????2?
.sequential_98/lstm_295/lstm_cell_247/Sigmoid_1Sigmoid3sequential_98/lstm_295/lstm_cell_247/split:output:1*
T0*'
_output_shapes
:?????????2?
(sequential_98/lstm_295/lstm_cell_247/mulMul2sequential_98/lstm_295/lstm_cell_247/Sigmoid_1:y:0'sequential_98/lstm_295/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
)sequential_98/lstm_295/lstm_cell_247/ReluRelu3sequential_98/lstm_295/lstm_cell_247/split:output:2*
T0*'
_output_shapes
:?????????2?
*sequential_98/lstm_295/lstm_cell_247/mul_1Mul0sequential_98/lstm_295/lstm_cell_247/Sigmoid:y:07sequential_98/lstm_295/lstm_cell_247/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
*sequential_98/lstm_295/lstm_cell_247/add_1AddV2,sequential_98/lstm_295/lstm_cell_247/mul:z:0.sequential_98/lstm_295/lstm_cell_247/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
.sequential_98/lstm_295/lstm_cell_247/Sigmoid_2Sigmoid3sequential_98/lstm_295/lstm_cell_247/split:output:3*
T0*'
_output_shapes
:?????????2?
+sequential_98/lstm_295/lstm_cell_247/Relu_1Relu.sequential_98/lstm_295/lstm_cell_247/add_1:z:0*
T0*'
_output_shapes
:?????????2?
*sequential_98/lstm_295/lstm_cell_247/mul_2Mul2sequential_98/lstm_295/lstm_cell_247/Sigmoid_2:y:09sequential_98/lstm_295/lstm_cell_247/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
4sequential_98/lstm_295/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
&sequential_98/lstm_295/TensorArrayV2_1TensorListReserve=sequential_98/lstm_295/TensorArrayV2_1/element_shape:output:0/sequential_98/lstm_295/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_98/lstm_295/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_98/lstm_295/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_98/lstm_295/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_98/lstm_295/whileWhile2sequential_98/lstm_295/while/loop_counter:output:08sequential_98/lstm_295/while/maximum_iterations:output:0$sequential_98/lstm_295/time:output:0/sequential_98/lstm_295/TensorArrayV2_1:handle:0%sequential_98/lstm_295/zeros:output:0'sequential_98/lstm_295/zeros_1:output:0/sequential_98/lstm_295/strided_slice_1:output:0Nsequential_98/lstm_295/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_98_lstm_295_lstm_cell_247_matmul_readvariableop_resourceEsequential_98_lstm_295_lstm_cell_247_matmul_1_readvariableop_resourceDsequential_98_lstm_295_lstm_cell_247_biasadd_readvariableop_resource*
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
)sequential_98_lstm_295_while_body_1500334*5
cond-R+
)sequential_98_lstm_295_while_cond_1500333*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Gsequential_98/lstm_295/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
9sequential_98/lstm_295/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_98/lstm_295/while:output:3Psequential_98/lstm_295/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0
,sequential_98/lstm_295/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_98/lstm_295/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_98/lstm_295/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_98/lstm_295/strided_slice_3StridedSliceBsequential_98/lstm_295/TensorArrayV2Stack/TensorListStack:tensor:05sequential_98/lstm_295/strided_slice_3/stack:output:07sequential_98/lstm_295/strided_slice_3/stack_1:output:07sequential_98/lstm_295/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask|
'sequential_98/lstm_295/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_98/lstm_295/transpose_1	TransposeBsequential_98/lstm_295/TensorArrayV2Stack/TensorListStack:tensor:00sequential_98/lstm_295/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_98/lstm_295/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_98/lstm_296/ShapeShape&sequential_98/lstm_295/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_98/lstm_296/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_98/lstm_296/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_98/lstm_296/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_98/lstm_296/strided_sliceStridedSlice%sequential_98/lstm_296/Shape:output:03sequential_98/lstm_296/strided_slice/stack:output:05sequential_98/lstm_296/strided_slice/stack_1:output:05sequential_98/lstm_296/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_98/lstm_296/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
#sequential_98/lstm_296/zeros/packedPack-sequential_98/lstm_296/strided_slice:output:0.sequential_98/lstm_296/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_98/lstm_296/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_98/lstm_296/zerosFill,sequential_98/lstm_296/zeros/packed:output:0+sequential_98/lstm_296/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
i
'sequential_98/lstm_296/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
%sequential_98/lstm_296/zeros_1/packedPack-sequential_98/lstm_296/strided_slice:output:00sequential_98/lstm_296/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_98/lstm_296/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_98/lstm_296/zeros_1Fill.sequential_98/lstm_296/zeros_1/packed:output:0-sequential_98/lstm_296/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
z
%sequential_98/lstm_296/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_98/lstm_296/transpose	Transpose&sequential_98/lstm_295/transpose_1:y:0.sequential_98/lstm_296/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_98/lstm_296/Shape_1Shape$sequential_98/lstm_296/transpose:y:0*
T0*
_output_shapes
:v
,sequential_98/lstm_296/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_98/lstm_296/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_98/lstm_296/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_98/lstm_296/strided_slice_1StridedSlice'sequential_98/lstm_296/Shape_1:output:05sequential_98/lstm_296/strided_slice_1/stack:output:07sequential_98/lstm_296/strided_slice_1/stack_1:output:07sequential_98/lstm_296/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_98/lstm_296/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_98/lstm_296/TensorArrayV2TensorListReserve;sequential_98/lstm_296/TensorArrayV2/element_shape:output:0/sequential_98/lstm_296/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_98/lstm_296/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
>sequential_98/lstm_296/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_98/lstm_296/transpose:y:0Usequential_98/lstm_296/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_98/lstm_296/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_98/lstm_296/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_98/lstm_296/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_98/lstm_296/strided_slice_2StridedSlice$sequential_98/lstm_296/transpose:y:05sequential_98/lstm_296/strided_slice_2/stack:output:07sequential_98/lstm_296/strided_slice_2/stack_1:output:07sequential_98/lstm_296/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
:sequential_98/lstm_296/lstm_cell_248/MatMul/ReadVariableOpReadVariableOpCsequential_98_lstm_296_lstm_cell_248_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
+sequential_98/lstm_296/lstm_cell_248/MatMulMatMul/sequential_98/lstm_296/strided_slice_2:output:0Bsequential_98/lstm_296/lstm_cell_248/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
<sequential_98/lstm_296/lstm_cell_248/MatMul_1/ReadVariableOpReadVariableOpEsequential_98_lstm_296_lstm_cell_248_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
-sequential_98/lstm_296/lstm_cell_248/MatMul_1MatMul%sequential_98/lstm_296/zeros:output:0Dsequential_98/lstm_296/lstm_cell_248/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
(sequential_98/lstm_296/lstm_cell_248/addAddV25sequential_98/lstm_296/lstm_cell_248/MatMul:product:07sequential_98/lstm_296/lstm_cell_248/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
;sequential_98/lstm_296/lstm_cell_248/BiasAdd/ReadVariableOpReadVariableOpDsequential_98_lstm_296_lstm_cell_248_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
,sequential_98/lstm_296/lstm_cell_248/BiasAddBiasAdd,sequential_98/lstm_296/lstm_cell_248/add:z:0Csequential_98/lstm_296/lstm_cell_248/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(v
4sequential_98/lstm_296/lstm_cell_248/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_98/lstm_296/lstm_cell_248/splitSplit=sequential_98/lstm_296/lstm_cell_248/split/split_dim:output:05sequential_98/lstm_296/lstm_cell_248/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
,sequential_98/lstm_296/lstm_cell_248/SigmoidSigmoid3sequential_98/lstm_296/lstm_cell_248/split:output:0*
T0*'
_output_shapes
:?????????
?
.sequential_98/lstm_296/lstm_cell_248/Sigmoid_1Sigmoid3sequential_98/lstm_296/lstm_cell_248/split:output:1*
T0*'
_output_shapes
:?????????
?
(sequential_98/lstm_296/lstm_cell_248/mulMul2sequential_98/lstm_296/lstm_cell_248/Sigmoid_1:y:0'sequential_98/lstm_296/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
)sequential_98/lstm_296/lstm_cell_248/ReluRelu3sequential_98/lstm_296/lstm_cell_248/split:output:2*
T0*'
_output_shapes
:?????????
?
*sequential_98/lstm_296/lstm_cell_248/mul_1Mul0sequential_98/lstm_296/lstm_cell_248/Sigmoid:y:07sequential_98/lstm_296/lstm_cell_248/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
*sequential_98/lstm_296/lstm_cell_248/add_1AddV2,sequential_98/lstm_296/lstm_cell_248/mul:z:0.sequential_98/lstm_296/lstm_cell_248/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
.sequential_98/lstm_296/lstm_cell_248/Sigmoid_2Sigmoid3sequential_98/lstm_296/lstm_cell_248/split:output:3*
T0*'
_output_shapes
:?????????
?
+sequential_98/lstm_296/lstm_cell_248/Relu_1Relu.sequential_98/lstm_296/lstm_cell_248/add_1:z:0*
T0*'
_output_shapes
:?????????
?
*sequential_98/lstm_296/lstm_cell_248/mul_2Mul2sequential_98/lstm_296/lstm_cell_248/Sigmoid_2:y:09sequential_98/lstm_296/lstm_cell_248/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
4sequential_98/lstm_296/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
&sequential_98/lstm_296/TensorArrayV2_1TensorListReserve=sequential_98/lstm_296/TensorArrayV2_1/element_shape:output:0/sequential_98/lstm_296/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_98/lstm_296/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_98/lstm_296/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_98/lstm_296/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_98/lstm_296/whileWhile2sequential_98/lstm_296/while/loop_counter:output:08sequential_98/lstm_296/while/maximum_iterations:output:0$sequential_98/lstm_296/time:output:0/sequential_98/lstm_296/TensorArrayV2_1:handle:0%sequential_98/lstm_296/zeros:output:0'sequential_98/lstm_296/zeros_1:output:0/sequential_98/lstm_296/strided_slice_1:output:0Nsequential_98/lstm_296/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_98_lstm_296_lstm_cell_248_matmul_readvariableop_resourceEsequential_98_lstm_296_lstm_cell_248_matmul_1_readvariableop_resourceDsequential_98_lstm_296_lstm_cell_248_biasadd_readvariableop_resource*
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
)sequential_98_lstm_296_while_body_1500473*5
cond-R+
)sequential_98_lstm_296_while_cond_1500472*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Gsequential_98/lstm_296/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
9sequential_98/lstm_296/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_98/lstm_296/while:output:3Psequential_98/lstm_296/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0
,sequential_98/lstm_296/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_98/lstm_296/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_98/lstm_296/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_98/lstm_296/strided_slice_3StridedSliceBsequential_98/lstm_296/TensorArrayV2Stack/TensorListStack:tensor:05sequential_98/lstm_296/strided_slice_3/stack:output:07sequential_98/lstm_296/strided_slice_3/stack_1:output:07sequential_98/lstm_296/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask|
'sequential_98/lstm_296/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_98/lstm_296/transpose_1	TransposeBsequential_98/lstm_296/TensorArrayV2Stack/TensorListStack:tensor:00sequential_98/lstm_296/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
r
sequential_98/lstm_296/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_98/dense_98/MatMul/ReadVariableOpReadVariableOp5sequential_98_dense_98_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_98/dense_98/MatMulMatMul/sequential_98/lstm_296/strided_slice_3:output:04sequential_98/dense_98/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_98/dense_98/BiasAdd/ReadVariableOpReadVariableOp6sequential_98_dense_98_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_98/dense_98/BiasAddBiasAdd'sequential_98/dense_98/MatMul:product:05sequential_98/dense_98/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_98/dense_98/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_98/dense_98/BiasAdd/ReadVariableOp-^sequential_98/dense_98/MatMul/ReadVariableOp<^sequential_98/lstm_294/lstm_cell_246/BiasAdd/ReadVariableOp;^sequential_98/lstm_294/lstm_cell_246/MatMul/ReadVariableOp=^sequential_98/lstm_294/lstm_cell_246/MatMul_1/ReadVariableOp^sequential_98/lstm_294/while<^sequential_98/lstm_295/lstm_cell_247/BiasAdd/ReadVariableOp;^sequential_98/lstm_295/lstm_cell_247/MatMul/ReadVariableOp=^sequential_98/lstm_295/lstm_cell_247/MatMul_1/ReadVariableOp^sequential_98/lstm_295/while<^sequential_98/lstm_296/lstm_cell_248/BiasAdd/ReadVariableOp;^sequential_98/lstm_296/lstm_cell_248/MatMul/ReadVariableOp=^sequential_98/lstm_296/lstm_cell_248/MatMul_1/ReadVariableOp^sequential_98/lstm_296/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2^
-sequential_98/dense_98/BiasAdd/ReadVariableOp-sequential_98/dense_98/BiasAdd/ReadVariableOp2\
,sequential_98/dense_98/MatMul/ReadVariableOp,sequential_98/dense_98/MatMul/ReadVariableOp2z
;sequential_98/lstm_294/lstm_cell_246/BiasAdd/ReadVariableOp;sequential_98/lstm_294/lstm_cell_246/BiasAdd/ReadVariableOp2x
:sequential_98/lstm_294/lstm_cell_246/MatMul/ReadVariableOp:sequential_98/lstm_294/lstm_cell_246/MatMul/ReadVariableOp2|
<sequential_98/lstm_294/lstm_cell_246/MatMul_1/ReadVariableOp<sequential_98/lstm_294/lstm_cell_246/MatMul_1/ReadVariableOp2<
sequential_98/lstm_294/whilesequential_98/lstm_294/while2z
;sequential_98/lstm_295/lstm_cell_247/BiasAdd/ReadVariableOp;sequential_98/lstm_295/lstm_cell_247/BiasAdd/ReadVariableOp2x
:sequential_98/lstm_295/lstm_cell_247/MatMul/ReadVariableOp:sequential_98/lstm_295/lstm_cell_247/MatMul/ReadVariableOp2|
<sequential_98/lstm_295/lstm_cell_247/MatMul_1/ReadVariableOp<sequential_98/lstm_295/lstm_cell_247/MatMul_1/ReadVariableOp2<
sequential_98/lstm_295/whilesequential_98/lstm_295/while2z
;sequential_98/lstm_296/lstm_cell_248/BiasAdd/ReadVariableOp;sequential_98/lstm_296/lstm_cell_248/BiasAdd/ReadVariableOp2x
:sequential_98/lstm_296/lstm_cell_248/MatMul/ReadVariableOp:sequential_98/lstm_296/lstm_cell_248/MatMul/ReadVariableOp2|
<sequential_98/lstm_296/lstm_cell_248/MatMul_1/ReadVariableOp<sequential_98/lstm_296/lstm_cell_248/MatMul_1/ReadVariableOp2<
sequential_98/lstm_296/whilesequential_98/lstm_296/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_294_input
?
?
J__inference_lstm_cell_248_layer_call_and_return_conditional_losses_1501330

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
?#
?
while_body_1500835
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_246_1500859_0:	?0
while_lstm_cell_246_1500861_0:	d?,
while_lstm_cell_246_1500863_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_246_1500859:	?.
while_lstm_cell_246_1500861:	d?*
while_lstm_cell_246_1500863:	???+while/lstm_cell_246/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_246/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_246_1500859_0while_lstm_cell_246_1500861_0while_lstm_cell_246_1500863_0*
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
J__inference_lstm_cell_246_layer_call_and_return_conditional_losses_1500776?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_246/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_246/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_246/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_246/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_246_1500859while_lstm_cell_246_1500859_0"<
while_lstm_cell_246_1500861while_lstm_cell_246_1500861_0"<
while_lstm_cell_246_1500863while_lstm_cell_246_1500863_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_246/StatefulPartitionedCall+while/lstm_cell_246/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_295_layer_call_fn_1504369
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
E__inference_lstm_295_layer_call_and_return_conditional_losses_1501254|
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
E__inference_lstm_296_layer_call_and_return_conditional_losses_1505293
inputs_0>
,lstm_cell_248_matmul_readvariableop_resource:2(@
.lstm_cell_248_matmul_1_readvariableop_resource:
(;
-lstm_cell_248_biasadd_readvariableop_resource:(
identity??$lstm_cell_248/BiasAdd/ReadVariableOp?#lstm_cell_248/MatMul/ReadVariableOp?%lstm_cell_248/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_248/MatMul/ReadVariableOpReadVariableOp,lstm_cell_248_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_248/MatMulMatMulstrided_slice_2:output:0+lstm_cell_248/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_248/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_248_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_248/MatMul_1MatMulzeros:output:0-lstm_cell_248/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_248/addAddV2lstm_cell_248/MatMul:product:0 lstm_cell_248/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_248/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_248_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_248/BiasAddBiasAddlstm_cell_248/add:z:0,lstm_cell_248/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_248/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_248/splitSplit&lstm_cell_248/split/split_dim:output:0lstm_cell_248/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_248/SigmoidSigmoidlstm_cell_248/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_248/Sigmoid_1Sigmoidlstm_cell_248/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_248/mulMullstm_cell_248/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_248/ReluRelulstm_cell_248/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_248/mul_1Mullstm_cell_248/Sigmoid:y:0 lstm_cell_248/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_248/add_1AddV2lstm_cell_248/mul:z:0lstm_cell_248/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_248/Sigmoid_2Sigmoidlstm_cell_248/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_248/Relu_1Relulstm_cell_248/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_248/mul_2Mullstm_cell_248/Sigmoid_2:y:0"lstm_cell_248/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_248_matmul_readvariableop_resource.lstm_cell_248_matmul_1_readvariableop_resource-lstm_cell_248_biasadd_readvariableop_resource*
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
while_body_1505209*
condR
while_cond_1505208*K
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
NoOpNoOp%^lstm_cell_248/BiasAdd/ReadVariableOp$^lstm_cell_248/MatMul/ReadVariableOp&^lstm_cell_248/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_248/BiasAdd/ReadVariableOp$lstm_cell_248/BiasAdd/ReadVariableOp2J
#lstm_cell_248/MatMul/ReadVariableOp#lstm_cell_248/MatMul/ReadVariableOp2N
%lstm_cell_248/MatMul_1/ReadVariableOp%lstm_cell_248/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_247_layer_call_and_return_conditional_losses_1500980

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
while_cond_1505208
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1505208___redundant_placeholder05
1while_while_cond_1505208___redundant_placeholder15
1while_while_cond_1505208___redundant_placeholder25
1while_while_cond_1505208___redundant_placeholder3
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
?
E__inference_lstm_294_layer_call_and_return_conditional_losses_1500713

inputs(
lstm_cell_246_1500631:	?(
lstm_cell_246_1500633:	d?$
lstm_cell_246_1500635:	?
identity??%lstm_cell_246/StatefulPartitionedCall?while;
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
%lstm_cell_246/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_246_1500631lstm_cell_246_1500633lstm_cell_246_1500635*
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
J__inference_lstm_cell_246_layer_call_and_return_conditional_losses_1500630n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_246_1500631lstm_cell_246_1500633lstm_cell_246_1500635*
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
while_body_1500644*
condR
while_cond_1500643*K
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
NoOpNoOp&^lstm_cell_246/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_246/StatefulPartitionedCall%lstm_cell_246/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_294_layer_call_and_return_conditional_losses_1500904

inputs(
lstm_cell_246_1500822:	?(
lstm_cell_246_1500824:	d?$
lstm_cell_246_1500826:	?
identity??%lstm_cell_246/StatefulPartitionedCall?while;
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
%lstm_cell_246/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_246_1500822lstm_cell_246_1500824lstm_cell_246_1500826*
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
J__inference_lstm_cell_246_layer_call_and_return_conditional_losses_1500776n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_246_1500822lstm_cell_246_1500824lstm_cell_246_1500826*
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
while_body_1500835*
condR
while_cond_1500834*K
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
NoOpNoOp&^lstm_cell_246/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_246/StatefulPartitionedCall%lstm_cell_246/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
J__inference_sequential_98_layer_call_and_return_conditional_losses_1502788
lstm_294_input#
lstm_294_1502761:	?#
lstm_294_1502763:	d?
lstm_294_1502765:	?#
lstm_295_1502768:	d?#
lstm_295_1502770:	2?
lstm_295_1502772:	?"
lstm_296_1502775:2("
lstm_296_1502777:
(
lstm_296_1502779:("
dense_98_1502782:

dense_98_1502784:
identity?? dense_98/StatefulPartitionedCall? lstm_294/StatefulPartitionedCall? lstm_295/StatefulPartitionedCall? lstm_296/StatefulPartitionedCall?
 lstm_294/StatefulPartitionedCallStatefulPartitionedCalllstm_294_inputlstm_294_1502761lstm_294_1502763lstm_294_1502765*
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
E__inference_lstm_294_layer_call_and_return_conditional_losses_1502608?
 lstm_295/StatefulPartitionedCallStatefulPartitionedCall)lstm_294/StatefulPartitionedCall:output:0lstm_295_1502768lstm_295_1502770lstm_295_1502772*
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
E__inference_lstm_295_layer_call_and_return_conditional_losses_1502443?
 lstm_296/StatefulPartitionedCallStatefulPartitionedCall)lstm_295/StatefulPartitionedCall:output:0lstm_296_1502775lstm_296_1502777lstm_296_1502779*
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
E__inference_lstm_296_layer_call_and_return_conditional_losses_1502278?
 dense_98/StatefulPartitionedCallStatefulPartitionedCall)lstm_296/StatefulPartitionedCall:output:0dense_98_1502782dense_98_1502784*
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
E__inference_dense_98_layer_call_and_return_conditional_losses_1502080x
IdentityIdentity)dense_98/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_98/StatefulPartitionedCall!^lstm_294/StatefulPartitionedCall!^lstm_295/StatefulPartitionedCall!^lstm_296/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_98/StatefulPartitionedCall dense_98/StatefulPartitionedCall2D
 lstm_294/StatefulPartitionedCall lstm_294/StatefulPartitionedCall2D
 lstm_295/StatefulPartitionedCall lstm_295/StatefulPartitionedCall2D
 lstm_296/StatefulPartitionedCall lstm_296/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_294_input
?
?
while_cond_1504119
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1504119___redundant_placeholder05
1while_while_cond_1504119___redundant_placeholder15
1while_while_cond_1504119___redundant_placeholder25
1while_while_cond_1504119___redundant_placeholder3
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
J__inference_sequential_98_layer_call_and_return_conditional_losses_1502676

inputs#
lstm_294_1502649:	?#
lstm_294_1502651:	d?
lstm_294_1502653:	?#
lstm_295_1502656:	d?#
lstm_295_1502658:	2?
lstm_295_1502660:	?"
lstm_296_1502663:2("
lstm_296_1502665:
(
lstm_296_1502667:("
dense_98_1502670:

dense_98_1502672:
identity?? dense_98/StatefulPartitionedCall? lstm_294/StatefulPartitionedCall? lstm_295/StatefulPartitionedCall? lstm_296/StatefulPartitionedCall?
 lstm_294/StatefulPartitionedCallStatefulPartitionedCallinputslstm_294_1502649lstm_294_1502651lstm_294_1502653*
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
E__inference_lstm_294_layer_call_and_return_conditional_losses_1502608?
 lstm_295/StatefulPartitionedCallStatefulPartitionedCall)lstm_294/StatefulPartitionedCall:output:0lstm_295_1502656lstm_295_1502658lstm_295_1502660*
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
E__inference_lstm_295_layer_call_and_return_conditional_losses_1502443?
 lstm_296/StatefulPartitionedCallStatefulPartitionedCall)lstm_295/StatefulPartitionedCall:output:0lstm_296_1502663lstm_296_1502665lstm_296_1502667*
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
E__inference_lstm_296_layer_call_and_return_conditional_losses_1502278?
 dense_98/StatefulPartitionedCallStatefulPartitionedCall)lstm_296/StatefulPartitionedCall:output:0dense_98_1502670dense_98_1502672*
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
E__inference_dense_98_layer_call_and_return_conditional_losses_1502080x
IdentityIdentity)dense_98/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_98/StatefulPartitionedCall!^lstm_294/StatefulPartitionedCall!^lstm_295/StatefulPartitionedCall!^lstm_296/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_98/StatefulPartitionedCall dense_98/StatefulPartitionedCall2D
 lstm_294/StatefulPartitionedCall lstm_294/StatefulPartitionedCall2D
 lstm_295/StatefulPartitionedCall lstm_295/StatefulPartitionedCall2D
 lstm_296/StatefulPartitionedCall lstm_296/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_1504263
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_246_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_246_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_246_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_246_matmul_readvariableop_resource:	?G
4while_lstm_cell_246_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_246_biasadd_readvariableop_resource:	???*while/lstm_cell_246/BiasAdd/ReadVariableOp?)while/lstm_cell_246/MatMul/ReadVariableOp?+while/lstm_cell_246/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_246/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_246_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_246/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_246/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_246/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_246_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_246/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_246/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_246/addAddV2$while/lstm_cell_246/MatMul:product:0&while/lstm_cell_246/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_246/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_246_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_246/BiasAddBiasAddwhile/lstm_cell_246/add:z:02while/lstm_cell_246/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_246/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_246/splitSplit,while/lstm_cell_246/split/split_dim:output:0$while/lstm_cell_246/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_246/SigmoidSigmoid"while/lstm_cell_246/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_246/Sigmoid_1Sigmoid"while/lstm_cell_246/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_246/mulMul!while/lstm_cell_246/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_246/ReluRelu"while/lstm_cell_246/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_246/mul_1Mulwhile/lstm_cell_246/Sigmoid:y:0&while/lstm_cell_246/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_246/add_1AddV2while/lstm_cell_246/mul:z:0while/lstm_cell_246/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_246/Sigmoid_2Sigmoid"while/lstm_cell_246/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_246/Relu_1Reluwhile/lstm_cell_246/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_246/mul_2Mul!while/lstm_cell_246/Sigmoid_2:y:0(while/lstm_cell_246/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_246/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_246/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_246/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_246/BiasAdd/ReadVariableOp*^while/lstm_cell_246/MatMul/ReadVariableOp,^while/lstm_cell_246/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_246_biasadd_readvariableop_resource5while_lstm_cell_246_biasadd_readvariableop_resource_0"n
4while_lstm_cell_246_matmul_1_readvariableop_resource6while_lstm_cell_246_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_246_matmul_readvariableop_resource4while_lstm_cell_246_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_246/BiasAdd/ReadVariableOp*while/lstm_cell_246/BiasAdd/ReadVariableOp2V
)while/lstm_cell_246/MatMul/ReadVariableOp)while/lstm_cell_246/MatMul/ReadVariableOp2Z
+while/lstm_cell_246/MatMul_1/ReadVariableOp+while/lstm_cell_246/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_295_layer_call_fn_1504391

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
E__inference_lstm_295_layer_call_and_return_conditional_losses_1502443s
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
E__inference_dense_98_layer_call_and_return_conditional_losses_1502080

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
?
*__inference_lstm_294_layer_call_fn_1503775

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
E__inference_lstm_294_layer_call_and_return_conditional_losses_1502608s
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
while_body_1504593
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_247_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_247_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_247_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_247_matmul_readvariableop_resource:	d?G
4while_lstm_cell_247_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_247_biasadd_readvariableop_resource:	???*while/lstm_cell_247/BiasAdd/ReadVariableOp?)while/lstm_cell_247/MatMul/ReadVariableOp?+while/lstm_cell_247/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_247/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_247_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_247/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_247/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_247/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_247_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_247/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_247/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_247/addAddV2$while/lstm_cell_247/MatMul:product:0&while/lstm_cell_247/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_247/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_247_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_247/BiasAddBiasAddwhile/lstm_cell_247/add:z:02while/lstm_cell_247/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_247/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_247/splitSplit,while/lstm_cell_247/split/split_dim:output:0$while/lstm_cell_247/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_247/SigmoidSigmoid"while/lstm_cell_247/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_247/Sigmoid_1Sigmoid"while/lstm_cell_247/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_247/mulMul!while/lstm_cell_247/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_247/ReluRelu"while/lstm_cell_247/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_247/mul_1Mulwhile/lstm_cell_247/Sigmoid:y:0&while/lstm_cell_247/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_247/add_1AddV2while/lstm_cell_247/mul:z:0while/lstm_cell_247/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_247/Sigmoid_2Sigmoid"while/lstm_cell_247/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_247/Relu_1Reluwhile/lstm_cell_247/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_247/mul_2Mul!while/lstm_cell_247/Sigmoid_2:y:0(while/lstm_cell_247/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_247/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_247/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_247/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_247/BiasAdd/ReadVariableOp*^while/lstm_cell_247/MatMul/ReadVariableOp,^while/lstm_cell_247/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_247_biasadd_readvariableop_resource5while_lstm_cell_247_biasadd_readvariableop_resource_0"n
4while_lstm_cell_247_matmul_1_readvariableop_resource6while_lstm_cell_247_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_247_matmul_readvariableop_resource4while_lstm_cell_247_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_247/BiasAdd/ReadVariableOp*while/lstm_cell_247/BiasAdd/ReadVariableOp2V
)while/lstm_cell_247/MatMul/ReadVariableOp)while/lstm_cell_247/MatMul/ReadVariableOp2Z
+while/lstm_cell_247/MatMul_1/ReadVariableOp+while/lstm_cell_247/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_296_layer_call_and_return_conditional_losses_1502062

inputs>
,lstm_cell_248_matmul_readvariableop_resource:2(@
.lstm_cell_248_matmul_1_readvariableop_resource:
(;
-lstm_cell_248_biasadd_readvariableop_resource:(
identity??$lstm_cell_248/BiasAdd/ReadVariableOp?#lstm_cell_248/MatMul/ReadVariableOp?%lstm_cell_248/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_248/MatMul/ReadVariableOpReadVariableOp,lstm_cell_248_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_248/MatMulMatMulstrided_slice_2:output:0+lstm_cell_248/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_248/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_248_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_248/MatMul_1MatMulzeros:output:0-lstm_cell_248/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_248/addAddV2lstm_cell_248/MatMul:product:0 lstm_cell_248/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_248/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_248_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_248/BiasAddBiasAddlstm_cell_248/add:z:0,lstm_cell_248/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_248/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_248/splitSplit&lstm_cell_248/split/split_dim:output:0lstm_cell_248/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_248/SigmoidSigmoidlstm_cell_248/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_248/Sigmoid_1Sigmoidlstm_cell_248/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_248/mulMullstm_cell_248/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_248/ReluRelulstm_cell_248/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_248/mul_1Mullstm_cell_248/Sigmoid:y:0 lstm_cell_248/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_248/add_1AddV2lstm_cell_248/mul:z:0lstm_cell_248/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_248/Sigmoid_2Sigmoidlstm_cell_248/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_248/Relu_1Relulstm_cell_248/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_248/mul_2Mullstm_cell_248/Sigmoid_2:y:0"lstm_cell_248/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_248_matmul_readvariableop_resource.lstm_cell_248_matmul_1_readvariableop_resource-lstm_cell_248_biasadd_readvariableop_resource*
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
while_body_1501978*
condR
while_cond_1501977*K
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
NoOpNoOp%^lstm_cell_248/BiasAdd/ReadVariableOp$^lstm_cell_248/MatMul/ReadVariableOp&^lstm_cell_248/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_248/BiasAdd/ReadVariableOp$lstm_cell_248/BiasAdd/ReadVariableOp2J
#lstm_cell_248/MatMul/ReadVariableOp#lstm_cell_248/MatMul/ReadVariableOp2N
%lstm_cell_248/MatMul_1/ReadVariableOp%lstm_cell_248/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
lstm_294_while_cond_1502935.
*lstm_294_while_lstm_294_while_loop_counter4
0lstm_294_while_lstm_294_while_maximum_iterations
lstm_294_while_placeholder 
lstm_294_while_placeholder_1 
lstm_294_while_placeholder_2 
lstm_294_while_placeholder_30
,lstm_294_while_less_lstm_294_strided_slice_1G
Clstm_294_while_lstm_294_while_cond_1502935___redundant_placeholder0G
Clstm_294_while_lstm_294_while_cond_1502935___redundant_placeholder1G
Clstm_294_while_lstm_294_while_cond_1502935___redundant_placeholder2G
Clstm_294_while_lstm_294_while_cond_1502935___redundant_placeholder3
lstm_294_while_identity
?
lstm_294/while/LessLesslstm_294_while_placeholder,lstm_294_while_less_lstm_294_strided_slice_1*
T0*
_output_shapes
: ]
lstm_294/while/IdentityIdentitylstm_294/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_294_while_identity lstm_294/while/Identity:output:0*(
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
while_body_1505352
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_248_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_248_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_248_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_248_matmul_readvariableop_resource:2(F
4while_lstm_cell_248_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_248_biasadd_readvariableop_resource:(??*while/lstm_cell_248/BiasAdd/ReadVariableOp?)while/lstm_cell_248/MatMul/ReadVariableOp?+while/lstm_cell_248/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_248/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_248_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_248/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_248/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_248/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_248_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_248/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_248/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_248/addAddV2$while/lstm_cell_248/MatMul:product:0&while/lstm_cell_248/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_248/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_248_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_248/BiasAddBiasAddwhile/lstm_cell_248/add:z:02while/lstm_cell_248/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_248/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_248/splitSplit,while/lstm_cell_248/split/split_dim:output:0$while/lstm_cell_248/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_248/SigmoidSigmoid"while/lstm_cell_248/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_248/Sigmoid_1Sigmoid"while/lstm_cell_248/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_248/mulMul!while/lstm_cell_248/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_248/ReluRelu"while/lstm_cell_248/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_248/mul_1Mulwhile/lstm_cell_248/Sigmoid:y:0&while/lstm_cell_248/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_248/add_1AddV2while/lstm_cell_248/mul:z:0while/lstm_cell_248/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_248/Sigmoid_2Sigmoid"while/lstm_cell_248/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_248/Relu_1Reluwhile/lstm_cell_248/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_248/mul_2Mul!while/lstm_cell_248/Sigmoid_2:y:0(while/lstm_cell_248/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_248/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_248/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_248/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_248/BiasAdd/ReadVariableOp*^while/lstm_cell_248/MatMul/ReadVariableOp,^while/lstm_cell_248/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_248_biasadd_readvariableop_resource5while_lstm_cell_248_biasadd_readvariableop_resource_0"n
4while_lstm_cell_248_matmul_1_readvariableop_resource6while_lstm_cell_248_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_248_matmul_readvariableop_resource4while_lstm_cell_248_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_248/BiasAdd/ReadVariableOp*while/lstm_cell_248/BiasAdd/ReadVariableOp2V
)while/lstm_cell_248/MatMul/ReadVariableOp)while/lstm_cell_248/MatMul/ReadVariableOp2Z
+while/lstm_cell_248/MatMul_1/ReadVariableOp+while/lstm_cell_248/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_296_while_cond_1503213.
*lstm_296_while_lstm_296_while_loop_counter4
0lstm_296_while_lstm_296_while_maximum_iterations
lstm_296_while_placeholder 
lstm_296_while_placeholder_1 
lstm_296_while_placeholder_2 
lstm_296_while_placeholder_30
,lstm_296_while_less_lstm_296_strided_slice_1G
Clstm_296_while_lstm_296_while_cond_1503213___redundant_placeholder0G
Clstm_296_while_lstm_296_while_cond_1503213___redundant_placeholder1G
Clstm_296_while_lstm_296_while_cond_1503213___redundant_placeholder2G
Clstm_296_while_lstm_296_while_cond_1503213___redundant_placeholder3
lstm_296_while_identity
?
lstm_296/while/LessLesslstm_296_while_placeholder,lstm_296_while_less_lstm_296_strided_slice_1*
T0*
_output_shapes
: ]
lstm_296/while/IdentityIdentitylstm_296/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_296_while_identity lstm_296/while/Identity:output:0*(
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
%__inference_signature_wrapper_1502823
lstm_294_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_294_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_1500563o
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
_user_specified_namelstm_294_input
?
?
*__inference_lstm_294_layer_call_fn_1503753
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
E__inference_lstm_294_layer_call_and_return_conditional_losses_1500904|
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
J__inference_lstm_cell_246_layer_call_and_return_conditional_losses_1505664

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
J__inference_sequential_98_layer_call_and_return_conditional_losses_1503731

inputsH
5lstm_294_lstm_cell_246_matmul_readvariableop_resource:	?J
7lstm_294_lstm_cell_246_matmul_1_readvariableop_resource:	d?E
6lstm_294_lstm_cell_246_biasadd_readvariableop_resource:	?H
5lstm_295_lstm_cell_247_matmul_readvariableop_resource:	d?J
7lstm_295_lstm_cell_247_matmul_1_readvariableop_resource:	2?E
6lstm_295_lstm_cell_247_biasadd_readvariableop_resource:	?G
5lstm_296_lstm_cell_248_matmul_readvariableop_resource:2(I
7lstm_296_lstm_cell_248_matmul_1_readvariableop_resource:
(D
6lstm_296_lstm_cell_248_biasadd_readvariableop_resource:(9
'dense_98_matmul_readvariableop_resource:
6
(dense_98_biasadd_readvariableop_resource:
identity??dense_98/BiasAdd/ReadVariableOp?dense_98/MatMul/ReadVariableOp?-lstm_294/lstm_cell_246/BiasAdd/ReadVariableOp?,lstm_294/lstm_cell_246/MatMul/ReadVariableOp?.lstm_294/lstm_cell_246/MatMul_1/ReadVariableOp?lstm_294/while?-lstm_295/lstm_cell_247/BiasAdd/ReadVariableOp?,lstm_295/lstm_cell_247/MatMul/ReadVariableOp?.lstm_295/lstm_cell_247/MatMul_1/ReadVariableOp?lstm_295/while?-lstm_296/lstm_cell_248/BiasAdd/ReadVariableOp?,lstm_296/lstm_cell_248/MatMul/ReadVariableOp?.lstm_296/lstm_cell_248/MatMul_1/ReadVariableOp?lstm_296/whileD
lstm_294/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_294/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_294/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_294/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_294/strided_sliceStridedSlicelstm_294/Shape:output:0%lstm_294/strided_slice/stack:output:0'lstm_294/strided_slice/stack_1:output:0'lstm_294/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_294/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_294/zeros/packedPacklstm_294/strided_slice:output:0 lstm_294/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_294/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_294/zerosFilllstm_294/zeros/packed:output:0lstm_294/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_294/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_294/zeros_1/packedPacklstm_294/strided_slice:output:0"lstm_294/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_294/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_294/zeros_1Fill lstm_294/zeros_1/packed:output:0lstm_294/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_294/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_294/transpose	Transposeinputs lstm_294/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_294/Shape_1Shapelstm_294/transpose:y:0*
T0*
_output_shapes
:h
lstm_294/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_294/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_294/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_294/strided_slice_1StridedSlicelstm_294/Shape_1:output:0'lstm_294/strided_slice_1/stack:output:0)lstm_294/strided_slice_1/stack_1:output:0)lstm_294/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_294/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_294/TensorArrayV2TensorListReserve-lstm_294/TensorArrayV2/element_shape:output:0!lstm_294/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_294/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_294/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_294/transpose:y:0Glstm_294/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_294/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_294/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_294/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_294/strided_slice_2StridedSlicelstm_294/transpose:y:0'lstm_294/strided_slice_2/stack:output:0)lstm_294/strided_slice_2/stack_1:output:0)lstm_294/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_294/lstm_cell_246/MatMul/ReadVariableOpReadVariableOp5lstm_294_lstm_cell_246_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_294/lstm_cell_246/MatMulMatMul!lstm_294/strided_slice_2:output:04lstm_294/lstm_cell_246/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_294/lstm_cell_246/MatMul_1/ReadVariableOpReadVariableOp7lstm_294_lstm_cell_246_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_294/lstm_cell_246/MatMul_1MatMullstm_294/zeros:output:06lstm_294/lstm_cell_246/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_294/lstm_cell_246/addAddV2'lstm_294/lstm_cell_246/MatMul:product:0)lstm_294/lstm_cell_246/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_294/lstm_cell_246/BiasAdd/ReadVariableOpReadVariableOp6lstm_294_lstm_cell_246_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_294/lstm_cell_246/BiasAddBiasAddlstm_294/lstm_cell_246/add:z:05lstm_294/lstm_cell_246/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_294/lstm_cell_246/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_294/lstm_cell_246/splitSplit/lstm_294/lstm_cell_246/split/split_dim:output:0'lstm_294/lstm_cell_246/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_294/lstm_cell_246/SigmoidSigmoid%lstm_294/lstm_cell_246/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_294/lstm_cell_246/Sigmoid_1Sigmoid%lstm_294/lstm_cell_246/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_294/lstm_cell_246/mulMul$lstm_294/lstm_cell_246/Sigmoid_1:y:0lstm_294/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_294/lstm_cell_246/ReluRelu%lstm_294/lstm_cell_246/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_294/lstm_cell_246/mul_1Mul"lstm_294/lstm_cell_246/Sigmoid:y:0)lstm_294/lstm_cell_246/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_294/lstm_cell_246/add_1AddV2lstm_294/lstm_cell_246/mul:z:0 lstm_294/lstm_cell_246/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_294/lstm_cell_246/Sigmoid_2Sigmoid%lstm_294/lstm_cell_246/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_294/lstm_cell_246/Relu_1Relu lstm_294/lstm_cell_246/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_294/lstm_cell_246/mul_2Mul$lstm_294/lstm_cell_246/Sigmoid_2:y:0+lstm_294/lstm_cell_246/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_294/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_294/TensorArrayV2_1TensorListReserve/lstm_294/TensorArrayV2_1/element_shape:output:0!lstm_294/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_294/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_294/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_294/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_294/whileWhile$lstm_294/while/loop_counter:output:0*lstm_294/while/maximum_iterations:output:0lstm_294/time:output:0!lstm_294/TensorArrayV2_1:handle:0lstm_294/zeros:output:0lstm_294/zeros_1:output:0!lstm_294/strided_slice_1:output:0@lstm_294/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_294_lstm_cell_246_matmul_readvariableop_resource7lstm_294_lstm_cell_246_matmul_1_readvariableop_resource6lstm_294_lstm_cell_246_biasadd_readvariableop_resource*
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
lstm_294_while_body_1503363*'
condR
lstm_294_while_cond_1503362*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_294/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_294/TensorArrayV2Stack/TensorListStackTensorListStacklstm_294/while:output:3Blstm_294/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_294/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_294/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_294/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_294/strided_slice_3StridedSlice4lstm_294/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_294/strided_slice_3/stack:output:0)lstm_294/strided_slice_3/stack_1:output:0)lstm_294/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_294/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_294/transpose_1	Transpose4lstm_294/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_294/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_294/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_295/ShapeShapelstm_294/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_295/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_295/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_295/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_295/strided_sliceStridedSlicelstm_295/Shape:output:0%lstm_295/strided_slice/stack:output:0'lstm_295/strided_slice/stack_1:output:0'lstm_295/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_295/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_295/zeros/packedPacklstm_295/strided_slice:output:0 lstm_295/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_295/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_295/zerosFilllstm_295/zeros/packed:output:0lstm_295/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_295/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_295/zeros_1/packedPacklstm_295/strided_slice:output:0"lstm_295/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_295/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_295/zeros_1Fill lstm_295/zeros_1/packed:output:0lstm_295/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_295/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_295/transpose	Transposelstm_294/transpose_1:y:0 lstm_295/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_295/Shape_1Shapelstm_295/transpose:y:0*
T0*
_output_shapes
:h
lstm_295/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_295/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_295/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_295/strided_slice_1StridedSlicelstm_295/Shape_1:output:0'lstm_295/strided_slice_1/stack:output:0)lstm_295/strided_slice_1/stack_1:output:0)lstm_295/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_295/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_295/TensorArrayV2TensorListReserve-lstm_295/TensorArrayV2/element_shape:output:0!lstm_295/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_295/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_295/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_295/transpose:y:0Glstm_295/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_295/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_295/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_295/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_295/strided_slice_2StridedSlicelstm_295/transpose:y:0'lstm_295/strided_slice_2/stack:output:0)lstm_295/strided_slice_2/stack_1:output:0)lstm_295/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_295/lstm_cell_247/MatMul/ReadVariableOpReadVariableOp5lstm_295_lstm_cell_247_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_295/lstm_cell_247/MatMulMatMul!lstm_295/strided_slice_2:output:04lstm_295/lstm_cell_247/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_295/lstm_cell_247/MatMul_1/ReadVariableOpReadVariableOp7lstm_295_lstm_cell_247_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_295/lstm_cell_247/MatMul_1MatMullstm_295/zeros:output:06lstm_295/lstm_cell_247/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_295/lstm_cell_247/addAddV2'lstm_295/lstm_cell_247/MatMul:product:0)lstm_295/lstm_cell_247/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_295/lstm_cell_247/BiasAdd/ReadVariableOpReadVariableOp6lstm_295_lstm_cell_247_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_295/lstm_cell_247/BiasAddBiasAddlstm_295/lstm_cell_247/add:z:05lstm_295/lstm_cell_247/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_295/lstm_cell_247/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_295/lstm_cell_247/splitSplit/lstm_295/lstm_cell_247/split/split_dim:output:0'lstm_295/lstm_cell_247/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_295/lstm_cell_247/SigmoidSigmoid%lstm_295/lstm_cell_247/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_295/lstm_cell_247/Sigmoid_1Sigmoid%lstm_295/lstm_cell_247/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_295/lstm_cell_247/mulMul$lstm_295/lstm_cell_247/Sigmoid_1:y:0lstm_295/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_295/lstm_cell_247/ReluRelu%lstm_295/lstm_cell_247/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_295/lstm_cell_247/mul_1Mul"lstm_295/lstm_cell_247/Sigmoid:y:0)lstm_295/lstm_cell_247/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_295/lstm_cell_247/add_1AddV2lstm_295/lstm_cell_247/mul:z:0 lstm_295/lstm_cell_247/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_295/lstm_cell_247/Sigmoid_2Sigmoid%lstm_295/lstm_cell_247/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_295/lstm_cell_247/Relu_1Relu lstm_295/lstm_cell_247/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_295/lstm_cell_247/mul_2Mul$lstm_295/lstm_cell_247/Sigmoid_2:y:0+lstm_295/lstm_cell_247/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_295/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_295/TensorArrayV2_1TensorListReserve/lstm_295/TensorArrayV2_1/element_shape:output:0!lstm_295/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_295/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_295/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_295/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_295/whileWhile$lstm_295/while/loop_counter:output:0*lstm_295/while/maximum_iterations:output:0lstm_295/time:output:0!lstm_295/TensorArrayV2_1:handle:0lstm_295/zeros:output:0lstm_295/zeros_1:output:0!lstm_295/strided_slice_1:output:0@lstm_295/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_295_lstm_cell_247_matmul_readvariableop_resource7lstm_295_lstm_cell_247_matmul_1_readvariableop_resource6lstm_295_lstm_cell_247_biasadd_readvariableop_resource*
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
lstm_295_while_body_1503502*'
condR
lstm_295_while_cond_1503501*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_295/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_295/TensorArrayV2Stack/TensorListStackTensorListStacklstm_295/while:output:3Blstm_295/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_295/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_295/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_295/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_295/strided_slice_3StridedSlice4lstm_295/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_295/strided_slice_3/stack:output:0)lstm_295/strided_slice_3/stack_1:output:0)lstm_295/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_295/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_295/transpose_1	Transpose4lstm_295/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_295/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_295/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_296/ShapeShapelstm_295/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_296/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_296/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_296/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_296/strided_sliceStridedSlicelstm_296/Shape:output:0%lstm_296/strided_slice/stack:output:0'lstm_296/strided_slice/stack_1:output:0'lstm_296/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_296/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_296/zeros/packedPacklstm_296/strided_slice:output:0 lstm_296/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_296/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_296/zerosFilllstm_296/zeros/packed:output:0lstm_296/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_296/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_296/zeros_1/packedPacklstm_296/strided_slice:output:0"lstm_296/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_296/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_296/zeros_1Fill lstm_296/zeros_1/packed:output:0lstm_296/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_296/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_296/transpose	Transposelstm_295/transpose_1:y:0 lstm_296/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_296/Shape_1Shapelstm_296/transpose:y:0*
T0*
_output_shapes
:h
lstm_296/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_296/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_296/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_296/strided_slice_1StridedSlicelstm_296/Shape_1:output:0'lstm_296/strided_slice_1/stack:output:0)lstm_296/strided_slice_1/stack_1:output:0)lstm_296/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_296/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_296/TensorArrayV2TensorListReserve-lstm_296/TensorArrayV2/element_shape:output:0!lstm_296/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_296/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_296/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_296/transpose:y:0Glstm_296/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_296/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_296/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_296/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_296/strided_slice_2StridedSlicelstm_296/transpose:y:0'lstm_296/strided_slice_2/stack:output:0)lstm_296/strided_slice_2/stack_1:output:0)lstm_296/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_296/lstm_cell_248/MatMul/ReadVariableOpReadVariableOp5lstm_296_lstm_cell_248_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_296/lstm_cell_248/MatMulMatMul!lstm_296/strided_slice_2:output:04lstm_296/lstm_cell_248/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_296/lstm_cell_248/MatMul_1/ReadVariableOpReadVariableOp7lstm_296_lstm_cell_248_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_296/lstm_cell_248/MatMul_1MatMullstm_296/zeros:output:06lstm_296/lstm_cell_248/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_296/lstm_cell_248/addAddV2'lstm_296/lstm_cell_248/MatMul:product:0)lstm_296/lstm_cell_248/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_296/lstm_cell_248/BiasAdd/ReadVariableOpReadVariableOp6lstm_296_lstm_cell_248_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_296/lstm_cell_248/BiasAddBiasAddlstm_296/lstm_cell_248/add:z:05lstm_296/lstm_cell_248/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_296/lstm_cell_248/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_296/lstm_cell_248/splitSplit/lstm_296/lstm_cell_248/split/split_dim:output:0'lstm_296/lstm_cell_248/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_296/lstm_cell_248/SigmoidSigmoid%lstm_296/lstm_cell_248/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_296/lstm_cell_248/Sigmoid_1Sigmoid%lstm_296/lstm_cell_248/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_296/lstm_cell_248/mulMul$lstm_296/lstm_cell_248/Sigmoid_1:y:0lstm_296/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_296/lstm_cell_248/ReluRelu%lstm_296/lstm_cell_248/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_296/lstm_cell_248/mul_1Mul"lstm_296/lstm_cell_248/Sigmoid:y:0)lstm_296/lstm_cell_248/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_296/lstm_cell_248/add_1AddV2lstm_296/lstm_cell_248/mul:z:0 lstm_296/lstm_cell_248/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_296/lstm_cell_248/Sigmoid_2Sigmoid%lstm_296/lstm_cell_248/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_296/lstm_cell_248/Relu_1Relu lstm_296/lstm_cell_248/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_296/lstm_cell_248/mul_2Mul$lstm_296/lstm_cell_248/Sigmoid_2:y:0+lstm_296/lstm_cell_248/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_296/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_296/TensorArrayV2_1TensorListReserve/lstm_296/TensorArrayV2_1/element_shape:output:0!lstm_296/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_296/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_296/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_296/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_296/whileWhile$lstm_296/while/loop_counter:output:0*lstm_296/while/maximum_iterations:output:0lstm_296/time:output:0!lstm_296/TensorArrayV2_1:handle:0lstm_296/zeros:output:0lstm_296/zeros_1:output:0!lstm_296/strided_slice_1:output:0@lstm_296/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_296_lstm_cell_248_matmul_readvariableop_resource7lstm_296_lstm_cell_248_matmul_1_readvariableop_resource6lstm_296_lstm_cell_248_biasadd_readvariableop_resource*
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
lstm_296_while_body_1503641*'
condR
lstm_296_while_cond_1503640*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_296/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_296/TensorArrayV2Stack/TensorListStackTensorListStacklstm_296/while:output:3Blstm_296/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_296/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_296/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_296/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_296/strided_slice_3StridedSlice4lstm_296/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_296/strided_slice_3/stack:output:0)lstm_296/strided_slice_3/stack_1:output:0)lstm_296/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_296/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_296/transpose_1	Transpose4lstm_296/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_296/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_296/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_98/MatMul/ReadVariableOpReadVariableOp'dense_98_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_98/MatMulMatMul!lstm_296/strided_slice_3:output:0&dense_98/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_98/BiasAdd/ReadVariableOpReadVariableOp(dense_98_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_98/BiasAddBiasAdddense_98/MatMul:product:0'dense_98/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_98/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_98/BiasAdd/ReadVariableOp^dense_98/MatMul/ReadVariableOp.^lstm_294/lstm_cell_246/BiasAdd/ReadVariableOp-^lstm_294/lstm_cell_246/MatMul/ReadVariableOp/^lstm_294/lstm_cell_246/MatMul_1/ReadVariableOp^lstm_294/while.^lstm_295/lstm_cell_247/BiasAdd/ReadVariableOp-^lstm_295/lstm_cell_247/MatMul/ReadVariableOp/^lstm_295/lstm_cell_247/MatMul_1/ReadVariableOp^lstm_295/while.^lstm_296/lstm_cell_248/BiasAdd/ReadVariableOp-^lstm_296/lstm_cell_248/MatMul/ReadVariableOp/^lstm_296/lstm_cell_248/MatMul_1/ReadVariableOp^lstm_296/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_98/BiasAdd/ReadVariableOpdense_98/BiasAdd/ReadVariableOp2@
dense_98/MatMul/ReadVariableOpdense_98/MatMul/ReadVariableOp2^
-lstm_294/lstm_cell_246/BiasAdd/ReadVariableOp-lstm_294/lstm_cell_246/BiasAdd/ReadVariableOp2\
,lstm_294/lstm_cell_246/MatMul/ReadVariableOp,lstm_294/lstm_cell_246/MatMul/ReadVariableOp2`
.lstm_294/lstm_cell_246/MatMul_1/ReadVariableOp.lstm_294/lstm_cell_246/MatMul_1/ReadVariableOp2 
lstm_294/whilelstm_294/while2^
-lstm_295/lstm_cell_247/BiasAdd/ReadVariableOp-lstm_295/lstm_cell_247/BiasAdd/ReadVariableOp2\
,lstm_295/lstm_cell_247/MatMul/ReadVariableOp,lstm_295/lstm_cell_247/MatMul/ReadVariableOp2`
.lstm_295/lstm_cell_247/MatMul_1/ReadVariableOp.lstm_295/lstm_cell_247/MatMul_1/ReadVariableOp2 
lstm_295/whilelstm_295/while2^
-lstm_296/lstm_cell_248/BiasAdd/ReadVariableOp-lstm_296/lstm_cell_248/BiasAdd/ReadVariableOp2\
,lstm_296/lstm_cell_248/MatMul/ReadVariableOp,lstm_296/lstm_cell_248/MatMul/ReadVariableOp2`
.lstm_296/lstm_cell_248/MatMul_1/ReadVariableOp.lstm_296/lstm_cell_248/MatMul_1/ReadVariableOp2 
lstm_296/whilelstm_296/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
/__inference_sequential_98_layer_call_fn_1502728
lstm_294_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_294_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_98_layer_call_and_return_conditional_losses_1502676o
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
_user_specified_namelstm_294_input
?
?
while_cond_1501343
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1501343___redundant_placeholder05
1while_while_cond_1501343___redundant_placeholder15
1while_while_cond_1501343___redundant_placeholder25
1while_while_cond_1501343___redundant_placeholder3
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
E__inference_lstm_295_layer_call_and_return_conditional_losses_1501912

inputs?
,lstm_cell_247_matmul_readvariableop_resource:	d?A
.lstm_cell_247_matmul_1_readvariableop_resource:	2?<
-lstm_cell_247_biasadd_readvariableop_resource:	?
identity??$lstm_cell_247/BiasAdd/ReadVariableOp?#lstm_cell_247/MatMul/ReadVariableOp?%lstm_cell_247/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_247/MatMul/ReadVariableOpReadVariableOp,lstm_cell_247_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_247/MatMulMatMulstrided_slice_2:output:0+lstm_cell_247/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_247/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_247_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_247/MatMul_1MatMulzeros:output:0-lstm_cell_247/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_247/addAddV2lstm_cell_247/MatMul:product:0 lstm_cell_247/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_247/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_247_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_247/BiasAddBiasAddlstm_cell_247/add:z:0,lstm_cell_247/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_247/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_247/splitSplit&lstm_cell_247/split/split_dim:output:0lstm_cell_247/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_247/SigmoidSigmoidlstm_cell_247/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_247/Sigmoid_1Sigmoidlstm_cell_247/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_247/mulMullstm_cell_247/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_247/ReluRelulstm_cell_247/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_247/mul_1Mullstm_cell_247/Sigmoid:y:0 lstm_cell_247/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_247/add_1AddV2lstm_cell_247/mul:z:0lstm_cell_247/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_247/Sigmoid_2Sigmoidlstm_cell_247/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_247/Relu_1Relulstm_cell_247/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_247/mul_2Mullstm_cell_247/Sigmoid_2:y:0"lstm_cell_247/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_247_matmul_readvariableop_resource.lstm_cell_247_matmul_1_readvariableop_resource-lstm_cell_247_biasadd_readvariableop_resource*
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
while_body_1501828*
condR
while_cond_1501827*K
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
NoOpNoOp%^lstm_cell_247/BiasAdd/ReadVariableOp$^lstm_cell_247/MatMul/ReadVariableOp&^lstm_cell_247/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_247/BiasAdd/ReadVariableOp$lstm_cell_247/BiasAdd/ReadVariableOp2J
#lstm_cell_247/MatMul/ReadVariableOp#lstm_cell_247/MatMul/ReadVariableOp2N
%lstm_cell_247/MatMul_1/ReadVariableOp%lstm_cell_247/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_296_layer_call_and_return_conditional_losses_1505436

inputs>
,lstm_cell_248_matmul_readvariableop_resource:2(@
.lstm_cell_248_matmul_1_readvariableop_resource:
(;
-lstm_cell_248_biasadd_readvariableop_resource:(
identity??$lstm_cell_248/BiasAdd/ReadVariableOp?#lstm_cell_248/MatMul/ReadVariableOp?%lstm_cell_248/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_248/MatMul/ReadVariableOpReadVariableOp,lstm_cell_248_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_248/MatMulMatMulstrided_slice_2:output:0+lstm_cell_248/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_248/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_248_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_248/MatMul_1MatMulzeros:output:0-lstm_cell_248/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_248/addAddV2lstm_cell_248/MatMul:product:0 lstm_cell_248/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_248/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_248_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_248/BiasAddBiasAddlstm_cell_248/add:z:0,lstm_cell_248/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_248/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_248/splitSplit&lstm_cell_248/split/split_dim:output:0lstm_cell_248/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_248/SigmoidSigmoidlstm_cell_248/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_248/Sigmoid_1Sigmoidlstm_cell_248/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_248/mulMullstm_cell_248/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_248/ReluRelulstm_cell_248/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_248/mul_1Mullstm_cell_248/Sigmoid:y:0 lstm_cell_248/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_248/add_1AddV2lstm_cell_248/mul:z:0lstm_cell_248/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_248/Sigmoid_2Sigmoidlstm_cell_248/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_248/Relu_1Relulstm_cell_248/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_248/mul_2Mullstm_cell_248/Sigmoid_2:y:0"lstm_cell_248/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_248_matmul_readvariableop_resource.lstm_cell_248_matmul_1_readvariableop_resource-lstm_cell_248_biasadd_readvariableop_resource*
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
while_body_1505352*
condR
while_cond_1505351*K
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
NoOpNoOp%^lstm_cell_248/BiasAdd/ReadVariableOp$^lstm_cell_248/MatMul/ReadVariableOp&^lstm_cell_248/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_248/BiasAdd/ReadVariableOp$lstm_cell_248/BiasAdd/ReadVariableOp2J
#lstm_cell_248/MatMul/ReadVariableOp#lstm_cell_248/MatMul/ReadVariableOp2N
%lstm_cell_248/MatMul_1/ReadVariableOp%lstm_cell_248/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_296_layer_call_and_return_conditional_losses_1505579

inputs>
,lstm_cell_248_matmul_readvariableop_resource:2(@
.lstm_cell_248_matmul_1_readvariableop_resource:
(;
-lstm_cell_248_biasadd_readvariableop_resource:(
identity??$lstm_cell_248/BiasAdd/ReadVariableOp?#lstm_cell_248/MatMul/ReadVariableOp?%lstm_cell_248/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_248/MatMul/ReadVariableOpReadVariableOp,lstm_cell_248_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_248/MatMulMatMulstrided_slice_2:output:0+lstm_cell_248/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_248/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_248_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_248/MatMul_1MatMulzeros:output:0-lstm_cell_248/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_248/addAddV2lstm_cell_248/MatMul:product:0 lstm_cell_248/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_248/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_248_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_248/BiasAddBiasAddlstm_cell_248/add:z:0,lstm_cell_248/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_248/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_248/splitSplit&lstm_cell_248/split/split_dim:output:0lstm_cell_248/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_248/SigmoidSigmoidlstm_cell_248/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_248/Sigmoid_1Sigmoidlstm_cell_248/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_248/mulMullstm_cell_248/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_248/ReluRelulstm_cell_248/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_248/mul_1Mullstm_cell_248/Sigmoid:y:0 lstm_cell_248/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_248/add_1AddV2lstm_cell_248/mul:z:0lstm_cell_248/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_248/Sigmoid_2Sigmoidlstm_cell_248/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_248/Relu_1Relulstm_cell_248/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_248/mul_2Mullstm_cell_248/Sigmoid_2:y:0"lstm_cell_248/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_248_matmul_readvariableop_resource.lstm_cell_248_matmul_1_readvariableop_resource-lstm_cell_248_biasadd_readvariableop_resource*
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
while_body_1505495*
condR
while_cond_1505494*K
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
NoOpNoOp%^lstm_cell_248/BiasAdd/ReadVariableOp$^lstm_cell_248/MatMul/ReadVariableOp&^lstm_cell_248/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_248/BiasAdd/ReadVariableOp$lstm_cell_248/BiasAdd/ReadVariableOp2J
#lstm_cell_248/MatMul/ReadVariableOp#lstm_cell_248/MatMul/ReadVariableOp2N
%lstm_cell_248/MatMul_1/ReadVariableOp%lstm_cell_248/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_1505209
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_248_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_248_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_248_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_248_matmul_readvariableop_resource:2(F
4while_lstm_cell_248_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_248_biasadd_readvariableop_resource:(??*while/lstm_cell_248/BiasAdd/ReadVariableOp?)while/lstm_cell_248/MatMul/ReadVariableOp?+while/lstm_cell_248/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_248/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_248_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_248/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_248/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_248/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_248_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_248/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_248/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_248/addAddV2$while/lstm_cell_248/MatMul:product:0&while/lstm_cell_248/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_248/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_248_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_248/BiasAddBiasAddwhile/lstm_cell_248/add:z:02while/lstm_cell_248/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_248/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_248/splitSplit,while/lstm_cell_248/split/split_dim:output:0$while/lstm_cell_248/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_248/SigmoidSigmoid"while/lstm_cell_248/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_248/Sigmoid_1Sigmoid"while/lstm_cell_248/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_248/mulMul!while/lstm_cell_248/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_248/ReluRelu"while/lstm_cell_248/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_248/mul_1Mulwhile/lstm_cell_248/Sigmoid:y:0&while/lstm_cell_248/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_248/add_1AddV2while/lstm_cell_248/mul:z:0while/lstm_cell_248/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_248/Sigmoid_2Sigmoid"while/lstm_cell_248/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_248/Relu_1Reluwhile/lstm_cell_248/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_248/mul_2Mul!while/lstm_cell_248/Sigmoid_2:y:0(while/lstm_cell_248/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_248/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_248/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_248/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_248/BiasAdd/ReadVariableOp*^while/lstm_cell_248/MatMul/ReadVariableOp,^while/lstm_cell_248/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_248_biasadd_readvariableop_resource5while_lstm_cell_248_biasadd_readvariableop_resource_0"n
4while_lstm_cell_248_matmul_1_readvariableop_resource6while_lstm_cell_248_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_248_matmul_readvariableop_resource4while_lstm_cell_248_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_248/BiasAdd/ReadVariableOp*while/lstm_cell_248/BiasAdd/ReadVariableOp2V
)while/lstm_cell_248/MatMul/ReadVariableOp)while/lstm_cell_248/MatMul/ReadVariableOp2Z
+while/lstm_cell_248/MatMul_1/ReadVariableOp+while/lstm_cell_248/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)sequential_98_lstm_295_while_body_1500334J
Fsequential_98_lstm_295_while_sequential_98_lstm_295_while_loop_counterP
Lsequential_98_lstm_295_while_sequential_98_lstm_295_while_maximum_iterations,
(sequential_98_lstm_295_while_placeholder.
*sequential_98_lstm_295_while_placeholder_1.
*sequential_98_lstm_295_while_placeholder_2.
*sequential_98_lstm_295_while_placeholder_3I
Esequential_98_lstm_295_while_sequential_98_lstm_295_strided_slice_1_0?
?sequential_98_lstm_295_while_tensorarrayv2read_tensorlistgetitem_sequential_98_lstm_295_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_98_lstm_295_while_lstm_cell_247_matmul_readvariableop_resource_0:	d?`
Msequential_98_lstm_295_while_lstm_cell_247_matmul_1_readvariableop_resource_0:	2?[
Lsequential_98_lstm_295_while_lstm_cell_247_biasadd_readvariableop_resource_0:	?)
%sequential_98_lstm_295_while_identity+
'sequential_98_lstm_295_while_identity_1+
'sequential_98_lstm_295_while_identity_2+
'sequential_98_lstm_295_while_identity_3+
'sequential_98_lstm_295_while_identity_4+
'sequential_98_lstm_295_while_identity_5G
Csequential_98_lstm_295_while_sequential_98_lstm_295_strided_slice_1?
sequential_98_lstm_295_while_tensorarrayv2read_tensorlistgetitem_sequential_98_lstm_295_tensorarrayunstack_tensorlistfromtensor\
Isequential_98_lstm_295_while_lstm_cell_247_matmul_readvariableop_resource:	d?^
Ksequential_98_lstm_295_while_lstm_cell_247_matmul_1_readvariableop_resource:	2?Y
Jsequential_98_lstm_295_while_lstm_cell_247_biasadd_readvariableop_resource:	???Asequential_98/lstm_295/while/lstm_cell_247/BiasAdd/ReadVariableOp?@sequential_98/lstm_295/while/lstm_cell_247/MatMul/ReadVariableOp?Bsequential_98/lstm_295/while/lstm_cell_247/MatMul_1/ReadVariableOp?
Nsequential_98/lstm_295/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
@sequential_98/lstm_295/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_98_lstm_295_while_tensorarrayv2read_tensorlistgetitem_sequential_98_lstm_295_tensorarrayunstack_tensorlistfromtensor_0(sequential_98_lstm_295_while_placeholderWsequential_98/lstm_295/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
@sequential_98/lstm_295/while/lstm_cell_247/MatMul/ReadVariableOpReadVariableOpKsequential_98_lstm_295_while_lstm_cell_247_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
1sequential_98/lstm_295/while/lstm_cell_247/MatMulMatMulGsequential_98/lstm_295/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_98/lstm_295/while/lstm_cell_247/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_98/lstm_295/while/lstm_cell_247/MatMul_1/ReadVariableOpReadVariableOpMsequential_98_lstm_295_while_lstm_cell_247_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
3sequential_98/lstm_295/while/lstm_cell_247/MatMul_1MatMul*sequential_98_lstm_295_while_placeholder_2Jsequential_98/lstm_295/while/lstm_cell_247/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_98/lstm_295/while/lstm_cell_247/addAddV2;sequential_98/lstm_295/while/lstm_cell_247/MatMul:product:0=sequential_98/lstm_295/while/lstm_cell_247/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_98/lstm_295/while/lstm_cell_247/BiasAdd/ReadVariableOpReadVariableOpLsequential_98_lstm_295_while_lstm_cell_247_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_98/lstm_295/while/lstm_cell_247/BiasAddBiasAdd2sequential_98/lstm_295/while/lstm_cell_247/add:z:0Isequential_98/lstm_295/while/lstm_cell_247/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_98/lstm_295/while/lstm_cell_247/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_98/lstm_295/while/lstm_cell_247/splitSplitCsequential_98/lstm_295/while/lstm_cell_247/split/split_dim:output:0;sequential_98/lstm_295/while/lstm_cell_247/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
2sequential_98/lstm_295/while/lstm_cell_247/SigmoidSigmoid9sequential_98/lstm_295/while/lstm_cell_247/split:output:0*
T0*'
_output_shapes
:?????????2?
4sequential_98/lstm_295/while/lstm_cell_247/Sigmoid_1Sigmoid9sequential_98/lstm_295/while/lstm_cell_247/split:output:1*
T0*'
_output_shapes
:?????????2?
.sequential_98/lstm_295/while/lstm_cell_247/mulMul8sequential_98/lstm_295/while/lstm_cell_247/Sigmoid_1:y:0*sequential_98_lstm_295_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
/sequential_98/lstm_295/while/lstm_cell_247/ReluRelu9sequential_98/lstm_295/while/lstm_cell_247/split:output:2*
T0*'
_output_shapes
:?????????2?
0sequential_98/lstm_295/while/lstm_cell_247/mul_1Mul6sequential_98/lstm_295/while/lstm_cell_247/Sigmoid:y:0=sequential_98/lstm_295/while/lstm_cell_247/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
0sequential_98/lstm_295/while/lstm_cell_247/add_1AddV22sequential_98/lstm_295/while/lstm_cell_247/mul:z:04sequential_98/lstm_295/while/lstm_cell_247/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
4sequential_98/lstm_295/while/lstm_cell_247/Sigmoid_2Sigmoid9sequential_98/lstm_295/while/lstm_cell_247/split:output:3*
T0*'
_output_shapes
:?????????2?
1sequential_98/lstm_295/while/lstm_cell_247/Relu_1Relu4sequential_98/lstm_295/while/lstm_cell_247/add_1:z:0*
T0*'
_output_shapes
:?????????2?
0sequential_98/lstm_295/while/lstm_cell_247/mul_2Mul8sequential_98/lstm_295/while/lstm_cell_247/Sigmoid_2:y:0?sequential_98/lstm_295/while/lstm_cell_247/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Asequential_98/lstm_295/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_98_lstm_295_while_placeholder_1(sequential_98_lstm_295_while_placeholder4sequential_98/lstm_295/while/lstm_cell_247/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_98/lstm_295/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_98/lstm_295/while/addAddV2(sequential_98_lstm_295_while_placeholder+sequential_98/lstm_295/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_98/lstm_295/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_98/lstm_295/while/add_1AddV2Fsequential_98_lstm_295_while_sequential_98_lstm_295_while_loop_counter-sequential_98/lstm_295/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_98/lstm_295/while/IdentityIdentity&sequential_98/lstm_295/while/add_1:z:0"^sequential_98/lstm_295/while/NoOp*
T0*
_output_shapes
: ?
'sequential_98/lstm_295/while/Identity_1IdentityLsequential_98_lstm_295_while_sequential_98_lstm_295_while_maximum_iterations"^sequential_98/lstm_295/while/NoOp*
T0*
_output_shapes
: ?
'sequential_98/lstm_295/while/Identity_2Identity$sequential_98/lstm_295/while/add:z:0"^sequential_98/lstm_295/while/NoOp*
T0*
_output_shapes
: ?
'sequential_98/lstm_295/while/Identity_3IdentityQsequential_98/lstm_295/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_98/lstm_295/while/NoOp*
T0*
_output_shapes
: ?
'sequential_98/lstm_295/while/Identity_4Identity4sequential_98/lstm_295/while/lstm_cell_247/mul_2:z:0"^sequential_98/lstm_295/while/NoOp*
T0*'
_output_shapes
:?????????2?
'sequential_98/lstm_295/while/Identity_5Identity4sequential_98/lstm_295/while/lstm_cell_247/add_1:z:0"^sequential_98/lstm_295/while/NoOp*
T0*'
_output_shapes
:?????????2?
!sequential_98/lstm_295/while/NoOpNoOpB^sequential_98/lstm_295/while/lstm_cell_247/BiasAdd/ReadVariableOpA^sequential_98/lstm_295/while/lstm_cell_247/MatMul/ReadVariableOpC^sequential_98/lstm_295/while/lstm_cell_247/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_98_lstm_295_while_identity.sequential_98/lstm_295/while/Identity:output:0"[
'sequential_98_lstm_295_while_identity_10sequential_98/lstm_295/while/Identity_1:output:0"[
'sequential_98_lstm_295_while_identity_20sequential_98/lstm_295/while/Identity_2:output:0"[
'sequential_98_lstm_295_while_identity_30sequential_98/lstm_295/while/Identity_3:output:0"[
'sequential_98_lstm_295_while_identity_40sequential_98/lstm_295/while/Identity_4:output:0"[
'sequential_98_lstm_295_while_identity_50sequential_98/lstm_295/while/Identity_5:output:0"?
Jsequential_98_lstm_295_while_lstm_cell_247_biasadd_readvariableop_resourceLsequential_98_lstm_295_while_lstm_cell_247_biasadd_readvariableop_resource_0"?
Ksequential_98_lstm_295_while_lstm_cell_247_matmul_1_readvariableop_resourceMsequential_98_lstm_295_while_lstm_cell_247_matmul_1_readvariableop_resource_0"?
Isequential_98_lstm_295_while_lstm_cell_247_matmul_readvariableop_resourceKsequential_98_lstm_295_while_lstm_cell_247_matmul_readvariableop_resource_0"?
Csequential_98_lstm_295_while_sequential_98_lstm_295_strided_slice_1Esequential_98_lstm_295_while_sequential_98_lstm_295_strided_slice_1_0"?
sequential_98_lstm_295_while_tensorarrayv2read_tensorlistgetitem_sequential_98_lstm_295_tensorarrayunstack_tensorlistfromtensor?sequential_98_lstm_295_while_tensorarrayv2read_tensorlistgetitem_sequential_98_lstm_295_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Asequential_98/lstm_295/while/lstm_cell_247/BiasAdd/ReadVariableOpAsequential_98/lstm_295/while/lstm_cell_247/BiasAdd/ReadVariableOp2?
@sequential_98/lstm_295/while/lstm_cell_247/MatMul/ReadVariableOp@sequential_98/lstm_295/while/lstm_cell_247/MatMul/ReadVariableOp2?
Bsequential_98/lstm_295/while/lstm_cell_247/MatMul_1/ReadVariableOpBsequential_98/lstm_295/while/lstm_cell_247/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1502359
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_247_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_247_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_247_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_247_matmul_readvariableop_resource:	d?G
4while_lstm_cell_247_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_247_biasadd_readvariableop_resource:	???*while/lstm_cell_247/BiasAdd/ReadVariableOp?)while/lstm_cell_247/MatMul/ReadVariableOp?+while/lstm_cell_247/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_247/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_247_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_247/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_247/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_247/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_247_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_247/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_247/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_247/addAddV2$while/lstm_cell_247/MatMul:product:0&while/lstm_cell_247/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_247/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_247_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_247/BiasAddBiasAddwhile/lstm_cell_247/add:z:02while/lstm_cell_247/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_247/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_247/splitSplit,while/lstm_cell_247/split/split_dim:output:0$while/lstm_cell_247/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_247/SigmoidSigmoid"while/lstm_cell_247/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_247/Sigmoid_1Sigmoid"while/lstm_cell_247/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_247/mulMul!while/lstm_cell_247/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_247/ReluRelu"while/lstm_cell_247/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_247/mul_1Mulwhile/lstm_cell_247/Sigmoid:y:0&while/lstm_cell_247/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_247/add_1AddV2while/lstm_cell_247/mul:z:0while/lstm_cell_247/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_247/Sigmoid_2Sigmoid"while/lstm_cell_247/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_247/Relu_1Reluwhile/lstm_cell_247/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_247/mul_2Mul!while/lstm_cell_247/Sigmoid_2:y:0(while/lstm_cell_247/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_247/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_247/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_247/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_247/BiasAdd/ReadVariableOp*^while/lstm_cell_247/MatMul/ReadVariableOp,^while/lstm_cell_247/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_247_biasadd_readvariableop_resource5while_lstm_cell_247_biasadd_readvariableop_resource_0"n
4while_lstm_cell_247_matmul_1_readvariableop_resource6while_lstm_cell_247_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_247_matmul_readvariableop_resource4while_lstm_cell_247_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_247/BiasAdd/ReadVariableOp*while/lstm_cell_247/BiasAdd/ReadVariableOp2V
)while/lstm_cell_247/MatMul/ReadVariableOp)while/lstm_cell_247/MatMul/ReadVariableOp2Z
+while/lstm_cell_247/MatMul_1/ReadVariableOp+while/lstm_cell_247/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_295_while_cond_1503074.
*lstm_295_while_lstm_295_while_loop_counter4
0lstm_295_while_lstm_295_while_maximum_iterations
lstm_295_while_placeholder 
lstm_295_while_placeholder_1 
lstm_295_while_placeholder_2 
lstm_295_while_placeholder_30
,lstm_295_while_less_lstm_295_strided_slice_1G
Clstm_295_while_lstm_295_while_cond_1503074___redundant_placeholder0G
Clstm_295_while_lstm_295_while_cond_1503074___redundant_placeholder1G
Clstm_295_while_lstm_295_while_cond_1503074___redundant_placeholder2G
Clstm_295_while_lstm_295_while_cond_1503074___redundant_placeholder3
lstm_295_while_identity
?
lstm_295/while/LessLesslstm_295_while_placeholder,lstm_295_while_less_lstm_295_strided_slice_1*
T0*
_output_shapes
: ]
lstm_295/while/IdentityIdentitylstm_295/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_295_while_identity lstm_295/while/Identity:output:0*(
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
E__inference_lstm_296_layer_call_and_return_conditional_losses_1501413

inputs'
lstm_cell_248_1501331:2('
lstm_cell_248_1501333:
(#
lstm_cell_248_1501335:(
identity??%lstm_cell_248/StatefulPartitionedCall?while;
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
%lstm_cell_248/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_248_1501331lstm_cell_248_1501333lstm_cell_248_1501335*
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
J__inference_lstm_cell_248_layer_call_and_return_conditional_losses_1501330n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_248_1501331lstm_cell_248_1501333lstm_cell_248_1501335*
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
while_body_1501344*
condR
while_cond_1501343*K
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
NoOpNoOp&^lstm_cell_248/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_248/StatefulPartitionedCall%lstm_cell_248/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?W
?
 __inference__traced_save_1506035
file_prefix.
*savev2_dense_98_kernel_read_readvariableop,
(savev2_dense_98_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_294_lstm_cell_294_kernel_read_readvariableopF
Bsavev2_lstm_294_lstm_cell_294_recurrent_kernel_read_readvariableop:
6savev2_lstm_294_lstm_cell_294_bias_read_readvariableop<
8savev2_lstm_295_lstm_cell_295_kernel_read_readvariableopF
Bsavev2_lstm_295_lstm_cell_295_recurrent_kernel_read_readvariableop:
6savev2_lstm_295_lstm_cell_295_bias_read_readvariableop<
8savev2_lstm_296_lstm_cell_296_kernel_read_readvariableopF
Bsavev2_lstm_296_lstm_cell_296_recurrent_kernel_read_readvariableop:
6savev2_lstm_296_lstm_cell_296_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_98_kernel_m_read_readvariableop3
/savev2_adam_dense_98_bias_m_read_readvariableopC
?savev2_adam_lstm_294_lstm_cell_294_kernel_m_read_readvariableopM
Isavev2_adam_lstm_294_lstm_cell_294_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_294_lstm_cell_294_bias_m_read_readvariableopC
?savev2_adam_lstm_295_lstm_cell_295_kernel_m_read_readvariableopM
Isavev2_adam_lstm_295_lstm_cell_295_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_295_lstm_cell_295_bias_m_read_readvariableopC
?savev2_adam_lstm_296_lstm_cell_296_kernel_m_read_readvariableopM
Isavev2_adam_lstm_296_lstm_cell_296_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_296_lstm_cell_296_bias_m_read_readvariableop5
1savev2_adam_dense_98_kernel_v_read_readvariableop3
/savev2_adam_dense_98_bias_v_read_readvariableopC
?savev2_adam_lstm_294_lstm_cell_294_kernel_v_read_readvariableopM
Isavev2_adam_lstm_294_lstm_cell_294_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_294_lstm_cell_294_bias_v_read_readvariableopC
?savev2_adam_lstm_295_lstm_cell_295_kernel_v_read_readvariableopM
Isavev2_adam_lstm_295_lstm_cell_295_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_295_lstm_cell_295_bias_v_read_readvariableopC
?savev2_adam_lstm_296_lstm_cell_296_kernel_v_read_readvariableopM
Isavev2_adam_lstm_296_lstm_cell_296_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_296_lstm_cell_296_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_98_kernel_read_readvariableop(savev2_dense_98_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_294_lstm_cell_294_kernel_read_readvariableopBsavev2_lstm_294_lstm_cell_294_recurrent_kernel_read_readvariableop6savev2_lstm_294_lstm_cell_294_bias_read_readvariableop8savev2_lstm_295_lstm_cell_295_kernel_read_readvariableopBsavev2_lstm_295_lstm_cell_295_recurrent_kernel_read_readvariableop6savev2_lstm_295_lstm_cell_295_bias_read_readvariableop8savev2_lstm_296_lstm_cell_296_kernel_read_readvariableopBsavev2_lstm_296_lstm_cell_296_recurrent_kernel_read_readvariableop6savev2_lstm_296_lstm_cell_296_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_98_kernel_m_read_readvariableop/savev2_adam_dense_98_bias_m_read_readvariableop?savev2_adam_lstm_294_lstm_cell_294_kernel_m_read_readvariableopIsavev2_adam_lstm_294_lstm_cell_294_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_294_lstm_cell_294_bias_m_read_readvariableop?savev2_adam_lstm_295_lstm_cell_295_kernel_m_read_readvariableopIsavev2_adam_lstm_295_lstm_cell_295_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_295_lstm_cell_295_bias_m_read_readvariableop?savev2_adam_lstm_296_lstm_cell_296_kernel_m_read_readvariableopIsavev2_adam_lstm_296_lstm_cell_296_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_296_lstm_cell_296_bias_m_read_readvariableop1savev2_adam_dense_98_kernel_v_read_readvariableop/savev2_adam_dense_98_bias_v_read_readvariableop?savev2_adam_lstm_294_lstm_cell_294_kernel_v_read_readvariableopIsavev2_adam_lstm_294_lstm_cell_294_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_294_lstm_cell_294_bias_v_read_readvariableop?savev2_adam_lstm_295_lstm_cell_295_kernel_v_read_readvariableopIsavev2_adam_lstm_295_lstm_cell_295_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_295_lstm_cell_295_bias_v_read_readvariableop?savev2_adam_lstm_296_lstm_cell_296_kernel_v_read_readvariableopIsavev2_adam_lstm_296_lstm_cell_296_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_296_lstm_cell_296_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
E__inference_lstm_296_layer_call_and_return_conditional_losses_1501604

inputs'
lstm_cell_248_1501522:2('
lstm_cell_248_1501524:
(#
lstm_cell_248_1501526:(
identity??%lstm_cell_248/StatefulPartitionedCall?while;
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
%lstm_cell_248/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_248_1501522lstm_cell_248_1501524lstm_cell_248_1501526*
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
J__inference_lstm_cell_248_layer_call_and_return_conditional_losses_1501476n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_248_1501522lstm_cell_248_1501524lstm_cell_248_1501526*
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
while_body_1501535*
condR
while_cond_1501534*K
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
NoOpNoOp&^lstm_cell_248/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_248/StatefulPartitionedCall%lstm_cell_248/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_294_layer_call_fn_1503742
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
E__inference_lstm_294_layer_call_and_return_conditional_losses_1500713|
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
E__inference_lstm_295_layer_call_and_return_conditional_losses_1501254

inputs(
lstm_cell_247_1501172:	d?(
lstm_cell_247_1501174:	2?$
lstm_cell_247_1501176:	?
identity??%lstm_cell_247/StatefulPartitionedCall?while;
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
%lstm_cell_247/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_247_1501172lstm_cell_247_1501174lstm_cell_247_1501176*
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
J__inference_lstm_cell_247_layer_call_and_return_conditional_losses_1501126n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_247_1501172lstm_cell_247_1501174lstm_cell_247_1501176*
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
while_body_1501185*
condR
while_cond_1501184*K
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
NoOpNoOp&^lstm_cell_247/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_247/StatefulPartitionedCall%lstm_cell_247/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_1501827
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1501827___redundant_placeholder05
1while_while_cond_1501827___redundant_placeholder15
1while_while_cond_1501827___redundant_placeholder25
1while_while_cond_1501827___redundant_placeholder3
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
/__inference_lstm_cell_246_layer_call_fn_1505615

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
J__inference_lstm_cell_246_layer_call_and_return_conditional_losses_1500630o
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
E__inference_lstm_295_layer_call_and_return_conditional_losses_1501063

inputs(
lstm_cell_247_1500981:	d?(
lstm_cell_247_1500983:	2?$
lstm_cell_247_1500985:	?
identity??%lstm_cell_247/StatefulPartitionedCall?while;
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
%lstm_cell_247/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_247_1500981lstm_cell_247_1500983lstm_cell_247_1500985*
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
J__inference_lstm_cell_247_layer_call_and_return_conditional_losses_1500980n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_247_1500981lstm_cell_247_1500983lstm_cell_247_1500985*
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
while_body_1500994*
condR
while_cond_1500993*K
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
NoOpNoOp&^lstm_cell_247/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_247/StatefulPartitionedCall%lstm_cell_247/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?#
?
while_body_1501185
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_247_1501209_0:	d?0
while_lstm_cell_247_1501211_0:	2?,
while_lstm_cell_247_1501213_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_247_1501209:	d?.
while_lstm_cell_247_1501211:	2?*
while_lstm_cell_247_1501213:	???+while/lstm_cell_247/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_247/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_247_1501209_0while_lstm_cell_247_1501211_0while_lstm_cell_247_1501213_0*
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
J__inference_lstm_cell_247_layer_call_and_return_conditional_losses_1501126?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_247/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_247/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_247/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_247/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_247_1501209while_lstm_cell_247_1501209_0"<
while_lstm_cell_247_1501211while_lstm_cell_247_1501211_0"<
while_lstm_cell_247_1501213while_lstm_cell_247_1501213_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_247/StatefulPartitionedCall+while/lstm_cell_247/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_1501184
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1501184___redundant_placeholder05
1while_while_cond_1501184___redundant_placeholder15
1while_while_cond_1501184___redundant_placeholder25
1while_while_cond_1501184___redundant_placeholder3
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
lstm_295_while_cond_1503501.
*lstm_295_while_lstm_295_while_loop_counter4
0lstm_295_while_lstm_295_while_maximum_iterations
lstm_295_while_placeholder 
lstm_295_while_placeholder_1 
lstm_295_while_placeholder_2 
lstm_295_while_placeholder_30
,lstm_295_while_less_lstm_295_strided_slice_1G
Clstm_295_while_lstm_295_while_cond_1503501___redundant_placeholder0G
Clstm_295_while_lstm_295_while_cond_1503501___redundant_placeholder1G
Clstm_295_while_lstm_295_while_cond_1503501___redundant_placeholder2G
Clstm_295_while_lstm_295_while_cond_1503501___redundant_placeholder3
lstm_295_while_identity
?
lstm_295/while/LessLesslstm_295_while_placeholder,lstm_295_while_less_lstm_295_strided_slice_1*
T0*
_output_shapes
: ]
lstm_295/while/IdentityIdentitylstm_295/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_295_while_identity lstm_295/while/Identity:output:0*(
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
while_body_1503834
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_246_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_246_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_246_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_246_matmul_readvariableop_resource:	?G
4while_lstm_cell_246_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_246_biasadd_readvariableop_resource:	???*while/lstm_cell_246/BiasAdd/ReadVariableOp?)while/lstm_cell_246/MatMul/ReadVariableOp?+while/lstm_cell_246/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_246/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_246_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_246/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_246/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_246/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_246_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_246/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_246/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_246/addAddV2$while/lstm_cell_246/MatMul:product:0&while/lstm_cell_246/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_246/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_246_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_246/BiasAddBiasAddwhile/lstm_cell_246/add:z:02while/lstm_cell_246/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_246/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_246/splitSplit,while/lstm_cell_246/split/split_dim:output:0$while/lstm_cell_246/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_246/SigmoidSigmoid"while/lstm_cell_246/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_246/Sigmoid_1Sigmoid"while/lstm_cell_246/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_246/mulMul!while/lstm_cell_246/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_246/ReluRelu"while/lstm_cell_246/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_246/mul_1Mulwhile/lstm_cell_246/Sigmoid:y:0&while/lstm_cell_246/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_246/add_1AddV2while/lstm_cell_246/mul:z:0while/lstm_cell_246/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_246/Sigmoid_2Sigmoid"while/lstm_cell_246/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_246/Relu_1Reluwhile/lstm_cell_246/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_246/mul_2Mul!while/lstm_cell_246/Sigmoid_2:y:0(while/lstm_cell_246/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_246/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_246/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_246/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_246/BiasAdd/ReadVariableOp*^while/lstm_cell_246/MatMul/ReadVariableOp,^while/lstm_cell_246/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_246_biasadd_readvariableop_resource5while_lstm_cell_246_biasadd_readvariableop_resource_0"n
4while_lstm_cell_246_matmul_1_readvariableop_resource6while_lstm_cell_246_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_246_matmul_readvariableop_resource4while_lstm_cell_246_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_246/BiasAdd/ReadVariableOp*while/lstm_cell_246/BiasAdd/ReadVariableOp2V
)while/lstm_cell_246/MatMul/ReadVariableOp)while/lstm_cell_246/MatMul/ReadVariableOp2Z
+while/lstm_cell_246/MatMul_1/ReadVariableOp+while/lstm_cell_246/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1504449
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1504449___redundant_placeholder05
1while_while_cond_1504449___redundant_placeholder15
1while_while_cond_1504449___redundant_placeholder25
1while_while_cond_1504449___redundant_placeholder3
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
while_cond_1504735
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1504735___redundant_placeholder05
1while_while_cond_1504735___redundant_placeholder15
1while_while_cond_1504735___redundant_placeholder25
1while_while_cond_1504735___redundant_placeholder3
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
while_body_1504879
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_247_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_247_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_247_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_247_matmul_readvariableop_resource:	d?G
4while_lstm_cell_247_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_247_biasadd_readvariableop_resource:	???*while/lstm_cell_247/BiasAdd/ReadVariableOp?)while/lstm_cell_247/MatMul/ReadVariableOp?+while/lstm_cell_247/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_247/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_247_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_247/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_247/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_247/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_247_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_247/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_247/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_247/addAddV2$while/lstm_cell_247/MatMul:product:0&while/lstm_cell_247/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_247/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_247_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_247/BiasAddBiasAddwhile/lstm_cell_247/add:z:02while/lstm_cell_247/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_247/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_247/splitSplit,while/lstm_cell_247/split/split_dim:output:0$while/lstm_cell_247/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_247/SigmoidSigmoid"while/lstm_cell_247/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_247/Sigmoid_1Sigmoid"while/lstm_cell_247/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_247/mulMul!while/lstm_cell_247/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_247/ReluRelu"while/lstm_cell_247/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_247/mul_1Mulwhile/lstm_cell_247/Sigmoid:y:0&while/lstm_cell_247/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_247/add_1AddV2while/lstm_cell_247/mul:z:0while/lstm_cell_247/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_247/Sigmoid_2Sigmoid"while/lstm_cell_247/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_247/Relu_1Reluwhile/lstm_cell_247/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_247/mul_2Mul!while/lstm_cell_247/Sigmoid_2:y:0(while/lstm_cell_247/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_247/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_247/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_247/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_247/BiasAdd/ReadVariableOp*^while/lstm_cell_247/MatMul/ReadVariableOp,^while/lstm_cell_247/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_247_biasadd_readvariableop_resource5while_lstm_cell_247_biasadd_readvariableop_resource_0"n
4while_lstm_cell_247_matmul_1_readvariableop_resource6while_lstm_cell_247_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_247_matmul_readvariableop_resource4while_lstm_cell_247_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_247/BiasAdd/ReadVariableOp*while/lstm_cell_247/BiasAdd/ReadVariableOp2V
)while/lstm_cell_247/MatMul/ReadVariableOp)while/lstm_cell_247/MatMul/ReadVariableOp2Z
+while/lstm_cell_247/MatMul_1/ReadVariableOp+while/lstm_cell_247/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1500993
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1500993___redundant_placeholder05
1while_while_cond_1500993___redundant_placeholder15
1while_while_cond_1500993___redundant_placeholder25
1while_while_cond_1500993___redundant_placeholder3
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
/__inference_sequential_98_layer_call_fn_1502877

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
J__inference_sequential_98_layer_call_and_return_conditional_losses_1502676o
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
while_body_1502524
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_246_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_246_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_246_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_246_matmul_readvariableop_resource:	?G
4while_lstm_cell_246_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_246_biasadd_readvariableop_resource:	???*while/lstm_cell_246/BiasAdd/ReadVariableOp?)while/lstm_cell_246/MatMul/ReadVariableOp?+while/lstm_cell_246/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_246/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_246_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_246/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_246/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_246/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_246_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_246/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_246/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_246/addAddV2$while/lstm_cell_246/MatMul:product:0&while/lstm_cell_246/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_246/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_246_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_246/BiasAddBiasAddwhile/lstm_cell_246/add:z:02while/lstm_cell_246/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_246/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_246/splitSplit,while/lstm_cell_246/split/split_dim:output:0$while/lstm_cell_246/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_246/SigmoidSigmoid"while/lstm_cell_246/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_246/Sigmoid_1Sigmoid"while/lstm_cell_246/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_246/mulMul!while/lstm_cell_246/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_246/ReluRelu"while/lstm_cell_246/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_246/mul_1Mulwhile/lstm_cell_246/Sigmoid:y:0&while/lstm_cell_246/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_246/add_1AddV2while/lstm_cell_246/mul:z:0while/lstm_cell_246/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_246/Sigmoid_2Sigmoid"while/lstm_cell_246/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_246/Relu_1Reluwhile/lstm_cell_246/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_246/mul_2Mul!while/lstm_cell_246/Sigmoid_2:y:0(while/lstm_cell_246/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_246/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_246/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_246/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_246/BiasAdd/ReadVariableOp*^while/lstm_cell_246/MatMul/ReadVariableOp,^while/lstm_cell_246/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_246_biasadd_readvariableop_resource5while_lstm_cell_246_biasadd_readvariableop_resource_0"n
4while_lstm_cell_246_matmul_1_readvariableop_resource6while_lstm_cell_246_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_246_matmul_readvariableop_resource4while_lstm_cell_246_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_246/BiasAdd/ReadVariableOp*while/lstm_cell_246/BiasAdd/ReadVariableOp2V
)while/lstm_cell_246/MatMul/ReadVariableOp)while/lstm_cell_246/MatMul/ReadVariableOp2Z
+while/lstm_cell_246/MatMul_1/ReadVariableOp+while/lstm_cell_246/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_294_layer_call_and_return_conditional_losses_1502608

inputs?
,lstm_cell_246_matmul_readvariableop_resource:	?A
.lstm_cell_246_matmul_1_readvariableop_resource:	d?<
-lstm_cell_246_biasadd_readvariableop_resource:	?
identity??$lstm_cell_246/BiasAdd/ReadVariableOp?#lstm_cell_246/MatMul/ReadVariableOp?%lstm_cell_246/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_246/MatMul/ReadVariableOpReadVariableOp,lstm_cell_246_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_246/MatMulMatMulstrided_slice_2:output:0+lstm_cell_246/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_246/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_246_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_246/MatMul_1MatMulzeros:output:0-lstm_cell_246/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_246/addAddV2lstm_cell_246/MatMul:product:0 lstm_cell_246/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_246/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_246_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_246/BiasAddBiasAddlstm_cell_246/add:z:0,lstm_cell_246/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_246/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_246/splitSplit&lstm_cell_246/split/split_dim:output:0lstm_cell_246/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_246/SigmoidSigmoidlstm_cell_246/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_246/Sigmoid_1Sigmoidlstm_cell_246/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_246/mulMullstm_cell_246/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_246/ReluRelulstm_cell_246/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_246/mul_1Mullstm_cell_246/Sigmoid:y:0 lstm_cell_246/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_246/add_1AddV2lstm_cell_246/mul:z:0lstm_cell_246/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_246/Sigmoid_2Sigmoidlstm_cell_246/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_246/Relu_1Relulstm_cell_246/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_246/mul_2Mullstm_cell_246/Sigmoid_2:y:0"lstm_cell_246/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_246_matmul_readvariableop_resource.lstm_cell_246_matmul_1_readvariableop_resource-lstm_cell_246_biasadd_readvariableop_resource*
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
while_body_1502524*
condR
while_cond_1502523*K
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
NoOpNoOp%^lstm_cell_246/BiasAdd/ReadVariableOp$^lstm_cell_246/MatMul/ReadVariableOp&^lstm_cell_246/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_246/BiasAdd/ReadVariableOp$lstm_cell_246/BiasAdd/ReadVariableOp2J
#lstm_cell_246/MatMul/ReadVariableOp#lstm_cell_246/MatMul/ReadVariableOp2N
%lstm_cell_246/MatMul_1/ReadVariableOp%lstm_cell_246/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_1501344
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_248_1501368_0:2(/
while_lstm_cell_248_1501370_0:
(+
while_lstm_cell_248_1501372_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_248_1501368:2(-
while_lstm_cell_248_1501370:
()
while_lstm_cell_248_1501372:(??+while/lstm_cell_248/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_248/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_248_1501368_0while_lstm_cell_248_1501370_0while_lstm_cell_248_1501372_0*
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
J__inference_lstm_cell_248_layer_call_and_return_conditional_losses_1501330?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_248/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_248/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_248/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_248/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_248_1501368while_lstm_cell_248_1501368_0"<
while_lstm_cell_248_1501370while_lstm_cell_248_1501370_0"<
while_lstm_cell_248_1501372while_lstm_cell_248_1501372_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_248/StatefulPartitionedCall+while/lstm_cell_248/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_294_layer_call_and_return_conditional_losses_1504347

inputs?
,lstm_cell_246_matmul_readvariableop_resource:	?A
.lstm_cell_246_matmul_1_readvariableop_resource:	d?<
-lstm_cell_246_biasadd_readvariableop_resource:	?
identity??$lstm_cell_246/BiasAdd/ReadVariableOp?#lstm_cell_246/MatMul/ReadVariableOp?%lstm_cell_246/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_246/MatMul/ReadVariableOpReadVariableOp,lstm_cell_246_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_246/MatMulMatMulstrided_slice_2:output:0+lstm_cell_246/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_246/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_246_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_246/MatMul_1MatMulzeros:output:0-lstm_cell_246/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_246/addAddV2lstm_cell_246/MatMul:product:0 lstm_cell_246/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_246/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_246_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_246/BiasAddBiasAddlstm_cell_246/add:z:0,lstm_cell_246/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_246/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_246/splitSplit&lstm_cell_246/split/split_dim:output:0lstm_cell_246/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_246/SigmoidSigmoidlstm_cell_246/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_246/Sigmoid_1Sigmoidlstm_cell_246/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_246/mulMullstm_cell_246/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_246/ReluRelulstm_cell_246/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_246/mul_1Mullstm_cell_246/Sigmoid:y:0 lstm_cell_246/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_246/add_1AddV2lstm_cell_246/mul:z:0lstm_cell_246/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_246/Sigmoid_2Sigmoidlstm_cell_246/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_246/Relu_1Relulstm_cell_246/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_246/mul_2Mullstm_cell_246/Sigmoid_2:y:0"lstm_cell_246/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_246_matmul_readvariableop_resource.lstm_cell_246_matmul_1_readvariableop_resource-lstm_cell_246_biasadd_readvariableop_resource*
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
while_body_1504263*
condR
while_cond_1504262*K
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
NoOpNoOp%^lstm_cell_246/BiasAdd/ReadVariableOp$^lstm_cell_246/MatMul/ReadVariableOp&^lstm_cell_246/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_246/BiasAdd/ReadVariableOp$lstm_cell_246/BiasAdd/ReadVariableOp2J
#lstm_cell_246/MatMul/ReadVariableOp#lstm_cell_246/MatMul/ReadVariableOp2N
%lstm_cell_246/MatMul_1/ReadVariableOp%lstm_cell_246/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_294_while_body_1502936.
*lstm_294_while_lstm_294_while_loop_counter4
0lstm_294_while_lstm_294_while_maximum_iterations
lstm_294_while_placeholder 
lstm_294_while_placeholder_1 
lstm_294_while_placeholder_2 
lstm_294_while_placeholder_3-
)lstm_294_while_lstm_294_strided_slice_1_0i
elstm_294_while_tensorarrayv2read_tensorlistgetitem_lstm_294_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_294_while_lstm_cell_246_matmul_readvariableop_resource_0:	?R
?lstm_294_while_lstm_cell_246_matmul_1_readvariableop_resource_0:	d?M
>lstm_294_while_lstm_cell_246_biasadd_readvariableop_resource_0:	?
lstm_294_while_identity
lstm_294_while_identity_1
lstm_294_while_identity_2
lstm_294_while_identity_3
lstm_294_while_identity_4
lstm_294_while_identity_5+
'lstm_294_while_lstm_294_strided_slice_1g
clstm_294_while_tensorarrayv2read_tensorlistgetitem_lstm_294_tensorarrayunstack_tensorlistfromtensorN
;lstm_294_while_lstm_cell_246_matmul_readvariableop_resource:	?P
=lstm_294_while_lstm_cell_246_matmul_1_readvariableop_resource:	d?K
<lstm_294_while_lstm_cell_246_biasadd_readvariableop_resource:	???3lstm_294/while/lstm_cell_246/BiasAdd/ReadVariableOp?2lstm_294/while/lstm_cell_246/MatMul/ReadVariableOp?4lstm_294/while/lstm_cell_246/MatMul_1/ReadVariableOp?
@lstm_294/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_294/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_294_while_tensorarrayv2read_tensorlistgetitem_lstm_294_tensorarrayunstack_tensorlistfromtensor_0lstm_294_while_placeholderIlstm_294/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_294/while/lstm_cell_246/MatMul/ReadVariableOpReadVariableOp=lstm_294_while_lstm_cell_246_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_294/while/lstm_cell_246/MatMulMatMul9lstm_294/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_294/while/lstm_cell_246/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_294/while/lstm_cell_246/MatMul_1/ReadVariableOpReadVariableOp?lstm_294_while_lstm_cell_246_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_294/while/lstm_cell_246/MatMul_1MatMullstm_294_while_placeholder_2<lstm_294/while/lstm_cell_246/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_294/while/lstm_cell_246/addAddV2-lstm_294/while/lstm_cell_246/MatMul:product:0/lstm_294/while/lstm_cell_246/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_294/while/lstm_cell_246/BiasAdd/ReadVariableOpReadVariableOp>lstm_294_while_lstm_cell_246_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_294/while/lstm_cell_246/BiasAddBiasAdd$lstm_294/while/lstm_cell_246/add:z:0;lstm_294/while/lstm_cell_246/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_294/while/lstm_cell_246/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_294/while/lstm_cell_246/splitSplit5lstm_294/while/lstm_cell_246/split/split_dim:output:0-lstm_294/while/lstm_cell_246/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_294/while/lstm_cell_246/SigmoidSigmoid+lstm_294/while/lstm_cell_246/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_294/while/lstm_cell_246/Sigmoid_1Sigmoid+lstm_294/while/lstm_cell_246/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_294/while/lstm_cell_246/mulMul*lstm_294/while/lstm_cell_246/Sigmoid_1:y:0lstm_294_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_294/while/lstm_cell_246/ReluRelu+lstm_294/while/lstm_cell_246/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_294/while/lstm_cell_246/mul_1Mul(lstm_294/while/lstm_cell_246/Sigmoid:y:0/lstm_294/while/lstm_cell_246/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_294/while/lstm_cell_246/add_1AddV2$lstm_294/while/lstm_cell_246/mul:z:0&lstm_294/while/lstm_cell_246/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_294/while/lstm_cell_246/Sigmoid_2Sigmoid+lstm_294/while/lstm_cell_246/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_294/while/lstm_cell_246/Relu_1Relu&lstm_294/while/lstm_cell_246/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_294/while/lstm_cell_246/mul_2Mul*lstm_294/while/lstm_cell_246/Sigmoid_2:y:01lstm_294/while/lstm_cell_246/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_294/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_294_while_placeholder_1lstm_294_while_placeholder&lstm_294/while/lstm_cell_246/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_294/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_294/while/addAddV2lstm_294_while_placeholderlstm_294/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_294/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_294/while/add_1AddV2*lstm_294_while_lstm_294_while_loop_counterlstm_294/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_294/while/IdentityIdentitylstm_294/while/add_1:z:0^lstm_294/while/NoOp*
T0*
_output_shapes
: ?
lstm_294/while/Identity_1Identity0lstm_294_while_lstm_294_while_maximum_iterations^lstm_294/while/NoOp*
T0*
_output_shapes
: t
lstm_294/while/Identity_2Identitylstm_294/while/add:z:0^lstm_294/while/NoOp*
T0*
_output_shapes
: ?
lstm_294/while/Identity_3IdentityClstm_294/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_294/while/NoOp*
T0*
_output_shapes
: ?
lstm_294/while/Identity_4Identity&lstm_294/while/lstm_cell_246/mul_2:z:0^lstm_294/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_294/while/Identity_5Identity&lstm_294/while/lstm_cell_246/add_1:z:0^lstm_294/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_294/while/NoOpNoOp4^lstm_294/while/lstm_cell_246/BiasAdd/ReadVariableOp3^lstm_294/while/lstm_cell_246/MatMul/ReadVariableOp5^lstm_294/while/lstm_cell_246/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_294_while_identity lstm_294/while/Identity:output:0"?
lstm_294_while_identity_1"lstm_294/while/Identity_1:output:0"?
lstm_294_while_identity_2"lstm_294/while/Identity_2:output:0"?
lstm_294_while_identity_3"lstm_294/while/Identity_3:output:0"?
lstm_294_while_identity_4"lstm_294/while/Identity_4:output:0"?
lstm_294_while_identity_5"lstm_294/while/Identity_5:output:0"T
'lstm_294_while_lstm_294_strided_slice_1)lstm_294_while_lstm_294_strided_slice_1_0"~
<lstm_294_while_lstm_cell_246_biasadd_readvariableop_resource>lstm_294_while_lstm_cell_246_biasadd_readvariableop_resource_0"?
=lstm_294_while_lstm_cell_246_matmul_1_readvariableop_resource?lstm_294_while_lstm_cell_246_matmul_1_readvariableop_resource_0"|
;lstm_294_while_lstm_cell_246_matmul_readvariableop_resource=lstm_294_while_lstm_cell_246_matmul_readvariableop_resource_0"?
clstm_294_while_tensorarrayv2read_tensorlistgetitem_lstm_294_tensorarrayunstack_tensorlistfromtensorelstm_294_while_tensorarrayv2read_tensorlistgetitem_lstm_294_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_294/while/lstm_cell_246/BiasAdd/ReadVariableOp3lstm_294/while/lstm_cell_246/BiasAdd/ReadVariableOp2h
2lstm_294/while/lstm_cell_246/MatMul/ReadVariableOp2lstm_294/while/lstm_cell_246/MatMul/ReadVariableOp2l
4lstm_294/while/lstm_cell_246/MatMul_1/ReadVariableOp4lstm_294/while/lstm_cell_246/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1501978
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_248_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_248_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_248_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_248_matmul_readvariableop_resource:2(F
4while_lstm_cell_248_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_248_biasadd_readvariableop_resource:(??*while/lstm_cell_248/BiasAdd/ReadVariableOp?)while/lstm_cell_248/MatMul/ReadVariableOp?+while/lstm_cell_248/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_248/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_248_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_248/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_248/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_248/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_248_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_248/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_248/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_248/addAddV2$while/lstm_cell_248/MatMul:product:0&while/lstm_cell_248/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_248/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_248_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_248/BiasAddBiasAddwhile/lstm_cell_248/add:z:02while/lstm_cell_248/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_248/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_248/splitSplit,while/lstm_cell_248/split/split_dim:output:0$while/lstm_cell_248/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_248/SigmoidSigmoid"while/lstm_cell_248/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_248/Sigmoid_1Sigmoid"while/lstm_cell_248/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_248/mulMul!while/lstm_cell_248/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_248/ReluRelu"while/lstm_cell_248/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_248/mul_1Mulwhile/lstm_cell_248/Sigmoid:y:0&while/lstm_cell_248/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_248/add_1AddV2while/lstm_cell_248/mul:z:0while/lstm_cell_248/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_248/Sigmoid_2Sigmoid"while/lstm_cell_248/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_248/Relu_1Reluwhile/lstm_cell_248/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_248/mul_2Mul!while/lstm_cell_248/Sigmoid_2:y:0(while/lstm_cell_248/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_248/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_248/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_248/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_248/BiasAdd/ReadVariableOp*^while/lstm_cell_248/MatMul/ReadVariableOp,^while/lstm_cell_248/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_248_biasadd_readvariableop_resource5while_lstm_cell_248_biasadd_readvariableop_resource_0"n
4while_lstm_cell_248_matmul_1_readvariableop_resource6while_lstm_cell_248_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_248_matmul_readvariableop_resource4while_lstm_cell_248_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_248/BiasAdd/ReadVariableOp*while/lstm_cell_248/BiasAdd/ReadVariableOp2V
)while/lstm_cell_248/MatMul/ReadVariableOp)while/lstm_cell_248/MatMul/ReadVariableOp2Z
+while/lstm_cell_248/MatMul_1/ReadVariableOp+while/lstm_cell_248/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_295_layer_call_and_return_conditional_losses_1504534
inputs_0?
,lstm_cell_247_matmul_readvariableop_resource:	d?A
.lstm_cell_247_matmul_1_readvariableop_resource:	2?<
-lstm_cell_247_biasadd_readvariableop_resource:	?
identity??$lstm_cell_247/BiasAdd/ReadVariableOp?#lstm_cell_247/MatMul/ReadVariableOp?%lstm_cell_247/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_247/MatMul/ReadVariableOpReadVariableOp,lstm_cell_247_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_247/MatMulMatMulstrided_slice_2:output:0+lstm_cell_247/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_247/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_247_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_247/MatMul_1MatMulzeros:output:0-lstm_cell_247/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_247/addAddV2lstm_cell_247/MatMul:product:0 lstm_cell_247/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_247/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_247_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_247/BiasAddBiasAddlstm_cell_247/add:z:0,lstm_cell_247/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_247/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_247/splitSplit&lstm_cell_247/split/split_dim:output:0lstm_cell_247/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_247/SigmoidSigmoidlstm_cell_247/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_247/Sigmoid_1Sigmoidlstm_cell_247/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_247/mulMullstm_cell_247/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_247/ReluRelulstm_cell_247/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_247/mul_1Mullstm_cell_247/Sigmoid:y:0 lstm_cell_247/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_247/add_1AddV2lstm_cell_247/mul:z:0lstm_cell_247/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_247/Sigmoid_2Sigmoidlstm_cell_247/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_247/Relu_1Relulstm_cell_247/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_247/mul_2Mullstm_cell_247/Sigmoid_2:y:0"lstm_cell_247/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_247_matmul_readvariableop_resource.lstm_cell_247_matmul_1_readvariableop_resource-lstm_cell_247_biasadd_readvariableop_resource*
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
while_body_1504450*
condR
while_cond_1504449*K
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
NoOpNoOp%^lstm_cell_247/BiasAdd/ReadVariableOp$^lstm_cell_247/MatMul/ReadVariableOp&^lstm_cell_247/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_247/BiasAdd/ReadVariableOp$lstm_cell_247/BiasAdd/ReadVariableOp2J
#lstm_cell_247/MatMul/ReadVariableOp#lstm_cell_247/MatMul/ReadVariableOp2N
%lstm_cell_247/MatMul_1/ReadVariableOp%lstm_cell_247/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
)sequential_98_lstm_296_while_cond_1500472J
Fsequential_98_lstm_296_while_sequential_98_lstm_296_while_loop_counterP
Lsequential_98_lstm_296_while_sequential_98_lstm_296_while_maximum_iterations,
(sequential_98_lstm_296_while_placeholder.
*sequential_98_lstm_296_while_placeholder_1.
*sequential_98_lstm_296_while_placeholder_2.
*sequential_98_lstm_296_while_placeholder_3L
Hsequential_98_lstm_296_while_less_sequential_98_lstm_296_strided_slice_1c
_sequential_98_lstm_296_while_sequential_98_lstm_296_while_cond_1500472___redundant_placeholder0c
_sequential_98_lstm_296_while_sequential_98_lstm_296_while_cond_1500472___redundant_placeholder1c
_sequential_98_lstm_296_while_sequential_98_lstm_296_while_cond_1500472___redundant_placeholder2c
_sequential_98_lstm_296_while_sequential_98_lstm_296_while_cond_1500472___redundant_placeholder3)
%sequential_98_lstm_296_while_identity
?
!sequential_98/lstm_296/while/LessLess(sequential_98_lstm_296_while_placeholderHsequential_98_lstm_296_while_less_sequential_98_lstm_296_strided_slice_1*
T0*
_output_shapes
: y
%sequential_98/lstm_296/while/IdentityIdentity%sequential_98/lstm_296/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_98_lstm_296_while_identity.sequential_98/lstm_296/while/Identity:output:0*(
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
*__inference_lstm_295_layer_call_fn_1504358
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
E__inference_lstm_295_layer_call_and_return_conditional_losses_1501063|
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
E__inference_lstm_294_layer_call_and_return_conditional_losses_1504204

inputs?
,lstm_cell_246_matmul_readvariableop_resource:	?A
.lstm_cell_246_matmul_1_readvariableop_resource:	d?<
-lstm_cell_246_biasadd_readvariableop_resource:	?
identity??$lstm_cell_246/BiasAdd/ReadVariableOp?#lstm_cell_246/MatMul/ReadVariableOp?%lstm_cell_246/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_246/MatMul/ReadVariableOpReadVariableOp,lstm_cell_246_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_246/MatMulMatMulstrided_slice_2:output:0+lstm_cell_246/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_246/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_246_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_246/MatMul_1MatMulzeros:output:0-lstm_cell_246/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_246/addAddV2lstm_cell_246/MatMul:product:0 lstm_cell_246/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_246/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_246_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_246/BiasAddBiasAddlstm_cell_246/add:z:0,lstm_cell_246/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_246/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_246/splitSplit&lstm_cell_246/split/split_dim:output:0lstm_cell_246/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_246/SigmoidSigmoidlstm_cell_246/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_246/Sigmoid_1Sigmoidlstm_cell_246/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_246/mulMullstm_cell_246/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_246/ReluRelulstm_cell_246/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_246/mul_1Mullstm_cell_246/Sigmoid:y:0 lstm_cell_246/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_246/add_1AddV2lstm_cell_246/mul:z:0lstm_cell_246/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_246/Sigmoid_2Sigmoidlstm_cell_246/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_246/Relu_1Relulstm_cell_246/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_246/mul_2Mullstm_cell_246/Sigmoid_2:y:0"lstm_cell_246/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_246_matmul_readvariableop_resource.lstm_cell_246_matmul_1_readvariableop_resource-lstm_cell_246_biasadd_readvariableop_resource*
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
while_body_1504120*
condR
while_cond_1504119*K
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
NoOpNoOp%^lstm_cell_246/BiasAdd/ReadVariableOp$^lstm_cell_246/MatMul/ReadVariableOp&^lstm_cell_246/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_246/BiasAdd/ReadVariableOp$lstm_cell_246/BiasAdd/ReadVariableOp2J
#lstm_cell_246/MatMul/ReadVariableOp#lstm_cell_246/MatMul/ReadVariableOp2N
%lstm_cell_246/MatMul_1/ReadVariableOp%lstm_cell_246/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_246_layer_call_and_return_conditional_losses_1500630

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
E__inference_lstm_294_layer_call_and_return_conditional_losses_1501762

inputs?
,lstm_cell_246_matmul_readvariableop_resource:	?A
.lstm_cell_246_matmul_1_readvariableop_resource:	d?<
-lstm_cell_246_biasadd_readvariableop_resource:	?
identity??$lstm_cell_246/BiasAdd/ReadVariableOp?#lstm_cell_246/MatMul/ReadVariableOp?%lstm_cell_246/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_246/MatMul/ReadVariableOpReadVariableOp,lstm_cell_246_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_246/MatMulMatMulstrided_slice_2:output:0+lstm_cell_246/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_246/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_246_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_246/MatMul_1MatMulzeros:output:0-lstm_cell_246/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_246/addAddV2lstm_cell_246/MatMul:product:0 lstm_cell_246/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_246/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_246_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_246/BiasAddBiasAddlstm_cell_246/add:z:0,lstm_cell_246/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_246/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_246/splitSplit&lstm_cell_246/split/split_dim:output:0lstm_cell_246/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_246/SigmoidSigmoidlstm_cell_246/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_246/Sigmoid_1Sigmoidlstm_cell_246/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_246/mulMullstm_cell_246/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_246/ReluRelulstm_cell_246/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_246/mul_1Mullstm_cell_246/Sigmoid:y:0 lstm_cell_246/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_246/add_1AddV2lstm_cell_246/mul:z:0lstm_cell_246/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_246/Sigmoid_2Sigmoidlstm_cell_246/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_246/Relu_1Relulstm_cell_246/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_246/mul_2Mullstm_cell_246/Sigmoid_2:y:0"lstm_cell_246/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_246_matmul_readvariableop_resource.lstm_cell_246_matmul_1_readvariableop_resource-lstm_cell_246_biasadd_readvariableop_resource*
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
while_body_1501678*
condR
while_cond_1501677*K
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
NoOpNoOp%^lstm_cell_246/BiasAdd/ReadVariableOp$^lstm_cell_246/MatMul/ReadVariableOp&^lstm_cell_246/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_246/BiasAdd/ReadVariableOp$lstm_cell_246/BiasAdd/ReadVariableOp2J
#lstm_cell_246/MatMul/ReadVariableOp#lstm_cell_246/MatMul/ReadVariableOp2N
%lstm_cell_246/MatMul_1/ReadVariableOp%lstm_cell_246/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_295_layer_call_and_return_conditional_losses_1504820

inputs?
,lstm_cell_247_matmul_readvariableop_resource:	d?A
.lstm_cell_247_matmul_1_readvariableop_resource:	2?<
-lstm_cell_247_biasadd_readvariableop_resource:	?
identity??$lstm_cell_247/BiasAdd/ReadVariableOp?#lstm_cell_247/MatMul/ReadVariableOp?%lstm_cell_247/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_247/MatMul/ReadVariableOpReadVariableOp,lstm_cell_247_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_247/MatMulMatMulstrided_slice_2:output:0+lstm_cell_247/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_247/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_247_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_247/MatMul_1MatMulzeros:output:0-lstm_cell_247/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_247/addAddV2lstm_cell_247/MatMul:product:0 lstm_cell_247/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_247/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_247_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_247/BiasAddBiasAddlstm_cell_247/add:z:0,lstm_cell_247/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_247/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_247/splitSplit&lstm_cell_247/split/split_dim:output:0lstm_cell_247/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_247/SigmoidSigmoidlstm_cell_247/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_247/Sigmoid_1Sigmoidlstm_cell_247/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_247/mulMullstm_cell_247/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_247/ReluRelulstm_cell_247/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_247/mul_1Mullstm_cell_247/Sigmoid:y:0 lstm_cell_247/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_247/add_1AddV2lstm_cell_247/mul:z:0lstm_cell_247/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_247/Sigmoid_2Sigmoidlstm_cell_247/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_247/Relu_1Relulstm_cell_247/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_247/mul_2Mullstm_cell_247/Sigmoid_2:y:0"lstm_cell_247/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_247_matmul_readvariableop_resource.lstm_cell_247_matmul_1_readvariableop_resource-lstm_cell_247_biasadd_readvariableop_resource*
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
while_body_1504736*
condR
while_cond_1504735*K
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
NoOpNoOp%^lstm_cell_247/BiasAdd/ReadVariableOp$^lstm_cell_247/MatMul/ReadVariableOp&^lstm_cell_247/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_247/BiasAdd/ReadVariableOp$lstm_cell_247/BiasAdd/ReadVariableOp2J
#lstm_cell_247/MatMul/ReadVariableOp#lstm_cell_247/MatMul/ReadVariableOp2N
%lstm_cell_247/MatMul_1/ReadVariableOp%lstm_cell_247/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
??
?
J__inference_sequential_98_layer_call_and_return_conditional_losses_1503304

inputsH
5lstm_294_lstm_cell_246_matmul_readvariableop_resource:	?J
7lstm_294_lstm_cell_246_matmul_1_readvariableop_resource:	d?E
6lstm_294_lstm_cell_246_biasadd_readvariableop_resource:	?H
5lstm_295_lstm_cell_247_matmul_readvariableop_resource:	d?J
7lstm_295_lstm_cell_247_matmul_1_readvariableop_resource:	2?E
6lstm_295_lstm_cell_247_biasadd_readvariableop_resource:	?G
5lstm_296_lstm_cell_248_matmul_readvariableop_resource:2(I
7lstm_296_lstm_cell_248_matmul_1_readvariableop_resource:
(D
6lstm_296_lstm_cell_248_biasadd_readvariableop_resource:(9
'dense_98_matmul_readvariableop_resource:
6
(dense_98_biasadd_readvariableop_resource:
identity??dense_98/BiasAdd/ReadVariableOp?dense_98/MatMul/ReadVariableOp?-lstm_294/lstm_cell_246/BiasAdd/ReadVariableOp?,lstm_294/lstm_cell_246/MatMul/ReadVariableOp?.lstm_294/lstm_cell_246/MatMul_1/ReadVariableOp?lstm_294/while?-lstm_295/lstm_cell_247/BiasAdd/ReadVariableOp?,lstm_295/lstm_cell_247/MatMul/ReadVariableOp?.lstm_295/lstm_cell_247/MatMul_1/ReadVariableOp?lstm_295/while?-lstm_296/lstm_cell_248/BiasAdd/ReadVariableOp?,lstm_296/lstm_cell_248/MatMul/ReadVariableOp?.lstm_296/lstm_cell_248/MatMul_1/ReadVariableOp?lstm_296/whileD
lstm_294/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_294/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_294/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_294/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_294/strided_sliceStridedSlicelstm_294/Shape:output:0%lstm_294/strided_slice/stack:output:0'lstm_294/strided_slice/stack_1:output:0'lstm_294/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_294/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_294/zeros/packedPacklstm_294/strided_slice:output:0 lstm_294/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_294/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_294/zerosFilllstm_294/zeros/packed:output:0lstm_294/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_294/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_294/zeros_1/packedPacklstm_294/strided_slice:output:0"lstm_294/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_294/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_294/zeros_1Fill lstm_294/zeros_1/packed:output:0lstm_294/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_294/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_294/transpose	Transposeinputs lstm_294/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_294/Shape_1Shapelstm_294/transpose:y:0*
T0*
_output_shapes
:h
lstm_294/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_294/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_294/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_294/strided_slice_1StridedSlicelstm_294/Shape_1:output:0'lstm_294/strided_slice_1/stack:output:0)lstm_294/strided_slice_1/stack_1:output:0)lstm_294/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_294/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_294/TensorArrayV2TensorListReserve-lstm_294/TensorArrayV2/element_shape:output:0!lstm_294/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_294/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_294/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_294/transpose:y:0Glstm_294/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_294/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_294/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_294/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_294/strided_slice_2StridedSlicelstm_294/transpose:y:0'lstm_294/strided_slice_2/stack:output:0)lstm_294/strided_slice_2/stack_1:output:0)lstm_294/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_294/lstm_cell_246/MatMul/ReadVariableOpReadVariableOp5lstm_294_lstm_cell_246_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_294/lstm_cell_246/MatMulMatMul!lstm_294/strided_slice_2:output:04lstm_294/lstm_cell_246/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_294/lstm_cell_246/MatMul_1/ReadVariableOpReadVariableOp7lstm_294_lstm_cell_246_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_294/lstm_cell_246/MatMul_1MatMullstm_294/zeros:output:06lstm_294/lstm_cell_246/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_294/lstm_cell_246/addAddV2'lstm_294/lstm_cell_246/MatMul:product:0)lstm_294/lstm_cell_246/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_294/lstm_cell_246/BiasAdd/ReadVariableOpReadVariableOp6lstm_294_lstm_cell_246_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_294/lstm_cell_246/BiasAddBiasAddlstm_294/lstm_cell_246/add:z:05lstm_294/lstm_cell_246/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_294/lstm_cell_246/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_294/lstm_cell_246/splitSplit/lstm_294/lstm_cell_246/split/split_dim:output:0'lstm_294/lstm_cell_246/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_294/lstm_cell_246/SigmoidSigmoid%lstm_294/lstm_cell_246/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_294/lstm_cell_246/Sigmoid_1Sigmoid%lstm_294/lstm_cell_246/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_294/lstm_cell_246/mulMul$lstm_294/lstm_cell_246/Sigmoid_1:y:0lstm_294/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_294/lstm_cell_246/ReluRelu%lstm_294/lstm_cell_246/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_294/lstm_cell_246/mul_1Mul"lstm_294/lstm_cell_246/Sigmoid:y:0)lstm_294/lstm_cell_246/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_294/lstm_cell_246/add_1AddV2lstm_294/lstm_cell_246/mul:z:0 lstm_294/lstm_cell_246/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_294/lstm_cell_246/Sigmoid_2Sigmoid%lstm_294/lstm_cell_246/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_294/lstm_cell_246/Relu_1Relu lstm_294/lstm_cell_246/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_294/lstm_cell_246/mul_2Mul$lstm_294/lstm_cell_246/Sigmoid_2:y:0+lstm_294/lstm_cell_246/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_294/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_294/TensorArrayV2_1TensorListReserve/lstm_294/TensorArrayV2_1/element_shape:output:0!lstm_294/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_294/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_294/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_294/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_294/whileWhile$lstm_294/while/loop_counter:output:0*lstm_294/while/maximum_iterations:output:0lstm_294/time:output:0!lstm_294/TensorArrayV2_1:handle:0lstm_294/zeros:output:0lstm_294/zeros_1:output:0!lstm_294/strided_slice_1:output:0@lstm_294/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_294_lstm_cell_246_matmul_readvariableop_resource7lstm_294_lstm_cell_246_matmul_1_readvariableop_resource6lstm_294_lstm_cell_246_biasadd_readvariableop_resource*
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
lstm_294_while_body_1502936*'
condR
lstm_294_while_cond_1502935*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_294/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_294/TensorArrayV2Stack/TensorListStackTensorListStacklstm_294/while:output:3Blstm_294/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_294/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_294/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_294/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_294/strided_slice_3StridedSlice4lstm_294/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_294/strided_slice_3/stack:output:0)lstm_294/strided_slice_3/stack_1:output:0)lstm_294/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_294/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_294/transpose_1	Transpose4lstm_294/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_294/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_294/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_295/ShapeShapelstm_294/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_295/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_295/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_295/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_295/strided_sliceStridedSlicelstm_295/Shape:output:0%lstm_295/strided_slice/stack:output:0'lstm_295/strided_slice/stack_1:output:0'lstm_295/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_295/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_295/zeros/packedPacklstm_295/strided_slice:output:0 lstm_295/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_295/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_295/zerosFilllstm_295/zeros/packed:output:0lstm_295/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_295/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_295/zeros_1/packedPacklstm_295/strided_slice:output:0"lstm_295/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_295/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_295/zeros_1Fill lstm_295/zeros_1/packed:output:0lstm_295/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_295/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_295/transpose	Transposelstm_294/transpose_1:y:0 lstm_295/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_295/Shape_1Shapelstm_295/transpose:y:0*
T0*
_output_shapes
:h
lstm_295/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_295/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_295/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_295/strided_slice_1StridedSlicelstm_295/Shape_1:output:0'lstm_295/strided_slice_1/stack:output:0)lstm_295/strided_slice_1/stack_1:output:0)lstm_295/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_295/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_295/TensorArrayV2TensorListReserve-lstm_295/TensorArrayV2/element_shape:output:0!lstm_295/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_295/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_295/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_295/transpose:y:0Glstm_295/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_295/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_295/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_295/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_295/strided_slice_2StridedSlicelstm_295/transpose:y:0'lstm_295/strided_slice_2/stack:output:0)lstm_295/strided_slice_2/stack_1:output:0)lstm_295/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_295/lstm_cell_247/MatMul/ReadVariableOpReadVariableOp5lstm_295_lstm_cell_247_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_295/lstm_cell_247/MatMulMatMul!lstm_295/strided_slice_2:output:04lstm_295/lstm_cell_247/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_295/lstm_cell_247/MatMul_1/ReadVariableOpReadVariableOp7lstm_295_lstm_cell_247_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_295/lstm_cell_247/MatMul_1MatMullstm_295/zeros:output:06lstm_295/lstm_cell_247/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_295/lstm_cell_247/addAddV2'lstm_295/lstm_cell_247/MatMul:product:0)lstm_295/lstm_cell_247/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_295/lstm_cell_247/BiasAdd/ReadVariableOpReadVariableOp6lstm_295_lstm_cell_247_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_295/lstm_cell_247/BiasAddBiasAddlstm_295/lstm_cell_247/add:z:05lstm_295/lstm_cell_247/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_295/lstm_cell_247/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_295/lstm_cell_247/splitSplit/lstm_295/lstm_cell_247/split/split_dim:output:0'lstm_295/lstm_cell_247/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_295/lstm_cell_247/SigmoidSigmoid%lstm_295/lstm_cell_247/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_295/lstm_cell_247/Sigmoid_1Sigmoid%lstm_295/lstm_cell_247/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_295/lstm_cell_247/mulMul$lstm_295/lstm_cell_247/Sigmoid_1:y:0lstm_295/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_295/lstm_cell_247/ReluRelu%lstm_295/lstm_cell_247/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_295/lstm_cell_247/mul_1Mul"lstm_295/lstm_cell_247/Sigmoid:y:0)lstm_295/lstm_cell_247/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_295/lstm_cell_247/add_1AddV2lstm_295/lstm_cell_247/mul:z:0 lstm_295/lstm_cell_247/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_295/lstm_cell_247/Sigmoid_2Sigmoid%lstm_295/lstm_cell_247/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_295/lstm_cell_247/Relu_1Relu lstm_295/lstm_cell_247/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_295/lstm_cell_247/mul_2Mul$lstm_295/lstm_cell_247/Sigmoid_2:y:0+lstm_295/lstm_cell_247/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_295/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_295/TensorArrayV2_1TensorListReserve/lstm_295/TensorArrayV2_1/element_shape:output:0!lstm_295/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_295/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_295/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_295/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_295/whileWhile$lstm_295/while/loop_counter:output:0*lstm_295/while/maximum_iterations:output:0lstm_295/time:output:0!lstm_295/TensorArrayV2_1:handle:0lstm_295/zeros:output:0lstm_295/zeros_1:output:0!lstm_295/strided_slice_1:output:0@lstm_295/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_295_lstm_cell_247_matmul_readvariableop_resource7lstm_295_lstm_cell_247_matmul_1_readvariableop_resource6lstm_295_lstm_cell_247_biasadd_readvariableop_resource*
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
lstm_295_while_body_1503075*'
condR
lstm_295_while_cond_1503074*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_295/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_295/TensorArrayV2Stack/TensorListStackTensorListStacklstm_295/while:output:3Blstm_295/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_295/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_295/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_295/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_295/strided_slice_3StridedSlice4lstm_295/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_295/strided_slice_3/stack:output:0)lstm_295/strided_slice_3/stack_1:output:0)lstm_295/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_295/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_295/transpose_1	Transpose4lstm_295/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_295/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_295/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_296/ShapeShapelstm_295/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_296/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_296/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_296/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_296/strided_sliceStridedSlicelstm_296/Shape:output:0%lstm_296/strided_slice/stack:output:0'lstm_296/strided_slice/stack_1:output:0'lstm_296/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_296/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_296/zeros/packedPacklstm_296/strided_slice:output:0 lstm_296/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_296/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_296/zerosFilllstm_296/zeros/packed:output:0lstm_296/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_296/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_296/zeros_1/packedPacklstm_296/strided_slice:output:0"lstm_296/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_296/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_296/zeros_1Fill lstm_296/zeros_1/packed:output:0lstm_296/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_296/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_296/transpose	Transposelstm_295/transpose_1:y:0 lstm_296/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_296/Shape_1Shapelstm_296/transpose:y:0*
T0*
_output_shapes
:h
lstm_296/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_296/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_296/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_296/strided_slice_1StridedSlicelstm_296/Shape_1:output:0'lstm_296/strided_slice_1/stack:output:0)lstm_296/strided_slice_1/stack_1:output:0)lstm_296/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_296/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_296/TensorArrayV2TensorListReserve-lstm_296/TensorArrayV2/element_shape:output:0!lstm_296/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_296/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_296/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_296/transpose:y:0Glstm_296/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_296/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_296/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_296/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_296/strided_slice_2StridedSlicelstm_296/transpose:y:0'lstm_296/strided_slice_2/stack:output:0)lstm_296/strided_slice_2/stack_1:output:0)lstm_296/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_296/lstm_cell_248/MatMul/ReadVariableOpReadVariableOp5lstm_296_lstm_cell_248_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_296/lstm_cell_248/MatMulMatMul!lstm_296/strided_slice_2:output:04lstm_296/lstm_cell_248/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_296/lstm_cell_248/MatMul_1/ReadVariableOpReadVariableOp7lstm_296_lstm_cell_248_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_296/lstm_cell_248/MatMul_1MatMullstm_296/zeros:output:06lstm_296/lstm_cell_248/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_296/lstm_cell_248/addAddV2'lstm_296/lstm_cell_248/MatMul:product:0)lstm_296/lstm_cell_248/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_296/lstm_cell_248/BiasAdd/ReadVariableOpReadVariableOp6lstm_296_lstm_cell_248_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_296/lstm_cell_248/BiasAddBiasAddlstm_296/lstm_cell_248/add:z:05lstm_296/lstm_cell_248/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_296/lstm_cell_248/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_296/lstm_cell_248/splitSplit/lstm_296/lstm_cell_248/split/split_dim:output:0'lstm_296/lstm_cell_248/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_296/lstm_cell_248/SigmoidSigmoid%lstm_296/lstm_cell_248/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_296/lstm_cell_248/Sigmoid_1Sigmoid%lstm_296/lstm_cell_248/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_296/lstm_cell_248/mulMul$lstm_296/lstm_cell_248/Sigmoid_1:y:0lstm_296/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_296/lstm_cell_248/ReluRelu%lstm_296/lstm_cell_248/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_296/lstm_cell_248/mul_1Mul"lstm_296/lstm_cell_248/Sigmoid:y:0)lstm_296/lstm_cell_248/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_296/lstm_cell_248/add_1AddV2lstm_296/lstm_cell_248/mul:z:0 lstm_296/lstm_cell_248/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_296/lstm_cell_248/Sigmoid_2Sigmoid%lstm_296/lstm_cell_248/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_296/lstm_cell_248/Relu_1Relu lstm_296/lstm_cell_248/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_296/lstm_cell_248/mul_2Mul$lstm_296/lstm_cell_248/Sigmoid_2:y:0+lstm_296/lstm_cell_248/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_296/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_296/TensorArrayV2_1TensorListReserve/lstm_296/TensorArrayV2_1/element_shape:output:0!lstm_296/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_296/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_296/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_296/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_296/whileWhile$lstm_296/while/loop_counter:output:0*lstm_296/while/maximum_iterations:output:0lstm_296/time:output:0!lstm_296/TensorArrayV2_1:handle:0lstm_296/zeros:output:0lstm_296/zeros_1:output:0!lstm_296/strided_slice_1:output:0@lstm_296/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_296_lstm_cell_248_matmul_readvariableop_resource7lstm_296_lstm_cell_248_matmul_1_readvariableop_resource6lstm_296_lstm_cell_248_biasadd_readvariableop_resource*
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
lstm_296_while_body_1503214*'
condR
lstm_296_while_cond_1503213*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_296/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_296/TensorArrayV2Stack/TensorListStackTensorListStacklstm_296/while:output:3Blstm_296/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_296/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_296/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_296/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_296/strided_slice_3StridedSlice4lstm_296/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_296/strided_slice_3/stack:output:0)lstm_296/strided_slice_3/stack_1:output:0)lstm_296/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_296/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_296/transpose_1	Transpose4lstm_296/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_296/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_296/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_98/MatMul/ReadVariableOpReadVariableOp'dense_98_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_98/MatMulMatMul!lstm_296/strided_slice_3:output:0&dense_98/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_98/BiasAdd/ReadVariableOpReadVariableOp(dense_98_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_98/BiasAddBiasAdddense_98/MatMul:product:0'dense_98/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_98/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_98/BiasAdd/ReadVariableOp^dense_98/MatMul/ReadVariableOp.^lstm_294/lstm_cell_246/BiasAdd/ReadVariableOp-^lstm_294/lstm_cell_246/MatMul/ReadVariableOp/^lstm_294/lstm_cell_246/MatMul_1/ReadVariableOp^lstm_294/while.^lstm_295/lstm_cell_247/BiasAdd/ReadVariableOp-^lstm_295/lstm_cell_247/MatMul/ReadVariableOp/^lstm_295/lstm_cell_247/MatMul_1/ReadVariableOp^lstm_295/while.^lstm_296/lstm_cell_248/BiasAdd/ReadVariableOp-^lstm_296/lstm_cell_248/MatMul/ReadVariableOp/^lstm_296/lstm_cell_248/MatMul_1/ReadVariableOp^lstm_296/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_98/BiasAdd/ReadVariableOpdense_98/BiasAdd/ReadVariableOp2@
dense_98/MatMul/ReadVariableOpdense_98/MatMul/ReadVariableOp2^
-lstm_294/lstm_cell_246/BiasAdd/ReadVariableOp-lstm_294/lstm_cell_246/BiasAdd/ReadVariableOp2\
,lstm_294/lstm_cell_246/MatMul/ReadVariableOp,lstm_294/lstm_cell_246/MatMul/ReadVariableOp2`
.lstm_294/lstm_cell_246/MatMul_1/ReadVariableOp.lstm_294/lstm_cell_246/MatMul_1/ReadVariableOp2 
lstm_294/whilelstm_294/while2^
-lstm_295/lstm_cell_247/BiasAdd/ReadVariableOp-lstm_295/lstm_cell_247/BiasAdd/ReadVariableOp2\
,lstm_295/lstm_cell_247/MatMul/ReadVariableOp,lstm_295/lstm_cell_247/MatMul/ReadVariableOp2`
.lstm_295/lstm_cell_247/MatMul_1/ReadVariableOp.lstm_295/lstm_cell_247/MatMul_1/ReadVariableOp2 
lstm_295/whilelstm_295/while2^
-lstm_296/lstm_cell_248/BiasAdd/ReadVariableOp-lstm_296/lstm_cell_248/BiasAdd/ReadVariableOp2\
,lstm_296/lstm_cell_248/MatMul/ReadVariableOp,lstm_296/lstm_cell_248/MatMul/ReadVariableOp2`
.lstm_296/lstm_cell_248/MatMul_1/ReadVariableOp.lstm_296/lstm_cell_248/MatMul_1/ReadVariableOp2 
lstm_296/whilelstm_296/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_294_while_cond_1503362.
*lstm_294_while_lstm_294_while_loop_counter4
0lstm_294_while_lstm_294_while_maximum_iterations
lstm_294_while_placeholder 
lstm_294_while_placeholder_1 
lstm_294_while_placeholder_2 
lstm_294_while_placeholder_30
,lstm_294_while_less_lstm_294_strided_slice_1G
Clstm_294_while_lstm_294_while_cond_1503362___redundant_placeholder0G
Clstm_294_while_lstm_294_while_cond_1503362___redundant_placeholder1G
Clstm_294_while_lstm_294_while_cond_1503362___redundant_placeholder2G
Clstm_294_while_lstm_294_while_cond_1503362___redundant_placeholder3
lstm_294_while_identity
?
lstm_294/while/LessLesslstm_294_while_placeholder,lstm_294_while_less_lstm_294_strided_slice_1*
T0*
_output_shapes
: ]
lstm_294/while/IdentityIdentitylstm_294/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_294_while_identity lstm_294/while/Identity:output:0*(
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
while_cond_1500643
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1500643___redundant_placeholder05
1while_while_cond_1500643___redundant_placeholder15
1while_while_cond_1500643___redundant_placeholder25
1while_while_cond_1500643___redundant_placeholder3
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
while_cond_1505494
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1505494___redundant_placeholder05
1while_while_cond_1505494___redundant_placeholder15
1while_while_cond_1505494___redundant_placeholder25
1while_while_cond_1505494___redundant_placeholder3
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

lstm_294_while_body_1503363.
*lstm_294_while_lstm_294_while_loop_counter4
0lstm_294_while_lstm_294_while_maximum_iterations
lstm_294_while_placeholder 
lstm_294_while_placeholder_1 
lstm_294_while_placeholder_2 
lstm_294_while_placeholder_3-
)lstm_294_while_lstm_294_strided_slice_1_0i
elstm_294_while_tensorarrayv2read_tensorlistgetitem_lstm_294_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_294_while_lstm_cell_246_matmul_readvariableop_resource_0:	?R
?lstm_294_while_lstm_cell_246_matmul_1_readvariableop_resource_0:	d?M
>lstm_294_while_lstm_cell_246_biasadd_readvariableop_resource_0:	?
lstm_294_while_identity
lstm_294_while_identity_1
lstm_294_while_identity_2
lstm_294_while_identity_3
lstm_294_while_identity_4
lstm_294_while_identity_5+
'lstm_294_while_lstm_294_strided_slice_1g
clstm_294_while_tensorarrayv2read_tensorlistgetitem_lstm_294_tensorarrayunstack_tensorlistfromtensorN
;lstm_294_while_lstm_cell_246_matmul_readvariableop_resource:	?P
=lstm_294_while_lstm_cell_246_matmul_1_readvariableop_resource:	d?K
<lstm_294_while_lstm_cell_246_biasadd_readvariableop_resource:	???3lstm_294/while/lstm_cell_246/BiasAdd/ReadVariableOp?2lstm_294/while/lstm_cell_246/MatMul/ReadVariableOp?4lstm_294/while/lstm_cell_246/MatMul_1/ReadVariableOp?
@lstm_294/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_294/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_294_while_tensorarrayv2read_tensorlistgetitem_lstm_294_tensorarrayunstack_tensorlistfromtensor_0lstm_294_while_placeholderIlstm_294/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_294/while/lstm_cell_246/MatMul/ReadVariableOpReadVariableOp=lstm_294_while_lstm_cell_246_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_294/while/lstm_cell_246/MatMulMatMul9lstm_294/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_294/while/lstm_cell_246/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_294/while/lstm_cell_246/MatMul_1/ReadVariableOpReadVariableOp?lstm_294_while_lstm_cell_246_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_294/while/lstm_cell_246/MatMul_1MatMullstm_294_while_placeholder_2<lstm_294/while/lstm_cell_246/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_294/while/lstm_cell_246/addAddV2-lstm_294/while/lstm_cell_246/MatMul:product:0/lstm_294/while/lstm_cell_246/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_294/while/lstm_cell_246/BiasAdd/ReadVariableOpReadVariableOp>lstm_294_while_lstm_cell_246_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_294/while/lstm_cell_246/BiasAddBiasAdd$lstm_294/while/lstm_cell_246/add:z:0;lstm_294/while/lstm_cell_246/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_294/while/lstm_cell_246/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_294/while/lstm_cell_246/splitSplit5lstm_294/while/lstm_cell_246/split/split_dim:output:0-lstm_294/while/lstm_cell_246/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_294/while/lstm_cell_246/SigmoidSigmoid+lstm_294/while/lstm_cell_246/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_294/while/lstm_cell_246/Sigmoid_1Sigmoid+lstm_294/while/lstm_cell_246/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_294/while/lstm_cell_246/mulMul*lstm_294/while/lstm_cell_246/Sigmoid_1:y:0lstm_294_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_294/while/lstm_cell_246/ReluRelu+lstm_294/while/lstm_cell_246/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_294/while/lstm_cell_246/mul_1Mul(lstm_294/while/lstm_cell_246/Sigmoid:y:0/lstm_294/while/lstm_cell_246/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_294/while/lstm_cell_246/add_1AddV2$lstm_294/while/lstm_cell_246/mul:z:0&lstm_294/while/lstm_cell_246/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_294/while/lstm_cell_246/Sigmoid_2Sigmoid+lstm_294/while/lstm_cell_246/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_294/while/lstm_cell_246/Relu_1Relu&lstm_294/while/lstm_cell_246/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_294/while/lstm_cell_246/mul_2Mul*lstm_294/while/lstm_cell_246/Sigmoid_2:y:01lstm_294/while/lstm_cell_246/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_294/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_294_while_placeholder_1lstm_294_while_placeholder&lstm_294/while/lstm_cell_246/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_294/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_294/while/addAddV2lstm_294_while_placeholderlstm_294/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_294/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_294/while/add_1AddV2*lstm_294_while_lstm_294_while_loop_counterlstm_294/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_294/while/IdentityIdentitylstm_294/while/add_1:z:0^lstm_294/while/NoOp*
T0*
_output_shapes
: ?
lstm_294/while/Identity_1Identity0lstm_294_while_lstm_294_while_maximum_iterations^lstm_294/while/NoOp*
T0*
_output_shapes
: t
lstm_294/while/Identity_2Identitylstm_294/while/add:z:0^lstm_294/while/NoOp*
T0*
_output_shapes
: ?
lstm_294/while/Identity_3IdentityClstm_294/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_294/while/NoOp*
T0*
_output_shapes
: ?
lstm_294/while/Identity_4Identity&lstm_294/while/lstm_cell_246/mul_2:z:0^lstm_294/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_294/while/Identity_5Identity&lstm_294/while/lstm_cell_246/add_1:z:0^lstm_294/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_294/while/NoOpNoOp4^lstm_294/while/lstm_cell_246/BiasAdd/ReadVariableOp3^lstm_294/while/lstm_cell_246/MatMul/ReadVariableOp5^lstm_294/while/lstm_cell_246/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_294_while_identity lstm_294/while/Identity:output:0"?
lstm_294_while_identity_1"lstm_294/while/Identity_1:output:0"?
lstm_294_while_identity_2"lstm_294/while/Identity_2:output:0"?
lstm_294_while_identity_3"lstm_294/while/Identity_3:output:0"?
lstm_294_while_identity_4"lstm_294/while/Identity_4:output:0"?
lstm_294_while_identity_5"lstm_294/while/Identity_5:output:0"T
'lstm_294_while_lstm_294_strided_slice_1)lstm_294_while_lstm_294_strided_slice_1_0"~
<lstm_294_while_lstm_cell_246_biasadd_readvariableop_resource>lstm_294_while_lstm_cell_246_biasadd_readvariableop_resource_0"?
=lstm_294_while_lstm_cell_246_matmul_1_readvariableop_resource?lstm_294_while_lstm_cell_246_matmul_1_readvariableop_resource_0"|
;lstm_294_while_lstm_cell_246_matmul_readvariableop_resource=lstm_294_while_lstm_cell_246_matmul_readvariableop_resource_0"?
clstm_294_while_tensorarrayv2read_tensorlistgetitem_lstm_294_tensorarrayunstack_tensorlistfromtensorelstm_294_while_tensorarrayv2read_tensorlistgetitem_lstm_294_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_294/while/lstm_cell_246/BiasAdd/ReadVariableOp3lstm_294/while/lstm_cell_246/BiasAdd/ReadVariableOp2h
2lstm_294/while/lstm_cell_246/MatMul/ReadVariableOp2lstm_294/while/lstm_cell_246/MatMul/ReadVariableOp2l
4lstm_294/while/lstm_cell_246/MatMul_1/ReadVariableOp4lstm_294/while/lstm_cell_246/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_294_layer_call_and_return_conditional_losses_1504061
inputs_0?
,lstm_cell_246_matmul_readvariableop_resource:	?A
.lstm_cell_246_matmul_1_readvariableop_resource:	d?<
-lstm_cell_246_biasadd_readvariableop_resource:	?
identity??$lstm_cell_246/BiasAdd/ReadVariableOp?#lstm_cell_246/MatMul/ReadVariableOp?%lstm_cell_246/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_246/MatMul/ReadVariableOpReadVariableOp,lstm_cell_246_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_246/MatMulMatMulstrided_slice_2:output:0+lstm_cell_246/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_246/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_246_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_246/MatMul_1MatMulzeros:output:0-lstm_cell_246/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_246/addAddV2lstm_cell_246/MatMul:product:0 lstm_cell_246/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_246/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_246_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_246/BiasAddBiasAddlstm_cell_246/add:z:0,lstm_cell_246/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_246/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_246/splitSplit&lstm_cell_246/split/split_dim:output:0lstm_cell_246/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_246/SigmoidSigmoidlstm_cell_246/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_246/Sigmoid_1Sigmoidlstm_cell_246/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_246/mulMullstm_cell_246/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_246/ReluRelulstm_cell_246/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_246/mul_1Mullstm_cell_246/Sigmoid:y:0 lstm_cell_246/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_246/add_1AddV2lstm_cell_246/mul:z:0lstm_cell_246/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_246/Sigmoid_2Sigmoidlstm_cell_246/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_246/Relu_1Relulstm_cell_246/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_246/mul_2Mullstm_cell_246/Sigmoid_2:y:0"lstm_cell_246/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_246_matmul_readvariableop_resource.lstm_cell_246_matmul_1_readvariableop_resource-lstm_cell_246_biasadd_readvariableop_resource*
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
while_body_1503977*
condR
while_cond_1503976*K
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
NoOpNoOp%^lstm_cell_246/BiasAdd/ReadVariableOp$^lstm_cell_246/MatMul/ReadVariableOp&^lstm_cell_246/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_246/BiasAdd/ReadVariableOp$lstm_cell_246/BiasAdd/ReadVariableOp2J
#lstm_cell_246/MatMul/ReadVariableOp#lstm_cell_246/MatMul/ReadVariableOp2N
%lstm_cell_246/MatMul_1/ReadVariableOp%lstm_cell_246/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_1505351
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1505351___redundant_placeholder05
1while_while_cond_1505351___redundant_placeholder15
1while_while_cond_1505351___redundant_placeholder25
1while_while_cond_1505351___redundant_placeholder3
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
while_body_1500644
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_246_1500668_0:	?0
while_lstm_cell_246_1500670_0:	d?,
while_lstm_cell_246_1500672_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_246_1500668:	?.
while_lstm_cell_246_1500670:	d?*
while_lstm_cell_246_1500672:	???+while/lstm_cell_246/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_246/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_246_1500668_0while_lstm_cell_246_1500670_0while_lstm_cell_246_1500672_0*
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
J__inference_lstm_cell_246_layer_call_and_return_conditional_losses_1500630?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_246/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_246/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_246/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_246/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_246_1500668while_lstm_cell_246_1500668_0"<
while_lstm_cell_246_1500670while_lstm_cell_246_1500670_0"<
while_lstm_cell_246_1500672while_lstm_cell_246_1500672_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_246/StatefulPartitionedCall+while/lstm_cell_246/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_1501534
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1501534___redundant_placeholder05
1while_while_cond_1501534___redundant_placeholder15
1while_while_cond_1501534___redundant_placeholder25
1while_while_cond_1501534___redundant_placeholder3
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
)sequential_98_lstm_295_while_cond_1500333J
Fsequential_98_lstm_295_while_sequential_98_lstm_295_while_loop_counterP
Lsequential_98_lstm_295_while_sequential_98_lstm_295_while_maximum_iterations,
(sequential_98_lstm_295_while_placeholder.
*sequential_98_lstm_295_while_placeholder_1.
*sequential_98_lstm_295_while_placeholder_2.
*sequential_98_lstm_295_while_placeholder_3L
Hsequential_98_lstm_295_while_less_sequential_98_lstm_295_strided_slice_1c
_sequential_98_lstm_295_while_sequential_98_lstm_295_while_cond_1500333___redundant_placeholder0c
_sequential_98_lstm_295_while_sequential_98_lstm_295_while_cond_1500333___redundant_placeholder1c
_sequential_98_lstm_295_while_sequential_98_lstm_295_while_cond_1500333___redundant_placeholder2c
_sequential_98_lstm_295_while_sequential_98_lstm_295_while_cond_1500333___redundant_placeholder3)
%sequential_98_lstm_295_while_identity
?
!sequential_98/lstm_295/while/LessLess(sequential_98_lstm_295_while_placeholderHsequential_98_lstm_295_while_less_sequential_98_lstm_295_strided_slice_1*
T0*
_output_shapes
: y
%sequential_98/lstm_295/while/IdentityIdentity%sequential_98/lstm_295/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_98_lstm_295_while_identity.sequential_98/lstm_295/while/Identity:output:0*(
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
E__inference_lstm_295_layer_call_and_return_conditional_losses_1502443

inputs?
,lstm_cell_247_matmul_readvariableop_resource:	d?A
.lstm_cell_247_matmul_1_readvariableop_resource:	2?<
-lstm_cell_247_biasadd_readvariableop_resource:	?
identity??$lstm_cell_247/BiasAdd/ReadVariableOp?#lstm_cell_247/MatMul/ReadVariableOp?%lstm_cell_247/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_247/MatMul/ReadVariableOpReadVariableOp,lstm_cell_247_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_247/MatMulMatMulstrided_slice_2:output:0+lstm_cell_247/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_247/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_247_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_247/MatMul_1MatMulzeros:output:0-lstm_cell_247/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_247/addAddV2lstm_cell_247/MatMul:product:0 lstm_cell_247/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_247/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_247_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_247/BiasAddBiasAddlstm_cell_247/add:z:0,lstm_cell_247/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_247/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_247/splitSplit&lstm_cell_247/split/split_dim:output:0lstm_cell_247/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_247/SigmoidSigmoidlstm_cell_247/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_247/Sigmoid_1Sigmoidlstm_cell_247/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_247/mulMullstm_cell_247/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_247/ReluRelulstm_cell_247/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_247/mul_1Mullstm_cell_247/Sigmoid:y:0 lstm_cell_247/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_247/add_1AddV2lstm_cell_247/mul:z:0lstm_cell_247/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_247/Sigmoid_2Sigmoidlstm_cell_247/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_247/Relu_1Relulstm_cell_247/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_247/mul_2Mullstm_cell_247/Sigmoid_2:y:0"lstm_cell_247/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_247_matmul_readvariableop_resource.lstm_cell_247_matmul_1_readvariableop_resource-lstm_cell_247_biasadd_readvariableop_resource*
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
while_body_1502359*
condR
while_cond_1502358*K
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
NoOpNoOp%^lstm_cell_247/BiasAdd/ReadVariableOp$^lstm_cell_247/MatMul/ReadVariableOp&^lstm_cell_247/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_247/BiasAdd/ReadVariableOp$lstm_cell_247/BiasAdd/ReadVariableOp2J
#lstm_cell_247/MatMul/ReadVariableOp#lstm_cell_247/MatMul/ReadVariableOp2N
%lstm_cell_247/MatMul_1/ReadVariableOp%lstm_cell_247/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_1503976
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1503976___redundant_placeholder05
1while_while_cond_1503976___redundant_placeholder15
1while_while_cond_1503976___redundant_placeholder25
1while_while_cond_1503976___redundant_placeholder3
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
J__inference_sequential_98_layer_call_and_return_conditional_losses_1502758
lstm_294_input#
lstm_294_1502731:	?#
lstm_294_1502733:	d?
lstm_294_1502735:	?#
lstm_295_1502738:	d?#
lstm_295_1502740:	2?
lstm_295_1502742:	?"
lstm_296_1502745:2("
lstm_296_1502747:
(
lstm_296_1502749:("
dense_98_1502752:

dense_98_1502754:
identity?? dense_98/StatefulPartitionedCall? lstm_294/StatefulPartitionedCall? lstm_295/StatefulPartitionedCall? lstm_296/StatefulPartitionedCall?
 lstm_294/StatefulPartitionedCallStatefulPartitionedCalllstm_294_inputlstm_294_1502731lstm_294_1502733lstm_294_1502735*
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
E__inference_lstm_294_layer_call_and_return_conditional_losses_1501762?
 lstm_295/StatefulPartitionedCallStatefulPartitionedCall)lstm_294/StatefulPartitionedCall:output:0lstm_295_1502738lstm_295_1502740lstm_295_1502742*
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
E__inference_lstm_295_layer_call_and_return_conditional_losses_1501912?
 lstm_296/StatefulPartitionedCallStatefulPartitionedCall)lstm_295/StatefulPartitionedCall:output:0lstm_296_1502745lstm_296_1502747lstm_296_1502749*
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
E__inference_lstm_296_layer_call_and_return_conditional_losses_1502062?
 dense_98/StatefulPartitionedCallStatefulPartitionedCall)lstm_296/StatefulPartitionedCall:output:0dense_98_1502752dense_98_1502754*
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
E__inference_dense_98_layer_call_and_return_conditional_losses_1502080x
IdentityIdentity)dense_98/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_98/StatefulPartitionedCall!^lstm_294/StatefulPartitionedCall!^lstm_295/StatefulPartitionedCall!^lstm_296/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_98/StatefulPartitionedCall dense_98/StatefulPartitionedCall2D
 lstm_294/StatefulPartitionedCall lstm_294/StatefulPartitionedCall2D
 lstm_295/StatefulPartitionedCall lstm_295/StatefulPartitionedCall2D
 lstm_296/StatefulPartitionedCall lstm_296/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_294_input
?8
?
while_body_1501828
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_247_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_247_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_247_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_247_matmul_readvariableop_resource:	d?G
4while_lstm_cell_247_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_247_biasadd_readvariableop_resource:	???*while/lstm_cell_247/BiasAdd/ReadVariableOp?)while/lstm_cell_247/MatMul/ReadVariableOp?+while/lstm_cell_247/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_247/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_247_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_247/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_247/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_247/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_247_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_247/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_247/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_247/addAddV2$while/lstm_cell_247/MatMul:product:0&while/lstm_cell_247/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_247/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_247_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_247/BiasAddBiasAddwhile/lstm_cell_247/add:z:02while/lstm_cell_247/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_247/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_247/splitSplit,while/lstm_cell_247/split/split_dim:output:0$while/lstm_cell_247/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_247/SigmoidSigmoid"while/lstm_cell_247/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_247/Sigmoid_1Sigmoid"while/lstm_cell_247/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_247/mulMul!while/lstm_cell_247/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_247/ReluRelu"while/lstm_cell_247/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_247/mul_1Mulwhile/lstm_cell_247/Sigmoid:y:0&while/lstm_cell_247/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_247/add_1AddV2while/lstm_cell_247/mul:z:0while/lstm_cell_247/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_247/Sigmoid_2Sigmoid"while/lstm_cell_247/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_247/Relu_1Reluwhile/lstm_cell_247/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_247/mul_2Mul!while/lstm_cell_247/Sigmoid_2:y:0(while/lstm_cell_247/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_247/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_247/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_247/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_247/BiasAdd/ReadVariableOp*^while/lstm_cell_247/MatMul/ReadVariableOp,^while/lstm_cell_247/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_247_biasadd_readvariableop_resource5while_lstm_cell_247_biasadd_readvariableop_resource_0"n
4while_lstm_cell_247_matmul_1_readvariableop_resource6while_lstm_cell_247_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_247_matmul_readvariableop_resource4while_lstm_cell_247_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_247/BiasAdd/ReadVariableOp*while/lstm_cell_247/BiasAdd/ReadVariableOp2V
)while/lstm_cell_247/MatMul/ReadVariableOp)while/lstm_cell_247/MatMul/ReadVariableOp2Z
+while/lstm_cell_247/MatMul_1/ReadVariableOp+while/lstm_cell_247/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
??
?
#__inference__traced_restore_1506165
file_prefix2
 assignvariableop_dense_98_kernel:
.
 assignvariableop_1_dense_98_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_294_lstm_cell_294_kernel:	?M
:assignvariableop_8_lstm_294_lstm_cell_294_recurrent_kernel:	d?=
.assignvariableop_9_lstm_294_lstm_cell_294_bias:	?D
1assignvariableop_10_lstm_295_lstm_cell_295_kernel:	d?N
;assignvariableop_11_lstm_295_lstm_cell_295_recurrent_kernel:	2?>
/assignvariableop_12_lstm_295_lstm_cell_295_bias:	?C
1assignvariableop_13_lstm_296_lstm_cell_296_kernel:2(M
;assignvariableop_14_lstm_296_lstm_cell_296_recurrent_kernel:
(=
/assignvariableop_15_lstm_296_lstm_cell_296_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_98_kernel_m:
6
(assignvariableop_19_adam_dense_98_bias_m:K
8assignvariableop_20_adam_lstm_294_lstm_cell_294_kernel_m:	?U
Bassignvariableop_21_adam_lstm_294_lstm_cell_294_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_294_lstm_cell_294_bias_m:	?K
8assignvariableop_23_adam_lstm_295_lstm_cell_295_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_295_lstm_cell_295_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_295_lstm_cell_295_bias_m:	?J
8assignvariableop_26_adam_lstm_296_lstm_cell_296_kernel_m:2(T
Bassignvariableop_27_adam_lstm_296_lstm_cell_296_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_296_lstm_cell_296_bias_m:(<
*assignvariableop_29_adam_dense_98_kernel_v:
6
(assignvariableop_30_adam_dense_98_bias_v:K
8assignvariableop_31_adam_lstm_294_lstm_cell_294_kernel_v:	?U
Bassignvariableop_32_adam_lstm_294_lstm_cell_294_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_294_lstm_cell_294_bias_v:	?K
8assignvariableop_34_adam_lstm_295_lstm_cell_295_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_295_lstm_cell_295_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_295_lstm_cell_295_bias_v:	?J
8assignvariableop_37_adam_lstm_296_lstm_cell_296_kernel_v:2(T
Bassignvariableop_38_adam_lstm_296_lstm_cell_296_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_296_lstm_cell_296_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_98_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_98_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_294_lstm_cell_294_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_294_lstm_cell_294_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_294_lstm_cell_294_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_295_lstm_cell_295_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_295_lstm_cell_295_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_295_lstm_cell_295_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_296_lstm_cell_296_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_296_lstm_cell_296_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_296_lstm_cell_296_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_98_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_98_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_294_lstm_cell_294_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_294_lstm_cell_294_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_294_lstm_cell_294_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_295_lstm_cell_295_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_295_lstm_cell_295_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_295_lstm_cell_295_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_296_lstm_cell_296_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_296_lstm_cell_296_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_296_lstm_cell_296_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_98_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_98_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_294_lstm_cell_294_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_294_lstm_cell_294_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_294_lstm_cell_294_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_295_lstm_cell_295_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_295_lstm_cell_295_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_295_lstm_cell_295_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_296_lstm_cell_296_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_296_lstm_cell_296_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_296_lstm_cell_296_bias_vIdentity_39:output:0"/device:CPU:0*
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
?
*__inference_lstm_294_layer_call_fn_1503764

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
E__inference_lstm_294_layer_call_and_return_conditional_losses_1501762s
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
?
?
J__inference_lstm_cell_247_layer_call_and_return_conditional_losses_1505794

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
/__inference_lstm_cell_247_layer_call_fn_1505713

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
J__inference_lstm_cell_247_layer_call_and_return_conditional_losses_1500980o
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
)sequential_98_lstm_296_while_body_1500473J
Fsequential_98_lstm_296_while_sequential_98_lstm_296_while_loop_counterP
Lsequential_98_lstm_296_while_sequential_98_lstm_296_while_maximum_iterations,
(sequential_98_lstm_296_while_placeholder.
*sequential_98_lstm_296_while_placeholder_1.
*sequential_98_lstm_296_while_placeholder_2.
*sequential_98_lstm_296_while_placeholder_3I
Esequential_98_lstm_296_while_sequential_98_lstm_296_strided_slice_1_0?
?sequential_98_lstm_296_while_tensorarrayv2read_tensorlistgetitem_sequential_98_lstm_296_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_98_lstm_296_while_lstm_cell_248_matmul_readvariableop_resource_0:2(_
Msequential_98_lstm_296_while_lstm_cell_248_matmul_1_readvariableop_resource_0:
(Z
Lsequential_98_lstm_296_while_lstm_cell_248_biasadd_readvariableop_resource_0:()
%sequential_98_lstm_296_while_identity+
'sequential_98_lstm_296_while_identity_1+
'sequential_98_lstm_296_while_identity_2+
'sequential_98_lstm_296_while_identity_3+
'sequential_98_lstm_296_while_identity_4+
'sequential_98_lstm_296_while_identity_5G
Csequential_98_lstm_296_while_sequential_98_lstm_296_strided_slice_1?
sequential_98_lstm_296_while_tensorarrayv2read_tensorlistgetitem_sequential_98_lstm_296_tensorarrayunstack_tensorlistfromtensor[
Isequential_98_lstm_296_while_lstm_cell_248_matmul_readvariableop_resource:2(]
Ksequential_98_lstm_296_while_lstm_cell_248_matmul_1_readvariableop_resource:
(X
Jsequential_98_lstm_296_while_lstm_cell_248_biasadd_readvariableop_resource:(??Asequential_98/lstm_296/while/lstm_cell_248/BiasAdd/ReadVariableOp?@sequential_98/lstm_296/while/lstm_cell_248/MatMul/ReadVariableOp?Bsequential_98/lstm_296/while/lstm_cell_248/MatMul_1/ReadVariableOp?
Nsequential_98/lstm_296/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
@sequential_98/lstm_296/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_98_lstm_296_while_tensorarrayv2read_tensorlistgetitem_sequential_98_lstm_296_tensorarrayunstack_tensorlistfromtensor_0(sequential_98_lstm_296_while_placeholderWsequential_98/lstm_296/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
@sequential_98/lstm_296/while/lstm_cell_248/MatMul/ReadVariableOpReadVariableOpKsequential_98_lstm_296_while_lstm_cell_248_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
1sequential_98/lstm_296/while/lstm_cell_248/MatMulMatMulGsequential_98/lstm_296/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_98/lstm_296/while/lstm_cell_248/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Bsequential_98/lstm_296/while/lstm_cell_248/MatMul_1/ReadVariableOpReadVariableOpMsequential_98_lstm_296_while_lstm_cell_248_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
3sequential_98/lstm_296/while/lstm_cell_248/MatMul_1MatMul*sequential_98_lstm_296_while_placeholder_2Jsequential_98/lstm_296/while/lstm_cell_248/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.sequential_98/lstm_296/while/lstm_cell_248/addAddV2;sequential_98/lstm_296/while/lstm_cell_248/MatMul:product:0=sequential_98/lstm_296/while/lstm_cell_248/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Asequential_98/lstm_296/while/lstm_cell_248/BiasAdd/ReadVariableOpReadVariableOpLsequential_98_lstm_296_while_lstm_cell_248_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
2sequential_98/lstm_296/while/lstm_cell_248/BiasAddBiasAdd2sequential_98/lstm_296/while/lstm_cell_248/add:z:0Isequential_98/lstm_296/while/lstm_cell_248/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(|
:sequential_98/lstm_296/while/lstm_cell_248/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_98/lstm_296/while/lstm_cell_248/splitSplitCsequential_98/lstm_296/while/lstm_cell_248/split/split_dim:output:0;sequential_98/lstm_296/while/lstm_cell_248/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
2sequential_98/lstm_296/while/lstm_cell_248/SigmoidSigmoid9sequential_98/lstm_296/while/lstm_cell_248/split:output:0*
T0*'
_output_shapes
:?????????
?
4sequential_98/lstm_296/while/lstm_cell_248/Sigmoid_1Sigmoid9sequential_98/lstm_296/while/lstm_cell_248/split:output:1*
T0*'
_output_shapes
:?????????
?
.sequential_98/lstm_296/while/lstm_cell_248/mulMul8sequential_98/lstm_296/while/lstm_cell_248/Sigmoid_1:y:0*sequential_98_lstm_296_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
/sequential_98/lstm_296/while/lstm_cell_248/ReluRelu9sequential_98/lstm_296/while/lstm_cell_248/split:output:2*
T0*'
_output_shapes
:?????????
?
0sequential_98/lstm_296/while/lstm_cell_248/mul_1Mul6sequential_98/lstm_296/while/lstm_cell_248/Sigmoid:y:0=sequential_98/lstm_296/while/lstm_cell_248/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
0sequential_98/lstm_296/while/lstm_cell_248/add_1AddV22sequential_98/lstm_296/while/lstm_cell_248/mul:z:04sequential_98/lstm_296/while/lstm_cell_248/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
4sequential_98/lstm_296/while/lstm_cell_248/Sigmoid_2Sigmoid9sequential_98/lstm_296/while/lstm_cell_248/split:output:3*
T0*'
_output_shapes
:?????????
?
1sequential_98/lstm_296/while/lstm_cell_248/Relu_1Relu4sequential_98/lstm_296/while/lstm_cell_248/add_1:z:0*
T0*'
_output_shapes
:?????????
?
0sequential_98/lstm_296/while/lstm_cell_248/mul_2Mul8sequential_98/lstm_296/while/lstm_cell_248/Sigmoid_2:y:0?sequential_98/lstm_296/while/lstm_cell_248/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Asequential_98/lstm_296/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_98_lstm_296_while_placeholder_1(sequential_98_lstm_296_while_placeholder4sequential_98/lstm_296/while/lstm_cell_248/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_98/lstm_296/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_98/lstm_296/while/addAddV2(sequential_98_lstm_296_while_placeholder+sequential_98/lstm_296/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_98/lstm_296/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_98/lstm_296/while/add_1AddV2Fsequential_98_lstm_296_while_sequential_98_lstm_296_while_loop_counter-sequential_98/lstm_296/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_98/lstm_296/while/IdentityIdentity&sequential_98/lstm_296/while/add_1:z:0"^sequential_98/lstm_296/while/NoOp*
T0*
_output_shapes
: ?
'sequential_98/lstm_296/while/Identity_1IdentityLsequential_98_lstm_296_while_sequential_98_lstm_296_while_maximum_iterations"^sequential_98/lstm_296/while/NoOp*
T0*
_output_shapes
: ?
'sequential_98/lstm_296/while/Identity_2Identity$sequential_98/lstm_296/while/add:z:0"^sequential_98/lstm_296/while/NoOp*
T0*
_output_shapes
: ?
'sequential_98/lstm_296/while/Identity_3IdentityQsequential_98/lstm_296/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_98/lstm_296/while/NoOp*
T0*
_output_shapes
: ?
'sequential_98/lstm_296/while/Identity_4Identity4sequential_98/lstm_296/while/lstm_cell_248/mul_2:z:0"^sequential_98/lstm_296/while/NoOp*
T0*'
_output_shapes
:?????????
?
'sequential_98/lstm_296/while/Identity_5Identity4sequential_98/lstm_296/while/lstm_cell_248/add_1:z:0"^sequential_98/lstm_296/while/NoOp*
T0*'
_output_shapes
:?????????
?
!sequential_98/lstm_296/while/NoOpNoOpB^sequential_98/lstm_296/while/lstm_cell_248/BiasAdd/ReadVariableOpA^sequential_98/lstm_296/while/lstm_cell_248/MatMul/ReadVariableOpC^sequential_98/lstm_296/while/lstm_cell_248/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_98_lstm_296_while_identity.sequential_98/lstm_296/while/Identity:output:0"[
'sequential_98_lstm_296_while_identity_10sequential_98/lstm_296/while/Identity_1:output:0"[
'sequential_98_lstm_296_while_identity_20sequential_98/lstm_296/while/Identity_2:output:0"[
'sequential_98_lstm_296_while_identity_30sequential_98/lstm_296/while/Identity_3:output:0"[
'sequential_98_lstm_296_while_identity_40sequential_98/lstm_296/while/Identity_4:output:0"[
'sequential_98_lstm_296_while_identity_50sequential_98/lstm_296/while/Identity_5:output:0"?
Jsequential_98_lstm_296_while_lstm_cell_248_biasadd_readvariableop_resourceLsequential_98_lstm_296_while_lstm_cell_248_biasadd_readvariableop_resource_0"?
Ksequential_98_lstm_296_while_lstm_cell_248_matmul_1_readvariableop_resourceMsequential_98_lstm_296_while_lstm_cell_248_matmul_1_readvariableop_resource_0"?
Isequential_98_lstm_296_while_lstm_cell_248_matmul_readvariableop_resourceKsequential_98_lstm_296_while_lstm_cell_248_matmul_readvariableop_resource_0"?
Csequential_98_lstm_296_while_sequential_98_lstm_296_strided_slice_1Esequential_98_lstm_296_while_sequential_98_lstm_296_strided_slice_1_0"?
sequential_98_lstm_296_while_tensorarrayv2read_tensorlistgetitem_sequential_98_lstm_296_tensorarrayunstack_tensorlistfromtensor?sequential_98_lstm_296_while_tensorarrayv2read_tensorlistgetitem_sequential_98_lstm_296_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Asequential_98/lstm_296/while/lstm_cell_248/BiasAdd/ReadVariableOpAsequential_98/lstm_296/while/lstm_cell_248/BiasAdd/ReadVariableOp2?
@sequential_98/lstm_296/while/lstm_cell_248/MatMul/ReadVariableOp@sequential_98/lstm_296/while/lstm_cell_248/MatMul/ReadVariableOp2?
Bsequential_98/lstm_296/while/lstm_cell_248/MatMul_1/ReadVariableOpBsequential_98/lstm_296/while/lstm_cell_248/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_296_layer_call_fn_1504974
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
E__inference_lstm_296_layer_call_and_return_conditional_losses_1501413o
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
J__inference_lstm_cell_247_layer_call_and_return_conditional_losses_1505762

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
while_body_1505066
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_248_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_248_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_248_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_248_matmul_readvariableop_resource:2(F
4while_lstm_cell_248_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_248_biasadd_readvariableop_resource:(??*while/lstm_cell_248/BiasAdd/ReadVariableOp?)while/lstm_cell_248/MatMul/ReadVariableOp?+while/lstm_cell_248/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_248/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_248_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_248/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_248/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_248/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_248_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_248/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_248/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_248/addAddV2$while/lstm_cell_248/MatMul:product:0&while/lstm_cell_248/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_248/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_248_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_248/BiasAddBiasAddwhile/lstm_cell_248/add:z:02while/lstm_cell_248/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_248/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_248/splitSplit,while/lstm_cell_248/split/split_dim:output:0$while/lstm_cell_248/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_248/SigmoidSigmoid"while/lstm_cell_248/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_248/Sigmoid_1Sigmoid"while/lstm_cell_248/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_248/mulMul!while/lstm_cell_248/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_248/ReluRelu"while/lstm_cell_248/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_248/mul_1Mulwhile/lstm_cell_248/Sigmoid:y:0&while/lstm_cell_248/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_248/add_1AddV2while/lstm_cell_248/mul:z:0while/lstm_cell_248/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_248/Sigmoid_2Sigmoid"while/lstm_cell_248/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_248/Relu_1Reluwhile/lstm_cell_248/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_248/mul_2Mul!while/lstm_cell_248/Sigmoid_2:y:0(while/lstm_cell_248/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_248/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_248/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_248/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_248/BiasAdd/ReadVariableOp*^while/lstm_cell_248/MatMul/ReadVariableOp,^while/lstm_cell_248/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_248_biasadd_readvariableop_resource5while_lstm_cell_248_biasadd_readvariableop_resource_0"n
4while_lstm_cell_248_matmul_1_readvariableop_resource6while_lstm_cell_248_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_248_matmul_readvariableop_resource4while_lstm_cell_248_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_248/BiasAdd/ReadVariableOp*while/lstm_cell_248/BiasAdd/ReadVariableOp2V
)while/lstm_cell_248/MatMul/ReadVariableOp)while/lstm_cell_248/MatMul/ReadVariableOp2Z
+while/lstm_cell_248/MatMul_1/ReadVariableOp+while/lstm_cell_248/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_295_while_body_1503502.
*lstm_295_while_lstm_295_while_loop_counter4
0lstm_295_while_lstm_295_while_maximum_iterations
lstm_295_while_placeholder 
lstm_295_while_placeholder_1 
lstm_295_while_placeholder_2 
lstm_295_while_placeholder_3-
)lstm_295_while_lstm_295_strided_slice_1_0i
elstm_295_while_tensorarrayv2read_tensorlistgetitem_lstm_295_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_295_while_lstm_cell_247_matmul_readvariableop_resource_0:	d?R
?lstm_295_while_lstm_cell_247_matmul_1_readvariableop_resource_0:	2?M
>lstm_295_while_lstm_cell_247_biasadd_readvariableop_resource_0:	?
lstm_295_while_identity
lstm_295_while_identity_1
lstm_295_while_identity_2
lstm_295_while_identity_3
lstm_295_while_identity_4
lstm_295_while_identity_5+
'lstm_295_while_lstm_295_strided_slice_1g
clstm_295_while_tensorarrayv2read_tensorlistgetitem_lstm_295_tensorarrayunstack_tensorlistfromtensorN
;lstm_295_while_lstm_cell_247_matmul_readvariableop_resource:	d?P
=lstm_295_while_lstm_cell_247_matmul_1_readvariableop_resource:	2?K
<lstm_295_while_lstm_cell_247_biasadd_readvariableop_resource:	???3lstm_295/while/lstm_cell_247/BiasAdd/ReadVariableOp?2lstm_295/while/lstm_cell_247/MatMul/ReadVariableOp?4lstm_295/while/lstm_cell_247/MatMul_1/ReadVariableOp?
@lstm_295/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_295/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_295_while_tensorarrayv2read_tensorlistgetitem_lstm_295_tensorarrayunstack_tensorlistfromtensor_0lstm_295_while_placeholderIlstm_295/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_295/while/lstm_cell_247/MatMul/ReadVariableOpReadVariableOp=lstm_295_while_lstm_cell_247_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_295/while/lstm_cell_247/MatMulMatMul9lstm_295/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_295/while/lstm_cell_247/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_295/while/lstm_cell_247/MatMul_1/ReadVariableOpReadVariableOp?lstm_295_while_lstm_cell_247_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_295/while/lstm_cell_247/MatMul_1MatMullstm_295_while_placeholder_2<lstm_295/while/lstm_cell_247/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_295/while/lstm_cell_247/addAddV2-lstm_295/while/lstm_cell_247/MatMul:product:0/lstm_295/while/lstm_cell_247/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_295/while/lstm_cell_247/BiasAdd/ReadVariableOpReadVariableOp>lstm_295_while_lstm_cell_247_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_295/while/lstm_cell_247/BiasAddBiasAdd$lstm_295/while/lstm_cell_247/add:z:0;lstm_295/while/lstm_cell_247/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_295/while/lstm_cell_247/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_295/while/lstm_cell_247/splitSplit5lstm_295/while/lstm_cell_247/split/split_dim:output:0-lstm_295/while/lstm_cell_247/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_295/while/lstm_cell_247/SigmoidSigmoid+lstm_295/while/lstm_cell_247/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_295/while/lstm_cell_247/Sigmoid_1Sigmoid+lstm_295/while/lstm_cell_247/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_295/while/lstm_cell_247/mulMul*lstm_295/while/lstm_cell_247/Sigmoid_1:y:0lstm_295_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_295/while/lstm_cell_247/ReluRelu+lstm_295/while/lstm_cell_247/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_295/while/lstm_cell_247/mul_1Mul(lstm_295/while/lstm_cell_247/Sigmoid:y:0/lstm_295/while/lstm_cell_247/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_295/while/lstm_cell_247/add_1AddV2$lstm_295/while/lstm_cell_247/mul:z:0&lstm_295/while/lstm_cell_247/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_295/while/lstm_cell_247/Sigmoid_2Sigmoid+lstm_295/while/lstm_cell_247/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_295/while/lstm_cell_247/Relu_1Relu&lstm_295/while/lstm_cell_247/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_295/while/lstm_cell_247/mul_2Mul*lstm_295/while/lstm_cell_247/Sigmoid_2:y:01lstm_295/while/lstm_cell_247/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_295/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_295_while_placeholder_1lstm_295_while_placeholder&lstm_295/while/lstm_cell_247/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_295/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_295/while/addAddV2lstm_295_while_placeholderlstm_295/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_295/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_295/while/add_1AddV2*lstm_295_while_lstm_295_while_loop_counterlstm_295/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_295/while/IdentityIdentitylstm_295/while/add_1:z:0^lstm_295/while/NoOp*
T0*
_output_shapes
: ?
lstm_295/while/Identity_1Identity0lstm_295_while_lstm_295_while_maximum_iterations^lstm_295/while/NoOp*
T0*
_output_shapes
: t
lstm_295/while/Identity_2Identitylstm_295/while/add:z:0^lstm_295/while/NoOp*
T0*
_output_shapes
: ?
lstm_295/while/Identity_3IdentityClstm_295/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_295/while/NoOp*
T0*
_output_shapes
: ?
lstm_295/while/Identity_4Identity&lstm_295/while/lstm_cell_247/mul_2:z:0^lstm_295/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_295/while/Identity_5Identity&lstm_295/while/lstm_cell_247/add_1:z:0^lstm_295/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_295/while/NoOpNoOp4^lstm_295/while/lstm_cell_247/BiasAdd/ReadVariableOp3^lstm_295/while/lstm_cell_247/MatMul/ReadVariableOp5^lstm_295/while/lstm_cell_247/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_295_while_identity lstm_295/while/Identity:output:0"?
lstm_295_while_identity_1"lstm_295/while/Identity_1:output:0"?
lstm_295_while_identity_2"lstm_295/while/Identity_2:output:0"?
lstm_295_while_identity_3"lstm_295/while/Identity_3:output:0"?
lstm_295_while_identity_4"lstm_295/while/Identity_4:output:0"?
lstm_295_while_identity_5"lstm_295/while/Identity_5:output:0"T
'lstm_295_while_lstm_295_strided_slice_1)lstm_295_while_lstm_295_strided_slice_1_0"~
<lstm_295_while_lstm_cell_247_biasadd_readvariableop_resource>lstm_295_while_lstm_cell_247_biasadd_readvariableop_resource_0"?
=lstm_295_while_lstm_cell_247_matmul_1_readvariableop_resource?lstm_295_while_lstm_cell_247_matmul_1_readvariableop_resource_0"|
;lstm_295_while_lstm_cell_247_matmul_readvariableop_resource=lstm_295_while_lstm_cell_247_matmul_readvariableop_resource_0"?
clstm_295_while_tensorarrayv2read_tensorlistgetitem_lstm_295_tensorarrayunstack_tensorlistfromtensorelstm_295_while_tensorarrayv2read_tensorlistgetitem_lstm_295_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_295/while/lstm_cell_247/BiasAdd/ReadVariableOp3lstm_295/while/lstm_cell_247/BiasAdd/ReadVariableOp2h
2lstm_295/while/lstm_cell_247/MatMul/ReadVariableOp2lstm_295/while/lstm_cell_247/MatMul/ReadVariableOp2l
4lstm_295/while/lstm_cell_247/MatMul_1/ReadVariableOp4lstm_295/while/lstm_cell_247/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_dense_98_layer_call_fn_1505588

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
E__inference_dense_98_layer_call_and_return_conditional_losses_1502080o
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
?
?
*__inference_lstm_296_layer_call_fn_1504996

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
E__inference_lstm_296_layer_call_and_return_conditional_losses_1502062o
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
J__inference_lstm_cell_248_layer_call_and_return_conditional_losses_1501476

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
J__inference_lstm_cell_248_layer_call_and_return_conditional_losses_1505860

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
/__inference_lstm_cell_248_layer_call_fn_1505828

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
J__inference_lstm_cell_248_layer_call_and_return_conditional_losses_1501476o
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
?
)sequential_98_lstm_294_while_cond_1500194J
Fsequential_98_lstm_294_while_sequential_98_lstm_294_while_loop_counterP
Lsequential_98_lstm_294_while_sequential_98_lstm_294_while_maximum_iterations,
(sequential_98_lstm_294_while_placeholder.
*sequential_98_lstm_294_while_placeholder_1.
*sequential_98_lstm_294_while_placeholder_2.
*sequential_98_lstm_294_while_placeholder_3L
Hsequential_98_lstm_294_while_less_sequential_98_lstm_294_strided_slice_1c
_sequential_98_lstm_294_while_sequential_98_lstm_294_while_cond_1500194___redundant_placeholder0c
_sequential_98_lstm_294_while_sequential_98_lstm_294_while_cond_1500194___redundant_placeholder1c
_sequential_98_lstm_294_while_sequential_98_lstm_294_while_cond_1500194___redundant_placeholder2c
_sequential_98_lstm_294_while_sequential_98_lstm_294_while_cond_1500194___redundant_placeholder3)
%sequential_98_lstm_294_while_identity
?
!sequential_98/lstm_294/while/LessLess(sequential_98_lstm_294_while_placeholderHsequential_98_lstm_294_while_less_sequential_98_lstm_294_strided_slice_1*
T0*
_output_shapes
: y
%sequential_98/lstm_294/while/IdentityIdentity%sequential_98/lstm_294/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_98_lstm_294_while_identity.sequential_98/lstm_294/while/Identity:output:0*(
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
E__inference_lstm_296_layer_call_and_return_conditional_losses_1502278

inputs>
,lstm_cell_248_matmul_readvariableop_resource:2(@
.lstm_cell_248_matmul_1_readvariableop_resource:
(;
-lstm_cell_248_biasadd_readvariableop_resource:(
identity??$lstm_cell_248/BiasAdd/ReadVariableOp?#lstm_cell_248/MatMul/ReadVariableOp?%lstm_cell_248/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_248/MatMul/ReadVariableOpReadVariableOp,lstm_cell_248_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_248/MatMulMatMulstrided_slice_2:output:0+lstm_cell_248/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_248/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_248_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_248/MatMul_1MatMulzeros:output:0-lstm_cell_248/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_248/addAddV2lstm_cell_248/MatMul:product:0 lstm_cell_248/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_248/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_248_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_248/BiasAddBiasAddlstm_cell_248/add:z:0,lstm_cell_248/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_248/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_248/splitSplit&lstm_cell_248/split/split_dim:output:0lstm_cell_248/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_248/SigmoidSigmoidlstm_cell_248/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_248/Sigmoid_1Sigmoidlstm_cell_248/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_248/mulMullstm_cell_248/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_248/ReluRelulstm_cell_248/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_248/mul_1Mullstm_cell_248/Sigmoid:y:0 lstm_cell_248/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_248/add_1AddV2lstm_cell_248/mul:z:0lstm_cell_248/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_248/Sigmoid_2Sigmoidlstm_cell_248/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_248/Relu_1Relulstm_cell_248/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_248/mul_2Mullstm_cell_248/Sigmoid_2:y:0"lstm_cell_248/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_248_matmul_readvariableop_resource.lstm_cell_248_matmul_1_readvariableop_resource-lstm_cell_248_biasadd_readvariableop_resource*
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
while_body_1502194*
condR
while_cond_1502193*K
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
NoOpNoOp%^lstm_cell_248/BiasAdd/ReadVariableOp$^lstm_cell_248/MatMul/ReadVariableOp&^lstm_cell_248/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_248/BiasAdd/ReadVariableOp$lstm_cell_248/BiasAdd/ReadVariableOp2J
#lstm_cell_248/MatMul/ReadVariableOp#lstm_cell_248/MatMul/ReadVariableOp2N
%lstm_cell_248/MatMul_1/ReadVariableOp%lstm_cell_248/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_295_layer_call_and_return_conditional_losses_1504963

inputs?
,lstm_cell_247_matmul_readvariableop_resource:	d?A
.lstm_cell_247_matmul_1_readvariableop_resource:	2?<
-lstm_cell_247_biasadd_readvariableop_resource:	?
identity??$lstm_cell_247/BiasAdd/ReadVariableOp?#lstm_cell_247/MatMul/ReadVariableOp?%lstm_cell_247/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_247/MatMul/ReadVariableOpReadVariableOp,lstm_cell_247_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_247/MatMulMatMulstrided_slice_2:output:0+lstm_cell_247/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_247/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_247_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_247/MatMul_1MatMulzeros:output:0-lstm_cell_247/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_247/addAddV2lstm_cell_247/MatMul:product:0 lstm_cell_247/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_247/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_247_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_247/BiasAddBiasAddlstm_cell_247/add:z:0,lstm_cell_247/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_247/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_247/splitSplit&lstm_cell_247/split/split_dim:output:0lstm_cell_247/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_247/SigmoidSigmoidlstm_cell_247/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_247/Sigmoid_1Sigmoidlstm_cell_247/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_247/mulMullstm_cell_247/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_247/ReluRelulstm_cell_247/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_247/mul_1Mullstm_cell_247/Sigmoid:y:0 lstm_cell_247/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_247/add_1AddV2lstm_cell_247/mul:z:0lstm_cell_247/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_247/Sigmoid_2Sigmoidlstm_cell_247/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_247/Relu_1Relulstm_cell_247/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_247/mul_2Mullstm_cell_247/Sigmoid_2:y:0"lstm_cell_247/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_247_matmul_readvariableop_resource.lstm_cell_247_matmul_1_readvariableop_resource-lstm_cell_247_biasadd_readvariableop_resource*
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
while_body_1504879*
condR
while_cond_1504878*K
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
NoOpNoOp%^lstm_cell_247/BiasAdd/ReadVariableOp$^lstm_cell_247/MatMul/ReadVariableOp&^lstm_cell_247/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_247/BiasAdd/ReadVariableOp$lstm_cell_247/BiasAdd/ReadVariableOp2J
#lstm_cell_247/MatMul/ReadVariableOp#lstm_cell_247/MatMul/ReadVariableOp2N
%lstm_cell_247/MatMul_1/ReadVariableOp%lstm_cell_247/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_248_layer_call_and_return_conditional_losses_1505892

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
J__inference_sequential_98_layer_call_and_return_conditional_losses_1502087

inputs#
lstm_294_1501763:	?#
lstm_294_1501765:	d?
lstm_294_1501767:	?#
lstm_295_1501913:	d?#
lstm_295_1501915:	2?
lstm_295_1501917:	?"
lstm_296_1502063:2("
lstm_296_1502065:
(
lstm_296_1502067:("
dense_98_1502081:

dense_98_1502083:
identity?? dense_98/StatefulPartitionedCall? lstm_294/StatefulPartitionedCall? lstm_295/StatefulPartitionedCall? lstm_296/StatefulPartitionedCall?
 lstm_294/StatefulPartitionedCallStatefulPartitionedCallinputslstm_294_1501763lstm_294_1501765lstm_294_1501767*
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
E__inference_lstm_294_layer_call_and_return_conditional_losses_1501762?
 lstm_295/StatefulPartitionedCallStatefulPartitionedCall)lstm_294/StatefulPartitionedCall:output:0lstm_295_1501913lstm_295_1501915lstm_295_1501917*
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
E__inference_lstm_295_layer_call_and_return_conditional_losses_1501912?
 lstm_296/StatefulPartitionedCallStatefulPartitionedCall)lstm_295/StatefulPartitionedCall:output:0lstm_296_1502063lstm_296_1502065lstm_296_1502067*
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
E__inference_lstm_296_layer_call_and_return_conditional_losses_1502062?
 dense_98/StatefulPartitionedCallStatefulPartitionedCall)lstm_296/StatefulPartitionedCall:output:0dense_98_1502081dense_98_1502083*
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
E__inference_dense_98_layer_call_and_return_conditional_losses_1502080x
IdentityIdentity)dense_98/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_98/StatefulPartitionedCall!^lstm_294/StatefulPartitionedCall!^lstm_295/StatefulPartitionedCall!^lstm_296/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_98/StatefulPartitionedCall dense_98/StatefulPartitionedCall2D
 lstm_294/StatefulPartitionedCall lstm_294/StatefulPartitionedCall2D
 lstm_295/StatefulPartitionedCall lstm_295/StatefulPartitionedCall2D
 lstm_296/StatefulPartitionedCall lstm_296/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_1504736
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_247_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_247_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_247_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_247_matmul_readvariableop_resource:	d?G
4while_lstm_cell_247_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_247_biasadd_readvariableop_resource:	???*while/lstm_cell_247/BiasAdd/ReadVariableOp?)while/lstm_cell_247/MatMul/ReadVariableOp?+while/lstm_cell_247/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_247/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_247_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_247/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_247/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_247/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_247_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_247/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_247/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_247/addAddV2$while/lstm_cell_247/MatMul:product:0&while/lstm_cell_247/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_247/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_247_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_247/BiasAddBiasAddwhile/lstm_cell_247/add:z:02while/lstm_cell_247/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_247/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_247/splitSplit,while/lstm_cell_247/split/split_dim:output:0$while/lstm_cell_247/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_247/SigmoidSigmoid"while/lstm_cell_247/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_247/Sigmoid_1Sigmoid"while/lstm_cell_247/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_247/mulMul!while/lstm_cell_247/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_247/ReluRelu"while/lstm_cell_247/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_247/mul_1Mulwhile/lstm_cell_247/Sigmoid:y:0&while/lstm_cell_247/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_247/add_1AddV2while/lstm_cell_247/mul:z:0while/lstm_cell_247/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_247/Sigmoid_2Sigmoid"while/lstm_cell_247/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_247/Relu_1Reluwhile/lstm_cell_247/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_247/mul_2Mul!while/lstm_cell_247/Sigmoid_2:y:0(while/lstm_cell_247/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_247/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_247/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_247/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_247/BiasAdd/ReadVariableOp*^while/lstm_cell_247/MatMul/ReadVariableOp,^while/lstm_cell_247/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_247_biasadd_readvariableop_resource5while_lstm_cell_247_biasadd_readvariableop_resource_0"n
4while_lstm_cell_247_matmul_1_readvariableop_resource6while_lstm_cell_247_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_247_matmul_readvariableop_resource4while_lstm_cell_247_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_247/BiasAdd/ReadVariableOp*while/lstm_cell_247/BiasAdd/ReadVariableOp2V
)while/lstm_cell_247/MatMul/ReadVariableOp)while/lstm_cell_247/MatMul/ReadVariableOp2Z
+while/lstm_cell_247/MatMul_1/ReadVariableOp+while/lstm_cell_247/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_295_while_body_1503075.
*lstm_295_while_lstm_295_while_loop_counter4
0lstm_295_while_lstm_295_while_maximum_iterations
lstm_295_while_placeholder 
lstm_295_while_placeholder_1 
lstm_295_while_placeholder_2 
lstm_295_while_placeholder_3-
)lstm_295_while_lstm_295_strided_slice_1_0i
elstm_295_while_tensorarrayv2read_tensorlistgetitem_lstm_295_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_295_while_lstm_cell_247_matmul_readvariableop_resource_0:	d?R
?lstm_295_while_lstm_cell_247_matmul_1_readvariableop_resource_0:	2?M
>lstm_295_while_lstm_cell_247_biasadd_readvariableop_resource_0:	?
lstm_295_while_identity
lstm_295_while_identity_1
lstm_295_while_identity_2
lstm_295_while_identity_3
lstm_295_while_identity_4
lstm_295_while_identity_5+
'lstm_295_while_lstm_295_strided_slice_1g
clstm_295_while_tensorarrayv2read_tensorlistgetitem_lstm_295_tensorarrayunstack_tensorlistfromtensorN
;lstm_295_while_lstm_cell_247_matmul_readvariableop_resource:	d?P
=lstm_295_while_lstm_cell_247_matmul_1_readvariableop_resource:	2?K
<lstm_295_while_lstm_cell_247_biasadd_readvariableop_resource:	???3lstm_295/while/lstm_cell_247/BiasAdd/ReadVariableOp?2lstm_295/while/lstm_cell_247/MatMul/ReadVariableOp?4lstm_295/while/lstm_cell_247/MatMul_1/ReadVariableOp?
@lstm_295/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_295/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_295_while_tensorarrayv2read_tensorlistgetitem_lstm_295_tensorarrayunstack_tensorlistfromtensor_0lstm_295_while_placeholderIlstm_295/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_295/while/lstm_cell_247/MatMul/ReadVariableOpReadVariableOp=lstm_295_while_lstm_cell_247_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_295/while/lstm_cell_247/MatMulMatMul9lstm_295/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_295/while/lstm_cell_247/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_295/while/lstm_cell_247/MatMul_1/ReadVariableOpReadVariableOp?lstm_295_while_lstm_cell_247_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_295/while/lstm_cell_247/MatMul_1MatMullstm_295_while_placeholder_2<lstm_295/while/lstm_cell_247/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_295/while/lstm_cell_247/addAddV2-lstm_295/while/lstm_cell_247/MatMul:product:0/lstm_295/while/lstm_cell_247/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_295/while/lstm_cell_247/BiasAdd/ReadVariableOpReadVariableOp>lstm_295_while_lstm_cell_247_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_295/while/lstm_cell_247/BiasAddBiasAdd$lstm_295/while/lstm_cell_247/add:z:0;lstm_295/while/lstm_cell_247/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_295/while/lstm_cell_247/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_295/while/lstm_cell_247/splitSplit5lstm_295/while/lstm_cell_247/split/split_dim:output:0-lstm_295/while/lstm_cell_247/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_295/while/lstm_cell_247/SigmoidSigmoid+lstm_295/while/lstm_cell_247/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_295/while/lstm_cell_247/Sigmoid_1Sigmoid+lstm_295/while/lstm_cell_247/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_295/while/lstm_cell_247/mulMul*lstm_295/while/lstm_cell_247/Sigmoid_1:y:0lstm_295_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_295/while/lstm_cell_247/ReluRelu+lstm_295/while/lstm_cell_247/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_295/while/lstm_cell_247/mul_1Mul(lstm_295/while/lstm_cell_247/Sigmoid:y:0/lstm_295/while/lstm_cell_247/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_295/while/lstm_cell_247/add_1AddV2$lstm_295/while/lstm_cell_247/mul:z:0&lstm_295/while/lstm_cell_247/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_295/while/lstm_cell_247/Sigmoid_2Sigmoid+lstm_295/while/lstm_cell_247/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_295/while/lstm_cell_247/Relu_1Relu&lstm_295/while/lstm_cell_247/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_295/while/lstm_cell_247/mul_2Mul*lstm_295/while/lstm_cell_247/Sigmoid_2:y:01lstm_295/while/lstm_cell_247/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_295/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_295_while_placeholder_1lstm_295_while_placeholder&lstm_295/while/lstm_cell_247/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_295/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_295/while/addAddV2lstm_295_while_placeholderlstm_295/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_295/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_295/while/add_1AddV2*lstm_295_while_lstm_295_while_loop_counterlstm_295/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_295/while/IdentityIdentitylstm_295/while/add_1:z:0^lstm_295/while/NoOp*
T0*
_output_shapes
: ?
lstm_295/while/Identity_1Identity0lstm_295_while_lstm_295_while_maximum_iterations^lstm_295/while/NoOp*
T0*
_output_shapes
: t
lstm_295/while/Identity_2Identitylstm_295/while/add:z:0^lstm_295/while/NoOp*
T0*
_output_shapes
: ?
lstm_295/while/Identity_3IdentityClstm_295/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_295/while/NoOp*
T0*
_output_shapes
: ?
lstm_295/while/Identity_4Identity&lstm_295/while/lstm_cell_247/mul_2:z:0^lstm_295/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_295/while/Identity_5Identity&lstm_295/while/lstm_cell_247/add_1:z:0^lstm_295/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_295/while/NoOpNoOp4^lstm_295/while/lstm_cell_247/BiasAdd/ReadVariableOp3^lstm_295/while/lstm_cell_247/MatMul/ReadVariableOp5^lstm_295/while/lstm_cell_247/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_295_while_identity lstm_295/while/Identity:output:0"?
lstm_295_while_identity_1"lstm_295/while/Identity_1:output:0"?
lstm_295_while_identity_2"lstm_295/while/Identity_2:output:0"?
lstm_295_while_identity_3"lstm_295/while/Identity_3:output:0"?
lstm_295_while_identity_4"lstm_295/while/Identity_4:output:0"?
lstm_295_while_identity_5"lstm_295/while/Identity_5:output:0"T
'lstm_295_while_lstm_295_strided_slice_1)lstm_295_while_lstm_295_strided_slice_1_0"~
<lstm_295_while_lstm_cell_247_biasadd_readvariableop_resource>lstm_295_while_lstm_cell_247_biasadd_readvariableop_resource_0"?
=lstm_295_while_lstm_cell_247_matmul_1_readvariableop_resource?lstm_295_while_lstm_cell_247_matmul_1_readvariableop_resource_0"|
;lstm_295_while_lstm_cell_247_matmul_readvariableop_resource=lstm_295_while_lstm_cell_247_matmul_readvariableop_resource_0"?
clstm_295_while_tensorarrayv2read_tensorlistgetitem_lstm_295_tensorarrayunstack_tensorlistfromtensorelstm_295_while_tensorarrayv2read_tensorlistgetitem_lstm_295_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_295/while/lstm_cell_247/BiasAdd/ReadVariableOp3lstm_295/while/lstm_cell_247/BiasAdd/ReadVariableOp2h
2lstm_295/while/lstm_cell_247/MatMul/ReadVariableOp2lstm_295/while/lstm_cell_247/MatMul/ReadVariableOp2l
4lstm_295/while/lstm_cell_247/MatMul_1/ReadVariableOp4lstm_295/while/lstm_cell_247/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_246_layer_call_and_return_conditional_losses_1505696

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
/__inference_lstm_cell_248_layer_call_fn_1505811

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
J__inference_lstm_cell_248_layer_call_and_return_conditional_losses_1501330o
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
while_body_1505495
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_248_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_248_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_248_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_248_matmul_readvariableop_resource:2(F
4while_lstm_cell_248_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_248_biasadd_readvariableop_resource:(??*while/lstm_cell_248/BiasAdd/ReadVariableOp?)while/lstm_cell_248/MatMul/ReadVariableOp?+while/lstm_cell_248/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_248/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_248_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_248/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_248/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_248/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_248_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_248/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_248/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_248/addAddV2$while/lstm_cell_248/MatMul:product:0&while/lstm_cell_248/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_248/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_248_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_248/BiasAddBiasAddwhile/lstm_cell_248/add:z:02while/lstm_cell_248/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_248/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_248/splitSplit,while/lstm_cell_248/split/split_dim:output:0$while/lstm_cell_248/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_248/SigmoidSigmoid"while/lstm_cell_248/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_248/Sigmoid_1Sigmoid"while/lstm_cell_248/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_248/mulMul!while/lstm_cell_248/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_248/ReluRelu"while/lstm_cell_248/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_248/mul_1Mulwhile/lstm_cell_248/Sigmoid:y:0&while/lstm_cell_248/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_248/add_1AddV2while/lstm_cell_248/mul:z:0while/lstm_cell_248/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_248/Sigmoid_2Sigmoid"while/lstm_cell_248/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_248/Relu_1Reluwhile/lstm_cell_248/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_248/mul_2Mul!while/lstm_cell_248/Sigmoid_2:y:0(while/lstm_cell_248/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_248/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_248/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_248/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_248/BiasAdd/ReadVariableOp*^while/lstm_cell_248/MatMul/ReadVariableOp,^while/lstm_cell_248/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_248_biasadd_readvariableop_resource5while_lstm_cell_248_biasadd_readvariableop_resource_0"n
4while_lstm_cell_248_matmul_1_readvariableop_resource6while_lstm_cell_248_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_248_matmul_readvariableop_resource4while_lstm_cell_248_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_248/BiasAdd/ReadVariableOp*while/lstm_cell_248/BiasAdd/ReadVariableOp2V
)while/lstm_cell_248/MatMul/ReadVariableOp)while/lstm_cell_248/MatMul/ReadVariableOp2Z
+while/lstm_cell_248/MatMul_1/ReadVariableOp+while/lstm_cell_248/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1501678
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_246_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_246_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_246_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_246_matmul_readvariableop_resource:	?G
4while_lstm_cell_246_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_246_biasadd_readvariableop_resource:	???*while/lstm_cell_246/BiasAdd/ReadVariableOp?)while/lstm_cell_246/MatMul/ReadVariableOp?+while/lstm_cell_246/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_246/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_246_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_246/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_246/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_246/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_246_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_246/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_246/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_246/addAddV2$while/lstm_cell_246/MatMul:product:0&while/lstm_cell_246/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_246/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_246_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_246/BiasAddBiasAddwhile/lstm_cell_246/add:z:02while/lstm_cell_246/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_246/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_246/splitSplit,while/lstm_cell_246/split/split_dim:output:0$while/lstm_cell_246/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_246/SigmoidSigmoid"while/lstm_cell_246/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_246/Sigmoid_1Sigmoid"while/lstm_cell_246/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_246/mulMul!while/lstm_cell_246/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_246/ReluRelu"while/lstm_cell_246/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_246/mul_1Mulwhile/lstm_cell_246/Sigmoid:y:0&while/lstm_cell_246/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_246/add_1AddV2while/lstm_cell_246/mul:z:0while/lstm_cell_246/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_246/Sigmoid_2Sigmoid"while/lstm_cell_246/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_246/Relu_1Reluwhile/lstm_cell_246/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_246/mul_2Mul!while/lstm_cell_246/Sigmoid_2:y:0(while/lstm_cell_246/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_246/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_246/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_246/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_246/BiasAdd/ReadVariableOp*^while/lstm_cell_246/MatMul/ReadVariableOp,^while/lstm_cell_246/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_246_biasadd_readvariableop_resource5while_lstm_cell_246_biasadd_readvariableop_resource_0"n
4while_lstm_cell_246_matmul_1_readvariableop_resource6while_lstm_cell_246_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_246_matmul_readvariableop_resource4while_lstm_cell_246_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_246/BiasAdd/ReadVariableOp*while/lstm_cell_246/BiasAdd/ReadVariableOp2V
)while/lstm_cell_246/MatMul/ReadVariableOp)while/lstm_cell_246/MatMul/ReadVariableOp2Z
+while/lstm_cell_246/MatMul_1/ReadVariableOp+while/lstm_cell_246/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1502523
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1502523___redundant_placeholder05
1while_while_cond_1502523___redundant_placeholder15
1while_while_cond_1502523___redundant_placeholder25
1while_while_cond_1502523___redundant_placeholder3
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
while_cond_1502193
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1502193___redundant_placeholder05
1while_while_cond_1502193___redundant_placeholder15
1while_while_cond_1502193___redundant_placeholder25
1while_while_cond_1502193___redundant_placeholder3
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
/__inference_sequential_98_layer_call_fn_1502850

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
J__inference_sequential_98_layer_call_and_return_conditional_losses_1502087o
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
while_cond_1503833
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1503833___redundant_placeholder05
1while_while_cond_1503833___redundant_placeholder15
1while_while_cond_1503833___redundant_placeholder25
1while_while_cond_1503833___redundant_placeholder3
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
E__inference_dense_98_layer_call_and_return_conditional_losses_1505598

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
while_body_1504120
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_246_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_246_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_246_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_246_matmul_readvariableop_resource:	?G
4while_lstm_cell_246_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_246_biasadd_readvariableop_resource:	???*while/lstm_cell_246/BiasAdd/ReadVariableOp?)while/lstm_cell_246/MatMul/ReadVariableOp?+while/lstm_cell_246/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_246/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_246_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_246/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_246/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_246/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_246_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_246/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_246/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_246/addAddV2$while/lstm_cell_246/MatMul:product:0&while/lstm_cell_246/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_246/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_246_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_246/BiasAddBiasAddwhile/lstm_cell_246/add:z:02while/lstm_cell_246/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_246/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_246/splitSplit,while/lstm_cell_246/split/split_dim:output:0$while/lstm_cell_246/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_246/SigmoidSigmoid"while/lstm_cell_246/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_246/Sigmoid_1Sigmoid"while/lstm_cell_246/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_246/mulMul!while/lstm_cell_246/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_246/ReluRelu"while/lstm_cell_246/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_246/mul_1Mulwhile/lstm_cell_246/Sigmoid:y:0&while/lstm_cell_246/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_246/add_1AddV2while/lstm_cell_246/mul:z:0while/lstm_cell_246/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_246/Sigmoid_2Sigmoid"while/lstm_cell_246/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_246/Relu_1Reluwhile/lstm_cell_246/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_246/mul_2Mul!while/lstm_cell_246/Sigmoid_2:y:0(while/lstm_cell_246/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_246/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_246/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_246/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_246/BiasAdd/ReadVariableOp*^while/lstm_cell_246/MatMul/ReadVariableOp,^while/lstm_cell_246/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_246_biasadd_readvariableop_resource5while_lstm_cell_246_biasadd_readvariableop_resource_0"n
4while_lstm_cell_246_matmul_1_readvariableop_resource6while_lstm_cell_246_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_246_matmul_readvariableop_resource4while_lstm_cell_246_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_246/BiasAdd/ReadVariableOp*while/lstm_cell_246/BiasAdd/ReadVariableOp2V
)while/lstm_cell_246/MatMul/ReadVariableOp)while/lstm_cell_246/MatMul/ReadVariableOp2Z
+while/lstm_cell_246/MatMul_1/ReadVariableOp+while/lstm_cell_246/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1501977
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1501977___redundant_placeholder05
1while_while_cond_1501977___redundant_placeholder15
1while_while_cond_1501977___redundant_placeholder25
1while_while_cond_1501977___redundant_placeholder3
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

lstm_296_while_body_1503214.
*lstm_296_while_lstm_296_while_loop_counter4
0lstm_296_while_lstm_296_while_maximum_iterations
lstm_296_while_placeholder 
lstm_296_while_placeholder_1 
lstm_296_while_placeholder_2 
lstm_296_while_placeholder_3-
)lstm_296_while_lstm_296_strided_slice_1_0i
elstm_296_while_tensorarrayv2read_tensorlistgetitem_lstm_296_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_296_while_lstm_cell_248_matmul_readvariableop_resource_0:2(Q
?lstm_296_while_lstm_cell_248_matmul_1_readvariableop_resource_0:
(L
>lstm_296_while_lstm_cell_248_biasadd_readvariableop_resource_0:(
lstm_296_while_identity
lstm_296_while_identity_1
lstm_296_while_identity_2
lstm_296_while_identity_3
lstm_296_while_identity_4
lstm_296_while_identity_5+
'lstm_296_while_lstm_296_strided_slice_1g
clstm_296_while_tensorarrayv2read_tensorlistgetitem_lstm_296_tensorarrayunstack_tensorlistfromtensorM
;lstm_296_while_lstm_cell_248_matmul_readvariableop_resource:2(O
=lstm_296_while_lstm_cell_248_matmul_1_readvariableop_resource:
(J
<lstm_296_while_lstm_cell_248_biasadd_readvariableop_resource:(??3lstm_296/while/lstm_cell_248/BiasAdd/ReadVariableOp?2lstm_296/while/lstm_cell_248/MatMul/ReadVariableOp?4lstm_296/while/lstm_cell_248/MatMul_1/ReadVariableOp?
@lstm_296/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_296/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_296_while_tensorarrayv2read_tensorlistgetitem_lstm_296_tensorarrayunstack_tensorlistfromtensor_0lstm_296_while_placeholderIlstm_296/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_296/while/lstm_cell_248/MatMul/ReadVariableOpReadVariableOp=lstm_296_while_lstm_cell_248_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_296/while/lstm_cell_248/MatMulMatMul9lstm_296/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_296/while/lstm_cell_248/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_296/while/lstm_cell_248/MatMul_1/ReadVariableOpReadVariableOp?lstm_296_while_lstm_cell_248_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_296/while/lstm_cell_248/MatMul_1MatMullstm_296_while_placeholder_2<lstm_296/while/lstm_cell_248/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_296/while/lstm_cell_248/addAddV2-lstm_296/while/lstm_cell_248/MatMul:product:0/lstm_296/while/lstm_cell_248/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_296/while/lstm_cell_248/BiasAdd/ReadVariableOpReadVariableOp>lstm_296_while_lstm_cell_248_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_296/while/lstm_cell_248/BiasAddBiasAdd$lstm_296/while/lstm_cell_248/add:z:0;lstm_296/while/lstm_cell_248/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_296/while/lstm_cell_248/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_296/while/lstm_cell_248/splitSplit5lstm_296/while/lstm_cell_248/split/split_dim:output:0-lstm_296/while/lstm_cell_248/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_296/while/lstm_cell_248/SigmoidSigmoid+lstm_296/while/lstm_cell_248/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_296/while/lstm_cell_248/Sigmoid_1Sigmoid+lstm_296/while/lstm_cell_248/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_296/while/lstm_cell_248/mulMul*lstm_296/while/lstm_cell_248/Sigmoid_1:y:0lstm_296_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_296/while/lstm_cell_248/ReluRelu+lstm_296/while/lstm_cell_248/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_296/while/lstm_cell_248/mul_1Mul(lstm_296/while/lstm_cell_248/Sigmoid:y:0/lstm_296/while/lstm_cell_248/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_296/while/lstm_cell_248/add_1AddV2$lstm_296/while/lstm_cell_248/mul:z:0&lstm_296/while/lstm_cell_248/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_296/while/lstm_cell_248/Sigmoid_2Sigmoid+lstm_296/while/lstm_cell_248/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_296/while/lstm_cell_248/Relu_1Relu&lstm_296/while/lstm_cell_248/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_296/while/lstm_cell_248/mul_2Mul*lstm_296/while/lstm_cell_248/Sigmoid_2:y:01lstm_296/while/lstm_cell_248/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_296/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_296_while_placeholder_1lstm_296_while_placeholder&lstm_296/while/lstm_cell_248/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_296/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_296/while/addAddV2lstm_296_while_placeholderlstm_296/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_296/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_296/while/add_1AddV2*lstm_296_while_lstm_296_while_loop_counterlstm_296/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_296/while/IdentityIdentitylstm_296/while/add_1:z:0^lstm_296/while/NoOp*
T0*
_output_shapes
: ?
lstm_296/while/Identity_1Identity0lstm_296_while_lstm_296_while_maximum_iterations^lstm_296/while/NoOp*
T0*
_output_shapes
: t
lstm_296/while/Identity_2Identitylstm_296/while/add:z:0^lstm_296/while/NoOp*
T0*
_output_shapes
: ?
lstm_296/while/Identity_3IdentityClstm_296/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_296/while/NoOp*
T0*
_output_shapes
: ?
lstm_296/while/Identity_4Identity&lstm_296/while/lstm_cell_248/mul_2:z:0^lstm_296/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_296/while/Identity_5Identity&lstm_296/while/lstm_cell_248/add_1:z:0^lstm_296/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_296/while/NoOpNoOp4^lstm_296/while/lstm_cell_248/BiasAdd/ReadVariableOp3^lstm_296/while/lstm_cell_248/MatMul/ReadVariableOp5^lstm_296/while/lstm_cell_248/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_296_while_identity lstm_296/while/Identity:output:0"?
lstm_296_while_identity_1"lstm_296/while/Identity_1:output:0"?
lstm_296_while_identity_2"lstm_296/while/Identity_2:output:0"?
lstm_296_while_identity_3"lstm_296/while/Identity_3:output:0"?
lstm_296_while_identity_4"lstm_296/while/Identity_4:output:0"?
lstm_296_while_identity_5"lstm_296/while/Identity_5:output:0"T
'lstm_296_while_lstm_296_strided_slice_1)lstm_296_while_lstm_296_strided_slice_1_0"~
<lstm_296_while_lstm_cell_248_biasadd_readvariableop_resource>lstm_296_while_lstm_cell_248_biasadd_readvariableop_resource_0"?
=lstm_296_while_lstm_cell_248_matmul_1_readvariableop_resource?lstm_296_while_lstm_cell_248_matmul_1_readvariableop_resource_0"|
;lstm_296_while_lstm_cell_248_matmul_readvariableop_resource=lstm_296_while_lstm_cell_248_matmul_readvariableop_resource_0"?
clstm_296_while_tensorarrayv2read_tensorlistgetitem_lstm_296_tensorarrayunstack_tensorlistfromtensorelstm_296_while_tensorarrayv2read_tensorlistgetitem_lstm_296_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_296/while/lstm_cell_248/BiasAdd/ReadVariableOp3lstm_296/while/lstm_cell_248/BiasAdd/ReadVariableOp2h
2lstm_296/while/lstm_cell_248/MatMul/ReadVariableOp2lstm_296/while/lstm_cell_248/MatMul/ReadVariableOp2l
4lstm_296/while/lstm_cell_248/MatMul_1/ReadVariableOp4lstm_296/while/lstm_cell_248/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_247_layer_call_and_return_conditional_losses_1501126

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
while_cond_1505065
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1505065___redundant_placeholder05
1while_while_cond_1505065___redundant_placeholder15
1while_while_cond_1505065___redundant_placeholder25
1while_while_cond_1505065___redundant_placeholder3
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
while_cond_1504592
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1504592___redundant_placeholder05
1while_while_cond_1504592___redundant_placeholder15
1while_while_cond_1504592___redundant_placeholder25
1while_while_cond_1504592___redundant_placeholder3
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
while_body_1503977
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_246_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_246_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_246_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_246_matmul_readvariableop_resource:	?G
4while_lstm_cell_246_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_246_biasadd_readvariableop_resource:	???*while/lstm_cell_246/BiasAdd/ReadVariableOp?)while/lstm_cell_246/MatMul/ReadVariableOp?+while/lstm_cell_246/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_246/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_246_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_246/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_246/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_246/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_246_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_246/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_246/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_246/addAddV2$while/lstm_cell_246/MatMul:product:0&while/lstm_cell_246/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_246/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_246_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_246/BiasAddBiasAddwhile/lstm_cell_246/add:z:02while/lstm_cell_246/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_246/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_246/splitSplit,while/lstm_cell_246/split/split_dim:output:0$while/lstm_cell_246/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_246/SigmoidSigmoid"while/lstm_cell_246/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_246/Sigmoid_1Sigmoid"while/lstm_cell_246/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_246/mulMul!while/lstm_cell_246/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_246/ReluRelu"while/lstm_cell_246/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_246/mul_1Mulwhile/lstm_cell_246/Sigmoid:y:0&while/lstm_cell_246/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_246/add_1AddV2while/lstm_cell_246/mul:z:0while/lstm_cell_246/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_246/Sigmoid_2Sigmoid"while/lstm_cell_246/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_246/Relu_1Reluwhile/lstm_cell_246/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_246/mul_2Mul!while/lstm_cell_246/Sigmoid_2:y:0(while/lstm_cell_246/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_246/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_246/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_246/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_246/BiasAdd/ReadVariableOp*^while/lstm_cell_246/MatMul/ReadVariableOp,^while/lstm_cell_246/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_246_biasadd_readvariableop_resource5while_lstm_cell_246_biasadd_readvariableop_resource_0"n
4while_lstm_cell_246_matmul_1_readvariableop_resource6while_lstm_cell_246_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_246_matmul_readvariableop_resource4while_lstm_cell_246_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_246/BiasAdd/ReadVariableOp*while/lstm_cell_246/BiasAdd/ReadVariableOp2V
)while/lstm_cell_246/MatMul/ReadVariableOp)while/lstm_cell_246/MatMul/ReadVariableOp2Z
+while/lstm_cell_246/MatMul_1/ReadVariableOp+while/lstm_cell_246/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1502194
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_248_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_248_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_248_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_248_matmul_readvariableop_resource:2(F
4while_lstm_cell_248_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_248_biasadd_readvariableop_resource:(??*while/lstm_cell_248/BiasAdd/ReadVariableOp?)while/lstm_cell_248/MatMul/ReadVariableOp?+while/lstm_cell_248/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_248/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_248_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_248/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_248/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_248/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_248_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_248/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_248/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_248/addAddV2$while/lstm_cell_248/MatMul:product:0&while/lstm_cell_248/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_248/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_248_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_248/BiasAddBiasAddwhile/lstm_cell_248/add:z:02while/lstm_cell_248/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_248/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_248/splitSplit,while/lstm_cell_248/split/split_dim:output:0$while/lstm_cell_248/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_248/SigmoidSigmoid"while/lstm_cell_248/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_248/Sigmoid_1Sigmoid"while/lstm_cell_248/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_248/mulMul!while/lstm_cell_248/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_248/ReluRelu"while/lstm_cell_248/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_248/mul_1Mulwhile/lstm_cell_248/Sigmoid:y:0&while/lstm_cell_248/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_248/add_1AddV2while/lstm_cell_248/mul:z:0while/lstm_cell_248/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_248/Sigmoid_2Sigmoid"while/lstm_cell_248/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_248/Relu_1Reluwhile/lstm_cell_248/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_248/mul_2Mul!while/lstm_cell_248/Sigmoid_2:y:0(while/lstm_cell_248/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_248/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_248/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_248/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_248/BiasAdd/ReadVariableOp*^while/lstm_cell_248/MatMul/ReadVariableOp,^while/lstm_cell_248/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_248_biasadd_readvariableop_resource5while_lstm_cell_248_biasadd_readvariableop_resource_0"n
4while_lstm_cell_248_matmul_1_readvariableop_resource6while_lstm_cell_248_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_248_matmul_readvariableop_resource4while_lstm_cell_248_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_248/BiasAdd/ReadVariableOp*while/lstm_cell_248/BiasAdd/ReadVariableOp2V
)while/lstm_cell_248/MatMul/ReadVariableOp)while/lstm_cell_248/MatMul/ReadVariableOp2Z
+while/lstm_cell_248/MatMul_1/ReadVariableOp+while/lstm_cell_248/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_296_while_body_1503641.
*lstm_296_while_lstm_296_while_loop_counter4
0lstm_296_while_lstm_296_while_maximum_iterations
lstm_296_while_placeholder 
lstm_296_while_placeholder_1 
lstm_296_while_placeholder_2 
lstm_296_while_placeholder_3-
)lstm_296_while_lstm_296_strided_slice_1_0i
elstm_296_while_tensorarrayv2read_tensorlistgetitem_lstm_296_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_296_while_lstm_cell_248_matmul_readvariableop_resource_0:2(Q
?lstm_296_while_lstm_cell_248_matmul_1_readvariableop_resource_0:
(L
>lstm_296_while_lstm_cell_248_biasadd_readvariableop_resource_0:(
lstm_296_while_identity
lstm_296_while_identity_1
lstm_296_while_identity_2
lstm_296_while_identity_3
lstm_296_while_identity_4
lstm_296_while_identity_5+
'lstm_296_while_lstm_296_strided_slice_1g
clstm_296_while_tensorarrayv2read_tensorlistgetitem_lstm_296_tensorarrayunstack_tensorlistfromtensorM
;lstm_296_while_lstm_cell_248_matmul_readvariableop_resource:2(O
=lstm_296_while_lstm_cell_248_matmul_1_readvariableop_resource:
(J
<lstm_296_while_lstm_cell_248_biasadd_readvariableop_resource:(??3lstm_296/while/lstm_cell_248/BiasAdd/ReadVariableOp?2lstm_296/while/lstm_cell_248/MatMul/ReadVariableOp?4lstm_296/while/lstm_cell_248/MatMul_1/ReadVariableOp?
@lstm_296/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_296/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_296_while_tensorarrayv2read_tensorlistgetitem_lstm_296_tensorarrayunstack_tensorlistfromtensor_0lstm_296_while_placeholderIlstm_296/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_296/while/lstm_cell_248/MatMul/ReadVariableOpReadVariableOp=lstm_296_while_lstm_cell_248_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_296/while/lstm_cell_248/MatMulMatMul9lstm_296/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_296/while/lstm_cell_248/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_296/while/lstm_cell_248/MatMul_1/ReadVariableOpReadVariableOp?lstm_296_while_lstm_cell_248_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_296/while/lstm_cell_248/MatMul_1MatMullstm_296_while_placeholder_2<lstm_296/while/lstm_cell_248/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_296/while/lstm_cell_248/addAddV2-lstm_296/while/lstm_cell_248/MatMul:product:0/lstm_296/while/lstm_cell_248/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_296/while/lstm_cell_248/BiasAdd/ReadVariableOpReadVariableOp>lstm_296_while_lstm_cell_248_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_296/while/lstm_cell_248/BiasAddBiasAdd$lstm_296/while/lstm_cell_248/add:z:0;lstm_296/while/lstm_cell_248/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_296/while/lstm_cell_248/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_296/while/lstm_cell_248/splitSplit5lstm_296/while/lstm_cell_248/split/split_dim:output:0-lstm_296/while/lstm_cell_248/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_296/while/lstm_cell_248/SigmoidSigmoid+lstm_296/while/lstm_cell_248/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_296/while/lstm_cell_248/Sigmoid_1Sigmoid+lstm_296/while/lstm_cell_248/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_296/while/lstm_cell_248/mulMul*lstm_296/while/lstm_cell_248/Sigmoid_1:y:0lstm_296_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_296/while/lstm_cell_248/ReluRelu+lstm_296/while/lstm_cell_248/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_296/while/lstm_cell_248/mul_1Mul(lstm_296/while/lstm_cell_248/Sigmoid:y:0/lstm_296/while/lstm_cell_248/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_296/while/lstm_cell_248/add_1AddV2$lstm_296/while/lstm_cell_248/mul:z:0&lstm_296/while/lstm_cell_248/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_296/while/lstm_cell_248/Sigmoid_2Sigmoid+lstm_296/while/lstm_cell_248/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_296/while/lstm_cell_248/Relu_1Relu&lstm_296/while/lstm_cell_248/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_296/while/lstm_cell_248/mul_2Mul*lstm_296/while/lstm_cell_248/Sigmoid_2:y:01lstm_296/while/lstm_cell_248/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_296/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_296_while_placeholder_1lstm_296_while_placeholder&lstm_296/while/lstm_cell_248/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_296/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_296/while/addAddV2lstm_296_while_placeholderlstm_296/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_296/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_296/while/add_1AddV2*lstm_296_while_lstm_296_while_loop_counterlstm_296/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_296/while/IdentityIdentitylstm_296/while/add_1:z:0^lstm_296/while/NoOp*
T0*
_output_shapes
: ?
lstm_296/while/Identity_1Identity0lstm_296_while_lstm_296_while_maximum_iterations^lstm_296/while/NoOp*
T0*
_output_shapes
: t
lstm_296/while/Identity_2Identitylstm_296/while/add:z:0^lstm_296/while/NoOp*
T0*
_output_shapes
: ?
lstm_296/while/Identity_3IdentityClstm_296/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_296/while/NoOp*
T0*
_output_shapes
: ?
lstm_296/while/Identity_4Identity&lstm_296/while/lstm_cell_248/mul_2:z:0^lstm_296/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_296/while/Identity_5Identity&lstm_296/while/lstm_cell_248/add_1:z:0^lstm_296/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_296/while/NoOpNoOp4^lstm_296/while/lstm_cell_248/BiasAdd/ReadVariableOp3^lstm_296/while/lstm_cell_248/MatMul/ReadVariableOp5^lstm_296/while/lstm_cell_248/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_296_while_identity lstm_296/while/Identity:output:0"?
lstm_296_while_identity_1"lstm_296/while/Identity_1:output:0"?
lstm_296_while_identity_2"lstm_296/while/Identity_2:output:0"?
lstm_296_while_identity_3"lstm_296/while/Identity_3:output:0"?
lstm_296_while_identity_4"lstm_296/while/Identity_4:output:0"?
lstm_296_while_identity_5"lstm_296/while/Identity_5:output:0"T
'lstm_296_while_lstm_296_strided_slice_1)lstm_296_while_lstm_296_strided_slice_1_0"~
<lstm_296_while_lstm_cell_248_biasadd_readvariableop_resource>lstm_296_while_lstm_cell_248_biasadd_readvariableop_resource_0"?
=lstm_296_while_lstm_cell_248_matmul_1_readvariableop_resource?lstm_296_while_lstm_cell_248_matmul_1_readvariableop_resource_0"|
;lstm_296_while_lstm_cell_248_matmul_readvariableop_resource=lstm_296_while_lstm_cell_248_matmul_readvariableop_resource_0"?
clstm_296_while_tensorarrayv2read_tensorlistgetitem_lstm_296_tensorarrayunstack_tensorlistfromtensorelstm_296_while_tensorarrayv2read_tensorlistgetitem_lstm_296_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_296/while/lstm_cell_248/BiasAdd/ReadVariableOp3lstm_296/while/lstm_cell_248/BiasAdd/ReadVariableOp2h
2lstm_296/while/lstm_cell_248/MatMul/ReadVariableOp2lstm_296/while/lstm_cell_248/MatMul/ReadVariableOp2l
4lstm_296/while/lstm_cell_248/MatMul_1/ReadVariableOp4lstm_296/while/lstm_cell_248/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_295_layer_call_and_return_conditional_losses_1504677
inputs_0?
,lstm_cell_247_matmul_readvariableop_resource:	d?A
.lstm_cell_247_matmul_1_readvariableop_resource:	2?<
-lstm_cell_247_biasadd_readvariableop_resource:	?
identity??$lstm_cell_247/BiasAdd/ReadVariableOp?#lstm_cell_247/MatMul/ReadVariableOp?%lstm_cell_247/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_247/MatMul/ReadVariableOpReadVariableOp,lstm_cell_247_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_247/MatMulMatMulstrided_slice_2:output:0+lstm_cell_247/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_247/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_247_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_247/MatMul_1MatMulzeros:output:0-lstm_cell_247/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_247/addAddV2lstm_cell_247/MatMul:product:0 lstm_cell_247/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_247/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_247_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_247/BiasAddBiasAddlstm_cell_247/add:z:0,lstm_cell_247/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_247/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_247/splitSplit&lstm_cell_247/split/split_dim:output:0lstm_cell_247/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_247/SigmoidSigmoidlstm_cell_247/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_247/Sigmoid_1Sigmoidlstm_cell_247/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_247/mulMullstm_cell_247/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_247/ReluRelulstm_cell_247/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_247/mul_1Mullstm_cell_247/Sigmoid:y:0 lstm_cell_247/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_247/add_1AddV2lstm_cell_247/mul:z:0lstm_cell_247/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_247/Sigmoid_2Sigmoidlstm_cell_247/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_247/Relu_1Relulstm_cell_247/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_247/mul_2Mullstm_cell_247/Sigmoid_2:y:0"lstm_cell_247/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_247_matmul_readvariableop_resource.lstm_cell_247_matmul_1_readvariableop_resource-lstm_cell_247_biasadd_readvariableop_resource*
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
while_body_1504593*
condR
while_cond_1504592*K
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
NoOpNoOp%^lstm_cell_247/BiasAdd/ReadVariableOp$^lstm_cell_247/MatMul/ReadVariableOp&^lstm_cell_247/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_247/BiasAdd/ReadVariableOp$lstm_cell_247/BiasAdd/ReadVariableOp2J
#lstm_cell_247/MatMul/ReadVariableOp#lstm_cell_247/MatMul/ReadVariableOp2N
%lstm_cell_247/MatMul_1/ReadVariableOp%lstm_cell_247/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_247_layer_call_fn_1505730

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
J__inference_lstm_cell_247_layer_call_and_return_conditional_losses_1501126o
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

?
lstm_296_while_cond_1503640.
*lstm_296_while_lstm_296_while_loop_counter4
0lstm_296_while_lstm_296_while_maximum_iterations
lstm_296_while_placeholder 
lstm_296_while_placeholder_1 
lstm_296_while_placeholder_2 
lstm_296_while_placeholder_30
,lstm_296_while_less_lstm_296_strided_slice_1G
Clstm_296_while_lstm_296_while_cond_1503640___redundant_placeholder0G
Clstm_296_while_lstm_296_while_cond_1503640___redundant_placeholder1G
Clstm_296_while_lstm_296_while_cond_1503640___redundant_placeholder2G
Clstm_296_while_lstm_296_while_cond_1503640___redundant_placeholder3
lstm_296_while_identity
?
lstm_296/while/LessLesslstm_296_while_placeholder,lstm_296_while_less_lstm_296_strided_slice_1*
T0*
_output_shapes
: ]
lstm_296/while/IdentityIdentitylstm_296/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_296_while_identity lstm_296/while/Identity:output:0*(
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
E__inference_lstm_294_layer_call_and_return_conditional_losses_1503918
inputs_0?
,lstm_cell_246_matmul_readvariableop_resource:	?A
.lstm_cell_246_matmul_1_readvariableop_resource:	d?<
-lstm_cell_246_biasadd_readvariableop_resource:	?
identity??$lstm_cell_246/BiasAdd/ReadVariableOp?#lstm_cell_246/MatMul/ReadVariableOp?%lstm_cell_246/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_246/MatMul/ReadVariableOpReadVariableOp,lstm_cell_246_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_246/MatMulMatMulstrided_slice_2:output:0+lstm_cell_246/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_246/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_246_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_246/MatMul_1MatMulzeros:output:0-lstm_cell_246/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_246/addAddV2lstm_cell_246/MatMul:product:0 lstm_cell_246/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_246/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_246_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_246/BiasAddBiasAddlstm_cell_246/add:z:0,lstm_cell_246/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_246/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_246/splitSplit&lstm_cell_246/split/split_dim:output:0lstm_cell_246/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_246/SigmoidSigmoidlstm_cell_246/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_246/Sigmoid_1Sigmoidlstm_cell_246/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_246/mulMullstm_cell_246/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_246/ReluRelulstm_cell_246/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_246/mul_1Mullstm_cell_246/Sigmoid:y:0 lstm_cell_246/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_246/add_1AddV2lstm_cell_246/mul:z:0lstm_cell_246/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_246/Sigmoid_2Sigmoidlstm_cell_246/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_246/Relu_1Relulstm_cell_246/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_246/mul_2Mullstm_cell_246/Sigmoid_2:y:0"lstm_cell_246/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_246_matmul_readvariableop_resource.lstm_cell_246_matmul_1_readvariableop_resource-lstm_cell_246_biasadd_readvariableop_resource*
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
while_body_1503834*
condR
while_cond_1503833*K
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
NoOpNoOp%^lstm_cell_246/BiasAdd/ReadVariableOp$^lstm_cell_246/MatMul/ReadVariableOp&^lstm_cell_246/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_246/BiasAdd/ReadVariableOp$lstm_cell_246/BiasAdd/ReadVariableOp2J
#lstm_cell_246/MatMul/ReadVariableOp#lstm_cell_246/MatMul/ReadVariableOp2N
%lstm_cell_246/MatMul_1/ReadVariableOp%lstm_cell_246/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_1502358
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1502358___redundant_placeholder05
1while_while_cond_1502358___redundant_placeholder15
1while_while_cond_1502358___redundant_placeholder25
1while_while_cond_1502358___redundant_placeholder3
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
while_cond_1500834
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1500834___redundant_placeholder05
1while_while_cond_1500834___redundant_placeholder15
1while_while_cond_1500834___redundant_placeholder25
1while_while_cond_1500834___redundant_placeholder3
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
while_cond_1504262
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1504262___redundant_placeholder05
1while_while_cond_1504262___redundant_placeholder15
1while_while_cond_1504262___redundant_placeholder25
1while_while_cond_1504262___redundant_placeholder3
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
*__inference_lstm_295_layer_call_fn_1504380

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
E__inference_lstm_295_layer_call_and_return_conditional_losses_1501912s
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
J__inference_lstm_cell_246_layer_call_and_return_conditional_losses_1500776

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
?
while_cond_1501677
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1501677___redundant_placeholder05
1while_while_cond_1501677___redundant_placeholder15
1while_while_cond_1501677___redundant_placeholder25
1while_while_cond_1501677___redundant_placeholder3
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
while_body_1504450
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_247_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_247_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_247_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_247_matmul_readvariableop_resource:	d?G
4while_lstm_cell_247_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_247_biasadd_readvariableop_resource:	???*while/lstm_cell_247/BiasAdd/ReadVariableOp?)while/lstm_cell_247/MatMul/ReadVariableOp?+while/lstm_cell_247/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_247/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_247_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_247/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_247/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_247/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_247_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_247/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_247/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_247/addAddV2$while/lstm_cell_247/MatMul:product:0&while/lstm_cell_247/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_247/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_247_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_247/BiasAddBiasAddwhile/lstm_cell_247/add:z:02while/lstm_cell_247/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_247/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_247/splitSplit,while/lstm_cell_247/split/split_dim:output:0$while/lstm_cell_247/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_247/SigmoidSigmoid"while/lstm_cell_247/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_247/Sigmoid_1Sigmoid"while/lstm_cell_247/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_247/mulMul!while/lstm_cell_247/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_247/ReluRelu"while/lstm_cell_247/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_247/mul_1Mulwhile/lstm_cell_247/Sigmoid:y:0&while/lstm_cell_247/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_247/add_1AddV2while/lstm_cell_247/mul:z:0while/lstm_cell_247/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_247/Sigmoid_2Sigmoid"while/lstm_cell_247/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_247/Relu_1Reluwhile/lstm_cell_247/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_247/mul_2Mul!while/lstm_cell_247/Sigmoid_2:y:0(while/lstm_cell_247/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_247/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_247/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_247/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_247/BiasAdd/ReadVariableOp*^while/lstm_cell_247/MatMul/ReadVariableOp,^while/lstm_cell_247/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_247_biasadd_readvariableop_resource5while_lstm_cell_247_biasadd_readvariableop_resource_0"n
4while_lstm_cell_247_matmul_1_readvariableop_resource6while_lstm_cell_247_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_247_matmul_readvariableop_resource4while_lstm_cell_247_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_247/BiasAdd/ReadVariableOp*while/lstm_cell_247/BiasAdd/ReadVariableOp2V
)while/lstm_cell_247/MatMul/ReadVariableOp)while/lstm_cell_247/MatMul/ReadVariableOp2Z
+while/lstm_cell_247/MatMul_1/ReadVariableOp+while/lstm_cell_247/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_246_layer_call_fn_1505632

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
J__inference_lstm_cell_246_layer_call_and_return_conditional_losses_1500776o
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
while_body_1500994
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_247_1501018_0:	d?0
while_lstm_cell_247_1501020_0:	2?,
while_lstm_cell_247_1501022_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_247_1501018:	d?.
while_lstm_cell_247_1501020:	2?*
while_lstm_cell_247_1501022:	???+while/lstm_cell_247/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_247/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_247_1501018_0while_lstm_cell_247_1501020_0while_lstm_cell_247_1501022_0*
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
J__inference_lstm_cell_247_layer_call_and_return_conditional_losses_1500980?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_247/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_247/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_247/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_247/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_247_1501018while_lstm_cell_247_1501018_0"<
while_lstm_cell_247_1501020while_lstm_cell_247_1501020_0"<
while_lstm_cell_247_1501022while_lstm_cell_247_1501022_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_247/StatefulPartitionedCall+while/lstm_cell_247/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_1501535
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_248_1501559_0:2(/
while_lstm_cell_248_1501561_0:
(+
while_lstm_cell_248_1501563_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_248_1501559:2(-
while_lstm_cell_248_1501561:
()
while_lstm_cell_248_1501563:(??+while/lstm_cell_248/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_248/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_248_1501559_0while_lstm_cell_248_1501561_0while_lstm_cell_248_1501563_0*
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
J__inference_lstm_cell_248_layer_call_and_return_conditional_losses_1501476?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_248/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_248/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_248/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_248/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_248_1501559while_lstm_cell_248_1501559_0"<
while_lstm_cell_248_1501561while_lstm_cell_248_1501561_0"<
while_lstm_cell_248_1501563while_lstm_cell_248_1501563_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_248/StatefulPartitionedCall+while/lstm_cell_248/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_296_layer_call_fn_1505007

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
E__inference_lstm_296_layer_call_and_return_conditional_losses_1502278o
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
?S
?
)sequential_98_lstm_294_while_body_1500195J
Fsequential_98_lstm_294_while_sequential_98_lstm_294_while_loop_counterP
Lsequential_98_lstm_294_while_sequential_98_lstm_294_while_maximum_iterations,
(sequential_98_lstm_294_while_placeholder.
*sequential_98_lstm_294_while_placeholder_1.
*sequential_98_lstm_294_while_placeholder_2.
*sequential_98_lstm_294_while_placeholder_3I
Esequential_98_lstm_294_while_sequential_98_lstm_294_strided_slice_1_0?
?sequential_98_lstm_294_while_tensorarrayv2read_tensorlistgetitem_sequential_98_lstm_294_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_98_lstm_294_while_lstm_cell_246_matmul_readvariableop_resource_0:	?`
Msequential_98_lstm_294_while_lstm_cell_246_matmul_1_readvariableop_resource_0:	d?[
Lsequential_98_lstm_294_while_lstm_cell_246_biasadd_readvariableop_resource_0:	?)
%sequential_98_lstm_294_while_identity+
'sequential_98_lstm_294_while_identity_1+
'sequential_98_lstm_294_while_identity_2+
'sequential_98_lstm_294_while_identity_3+
'sequential_98_lstm_294_while_identity_4+
'sequential_98_lstm_294_while_identity_5G
Csequential_98_lstm_294_while_sequential_98_lstm_294_strided_slice_1?
sequential_98_lstm_294_while_tensorarrayv2read_tensorlistgetitem_sequential_98_lstm_294_tensorarrayunstack_tensorlistfromtensor\
Isequential_98_lstm_294_while_lstm_cell_246_matmul_readvariableop_resource:	?^
Ksequential_98_lstm_294_while_lstm_cell_246_matmul_1_readvariableop_resource:	d?Y
Jsequential_98_lstm_294_while_lstm_cell_246_biasadd_readvariableop_resource:	???Asequential_98/lstm_294/while/lstm_cell_246/BiasAdd/ReadVariableOp?@sequential_98/lstm_294/while/lstm_cell_246/MatMul/ReadVariableOp?Bsequential_98/lstm_294/while/lstm_cell_246/MatMul_1/ReadVariableOp?
Nsequential_98/lstm_294/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
@sequential_98/lstm_294/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_98_lstm_294_while_tensorarrayv2read_tensorlistgetitem_sequential_98_lstm_294_tensorarrayunstack_tensorlistfromtensor_0(sequential_98_lstm_294_while_placeholderWsequential_98/lstm_294/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
@sequential_98/lstm_294/while/lstm_cell_246/MatMul/ReadVariableOpReadVariableOpKsequential_98_lstm_294_while_lstm_cell_246_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
1sequential_98/lstm_294/while/lstm_cell_246/MatMulMatMulGsequential_98/lstm_294/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_98/lstm_294/while/lstm_cell_246/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_98/lstm_294/while/lstm_cell_246/MatMul_1/ReadVariableOpReadVariableOpMsequential_98_lstm_294_while_lstm_cell_246_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
3sequential_98/lstm_294/while/lstm_cell_246/MatMul_1MatMul*sequential_98_lstm_294_while_placeholder_2Jsequential_98/lstm_294/while/lstm_cell_246/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_98/lstm_294/while/lstm_cell_246/addAddV2;sequential_98/lstm_294/while/lstm_cell_246/MatMul:product:0=sequential_98/lstm_294/while/lstm_cell_246/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_98/lstm_294/while/lstm_cell_246/BiasAdd/ReadVariableOpReadVariableOpLsequential_98_lstm_294_while_lstm_cell_246_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_98/lstm_294/while/lstm_cell_246/BiasAddBiasAdd2sequential_98/lstm_294/while/lstm_cell_246/add:z:0Isequential_98/lstm_294/while/lstm_cell_246/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_98/lstm_294/while/lstm_cell_246/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_98/lstm_294/while/lstm_cell_246/splitSplitCsequential_98/lstm_294/while/lstm_cell_246/split/split_dim:output:0;sequential_98/lstm_294/while/lstm_cell_246/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
2sequential_98/lstm_294/while/lstm_cell_246/SigmoidSigmoid9sequential_98/lstm_294/while/lstm_cell_246/split:output:0*
T0*'
_output_shapes
:?????????d?
4sequential_98/lstm_294/while/lstm_cell_246/Sigmoid_1Sigmoid9sequential_98/lstm_294/while/lstm_cell_246/split:output:1*
T0*'
_output_shapes
:?????????d?
.sequential_98/lstm_294/while/lstm_cell_246/mulMul8sequential_98/lstm_294/while/lstm_cell_246/Sigmoid_1:y:0*sequential_98_lstm_294_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
/sequential_98/lstm_294/while/lstm_cell_246/ReluRelu9sequential_98/lstm_294/while/lstm_cell_246/split:output:2*
T0*'
_output_shapes
:?????????d?
0sequential_98/lstm_294/while/lstm_cell_246/mul_1Mul6sequential_98/lstm_294/while/lstm_cell_246/Sigmoid:y:0=sequential_98/lstm_294/while/lstm_cell_246/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
0sequential_98/lstm_294/while/lstm_cell_246/add_1AddV22sequential_98/lstm_294/while/lstm_cell_246/mul:z:04sequential_98/lstm_294/while/lstm_cell_246/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
4sequential_98/lstm_294/while/lstm_cell_246/Sigmoid_2Sigmoid9sequential_98/lstm_294/while/lstm_cell_246/split:output:3*
T0*'
_output_shapes
:?????????d?
1sequential_98/lstm_294/while/lstm_cell_246/Relu_1Relu4sequential_98/lstm_294/while/lstm_cell_246/add_1:z:0*
T0*'
_output_shapes
:?????????d?
0sequential_98/lstm_294/while/lstm_cell_246/mul_2Mul8sequential_98/lstm_294/while/lstm_cell_246/Sigmoid_2:y:0?sequential_98/lstm_294/while/lstm_cell_246/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Asequential_98/lstm_294/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_98_lstm_294_while_placeholder_1(sequential_98_lstm_294_while_placeholder4sequential_98/lstm_294/while/lstm_cell_246/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_98/lstm_294/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_98/lstm_294/while/addAddV2(sequential_98_lstm_294_while_placeholder+sequential_98/lstm_294/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_98/lstm_294/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_98/lstm_294/while/add_1AddV2Fsequential_98_lstm_294_while_sequential_98_lstm_294_while_loop_counter-sequential_98/lstm_294/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_98/lstm_294/while/IdentityIdentity&sequential_98/lstm_294/while/add_1:z:0"^sequential_98/lstm_294/while/NoOp*
T0*
_output_shapes
: ?
'sequential_98/lstm_294/while/Identity_1IdentityLsequential_98_lstm_294_while_sequential_98_lstm_294_while_maximum_iterations"^sequential_98/lstm_294/while/NoOp*
T0*
_output_shapes
: ?
'sequential_98/lstm_294/while/Identity_2Identity$sequential_98/lstm_294/while/add:z:0"^sequential_98/lstm_294/while/NoOp*
T0*
_output_shapes
: ?
'sequential_98/lstm_294/while/Identity_3IdentityQsequential_98/lstm_294/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_98/lstm_294/while/NoOp*
T0*
_output_shapes
: ?
'sequential_98/lstm_294/while/Identity_4Identity4sequential_98/lstm_294/while/lstm_cell_246/mul_2:z:0"^sequential_98/lstm_294/while/NoOp*
T0*'
_output_shapes
:?????????d?
'sequential_98/lstm_294/while/Identity_5Identity4sequential_98/lstm_294/while/lstm_cell_246/add_1:z:0"^sequential_98/lstm_294/while/NoOp*
T0*'
_output_shapes
:?????????d?
!sequential_98/lstm_294/while/NoOpNoOpB^sequential_98/lstm_294/while/lstm_cell_246/BiasAdd/ReadVariableOpA^sequential_98/lstm_294/while/lstm_cell_246/MatMul/ReadVariableOpC^sequential_98/lstm_294/while/lstm_cell_246/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_98_lstm_294_while_identity.sequential_98/lstm_294/while/Identity:output:0"[
'sequential_98_lstm_294_while_identity_10sequential_98/lstm_294/while/Identity_1:output:0"[
'sequential_98_lstm_294_while_identity_20sequential_98/lstm_294/while/Identity_2:output:0"[
'sequential_98_lstm_294_while_identity_30sequential_98/lstm_294/while/Identity_3:output:0"[
'sequential_98_lstm_294_while_identity_40sequential_98/lstm_294/while/Identity_4:output:0"[
'sequential_98_lstm_294_while_identity_50sequential_98/lstm_294/while/Identity_5:output:0"?
Jsequential_98_lstm_294_while_lstm_cell_246_biasadd_readvariableop_resourceLsequential_98_lstm_294_while_lstm_cell_246_biasadd_readvariableop_resource_0"?
Ksequential_98_lstm_294_while_lstm_cell_246_matmul_1_readvariableop_resourceMsequential_98_lstm_294_while_lstm_cell_246_matmul_1_readvariableop_resource_0"?
Isequential_98_lstm_294_while_lstm_cell_246_matmul_readvariableop_resourceKsequential_98_lstm_294_while_lstm_cell_246_matmul_readvariableop_resource_0"?
Csequential_98_lstm_294_while_sequential_98_lstm_294_strided_slice_1Esequential_98_lstm_294_while_sequential_98_lstm_294_strided_slice_1_0"?
sequential_98_lstm_294_while_tensorarrayv2read_tensorlistgetitem_sequential_98_lstm_294_tensorarrayunstack_tensorlistfromtensor?sequential_98_lstm_294_while_tensorarrayv2read_tensorlistgetitem_sequential_98_lstm_294_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Asequential_98/lstm_294/while/lstm_cell_246/BiasAdd/ReadVariableOpAsequential_98/lstm_294/while/lstm_cell_246/BiasAdd/ReadVariableOp2?
@sequential_98/lstm_294/while/lstm_cell_246/MatMul/ReadVariableOp@sequential_98/lstm_294/while/lstm_cell_246/MatMul/ReadVariableOp2?
Bsequential_98/lstm_294/while/lstm_cell_246/MatMul_1/ReadVariableOpBsequential_98/lstm_294/while/lstm_cell_246/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_294_input;
 serving_default_lstm_294_input:0?????????<
dense_980
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
2dense_98/kernel
:2dense_98/bias
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
0:.	?2lstm_294/lstm_cell_294/kernel
::8	d?2'lstm_294/lstm_cell_294/recurrent_kernel
*:(?2lstm_294/lstm_cell_294/bias
0:.	d?2lstm_295/lstm_cell_295/kernel
::8	2?2'lstm_295/lstm_cell_295/recurrent_kernel
*:(?2lstm_295/lstm_cell_295/bias
/:-2(2lstm_296/lstm_cell_296/kernel
9:7
(2'lstm_296/lstm_cell_296/recurrent_kernel
):'(2lstm_296/lstm_cell_296/bias
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
2Adam/dense_98/kernel/m
 :2Adam/dense_98/bias/m
5:3	?2$Adam/lstm_294/lstm_cell_294/kernel/m
?:=	d?2.Adam/lstm_294/lstm_cell_294/recurrent_kernel/m
/:-?2"Adam/lstm_294/lstm_cell_294/bias/m
5:3	d?2$Adam/lstm_295/lstm_cell_295/kernel/m
?:=	2?2.Adam/lstm_295/lstm_cell_295/recurrent_kernel/m
/:-?2"Adam/lstm_295/lstm_cell_295/bias/m
4:22(2$Adam/lstm_296/lstm_cell_296/kernel/m
>:<
(2.Adam/lstm_296/lstm_cell_296/recurrent_kernel/m
.:,(2"Adam/lstm_296/lstm_cell_296/bias/m
&:$
2Adam/dense_98/kernel/v
 :2Adam/dense_98/bias/v
5:3	?2$Adam/lstm_294/lstm_cell_294/kernel/v
?:=	d?2.Adam/lstm_294/lstm_cell_294/recurrent_kernel/v
/:-?2"Adam/lstm_294/lstm_cell_294/bias/v
5:3	d?2$Adam/lstm_295/lstm_cell_295/kernel/v
?:=	2?2.Adam/lstm_295/lstm_cell_295/recurrent_kernel/v
/:-?2"Adam/lstm_295/lstm_cell_295/bias/v
4:22(2$Adam/lstm_296/lstm_cell_296/kernel/v
>:<
(2.Adam/lstm_296/lstm_cell_296/recurrent_kernel/v
.:,(2"Adam/lstm_296/lstm_cell_296/bias/v
?2?
/__inference_sequential_98_layer_call_fn_1502112
/__inference_sequential_98_layer_call_fn_1502850
/__inference_sequential_98_layer_call_fn_1502877
/__inference_sequential_98_layer_call_fn_1502728?
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
J__inference_sequential_98_layer_call_and_return_conditional_losses_1503304
J__inference_sequential_98_layer_call_and_return_conditional_losses_1503731
J__inference_sequential_98_layer_call_and_return_conditional_losses_1502758
J__inference_sequential_98_layer_call_and_return_conditional_losses_1502788?
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
"__inference__wrapped_model_1500563lstm_294_input"?
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
*__inference_lstm_294_layer_call_fn_1503742
*__inference_lstm_294_layer_call_fn_1503753
*__inference_lstm_294_layer_call_fn_1503764
*__inference_lstm_294_layer_call_fn_1503775?
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
E__inference_lstm_294_layer_call_and_return_conditional_losses_1503918
E__inference_lstm_294_layer_call_and_return_conditional_losses_1504061
E__inference_lstm_294_layer_call_and_return_conditional_losses_1504204
E__inference_lstm_294_layer_call_and_return_conditional_losses_1504347?
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
*__inference_lstm_295_layer_call_fn_1504358
*__inference_lstm_295_layer_call_fn_1504369
*__inference_lstm_295_layer_call_fn_1504380
*__inference_lstm_295_layer_call_fn_1504391?
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
E__inference_lstm_295_layer_call_and_return_conditional_losses_1504534
E__inference_lstm_295_layer_call_and_return_conditional_losses_1504677
E__inference_lstm_295_layer_call_and_return_conditional_losses_1504820
E__inference_lstm_295_layer_call_and_return_conditional_losses_1504963?
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
*__inference_lstm_296_layer_call_fn_1504974
*__inference_lstm_296_layer_call_fn_1504985
*__inference_lstm_296_layer_call_fn_1504996
*__inference_lstm_296_layer_call_fn_1505007?
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
E__inference_lstm_296_layer_call_and_return_conditional_losses_1505150
E__inference_lstm_296_layer_call_and_return_conditional_losses_1505293
E__inference_lstm_296_layer_call_and_return_conditional_losses_1505436
E__inference_lstm_296_layer_call_and_return_conditional_losses_1505579?
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
*__inference_dense_98_layer_call_fn_1505588?
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
E__inference_dense_98_layer_call_and_return_conditional_losses_1505598?
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
%__inference_signature_wrapper_1502823lstm_294_input"?
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
/__inference_lstm_cell_246_layer_call_fn_1505615
/__inference_lstm_cell_246_layer_call_fn_1505632?
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
J__inference_lstm_cell_246_layer_call_and_return_conditional_losses_1505664
J__inference_lstm_cell_246_layer_call_and_return_conditional_losses_1505696?
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
/__inference_lstm_cell_247_layer_call_fn_1505713
/__inference_lstm_cell_247_layer_call_fn_1505730?
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
J__inference_lstm_cell_247_layer_call_and_return_conditional_losses_1505762
J__inference_lstm_cell_247_layer_call_and_return_conditional_losses_1505794?
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
/__inference_lstm_cell_248_layer_call_fn_1505811
/__inference_lstm_cell_248_layer_call_fn_1505828?
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
J__inference_lstm_cell_248_layer_call_and_return_conditional_losses_1505860
J__inference_lstm_cell_248_layer_call_and_return_conditional_losses_1505892?
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
"__inference__wrapped_model_1500563-./012345!";?8
1?.
,?)
lstm_294_input?????????
? "3?0
.
dense_98"?
dense_98??????????
E__inference_dense_98_layer_call_and_return_conditional_losses_1505598\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_98_layer_call_fn_1505588O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_294_layer_call_and_return_conditional_losses_1503918?-./O?L
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
E__inference_lstm_294_layer_call_and_return_conditional_losses_1504061?-./O?L
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
E__inference_lstm_294_layer_call_and_return_conditional_losses_1504204q-./??<
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
E__inference_lstm_294_layer_call_and_return_conditional_losses_1504347q-./??<
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
*__inference_lstm_294_layer_call_fn_1503742}-./O?L
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
*__inference_lstm_294_layer_call_fn_1503753}-./O?L
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
*__inference_lstm_294_layer_call_fn_1503764d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_294_layer_call_fn_1503775d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_295_layer_call_and_return_conditional_losses_1504534?012O?L
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
E__inference_lstm_295_layer_call_and_return_conditional_losses_1504677?012O?L
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
E__inference_lstm_295_layer_call_and_return_conditional_losses_1504820q012??<
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
E__inference_lstm_295_layer_call_and_return_conditional_losses_1504963q012??<
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
*__inference_lstm_295_layer_call_fn_1504358}012O?L
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
*__inference_lstm_295_layer_call_fn_1504369}012O?L
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
*__inference_lstm_295_layer_call_fn_1504380d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_295_layer_call_fn_1504391d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_296_layer_call_and_return_conditional_losses_1505150}345O?L
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
E__inference_lstm_296_layer_call_and_return_conditional_losses_1505293}345O?L
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
E__inference_lstm_296_layer_call_and_return_conditional_losses_1505436m345??<
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
E__inference_lstm_296_layer_call_and_return_conditional_losses_1505579m345??<
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
*__inference_lstm_296_layer_call_fn_1504974p345O?L
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
*__inference_lstm_296_layer_call_fn_1504985p345O?L
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
*__inference_lstm_296_layer_call_fn_1504996`345??<
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
*__inference_lstm_296_layer_call_fn_1505007`345??<
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
J__inference_lstm_cell_246_layer_call_and_return_conditional_losses_1505664?-./??}
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
J__inference_lstm_cell_246_layer_call_and_return_conditional_losses_1505696?-./??}
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
/__inference_lstm_cell_246_layer_call_fn_1505615?-./??}
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
/__inference_lstm_cell_246_layer_call_fn_1505632?-./??}
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
J__inference_lstm_cell_247_layer_call_and_return_conditional_losses_1505762?012??}
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
J__inference_lstm_cell_247_layer_call_and_return_conditional_losses_1505794?012??}
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
/__inference_lstm_cell_247_layer_call_fn_1505713?012??}
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
/__inference_lstm_cell_247_layer_call_fn_1505730?012??}
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
J__inference_lstm_cell_248_layer_call_and_return_conditional_losses_1505860?345??}
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
J__inference_lstm_cell_248_layer_call_and_return_conditional_losses_1505892?345??}
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
/__inference_lstm_cell_248_layer_call_fn_1505811?345??}
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
/__inference_lstm_cell_248_layer_call_fn_1505828?345??}
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
J__inference_sequential_98_layer_call_and_return_conditional_losses_1502758y-./012345!"C?@
9?6
,?)
lstm_294_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_98_layer_call_and_return_conditional_losses_1502788y-./012345!"C?@
9?6
,?)
lstm_294_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_98_layer_call_and_return_conditional_losses_1503304q-./012345!";?8
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
J__inference_sequential_98_layer_call_and_return_conditional_losses_1503731q-./012345!";?8
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
/__inference_sequential_98_layer_call_fn_1502112l-./012345!"C?@
9?6
,?)
lstm_294_input?????????
p 

 
? "???????????
/__inference_sequential_98_layer_call_fn_1502728l-./012345!"C?@
9?6
,?)
lstm_294_input?????????
p

 
? "???????????
/__inference_sequential_98_layer_call_fn_1502850d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_98_layer_call_fn_1502877d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_1502823?-./012345!"M?J
? 
C?@
>
lstm_294_input,?)
lstm_294_input?????????"3?0
.
dense_98"?
dense_98?????????