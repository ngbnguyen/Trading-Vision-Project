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
dense_61/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_61/kernel
s
#dense_61/kernel/Read/ReadVariableOpReadVariableOpdense_61/kernel*
_output_shapes

:
*
dtype0
r
dense_61/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_61/bias
k
!dense_61/bias/Read/ReadVariableOpReadVariableOpdense_61/bias*
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
lstm_183/lstm_cell_183/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_183/lstm_cell_183/kernel
?
1lstm_183/lstm_cell_183/kernel/Read/ReadVariableOpReadVariableOplstm_183/lstm_cell_183/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_183/lstm_cell_183/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_183/lstm_cell_183/recurrent_kernel
?
;lstm_183/lstm_cell_183/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_183/lstm_cell_183/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_183/lstm_cell_183/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_183/lstm_cell_183/bias
?
/lstm_183/lstm_cell_183/bias/Read/ReadVariableOpReadVariableOplstm_183/lstm_cell_183/bias*
_output_shapes	
:?*
dtype0
?
lstm_184/lstm_cell_184/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_184/lstm_cell_184/kernel
?
1lstm_184/lstm_cell_184/kernel/Read/ReadVariableOpReadVariableOplstm_184/lstm_cell_184/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_184/lstm_cell_184/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_184/lstm_cell_184/recurrent_kernel
?
;lstm_184/lstm_cell_184/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_184/lstm_cell_184/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_184/lstm_cell_184/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_184/lstm_cell_184/bias
?
/lstm_184/lstm_cell_184/bias/Read/ReadVariableOpReadVariableOplstm_184/lstm_cell_184/bias*
_output_shapes	
:?*
dtype0
?
lstm_185/lstm_cell_185/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_185/lstm_cell_185/kernel
?
1lstm_185/lstm_cell_185/kernel/Read/ReadVariableOpReadVariableOplstm_185/lstm_cell_185/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_185/lstm_cell_185/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_185/lstm_cell_185/recurrent_kernel
?
;lstm_185/lstm_cell_185/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_185/lstm_cell_185/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_185/lstm_cell_185/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_185/lstm_cell_185/bias
?
/lstm_185/lstm_cell_185/bias/Read/ReadVariableOpReadVariableOplstm_185/lstm_cell_185/bias*
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
Adam/dense_61/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_61/kernel/m
?
*Adam/dense_61/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_61/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_61/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_61/bias/m
y
(Adam/dense_61/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_61/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_183/lstm_cell_183/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_183/lstm_cell_183/kernel/m
?
8Adam/lstm_183/lstm_cell_183/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_183/lstm_cell_183/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_183/lstm_cell_183/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_183/lstm_cell_183/recurrent_kernel/m
?
BAdam/lstm_183/lstm_cell_183/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_183/lstm_cell_183/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_183/lstm_cell_183/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_183/lstm_cell_183/bias/m
?
6Adam/lstm_183/lstm_cell_183/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_183/lstm_cell_183/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_184/lstm_cell_184/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_184/lstm_cell_184/kernel/m
?
8Adam/lstm_184/lstm_cell_184/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_184/lstm_cell_184/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_184/lstm_cell_184/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_184/lstm_cell_184/recurrent_kernel/m
?
BAdam/lstm_184/lstm_cell_184/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_184/lstm_cell_184/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_184/lstm_cell_184/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_184/lstm_cell_184/bias/m
?
6Adam/lstm_184/lstm_cell_184/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_184/lstm_cell_184/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_185/lstm_cell_185/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_185/lstm_cell_185/kernel/m
?
8Adam/lstm_185/lstm_cell_185/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_185/lstm_cell_185/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_185/lstm_cell_185/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_185/lstm_cell_185/recurrent_kernel/m
?
BAdam/lstm_185/lstm_cell_185/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_185/lstm_cell_185/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_185/lstm_cell_185/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_185/lstm_cell_185/bias/m
?
6Adam/lstm_185/lstm_cell_185/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_185/lstm_cell_185/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_61/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_61/kernel/v
?
*Adam/dense_61/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_61/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_61/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_61/bias/v
y
(Adam/dense_61/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_61/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_183/lstm_cell_183/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_183/lstm_cell_183/kernel/v
?
8Adam/lstm_183/lstm_cell_183/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_183/lstm_cell_183/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_183/lstm_cell_183/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_183/lstm_cell_183/recurrent_kernel/v
?
BAdam/lstm_183/lstm_cell_183/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_183/lstm_cell_183/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_183/lstm_cell_183/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_183/lstm_cell_183/bias/v
?
6Adam/lstm_183/lstm_cell_183/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_183/lstm_cell_183/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_184/lstm_cell_184/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_184/lstm_cell_184/kernel/v
?
8Adam/lstm_184/lstm_cell_184/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_184/lstm_cell_184/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_184/lstm_cell_184/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_184/lstm_cell_184/recurrent_kernel/v
?
BAdam/lstm_184/lstm_cell_184/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_184/lstm_cell_184/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_184/lstm_cell_184/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_184/lstm_cell_184/bias/v
?
6Adam/lstm_184/lstm_cell_184/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_184/lstm_cell_184/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_185/lstm_cell_185/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_185/lstm_cell_185/kernel/v
?
8Adam/lstm_185/lstm_cell_185/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_185/lstm_cell_185/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_185/lstm_cell_185/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_185/lstm_cell_185/recurrent_kernel/v
?
BAdam/lstm_185/lstm_cell_185/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_185/lstm_cell_185/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_185/lstm_cell_185/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_185/lstm_cell_185/bias/v
?
6Adam/lstm_185/lstm_cell_185/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_185/lstm_cell_185/bias/v*
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
VARIABLE_VALUEdense_61/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_61/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_183/lstm_cell_183/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_183/lstm_cell_183/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_183/lstm_cell_183/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_184/lstm_cell_184/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_184/lstm_cell_184/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_184/lstm_cell_184/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_185/lstm_cell_185/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_185/lstm_cell_185/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_185/lstm_cell_185/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_61/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_61/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_183/lstm_cell_183/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_183/lstm_cell_183/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_183/lstm_cell_183/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_184/lstm_cell_184/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_184/lstm_cell_184/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_184/lstm_cell_184/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_185/lstm_cell_185/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_185/lstm_cell_185/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_185/lstm_cell_185/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_61/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_61/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_183/lstm_cell_183/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_183/lstm_cell_183/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_183/lstm_cell_183/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_184/lstm_cell_184/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_184/lstm_cell_184/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_184/lstm_cell_184/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_185/lstm_cell_185/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_185/lstm_cell_185/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_185/lstm_cell_185/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_183_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_183_inputlstm_183/lstm_cell_183/kernel'lstm_183/lstm_cell_183/recurrent_kernellstm_183/lstm_cell_183/biaslstm_184/lstm_cell_184/kernel'lstm_184/lstm_cell_184/recurrent_kernellstm_184/lstm_cell_184/biaslstm_185/lstm_cell_185/kernel'lstm_185/lstm_cell_185/recurrent_kernellstm_185/lstm_cell_185/biasdense_61/kerneldense_61/bias*
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
%__inference_signature_wrapper_1303465
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_61/kernel/Read/ReadVariableOp!dense_61/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_183/lstm_cell_183/kernel/Read/ReadVariableOp;lstm_183/lstm_cell_183/recurrent_kernel/Read/ReadVariableOp/lstm_183/lstm_cell_183/bias/Read/ReadVariableOp1lstm_184/lstm_cell_184/kernel/Read/ReadVariableOp;lstm_184/lstm_cell_184/recurrent_kernel/Read/ReadVariableOp/lstm_184/lstm_cell_184/bias/Read/ReadVariableOp1lstm_185/lstm_cell_185/kernel/Read/ReadVariableOp;lstm_185/lstm_cell_185/recurrent_kernel/Read/ReadVariableOp/lstm_185/lstm_cell_185/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_61/kernel/m/Read/ReadVariableOp(Adam/dense_61/bias/m/Read/ReadVariableOp8Adam/lstm_183/lstm_cell_183/kernel/m/Read/ReadVariableOpBAdam/lstm_183/lstm_cell_183/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_183/lstm_cell_183/bias/m/Read/ReadVariableOp8Adam/lstm_184/lstm_cell_184/kernel/m/Read/ReadVariableOpBAdam/lstm_184/lstm_cell_184/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_184/lstm_cell_184/bias/m/Read/ReadVariableOp8Adam/lstm_185/lstm_cell_185/kernel/m/Read/ReadVariableOpBAdam/lstm_185/lstm_cell_185/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_185/lstm_cell_185/bias/m/Read/ReadVariableOp*Adam/dense_61/kernel/v/Read/ReadVariableOp(Adam/dense_61/bias/v/Read/ReadVariableOp8Adam/lstm_183/lstm_cell_183/kernel/v/Read/ReadVariableOpBAdam/lstm_183/lstm_cell_183/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_183/lstm_cell_183/bias/v/Read/ReadVariableOp8Adam/lstm_184/lstm_cell_184/kernel/v/Read/ReadVariableOpBAdam/lstm_184/lstm_cell_184/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_184/lstm_cell_184/bias/v/Read/ReadVariableOp8Adam/lstm_185/lstm_cell_185/kernel/v/Read/ReadVariableOpBAdam/lstm_185/lstm_cell_185/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_185/lstm_cell_185/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_1306677
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_61/kerneldense_61/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_183/lstm_cell_183/kernel'lstm_183/lstm_cell_183/recurrent_kernellstm_183/lstm_cell_183/biaslstm_184/lstm_cell_184/kernel'lstm_184/lstm_cell_184/recurrent_kernellstm_184/lstm_cell_184/biaslstm_185/lstm_cell_185/kernel'lstm_185/lstm_cell_185/recurrent_kernellstm_185/lstm_cell_185/biastotalcountAdam/dense_61/kernel/mAdam/dense_61/bias/m$Adam/lstm_183/lstm_cell_183/kernel/m.Adam/lstm_183/lstm_cell_183/recurrent_kernel/m"Adam/lstm_183/lstm_cell_183/bias/m$Adam/lstm_184/lstm_cell_184/kernel/m.Adam/lstm_184/lstm_cell_184/recurrent_kernel/m"Adam/lstm_184/lstm_cell_184/bias/m$Adam/lstm_185/lstm_cell_185/kernel/m.Adam/lstm_185/lstm_cell_185/recurrent_kernel/m"Adam/lstm_185/lstm_cell_185/bias/mAdam/dense_61/kernel/vAdam/dense_61/bias/v$Adam/lstm_183/lstm_cell_183/kernel/v.Adam/lstm_183/lstm_cell_183/recurrent_kernel/v"Adam/lstm_183/lstm_cell_183/bias/v$Adam/lstm_184/lstm_cell_184/kernel/v.Adam/lstm_184/lstm_cell_184/recurrent_kernel/v"Adam/lstm_184/lstm_cell_184/bias/v$Adam/lstm_185/lstm_cell_185/kernel/v.Adam/lstm_185/lstm_cell_185/recurrent_kernel/v"Adam/lstm_185/lstm_cell_185/bias/v*4
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
#__inference__traced_restore_1306807??+
?
?
*__inference_dense_61_layer_call_fn_1306230

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
E__inference_dense_61_layer_call_and_return_conditional_losses_1302722o
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
?
?
/__inference_lstm_cell_215_layer_call_fn_1306470

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
J__inference_lstm_cell_215_layer_call_and_return_conditional_losses_1302118o
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
while_body_1301477
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_213_1301501_0:	?0
while_lstm_cell_213_1301503_0:	d?,
while_lstm_cell_213_1301505_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_213_1301501:	?.
while_lstm_cell_213_1301503:	d?*
while_lstm_cell_213_1301505:	???+while/lstm_cell_213/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_213/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_213_1301501_0while_lstm_cell_213_1301503_0while_lstm_cell_213_1301505_0*
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
J__inference_lstm_cell_213_layer_call_and_return_conditional_losses_1301418?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_213/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_213/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_213/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_213/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_213_1301501while_lstm_cell_213_1301501_0"<
while_lstm_cell_213_1301503while_lstm_cell_213_1301503_0"<
while_lstm_cell_213_1301505while_lstm_cell_213_1301505_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_213/StatefulPartitionedCall+while/lstm_cell_213/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_183_layer_call_and_return_conditional_losses_1301355

inputs(
lstm_cell_213_1301273:	?(
lstm_cell_213_1301275:	d?$
lstm_cell_213_1301277:	?
identity??%lstm_cell_213/StatefulPartitionedCall?while;
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
%lstm_cell_213/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_213_1301273lstm_cell_213_1301275lstm_cell_213_1301277*
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
J__inference_lstm_cell_213_layer_call_and_return_conditional_losses_1301272n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_213_1301273lstm_cell_213_1301275lstm_cell_213_1301277*
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
while_body_1301286*
condR
while_cond_1301285*K
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
NoOpNoOp&^lstm_cell_213/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_213/StatefulPartitionedCall%lstm_cell_213/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_185_layer_call_fn_1305649

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
E__inference_lstm_185_layer_call_and_return_conditional_losses_1302920o
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
while_cond_1302835
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1302835___redundant_placeholder05
1while_while_cond_1302835___redundant_placeholder15
1while_while_cond_1302835___redundant_placeholder25
1while_while_cond_1302835___redundant_placeholder3
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
E__inference_lstm_184_layer_call_and_return_conditional_losses_1305605

inputs?
,lstm_cell_214_matmul_readvariableop_resource:	d?A
.lstm_cell_214_matmul_1_readvariableop_resource:	2?<
-lstm_cell_214_biasadd_readvariableop_resource:	?
identity??$lstm_cell_214/BiasAdd/ReadVariableOp?#lstm_cell_214/MatMul/ReadVariableOp?%lstm_cell_214/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_214/MatMul/ReadVariableOpReadVariableOp,lstm_cell_214_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_214/MatMulMatMulstrided_slice_2:output:0+lstm_cell_214/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_214/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_214_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_214/MatMul_1MatMulzeros:output:0-lstm_cell_214/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_214/addAddV2lstm_cell_214/MatMul:product:0 lstm_cell_214/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_214/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_214_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_214/BiasAddBiasAddlstm_cell_214/add:z:0,lstm_cell_214/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_214/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_214/splitSplit&lstm_cell_214/split/split_dim:output:0lstm_cell_214/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_214/SigmoidSigmoidlstm_cell_214/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_214/Sigmoid_1Sigmoidlstm_cell_214/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_214/mulMullstm_cell_214/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_214/ReluRelulstm_cell_214/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_214/mul_1Mullstm_cell_214/Sigmoid:y:0 lstm_cell_214/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_214/add_1AddV2lstm_cell_214/mul:z:0lstm_cell_214/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_214/Sigmoid_2Sigmoidlstm_cell_214/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_214/Relu_1Relulstm_cell_214/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_214/mul_2Mullstm_cell_214/Sigmoid_2:y:0"lstm_cell_214/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_214_matmul_readvariableop_resource.lstm_cell_214_matmul_1_readvariableop_resource-lstm_cell_214_biasadd_readvariableop_resource*
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
while_body_1305521*
condR
while_cond_1305520*K
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
NoOpNoOp%^lstm_cell_214/BiasAdd/ReadVariableOp$^lstm_cell_214/MatMul/ReadVariableOp&^lstm_cell_214/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_214/BiasAdd/ReadVariableOp$lstm_cell_214/BiasAdd/ReadVariableOp2J
#lstm_cell_214/MatMul/ReadVariableOp#lstm_cell_214/MatMul/ReadVariableOp2N
%lstm_cell_214/MatMul_1/ReadVariableOp%lstm_cell_214/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_1301476
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1301476___redundant_placeholder05
1while_while_cond_1301476___redundant_placeholder15
1while_while_cond_1301476___redundant_placeholder25
1while_while_cond_1301476___redundant_placeholder3
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
J__inference_sequential_61_layer_call_and_return_conditional_losses_1304373

inputsH
5lstm_183_lstm_cell_213_matmul_readvariableop_resource:	?J
7lstm_183_lstm_cell_213_matmul_1_readvariableop_resource:	d?E
6lstm_183_lstm_cell_213_biasadd_readvariableop_resource:	?H
5lstm_184_lstm_cell_214_matmul_readvariableop_resource:	d?J
7lstm_184_lstm_cell_214_matmul_1_readvariableop_resource:	2?E
6lstm_184_lstm_cell_214_biasadd_readvariableop_resource:	?G
5lstm_185_lstm_cell_215_matmul_readvariableop_resource:2(I
7lstm_185_lstm_cell_215_matmul_1_readvariableop_resource:
(D
6lstm_185_lstm_cell_215_biasadd_readvariableop_resource:(9
'dense_61_matmul_readvariableop_resource:
6
(dense_61_biasadd_readvariableop_resource:
identity??dense_61/BiasAdd/ReadVariableOp?dense_61/MatMul/ReadVariableOp?-lstm_183/lstm_cell_213/BiasAdd/ReadVariableOp?,lstm_183/lstm_cell_213/MatMul/ReadVariableOp?.lstm_183/lstm_cell_213/MatMul_1/ReadVariableOp?lstm_183/while?-lstm_184/lstm_cell_214/BiasAdd/ReadVariableOp?,lstm_184/lstm_cell_214/MatMul/ReadVariableOp?.lstm_184/lstm_cell_214/MatMul_1/ReadVariableOp?lstm_184/while?-lstm_185/lstm_cell_215/BiasAdd/ReadVariableOp?,lstm_185/lstm_cell_215/MatMul/ReadVariableOp?.lstm_185/lstm_cell_215/MatMul_1/ReadVariableOp?lstm_185/whileD
lstm_183/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_183/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_183/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_183/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_183/strided_sliceStridedSlicelstm_183/Shape:output:0%lstm_183/strided_slice/stack:output:0'lstm_183/strided_slice/stack_1:output:0'lstm_183/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_183/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_183/zeros/packedPacklstm_183/strided_slice:output:0 lstm_183/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_183/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_183/zerosFilllstm_183/zeros/packed:output:0lstm_183/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_183/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_183/zeros_1/packedPacklstm_183/strided_slice:output:0"lstm_183/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_183/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_183/zeros_1Fill lstm_183/zeros_1/packed:output:0lstm_183/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_183/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_183/transpose	Transposeinputs lstm_183/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_183/Shape_1Shapelstm_183/transpose:y:0*
T0*
_output_shapes
:h
lstm_183/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_183/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_183/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_183/strided_slice_1StridedSlicelstm_183/Shape_1:output:0'lstm_183/strided_slice_1/stack:output:0)lstm_183/strided_slice_1/stack_1:output:0)lstm_183/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_183/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_183/TensorArrayV2TensorListReserve-lstm_183/TensorArrayV2/element_shape:output:0!lstm_183/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_183/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_183/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_183/transpose:y:0Glstm_183/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_183/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_183/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_183/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_183/strided_slice_2StridedSlicelstm_183/transpose:y:0'lstm_183/strided_slice_2/stack:output:0)lstm_183/strided_slice_2/stack_1:output:0)lstm_183/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_183/lstm_cell_213/MatMul/ReadVariableOpReadVariableOp5lstm_183_lstm_cell_213_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_183/lstm_cell_213/MatMulMatMul!lstm_183/strided_slice_2:output:04lstm_183/lstm_cell_213/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_183/lstm_cell_213/MatMul_1/ReadVariableOpReadVariableOp7lstm_183_lstm_cell_213_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_183/lstm_cell_213/MatMul_1MatMullstm_183/zeros:output:06lstm_183/lstm_cell_213/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_183/lstm_cell_213/addAddV2'lstm_183/lstm_cell_213/MatMul:product:0)lstm_183/lstm_cell_213/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_183/lstm_cell_213/BiasAdd/ReadVariableOpReadVariableOp6lstm_183_lstm_cell_213_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_183/lstm_cell_213/BiasAddBiasAddlstm_183/lstm_cell_213/add:z:05lstm_183/lstm_cell_213/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_183/lstm_cell_213/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_183/lstm_cell_213/splitSplit/lstm_183/lstm_cell_213/split/split_dim:output:0'lstm_183/lstm_cell_213/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_183/lstm_cell_213/SigmoidSigmoid%lstm_183/lstm_cell_213/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_183/lstm_cell_213/Sigmoid_1Sigmoid%lstm_183/lstm_cell_213/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_183/lstm_cell_213/mulMul$lstm_183/lstm_cell_213/Sigmoid_1:y:0lstm_183/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_183/lstm_cell_213/ReluRelu%lstm_183/lstm_cell_213/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_183/lstm_cell_213/mul_1Mul"lstm_183/lstm_cell_213/Sigmoid:y:0)lstm_183/lstm_cell_213/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_183/lstm_cell_213/add_1AddV2lstm_183/lstm_cell_213/mul:z:0 lstm_183/lstm_cell_213/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_183/lstm_cell_213/Sigmoid_2Sigmoid%lstm_183/lstm_cell_213/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_183/lstm_cell_213/Relu_1Relu lstm_183/lstm_cell_213/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_183/lstm_cell_213/mul_2Mul$lstm_183/lstm_cell_213/Sigmoid_2:y:0+lstm_183/lstm_cell_213/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_183/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_183/TensorArrayV2_1TensorListReserve/lstm_183/TensorArrayV2_1/element_shape:output:0!lstm_183/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_183/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_183/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_183/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_183/whileWhile$lstm_183/while/loop_counter:output:0*lstm_183/while/maximum_iterations:output:0lstm_183/time:output:0!lstm_183/TensorArrayV2_1:handle:0lstm_183/zeros:output:0lstm_183/zeros_1:output:0!lstm_183/strided_slice_1:output:0@lstm_183/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_183_lstm_cell_213_matmul_readvariableop_resource7lstm_183_lstm_cell_213_matmul_1_readvariableop_resource6lstm_183_lstm_cell_213_biasadd_readvariableop_resource*
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
lstm_183_while_body_1304005*'
condR
lstm_183_while_cond_1304004*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_183/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_183/TensorArrayV2Stack/TensorListStackTensorListStacklstm_183/while:output:3Blstm_183/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_183/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_183/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_183/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_183/strided_slice_3StridedSlice4lstm_183/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_183/strided_slice_3/stack:output:0)lstm_183/strided_slice_3/stack_1:output:0)lstm_183/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_183/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_183/transpose_1	Transpose4lstm_183/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_183/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_183/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_184/ShapeShapelstm_183/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_184/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_184/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_184/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_184/strided_sliceStridedSlicelstm_184/Shape:output:0%lstm_184/strided_slice/stack:output:0'lstm_184/strided_slice/stack_1:output:0'lstm_184/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_184/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_184/zeros/packedPacklstm_184/strided_slice:output:0 lstm_184/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_184/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_184/zerosFilllstm_184/zeros/packed:output:0lstm_184/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_184/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_184/zeros_1/packedPacklstm_184/strided_slice:output:0"lstm_184/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_184/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_184/zeros_1Fill lstm_184/zeros_1/packed:output:0lstm_184/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_184/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_184/transpose	Transposelstm_183/transpose_1:y:0 lstm_184/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_184/Shape_1Shapelstm_184/transpose:y:0*
T0*
_output_shapes
:h
lstm_184/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_184/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_184/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_184/strided_slice_1StridedSlicelstm_184/Shape_1:output:0'lstm_184/strided_slice_1/stack:output:0)lstm_184/strided_slice_1/stack_1:output:0)lstm_184/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_184/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_184/TensorArrayV2TensorListReserve-lstm_184/TensorArrayV2/element_shape:output:0!lstm_184/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_184/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_184/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_184/transpose:y:0Glstm_184/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_184/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_184/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_184/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_184/strided_slice_2StridedSlicelstm_184/transpose:y:0'lstm_184/strided_slice_2/stack:output:0)lstm_184/strided_slice_2/stack_1:output:0)lstm_184/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_184/lstm_cell_214/MatMul/ReadVariableOpReadVariableOp5lstm_184_lstm_cell_214_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_184/lstm_cell_214/MatMulMatMul!lstm_184/strided_slice_2:output:04lstm_184/lstm_cell_214/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_184/lstm_cell_214/MatMul_1/ReadVariableOpReadVariableOp7lstm_184_lstm_cell_214_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_184/lstm_cell_214/MatMul_1MatMullstm_184/zeros:output:06lstm_184/lstm_cell_214/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_184/lstm_cell_214/addAddV2'lstm_184/lstm_cell_214/MatMul:product:0)lstm_184/lstm_cell_214/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_184/lstm_cell_214/BiasAdd/ReadVariableOpReadVariableOp6lstm_184_lstm_cell_214_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_184/lstm_cell_214/BiasAddBiasAddlstm_184/lstm_cell_214/add:z:05lstm_184/lstm_cell_214/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_184/lstm_cell_214/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_184/lstm_cell_214/splitSplit/lstm_184/lstm_cell_214/split/split_dim:output:0'lstm_184/lstm_cell_214/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_184/lstm_cell_214/SigmoidSigmoid%lstm_184/lstm_cell_214/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_184/lstm_cell_214/Sigmoid_1Sigmoid%lstm_184/lstm_cell_214/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_184/lstm_cell_214/mulMul$lstm_184/lstm_cell_214/Sigmoid_1:y:0lstm_184/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_184/lstm_cell_214/ReluRelu%lstm_184/lstm_cell_214/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_184/lstm_cell_214/mul_1Mul"lstm_184/lstm_cell_214/Sigmoid:y:0)lstm_184/lstm_cell_214/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_184/lstm_cell_214/add_1AddV2lstm_184/lstm_cell_214/mul:z:0 lstm_184/lstm_cell_214/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_184/lstm_cell_214/Sigmoid_2Sigmoid%lstm_184/lstm_cell_214/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_184/lstm_cell_214/Relu_1Relu lstm_184/lstm_cell_214/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_184/lstm_cell_214/mul_2Mul$lstm_184/lstm_cell_214/Sigmoid_2:y:0+lstm_184/lstm_cell_214/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_184/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_184/TensorArrayV2_1TensorListReserve/lstm_184/TensorArrayV2_1/element_shape:output:0!lstm_184/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_184/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_184/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_184/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_184/whileWhile$lstm_184/while/loop_counter:output:0*lstm_184/while/maximum_iterations:output:0lstm_184/time:output:0!lstm_184/TensorArrayV2_1:handle:0lstm_184/zeros:output:0lstm_184/zeros_1:output:0!lstm_184/strided_slice_1:output:0@lstm_184/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_184_lstm_cell_214_matmul_readvariableop_resource7lstm_184_lstm_cell_214_matmul_1_readvariableop_resource6lstm_184_lstm_cell_214_biasadd_readvariableop_resource*
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
lstm_184_while_body_1304144*'
condR
lstm_184_while_cond_1304143*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_184/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_184/TensorArrayV2Stack/TensorListStackTensorListStacklstm_184/while:output:3Blstm_184/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_184/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_184/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_184/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_184/strided_slice_3StridedSlice4lstm_184/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_184/strided_slice_3/stack:output:0)lstm_184/strided_slice_3/stack_1:output:0)lstm_184/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_184/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_184/transpose_1	Transpose4lstm_184/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_184/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_184/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_185/ShapeShapelstm_184/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_185/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_185/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_185/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_185/strided_sliceStridedSlicelstm_185/Shape:output:0%lstm_185/strided_slice/stack:output:0'lstm_185/strided_slice/stack_1:output:0'lstm_185/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_185/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_185/zeros/packedPacklstm_185/strided_slice:output:0 lstm_185/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_185/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_185/zerosFilllstm_185/zeros/packed:output:0lstm_185/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_185/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_185/zeros_1/packedPacklstm_185/strided_slice:output:0"lstm_185/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_185/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_185/zeros_1Fill lstm_185/zeros_1/packed:output:0lstm_185/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_185/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_185/transpose	Transposelstm_184/transpose_1:y:0 lstm_185/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_185/Shape_1Shapelstm_185/transpose:y:0*
T0*
_output_shapes
:h
lstm_185/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_185/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_185/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_185/strided_slice_1StridedSlicelstm_185/Shape_1:output:0'lstm_185/strided_slice_1/stack:output:0)lstm_185/strided_slice_1/stack_1:output:0)lstm_185/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_185/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_185/TensorArrayV2TensorListReserve-lstm_185/TensorArrayV2/element_shape:output:0!lstm_185/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_185/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_185/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_185/transpose:y:0Glstm_185/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_185/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_185/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_185/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_185/strided_slice_2StridedSlicelstm_185/transpose:y:0'lstm_185/strided_slice_2/stack:output:0)lstm_185/strided_slice_2/stack_1:output:0)lstm_185/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_185/lstm_cell_215/MatMul/ReadVariableOpReadVariableOp5lstm_185_lstm_cell_215_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_185/lstm_cell_215/MatMulMatMul!lstm_185/strided_slice_2:output:04lstm_185/lstm_cell_215/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_185/lstm_cell_215/MatMul_1/ReadVariableOpReadVariableOp7lstm_185_lstm_cell_215_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_185/lstm_cell_215/MatMul_1MatMullstm_185/zeros:output:06lstm_185/lstm_cell_215/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_185/lstm_cell_215/addAddV2'lstm_185/lstm_cell_215/MatMul:product:0)lstm_185/lstm_cell_215/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_185/lstm_cell_215/BiasAdd/ReadVariableOpReadVariableOp6lstm_185_lstm_cell_215_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_185/lstm_cell_215/BiasAddBiasAddlstm_185/lstm_cell_215/add:z:05lstm_185/lstm_cell_215/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_185/lstm_cell_215/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_185/lstm_cell_215/splitSplit/lstm_185/lstm_cell_215/split/split_dim:output:0'lstm_185/lstm_cell_215/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_185/lstm_cell_215/SigmoidSigmoid%lstm_185/lstm_cell_215/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_185/lstm_cell_215/Sigmoid_1Sigmoid%lstm_185/lstm_cell_215/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_185/lstm_cell_215/mulMul$lstm_185/lstm_cell_215/Sigmoid_1:y:0lstm_185/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_185/lstm_cell_215/ReluRelu%lstm_185/lstm_cell_215/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_185/lstm_cell_215/mul_1Mul"lstm_185/lstm_cell_215/Sigmoid:y:0)lstm_185/lstm_cell_215/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_185/lstm_cell_215/add_1AddV2lstm_185/lstm_cell_215/mul:z:0 lstm_185/lstm_cell_215/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_185/lstm_cell_215/Sigmoid_2Sigmoid%lstm_185/lstm_cell_215/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_185/lstm_cell_215/Relu_1Relu lstm_185/lstm_cell_215/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_185/lstm_cell_215/mul_2Mul$lstm_185/lstm_cell_215/Sigmoid_2:y:0+lstm_185/lstm_cell_215/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_185/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_185/TensorArrayV2_1TensorListReserve/lstm_185/TensorArrayV2_1/element_shape:output:0!lstm_185/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_185/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_185/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_185/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_185/whileWhile$lstm_185/while/loop_counter:output:0*lstm_185/while/maximum_iterations:output:0lstm_185/time:output:0!lstm_185/TensorArrayV2_1:handle:0lstm_185/zeros:output:0lstm_185/zeros_1:output:0!lstm_185/strided_slice_1:output:0@lstm_185/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_185_lstm_cell_215_matmul_readvariableop_resource7lstm_185_lstm_cell_215_matmul_1_readvariableop_resource6lstm_185_lstm_cell_215_biasadd_readvariableop_resource*
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
lstm_185_while_body_1304283*'
condR
lstm_185_while_cond_1304282*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_185/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_185/TensorArrayV2Stack/TensorListStackTensorListStacklstm_185/while:output:3Blstm_185/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_185/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_185/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_185/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_185/strided_slice_3StridedSlice4lstm_185/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_185/strided_slice_3/stack:output:0)lstm_185/strided_slice_3/stack_1:output:0)lstm_185/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_185/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_185/transpose_1	Transpose4lstm_185/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_185/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_185/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_61/MatMul/ReadVariableOpReadVariableOp'dense_61_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_61/MatMulMatMul!lstm_185/strided_slice_3:output:0&dense_61/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_61/BiasAdd/ReadVariableOpReadVariableOp(dense_61_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_61/BiasAddBiasAdddense_61/MatMul:product:0'dense_61/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_61/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_61/BiasAdd/ReadVariableOp^dense_61/MatMul/ReadVariableOp.^lstm_183/lstm_cell_213/BiasAdd/ReadVariableOp-^lstm_183/lstm_cell_213/MatMul/ReadVariableOp/^lstm_183/lstm_cell_213/MatMul_1/ReadVariableOp^lstm_183/while.^lstm_184/lstm_cell_214/BiasAdd/ReadVariableOp-^lstm_184/lstm_cell_214/MatMul/ReadVariableOp/^lstm_184/lstm_cell_214/MatMul_1/ReadVariableOp^lstm_184/while.^lstm_185/lstm_cell_215/BiasAdd/ReadVariableOp-^lstm_185/lstm_cell_215/MatMul/ReadVariableOp/^lstm_185/lstm_cell_215/MatMul_1/ReadVariableOp^lstm_185/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_61/BiasAdd/ReadVariableOpdense_61/BiasAdd/ReadVariableOp2@
dense_61/MatMul/ReadVariableOpdense_61/MatMul/ReadVariableOp2^
-lstm_183/lstm_cell_213/BiasAdd/ReadVariableOp-lstm_183/lstm_cell_213/BiasAdd/ReadVariableOp2\
,lstm_183/lstm_cell_213/MatMul/ReadVariableOp,lstm_183/lstm_cell_213/MatMul/ReadVariableOp2`
.lstm_183/lstm_cell_213/MatMul_1/ReadVariableOp.lstm_183/lstm_cell_213/MatMul_1/ReadVariableOp2 
lstm_183/whilelstm_183/while2^
-lstm_184/lstm_cell_214/BiasAdd/ReadVariableOp-lstm_184/lstm_cell_214/BiasAdd/ReadVariableOp2\
,lstm_184/lstm_cell_214/MatMul/ReadVariableOp,lstm_184/lstm_cell_214/MatMul/ReadVariableOp2`
.lstm_184/lstm_cell_214/MatMul_1/ReadVariableOp.lstm_184/lstm_cell_214/MatMul_1/ReadVariableOp2 
lstm_184/whilelstm_184/while2^
-lstm_185/lstm_cell_215/BiasAdd/ReadVariableOp-lstm_185/lstm_cell_215/BiasAdd/ReadVariableOp2\
,lstm_185/lstm_cell_215/MatMul/ReadVariableOp,lstm_185/lstm_cell_215/MatMul/ReadVariableOp2`
.lstm_185/lstm_cell_215/MatMul_1/ReadVariableOp.lstm_185/lstm_cell_215/MatMul_1/ReadVariableOp2 
lstm_185/whilelstm_185/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_184_layer_call_and_return_conditional_losses_1301705

inputs(
lstm_cell_214_1301623:	d?(
lstm_cell_214_1301625:	2?$
lstm_cell_214_1301627:	?
identity??%lstm_cell_214/StatefulPartitionedCall?while;
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
%lstm_cell_214/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_214_1301623lstm_cell_214_1301625lstm_cell_214_1301627*
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
J__inference_lstm_cell_214_layer_call_and_return_conditional_losses_1301622n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_214_1301623lstm_cell_214_1301625lstm_cell_214_1301627*
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
while_body_1301636*
condR
while_cond_1301635*K
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
NoOpNoOp&^lstm_cell_214/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_214/StatefulPartitionedCall%lstm_cell_214/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_183_layer_call_and_return_conditional_losses_1304846

inputs?
,lstm_cell_213_matmul_readvariableop_resource:	?A
.lstm_cell_213_matmul_1_readvariableop_resource:	d?<
-lstm_cell_213_biasadd_readvariableop_resource:	?
identity??$lstm_cell_213/BiasAdd/ReadVariableOp?#lstm_cell_213/MatMul/ReadVariableOp?%lstm_cell_213/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_213/MatMul/ReadVariableOpReadVariableOp,lstm_cell_213_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_213/MatMulMatMulstrided_slice_2:output:0+lstm_cell_213/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_213/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_213_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_213/MatMul_1MatMulzeros:output:0-lstm_cell_213/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_213/addAddV2lstm_cell_213/MatMul:product:0 lstm_cell_213/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_213/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_213_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_213/BiasAddBiasAddlstm_cell_213/add:z:0,lstm_cell_213/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_213/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_213/splitSplit&lstm_cell_213/split/split_dim:output:0lstm_cell_213/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_213/SigmoidSigmoidlstm_cell_213/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_213/Sigmoid_1Sigmoidlstm_cell_213/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_213/mulMullstm_cell_213/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_213/ReluRelulstm_cell_213/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_213/mul_1Mullstm_cell_213/Sigmoid:y:0 lstm_cell_213/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_213/add_1AddV2lstm_cell_213/mul:z:0lstm_cell_213/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_213/Sigmoid_2Sigmoidlstm_cell_213/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_213/Relu_1Relulstm_cell_213/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_213/mul_2Mullstm_cell_213/Sigmoid_2:y:0"lstm_cell_213/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_213_matmul_readvariableop_resource.lstm_cell_213_matmul_1_readvariableop_resource-lstm_cell_213_biasadd_readvariableop_resource*
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
while_body_1304762*
condR
while_cond_1304761*K
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
NoOpNoOp%^lstm_cell_213/BiasAdd/ReadVariableOp$^lstm_cell_213/MatMul/ReadVariableOp&^lstm_cell_213/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_213/BiasAdd/ReadVariableOp$lstm_cell_213/BiasAdd/ReadVariableOp2J
#lstm_cell_213/MatMul/ReadVariableOp#lstm_cell_213/MatMul/ReadVariableOp2N
%lstm_cell_213/MatMul_1/ReadVariableOp%lstm_cell_213/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1305234
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1305234___redundant_placeholder05
1while_while_cond_1305234___redundant_placeholder15
1while_while_cond_1305234___redundant_placeholder25
1while_while_cond_1305234___redundant_placeholder3
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
E__inference_dense_61_layer_call_and_return_conditional_losses_1302722

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
E__inference_lstm_183_layer_call_and_return_conditional_losses_1303250

inputs?
,lstm_cell_213_matmul_readvariableop_resource:	?A
.lstm_cell_213_matmul_1_readvariableop_resource:	d?<
-lstm_cell_213_biasadd_readvariableop_resource:	?
identity??$lstm_cell_213/BiasAdd/ReadVariableOp?#lstm_cell_213/MatMul/ReadVariableOp?%lstm_cell_213/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_213/MatMul/ReadVariableOpReadVariableOp,lstm_cell_213_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_213/MatMulMatMulstrided_slice_2:output:0+lstm_cell_213/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_213/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_213_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_213/MatMul_1MatMulzeros:output:0-lstm_cell_213/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_213/addAddV2lstm_cell_213/MatMul:product:0 lstm_cell_213/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_213/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_213_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_213/BiasAddBiasAddlstm_cell_213/add:z:0,lstm_cell_213/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_213/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_213/splitSplit&lstm_cell_213/split/split_dim:output:0lstm_cell_213/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_213/SigmoidSigmoidlstm_cell_213/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_213/Sigmoid_1Sigmoidlstm_cell_213/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_213/mulMullstm_cell_213/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_213/ReluRelulstm_cell_213/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_213/mul_1Mullstm_cell_213/Sigmoid:y:0 lstm_cell_213/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_213/add_1AddV2lstm_cell_213/mul:z:0lstm_cell_213/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_213/Sigmoid_2Sigmoidlstm_cell_213/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_213/Relu_1Relulstm_cell_213/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_213/mul_2Mullstm_cell_213/Sigmoid_2:y:0"lstm_cell_213/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_213_matmul_readvariableop_resource.lstm_cell_213_matmul_1_readvariableop_resource-lstm_cell_213_biasadd_readvariableop_resource*
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
while_body_1303166*
condR
while_cond_1303165*K
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
NoOpNoOp%^lstm_cell_213/BiasAdd/ReadVariableOp$^lstm_cell_213/MatMul/ReadVariableOp&^lstm_cell_213/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_213/BiasAdd/ReadVariableOp$lstm_cell_213/BiasAdd/ReadVariableOp2J
#lstm_cell_213/MatMul/ReadVariableOp#lstm_cell_213/MatMul/ReadVariableOp2N
%lstm_cell_213/MatMul_1/ReadVariableOp%lstm_cell_213/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_213_layer_call_and_return_conditional_losses_1306306

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
*__inference_lstm_184_layer_call_fn_1305033

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
E__inference_lstm_184_layer_call_and_return_conditional_losses_1303085s
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
)sequential_61_lstm_184_while_body_1300976J
Fsequential_61_lstm_184_while_sequential_61_lstm_184_while_loop_counterP
Lsequential_61_lstm_184_while_sequential_61_lstm_184_while_maximum_iterations,
(sequential_61_lstm_184_while_placeholder.
*sequential_61_lstm_184_while_placeholder_1.
*sequential_61_lstm_184_while_placeholder_2.
*sequential_61_lstm_184_while_placeholder_3I
Esequential_61_lstm_184_while_sequential_61_lstm_184_strided_slice_1_0?
?sequential_61_lstm_184_while_tensorarrayv2read_tensorlistgetitem_sequential_61_lstm_184_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_61_lstm_184_while_lstm_cell_214_matmul_readvariableop_resource_0:	d?`
Msequential_61_lstm_184_while_lstm_cell_214_matmul_1_readvariableop_resource_0:	2?[
Lsequential_61_lstm_184_while_lstm_cell_214_biasadd_readvariableop_resource_0:	?)
%sequential_61_lstm_184_while_identity+
'sequential_61_lstm_184_while_identity_1+
'sequential_61_lstm_184_while_identity_2+
'sequential_61_lstm_184_while_identity_3+
'sequential_61_lstm_184_while_identity_4+
'sequential_61_lstm_184_while_identity_5G
Csequential_61_lstm_184_while_sequential_61_lstm_184_strided_slice_1?
sequential_61_lstm_184_while_tensorarrayv2read_tensorlistgetitem_sequential_61_lstm_184_tensorarrayunstack_tensorlistfromtensor\
Isequential_61_lstm_184_while_lstm_cell_214_matmul_readvariableop_resource:	d?^
Ksequential_61_lstm_184_while_lstm_cell_214_matmul_1_readvariableop_resource:	2?Y
Jsequential_61_lstm_184_while_lstm_cell_214_biasadd_readvariableop_resource:	???Asequential_61/lstm_184/while/lstm_cell_214/BiasAdd/ReadVariableOp?@sequential_61/lstm_184/while/lstm_cell_214/MatMul/ReadVariableOp?Bsequential_61/lstm_184/while/lstm_cell_214/MatMul_1/ReadVariableOp?
Nsequential_61/lstm_184/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
@sequential_61/lstm_184/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_61_lstm_184_while_tensorarrayv2read_tensorlistgetitem_sequential_61_lstm_184_tensorarrayunstack_tensorlistfromtensor_0(sequential_61_lstm_184_while_placeholderWsequential_61/lstm_184/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
@sequential_61/lstm_184/while/lstm_cell_214/MatMul/ReadVariableOpReadVariableOpKsequential_61_lstm_184_while_lstm_cell_214_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
1sequential_61/lstm_184/while/lstm_cell_214/MatMulMatMulGsequential_61/lstm_184/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_61/lstm_184/while/lstm_cell_214/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_61/lstm_184/while/lstm_cell_214/MatMul_1/ReadVariableOpReadVariableOpMsequential_61_lstm_184_while_lstm_cell_214_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
3sequential_61/lstm_184/while/lstm_cell_214/MatMul_1MatMul*sequential_61_lstm_184_while_placeholder_2Jsequential_61/lstm_184/while/lstm_cell_214/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_61/lstm_184/while/lstm_cell_214/addAddV2;sequential_61/lstm_184/while/lstm_cell_214/MatMul:product:0=sequential_61/lstm_184/while/lstm_cell_214/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_61/lstm_184/while/lstm_cell_214/BiasAdd/ReadVariableOpReadVariableOpLsequential_61_lstm_184_while_lstm_cell_214_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_61/lstm_184/while/lstm_cell_214/BiasAddBiasAdd2sequential_61/lstm_184/while/lstm_cell_214/add:z:0Isequential_61/lstm_184/while/lstm_cell_214/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_61/lstm_184/while/lstm_cell_214/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_61/lstm_184/while/lstm_cell_214/splitSplitCsequential_61/lstm_184/while/lstm_cell_214/split/split_dim:output:0;sequential_61/lstm_184/while/lstm_cell_214/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
2sequential_61/lstm_184/while/lstm_cell_214/SigmoidSigmoid9sequential_61/lstm_184/while/lstm_cell_214/split:output:0*
T0*'
_output_shapes
:?????????2?
4sequential_61/lstm_184/while/lstm_cell_214/Sigmoid_1Sigmoid9sequential_61/lstm_184/while/lstm_cell_214/split:output:1*
T0*'
_output_shapes
:?????????2?
.sequential_61/lstm_184/while/lstm_cell_214/mulMul8sequential_61/lstm_184/while/lstm_cell_214/Sigmoid_1:y:0*sequential_61_lstm_184_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
/sequential_61/lstm_184/while/lstm_cell_214/ReluRelu9sequential_61/lstm_184/while/lstm_cell_214/split:output:2*
T0*'
_output_shapes
:?????????2?
0sequential_61/lstm_184/while/lstm_cell_214/mul_1Mul6sequential_61/lstm_184/while/lstm_cell_214/Sigmoid:y:0=sequential_61/lstm_184/while/lstm_cell_214/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
0sequential_61/lstm_184/while/lstm_cell_214/add_1AddV22sequential_61/lstm_184/while/lstm_cell_214/mul:z:04sequential_61/lstm_184/while/lstm_cell_214/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
4sequential_61/lstm_184/while/lstm_cell_214/Sigmoid_2Sigmoid9sequential_61/lstm_184/while/lstm_cell_214/split:output:3*
T0*'
_output_shapes
:?????????2?
1sequential_61/lstm_184/while/lstm_cell_214/Relu_1Relu4sequential_61/lstm_184/while/lstm_cell_214/add_1:z:0*
T0*'
_output_shapes
:?????????2?
0sequential_61/lstm_184/while/lstm_cell_214/mul_2Mul8sequential_61/lstm_184/while/lstm_cell_214/Sigmoid_2:y:0?sequential_61/lstm_184/while/lstm_cell_214/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Asequential_61/lstm_184/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_61_lstm_184_while_placeholder_1(sequential_61_lstm_184_while_placeholder4sequential_61/lstm_184/while/lstm_cell_214/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_61/lstm_184/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_61/lstm_184/while/addAddV2(sequential_61_lstm_184_while_placeholder+sequential_61/lstm_184/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_61/lstm_184/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_61/lstm_184/while/add_1AddV2Fsequential_61_lstm_184_while_sequential_61_lstm_184_while_loop_counter-sequential_61/lstm_184/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_61/lstm_184/while/IdentityIdentity&sequential_61/lstm_184/while/add_1:z:0"^sequential_61/lstm_184/while/NoOp*
T0*
_output_shapes
: ?
'sequential_61/lstm_184/while/Identity_1IdentityLsequential_61_lstm_184_while_sequential_61_lstm_184_while_maximum_iterations"^sequential_61/lstm_184/while/NoOp*
T0*
_output_shapes
: ?
'sequential_61/lstm_184/while/Identity_2Identity$sequential_61/lstm_184/while/add:z:0"^sequential_61/lstm_184/while/NoOp*
T0*
_output_shapes
: ?
'sequential_61/lstm_184/while/Identity_3IdentityQsequential_61/lstm_184/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_61/lstm_184/while/NoOp*
T0*
_output_shapes
: ?
'sequential_61/lstm_184/while/Identity_4Identity4sequential_61/lstm_184/while/lstm_cell_214/mul_2:z:0"^sequential_61/lstm_184/while/NoOp*
T0*'
_output_shapes
:?????????2?
'sequential_61/lstm_184/while/Identity_5Identity4sequential_61/lstm_184/while/lstm_cell_214/add_1:z:0"^sequential_61/lstm_184/while/NoOp*
T0*'
_output_shapes
:?????????2?
!sequential_61/lstm_184/while/NoOpNoOpB^sequential_61/lstm_184/while/lstm_cell_214/BiasAdd/ReadVariableOpA^sequential_61/lstm_184/while/lstm_cell_214/MatMul/ReadVariableOpC^sequential_61/lstm_184/while/lstm_cell_214/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_61_lstm_184_while_identity.sequential_61/lstm_184/while/Identity:output:0"[
'sequential_61_lstm_184_while_identity_10sequential_61/lstm_184/while/Identity_1:output:0"[
'sequential_61_lstm_184_while_identity_20sequential_61/lstm_184/while/Identity_2:output:0"[
'sequential_61_lstm_184_while_identity_30sequential_61/lstm_184/while/Identity_3:output:0"[
'sequential_61_lstm_184_while_identity_40sequential_61/lstm_184/while/Identity_4:output:0"[
'sequential_61_lstm_184_while_identity_50sequential_61/lstm_184/while/Identity_5:output:0"?
Jsequential_61_lstm_184_while_lstm_cell_214_biasadd_readvariableop_resourceLsequential_61_lstm_184_while_lstm_cell_214_biasadd_readvariableop_resource_0"?
Ksequential_61_lstm_184_while_lstm_cell_214_matmul_1_readvariableop_resourceMsequential_61_lstm_184_while_lstm_cell_214_matmul_1_readvariableop_resource_0"?
Isequential_61_lstm_184_while_lstm_cell_214_matmul_readvariableop_resourceKsequential_61_lstm_184_while_lstm_cell_214_matmul_readvariableop_resource_0"?
Csequential_61_lstm_184_while_sequential_61_lstm_184_strided_slice_1Esequential_61_lstm_184_while_sequential_61_lstm_184_strided_slice_1_0"?
sequential_61_lstm_184_while_tensorarrayv2read_tensorlistgetitem_sequential_61_lstm_184_tensorarrayunstack_tensorlistfromtensor?sequential_61_lstm_184_while_tensorarrayv2read_tensorlistgetitem_sequential_61_lstm_184_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Asequential_61/lstm_184/while/lstm_cell_214/BiasAdd/ReadVariableOpAsequential_61/lstm_184/while/lstm_cell_214/BiasAdd/ReadVariableOp2?
@sequential_61/lstm_184/while/lstm_cell_214/MatMul/ReadVariableOp@sequential_61/lstm_184/while/lstm_cell_214/MatMul/ReadVariableOp2?
Bsequential_61/lstm_184/while/lstm_cell_214/MatMul_1/ReadVariableOpBsequential_61/lstm_184/while/lstm_cell_214/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_215_layer_call_and_return_conditional_losses_1302118

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
/__inference_sequential_61_layer_call_fn_1303492

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
J__inference_sequential_61_layer_call_and_return_conditional_losses_1302729o
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
*__inference_lstm_183_layer_call_fn_1304395
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
E__inference_lstm_183_layer_call_and_return_conditional_losses_1301546|
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
E__inference_lstm_185_layer_call_and_return_conditional_losses_1305792
inputs_0>
,lstm_cell_215_matmul_readvariableop_resource:2(@
.lstm_cell_215_matmul_1_readvariableop_resource:
(;
-lstm_cell_215_biasadd_readvariableop_resource:(
identity??$lstm_cell_215/BiasAdd/ReadVariableOp?#lstm_cell_215/MatMul/ReadVariableOp?%lstm_cell_215/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_215/MatMul/ReadVariableOpReadVariableOp,lstm_cell_215_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_215/MatMulMatMulstrided_slice_2:output:0+lstm_cell_215/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_215/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_215_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_215/MatMul_1MatMulzeros:output:0-lstm_cell_215/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_215/addAddV2lstm_cell_215/MatMul:product:0 lstm_cell_215/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_215/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_215_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_215/BiasAddBiasAddlstm_cell_215/add:z:0,lstm_cell_215/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_215/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_215/splitSplit&lstm_cell_215/split/split_dim:output:0lstm_cell_215/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_215/SigmoidSigmoidlstm_cell_215/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_215/Sigmoid_1Sigmoidlstm_cell_215/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_215/mulMullstm_cell_215/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_215/ReluRelulstm_cell_215/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_215/mul_1Mullstm_cell_215/Sigmoid:y:0 lstm_cell_215/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_215/add_1AddV2lstm_cell_215/mul:z:0lstm_cell_215/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_215/Sigmoid_2Sigmoidlstm_cell_215/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_215/Relu_1Relulstm_cell_215/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_215/mul_2Mullstm_cell_215/Sigmoid_2:y:0"lstm_cell_215/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_215_matmul_readvariableop_resource.lstm_cell_215_matmul_1_readvariableop_resource-lstm_cell_215_biasadd_readvariableop_resource*
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
while_body_1305708*
condR
while_cond_1305707*K
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
NoOpNoOp%^lstm_cell_215/BiasAdd/ReadVariableOp$^lstm_cell_215/MatMul/ReadVariableOp&^lstm_cell_215/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_215/BiasAdd/ReadVariableOp$lstm_cell_215/BiasAdd/ReadVariableOp2J
#lstm_cell_215/MatMul/ReadVariableOp#lstm_cell_215/MatMul/ReadVariableOp2N
%lstm_cell_215/MatMul_1/ReadVariableOp%lstm_cell_215/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
while_body_1304619
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_213_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_213_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_213_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_213_matmul_readvariableop_resource:	?G
4while_lstm_cell_213_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_213_biasadd_readvariableop_resource:	???*while/lstm_cell_213/BiasAdd/ReadVariableOp?)while/lstm_cell_213/MatMul/ReadVariableOp?+while/lstm_cell_213/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_213/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_213_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_213/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_213/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_213/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_213_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_213/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_213/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_213/addAddV2$while/lstm_cell_213/MatMul:product:0&while/lstm_cell_213/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_213/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_213_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_213/BiasAddBiasAddwhile/lstm_cell_213/add:z:02while/lstm_cell_213/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_213/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_213/splitSplit,while/lstm_cell_213/split/split_dim:output:0$while/lstm_cell_213/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_213/SigmoidSigmoid"while/lstm_cell_213/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_213/Sigmoid_1Sigmoid"while/lstm_cell_213/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_213/mulMul!while/lstm_cell_213/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_213/ReluRelu"while/lstm_cell_213/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_213/mul_1Mulwhile/lstm_cell_213/Sigmoid:y:0&while/lstm_cell_213/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_213/add_1AddV2while/lstm_cell_213/mul:z:0while/lstm_cell_213/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_213/Sigmoid_2Sigmoid"while/lstm_cell_213/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_213/Relu_1Reluwhile/lstm_cell_213/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_213/mul_2Mul!while/lstm_cell_213/Sigmoid_2:y:0(while/lstm_cell_213/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_213/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_213/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_213/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_213/BiasAdd/ReadVariableOp*^while/lstm_cell_213/MatMul/ReadVariableOp,^while/lstm_cell_213/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_213_biasadd_readvariableop_resource5while_lstm_cell_213_biasadd_readvariableop_resource_0"n
4while_lstm_cell_213_matmul_1_readvariableop_resource6while_lstm_cell_213_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_213_matmul_readvariableop_resource4while_lstm_cell_213_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_213/BiasAdd/ReadVariableOp*while/lstm_cell_213/BiasAdd/ReadVariableOp2V
)while/lstm_cell_213/MatMul/ReadVariableOp)while/lstm_cell_213/MatMul/ReadVariableOp2Z
+while/lstm_cell_213/MatMul_1/ReadVariableOp+while/lstm_cell_213/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1305994
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_215_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_215_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_215_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_215_matmul_readvariableop_resource:2(F
4while_lstm_cell_215_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_215_biasadd_readvariableop_resource:(??*while/lstm_cell_215/BiasAdd/ReadVariableOp?)while/lstm_cell_215/MatMul/ReadVariableOp?+while/lstm_cell_215/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_215/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_215_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_215/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_215/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_215/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_215_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_215/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_215/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_215/addAddV2$while/lstm_cell_215/MatMul:product:0&while/lstm_cell_215/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_215/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_215_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_215/BiasAddBiasAddwhile/lstm_cell_215/add:z:02while/lstm_cell_215/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_215/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_215/splitSplit,while/lstm_cell_215/split/split_dim:output:0$while/lstm_cell_215/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_215/SigmoidSigmoid"while/lstm_cell_215/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_215/Sigmoid_1Sigmoid"while/lstm_cell_215/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_215/mulMul!while/lstm_cell_215/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_215/ReluRelu"while/lstm_cell_215/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_215/mul_1Mulwhile/lstm_cell_215/Sigmoid:y:0&while/lstm_cell_215/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_215/add_1AddV2while/lstm_cell_215/mul:z:0while/lstm_cell_215/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_215/Sigmoid_2Sigmoid"while/lstm_cell_215/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_215/Relu_1Reluwhile/lstm_cell_215/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_215/mul_2Mul!while/lstm_cell_215/Sigmoid_2:y:0(while/lstm_cell_215/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_215/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_215/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_215/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_215/BiasAdd/ReadVariableOp*^while/lstm_cell_215/MatMul/ReadVariableOp,^while/lstm_cell_215/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_215_biasadd_readvariableop_resource5while_lstm_cell_215_biasadd_readvariableop_resource_0"n
4while_lstm_cell_215_matmul_1_readvariableop_resource6while_lstm_cell_215_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_215_matmul_readvariableop_resource4while_lstm_cell_215_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_215/BiasAdd/ReadVariableOp*while/lstm_cell_215/BiasAdd/ReadVariableOp2V
)while/lstm_cell_215/MatMul/ReadVariableOp)while/lstm_cell_215/MatMul/ReadVariableOp2Z
+while/lstm_cell_215/MatMul_1/ReadVariableOp+while/lstm_cell_215/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1305993
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1305993___redundant_placeholder05
1while_while_cond_1305993___redundant_placeholder15
1while_while_cond_1305993___redundant_placeholder25
1while_while_cond_1305993___redundant_placeholder3
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
E__inference_lstm_184_layer_call_and_return_conditional_losses_1301896

inputs(
lstm_cell_214_1301814:	d?(
lstm_cell_214_1301816:	2?$
lstm_cell_214_1301818:	?
identity??%lstm_cell_214/StatefulPartitionedCall?while;
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
%lstm_cell_214/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_214_1301814lstm_cell_214_1301816lstm_cell_214_1301818*
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
J__inference_lstm_cell_214_layer_call_and_return_conditional_losses_1301768n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_214_1301814lstm_cell_214_1301816lstm_cell_214_1301818*
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
while_body_1301827*
condR
while_cond_1301826*K
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
NoOpNoOp&^lstm_cell_214/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_214/StatefulPartitionedCall%lstm_cell_214/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_185_layer_call_fn_1305616
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
E__inference_lstm_185_layer_call_and_return_conditional_losses_1302055o
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
while_body_1305708
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_215_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_215_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_215_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_215_matmul_readvariableop_resource:2(F
4while_lstm_cell_215_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_215_biasadd_readvariableop_resource:(??*while/lstm_cell_215/BiasAdd/ReadVariableOp?)while/lstm_cell_215/MatMul/ReadVariableOp?+while/lstm_cell_215/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_215/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_215_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_215/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_215/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_215/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_215_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_215/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_215/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_215/addAddV2$while/lstm_cell_215/MatMul:product:0&while/lstm_cell_215/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_215/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_215_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_215/BiasAddBiasAddwhile/lstm_cell_215/add:z:02while/lstm_cell_215/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_215/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_215/splitSplit,while/lstm_cell_215/split/split_dim:output:0$while/lstm_cell_215/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_215/SigmoidSigmoid"while/lstm_cell_215/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_215/Sigmoid_1Sigmoid"while/lstm_cell_215/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_215/mulMul!while/lstm_cell_215/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_215/ReluRelu"while/lstm_cell_215/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_215/mul_1Mulwhile/lstm_cell_215/Sigmoid:y:0&while/lstm_cell_215/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_215/add_1AddV2while/lstm_cell_215/mul:z:0while/lstm_cell_215/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_215/Sigmoid_2Sigmoid"while/lstm_cell_215/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_215/Relu_1Reluwhile/lstm_cell_215/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_215/mul_2Mul!while/lstm_cell_215/Sigmoid_2:y:0(while/lstm_cell_215/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_215/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_215/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_215/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_215/BiasAdd/ReadVariableOp*^while/lstm_cell_215/MatMul/ReadVariableOp,^while/lstm_cell_215/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_215_biasadd_readvariableop_resource5while_lstm_cell_215_biasadd_readvariableop_resource_0"n
4while_lstm_cell_215_matmul_1_readvariableop_resource6while_lstm_cell_215_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_215_matmul_readvariableop_resource4while_lstm_cell_215_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_215/BiasAdd/ReadVariableOp*while/lstm_cell_215/BiasAdd/ReadVariableOp2V
)while/lstm_cell_215/MatMul/ReadVariableOp)while/lstm_cell_215/MatMul/ReadVariableOp2Z
+while/lstm_cell_215/MatMul_1/ReadVariableOp+while/lstm_cell_215/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_185_layer_call_and_return_conditional_losses_1306221

inputs>
,lstm_cell_215_matmul_readvariableop_resource:2(@
.lstm_cell_215_matmul_1_readvariableop_resource:
(;
-lstm_cell_215_biasadd_readvariableop_resource:(
identity??$lstm_cell_215/BiasAdd/ReadVariableOp?#lstm_cell_215/MatMul/ReadVariableOp?%lstm_cell_215/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_215/MatMul/ReadVariableOpReadVariableOp,lstm_cell_215_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_215/MatMulMatMulstrided_slice_2:output:0+lstm_cell_215/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_215/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_215_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_215/MatMul_1MatMulzeros:output:0-lstm_cell_215/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_215/addAddV2lstm_cell_215/MatMul:product:0 lstm_cell_215/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_215/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_215_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_215/BiasAddBiasAddlstm_cell_215/add:z:0,lstm_cell_215/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_215/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_215/splitSplit&lstm_cell_215/split/split_dim:output:0lstm_cell_215/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_215/SigmoidSigmoidlstm_cell_215/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_215/Sigmoid_1Sigmoidlstm_cell_215/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_215/mulMullstm_cell_215/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_215/ReluRelulstm_cell_215/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_215/mul_1Mullstm_cell_215/Sigmoid:y:0 lstm_cell_215/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_215/add_1AddV2lstm_cell_215/mul:z:0lstm_cell_215/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_215/Sigmoid_2Sigmoidlstm_cell_215/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_215/Relu_1Relulstm_cell_215/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_215/mul_2Mullstm_cell_215/Sigmoid_2:y:0"lstm_cell_215/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_215_matmul_readvariableop_resource.lstm_cell_215_matmul_1_readvariableop_resource-lstm_cell_215_biasadd_readvariableop_resource*
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
while_body_1306137*
condR
while_cond_1306136*K
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
NoOpNoOp%^lstm_cell_215/BiasAdd/ReadVariableOp$^lstm_cell_215/MatMul/ReadVariableOp&^lstm_cell_215/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_215/BiasAdd/ReadVariableOp$lstm_cell_215/BiasAdd/ReadVariableOp2J
#lstm_cell_215/MatMul/ReadVariableOp#lstm_cell_215/MatMul/ReadVariableOp2N
%lstm_cell_215/MatMul_1/ReadVariableOp%lstm_cell_215/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
??
?
"__inference__wrapped_model_1301205
lstm_183_inputV
Csequential_61_lstm_183_lstm_cell_213_matmul_readvariableop_resource:	?X
Esequential_61_lstm_183_lstm_cell_213_matmul_1_readvariableop_resource:	d?S
Dsequential_61_lstm_183_lstm_cell_213_biasadd_readvariableop_resource:	?V
Csequential_61_lstm_184_lstm_cell_214_matmul_readvariableop_resource:	d?X
Esequential_61_lstm_184_lstm_cell_214_matmul_1_readvariableop_resource:	2?S
Dsequential_61_lstm_184_lstm_cell_214_biasadd_readvariableop_resource:	?U
Csequential_61_lstm_185_lstm_cell_215_matmul_readvariableop_resource:2(W
Esequential_61_lstm_185_lstm_cell_215_matmul_1_readvariableop_resource:
(R
Dsequential_61_lstm_185_lstm_cell_215_biasadd_readvariableop_resource:(G
5sequential_61_dense_61_matmul_readvariableop_resource:
D
6sequential_61_dense_61_biasadd_readvariableop_resource:
identity??-sequential_61/dense_61/BiasAdd/ReadVariableOp?,sequential_61/dense_61/MatMul/ReadVariableOp?;sequential_61/lstm_183/lstm_cell_213/BiasAdd/ReadVariableOp?:sequential_61/lstm_183/lstm_cell_213/MatMul/ReadVariableOp?<sequential_61/lstm_183/lstm_cell_213/MatMul_1/ReadVariableOp?sequential_61/lstm_183/while?;sequential_61/lstm_184/lstm_cell_214/BiasAdd/ReadVariableOp?:sequential_61/lstm_184/lstm_cell_214/MatMul/ReadVariableOp?<sequential_61/lstm_184/lstm_cell_214/MatMul_1/ReadVariableOp?sequential_61/lstm_184/while?;sequential_61/lstm_185/lstm_cell_215/BiasAdd/ReadVariableOp?:sequential_61/lstm_185/lstm_cell_215/MatMul/ReadVariableOp?<sequential_61/lstm_185/lstm_cell_215/MatMul_1/ReadVariableOp?sequential_61/lstm_185/whileZ
sequential_61/lstm_183/ShapeShapelstm_183_input*
T0*
_output_shapes
:t
*sequential_61/lstm_183/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_61/lstm_183/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_61/lstm_183/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_61/lstm_183/strided_sliceStridedSlice%sequential_61/lstm_183/Shape:output:03sequential_61/lstm_183/strided_slice/stack:output:05sequential_61/lstm_183/strided_slice/stack_1:output:05sequential_61/lstm_183/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_61/lstm_183/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
#sequential_61/lstm_183/zeros/packedPack-sequential_61/lstm_183/strided_slice:output:0.sequential_61/lstm_183/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_61/lstm_183/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_61/lstm_183/zerosFill,sequential_61/lstm_183/zeros/packed:output:0+sequential_61/lstm_183/zeros/Const:output:0*
T0*'
_output_shapes
:?????????di
'sequential_61/lstm_183/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
%sequential_61/lstm_183/zeros_1/packedPack-sequential_61/lstm_183/strided_slice:output:00sequential_61/lstm_183/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_61/lstm_183/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_61/lstm_183/zeros_1Fill.sequential_61/lstm_183/zeros_1/packed:output:0-sequential_61/lstm_183/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dz
%sequential_61/lstm_183/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_61/lstm_183/transpose	Transposelstm_183_input.sequential_61/lstm_183/transpose/perm:output:0*
T0*+
_output_shapes
:?????????r
sequential_61/lstm_183/Shape_1Shape$sequential_61/lstm_183/transpose:y:0*
T0*
_output_shapes
:v
,sequential_61/lstm_183/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_61/lstm_183/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_61/lstm_183/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_61/lstm_183/strided_slice_1StridedSlice'sequential_61/lstm_183/Shape_1:output:05sequential_61/lstm_183/strided_slice_1/stack:output:07sequential_61/lstm_183/strided_slice_1/stack_1:output:07sequential_61/lstm_183/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_61/lstm_183/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_61/lstm_183/TensorArrayV2TensorListReserve;sequential_61/lstm_183/TensorArrayV2/element_shape:output:0/sequential_61/lstm_183/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_61/lstm_183/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
>sequential_61/lstm_183/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_61/lstm_183/transpose:y:0Usequential_61/lstm_183/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_61/lstm_183/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_61/lstm_183/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_61/lstm_183/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_61/lstm_183/strided_slice_2StridedSlice$sequential_61/lstm_183/transpose:y:05sequential_61/lstm_183/strided_slice_2/stack:output:07sequential_61/lstm_183/strided_slice_2/stack_1:output:07sequential_61/lstm_183/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
:sequential_61/lstm_183/lstm_cell_213/MatMul/ReadVariableOpReadVariableOpCsequential_61_lstm_183_lstm_cell_213_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
+sequential_61/lstm_183/lstm_cell_213/MatMulMatMul/sequential_61/lstm_183/strided_slice_2:output:0Bsequential_61/lstm_183/lstm_cell_213/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_61/lstm_183/lstm_cell_213/MatMul_1/ReadVariableOpReadVariableOpEsequential_61_lstm_183_lstm_cell_213_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
-sequential_61/lstm_183/lstm_cell_213/MatMul_1MatMul%sequential_61/lstm_183/zeros:output:0Dsequential_61/lstm_183/lstm_cell_213/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_61/lstm_183/lstm_cell_213/addAddV25sequential_61/lstm_183/lstm_cell_213/MatMul:product:07sequential_61/lstm_183/lstm_cell_213/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_61/lstm_183/lstm_cell_213/BiasAdd/ReadVariableOpReadVariableOpDsequential_61_lstm_183_lstm_cell_213_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_61/lstm_183/lstm_cell_213/BiasAddBiasAdd,sequential_61/lstm_183/lstm_cell_213/add:z:0Csequential_61/lstm_183/lstm_cell_213/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_61/lstm_183/lstm_cell_213/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_61/lstm_183/lstm_cell_213/splitSplit=sequential_61/lstm_183/lstm_cell_213/split/split_dim:output:05sequential_61/lstm_183/lstm_cell_213/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
,sequential_61/lstm_183/lstm_cell_213/SigmoidSigmoid3sequential_61/lstm_183/lstm_cell_213/split:output:0*
T0*'
_output_shapes
:?????????d?
.sequential_61/lstm_183/lstm_cell_213/Sigmoid_1Sigmoid3sequential_61/lstm_183/lstm_cell_213/split:output:1*
T0*'
_output_shapes
:?????????d?
(sequential_61/lstm_183/lstm_cell_213/mulMul2sequential_61/lstm_183/lstm_cell_213/Sigmoid_1:y:0'sequential_61/lstm_183/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
)sequential_61/lstm_183/lstm_cell_213/ReluRelu3sequential_61/lstm_183/lstm_cell_213/split:output:2*
T0*'
_output_shapes
:?????????d?
*sequential_61/lstm_183/lstm_cell_213/mul_1Mul0sequential_61/lstm_183/lstm_cell_213/Sigmoid:y:07sequential_61/lstm_183/lstm_cell_213/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
*sequential_61/lstm_183/lstm_cell_213/add_1AddV2,sequential_61/lstm_183/lstm_cell_213/mul:z:0.sequential_61/lstm_183/lstm_cell_213/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
.sequential_61/lstm_183/lstm_cell_213/Sigmoid_2Sigmoid3sequential_61/lstm_183/lstm_cell_213/split:output:3*
T0*'
_output_shapes
:?????????d?
+sequential_61/lstm_183/lstm_cell_213/Relu_1Relu.sequential_61/lstm_183/lstm_cell_213/add_1:z:0*
T0*'
_output_shapes
:?????????d?
*sequential_61/lstm_183/lstm_cell_213/mul_2Mul2sequential_61/lstm_183/lstm_cell_213/Sigmoid_2:y:09sequential_61/lstm_183/lstm_cell_213/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
4sequential_61/lstm_183/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
&sequential_61/lstm_183/TensorArrayV2_1TensorListReserve=sequential_61/lstm_183/TensorArrayV2_1/element_shape:output:0/sequential_61/lstm_183/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_61/lstm_183/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_61/lstm_183/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_61/lstm_183/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_61/lstm_183/whileWhile2sequential_61/lstm_183/while/loop_counter:output:08sequential_61/lstm_183/while/maximum_iterations:output:0$sequential_61/lstm_183/time:output:0/sequential_61/lstm_183/TensorArrayV2_1:handle:0%sequential_61/lstm_183/zeros:output:0'sequential_61/lstm_183/zeros_1:output:0/sequential_61/lstm_183/strided_slice_1:output:0Nsequential_61/lstm_183/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_61_lstm_183_lstm_cell_213_matmul_readvariableop_resourceEsequential_61_lstm_183_lstm_cell_213_matmul_1_readvariableop_resourceDsequential_61_lstm_183_lstm_cell_213_biasadd_readvariableop_resource*
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
)sequential_61_lstm_183_while_body_1300837*5
cond-R+
)sequential_61_lstm_183_while_cond_1300836*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Gsequential_61/lstm_183/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
9sequential_61/lstm_183/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_61/lstm_183/while:output:3Psequential_61/lstm_183/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0
,sequential_61/lstm_183/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_61/lstm_183/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_61/lstm_183/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_61/lstm_183/strided_slice_3StridedSliceBsequential_61/lstm_183/TensorArrayV2Stack/TensorListStack:tensor:05sequential_61/lstm_183/strided_slice_3/stack:output:07sequential_61/lstm_183/strided_slice_3/stack_1:output:07sequential_61/lstm_183/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask|
'sequential_61/lstm_183/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_61/lstm_183/transpose_1	TransposeBsequential_61/lstm_183/TensorArrayV2Stack/TensorListStack:tensor:00sequential_61/lstm_183/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_61/lstm_183/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_61/lstm_184/ShapeShape&sequential_61/lstm_183/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_61/lstm_184/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_61/lstm_184/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_61/lstm_184/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_61/lstm_184/strided_sliceStridedSlice%sequential_61/lstm_184/Shape:output:03sequential_61/lstm_184/strided_slice/stack:output:05sequential_61/lstm_184/strided_slice/stack_1:output:05sequential_61/lstm_184/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_61/lstm_184/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
#sequential_61/lstm_184/zeros/packedPack-sequential_61/lstm_184/strided_slice:output:0.sequential_61/lstm_184/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_61/lstm_184/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_61/lstm_184/zerosFill,sequential_61/lstm_184/zeros/packed:output:0+sequential_61/lstm_184/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2i
'sequential_61/lstm_184/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
%sequential_61/lstm_184/zeros_1/packedPack-sequential_61/lstm_184/strided_slice:output:00sequential_61/lstm_184/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_61/lstm_184/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_61/lstm_184/zeros_1Fill.sequential_61/lstm_184/zeros_1/packed:output:0-sequential_61/lstm_184/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2z
%sequential_61/lstm_184/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_61/lstm_184/transpose	Transpose&sequential_61/lstm_183/transpose_1:y:0.sequential_61/lstm_184/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_61/lstm_184/Shape_1Shape$sequential_61/lstm_184/transpose:y:0*
T0*
_output_shapes
:v
,sequential_61/lstm_184/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_61/lstm_184/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_61/lstm_184/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_61/lstm_184/strided_slice_1StridedSlice'sequential_61/lstm_184/Shape_1:output:05sequential_61/lstm_184/strided_slice_1/stack:output:07sequential_61/lstm_184/strided_slice_1/stack_1:output:07sequential_61/lstm_184/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_61/lstm_184/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_61/lstm_184/TensorArrayV2TensorListReserve;sequential_61/lstm_184/TensorArrayV2/element_shape:output:0/sequential_61/lstm_184/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_61/lstm_184/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
>sequential_61/lstm_184/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_61/lstm_184/transpose:y:0Usequential_61/lstm_184/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_61/lstm_184/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_61/lstm_184/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_61/lstm_184/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_61/lstm_184/strided_slice_2StridedSlice$sequential_61/lstm_184/transpose:y:05sequential_61/lstm_184/strided_slice_2/stack:output:07sequential_61/lstm_184/strided_slice_2/stack_1:output:07sequential_61/lstm_184/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
:sequential_61/lstm_184/lstm_cell_214/MatMul/ReadVariableOpReadVariableOpCsequential_61_lstm_184_lstm_cell_214_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
+sequential_61/lstm_184/lstm_cell_214/MatMulMatMul/sequential_61/lstm_184/strided_slice_2:output:0Bsequential_61/lstm_184/lstm_cell_214/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_61/lstm_184/lstm_cell_214/MatMul_1/ReadVariableOpReadVariableOpEsequential_61_lstm_184_lstm_cell_214_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
-sequential_61/lstm_184/lstm_cell_214/MatMul_1MatMul%sequential_61/lstm_184/zeros:output:0Dsequential_61/lstm_184/lstm_cell_214/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_61/lstm_184/lstm_cell_214/addAddV25sequential_61/lstm_184/lstm_cell_214/MatMul:product:07sequential_61/lstm_184/lstm_cell_214/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_61/lstm_184/lstm_cell_214/BiasAdd/ReadVariableOpReadVariableOpDsequential_61_lstm_184_lstm_cell_214_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_61/lstm_184/lstm_cell_214/BiasAddBiasAdd,sequential_61/lstm_184/lstm_cell_214/add:z:0Csequential_61/lstm_184/lstm_cell_214/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_61/lstm_184/lstm_cell_214/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_61/lstm_184/lstm_cell_214/splitSplit=sequential_61/lstm_184/lstm_cell_214/split/split_dim:output:05sequential_61/lstm_184/lstm_cell_214/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
,sequential_61/lstm_184/lstm_cell_214/SigmoidSigmoid3sequential_61/lstm_184/lstm_cell_214/split:output:0*
T0*'
_output_shapes
:?????????2?
.sequential_61/lstm_184/lstm_cell_214/Sigmoid_1Sigmoid3sequential_61/lstm_184/lstm_cell_214/split:output:1*
T0*'
_output_shapes
:?????????2?
(sequential_61/lstm_184/lstm_cell_214/mulMul2sequential_61/lstm_184/lstm_cell_214/Sigmoid_1:y:0'sequential_61/lstm_184/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
)sequential_61/lstm_184/lstm_cell_214/ReluRelu3sequential_61/lstm_184/lstm_cell_214/split:output:2*
T0*'
_output_shapes
:?????????2?
*sequential_61/lstm_184/lstm_cell_214/mul_1Mul0sequential_61/lstm_184/lstm_cell_214/Sigmoid:y:07sequential_61/lstm_184/lstm_cell_214/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
*sequential_61/lstm_184/lstm_cell_214/add_1AddV2,sequential_61/lstm_184/lstm_cell_214/mul:z:0.sequential_61/lstm_184/lstm_cell_214/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
.sequential_61/lstm_184/lstm_cell_214/Sigmoid_2Sigmoid3sequential_61/lstm_184/lstm_cell_214/split:output:3*
T0*'
_output_shapes
:?????????2?
+sequential_61/lstm_184/lstm_cell_214/Relu_1Relu.sequential_61/lstm_184/lstm_cell_214/add_1:z:0*
T0*'
_output_shapes
:?????????2?
*sequential_61/lstm_184/lstm_cell_214/mul_2Mul2sequential_61/lstm_184/lstm_cell_214/Sigmoid_2:y:09sequential_61/lstm_184/lstm_cell_214/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
4sequential_61/lstm_184/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
&sequential_61/lstm_184/TensorArrayV2_1TensorListReserve=sequential_61/lstm_184/TensorArrayV2_1/element_shape:output:0/sequential_61/lstm_184/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_61/lstm_184/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_61/lstm_184/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_61/lstm_184/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_61/lstm_184/whileWhile2sequential_61/lstm_184/while/loop_counter:output:08sequential_61/lstm_184/while/maximum_iterations:output:0$sequential_61/lstm_184/time:output:0/sequential_61/lstm_184/TensorArrayV2_1:handle:0%sequential_61/lstm_184/zeros:output:0'sequential_61/lstm_184/zeros_1:output:0/sequential_61/lstm_184/strided_slice_1:output:0Nsequential_61/lstm_184/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_61_lstm_184_lstm_cell_214_matmul_readvariableop_resourceEsequential_61_lstm_184_lstm_cell_214_matmul_1_readvariableop_resourceDsequential_61_lstm_184_lstm_cell_214_biasadd_readvariableop_resource*
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
)sequential_61_lstm_184_while_body_1300976*5
cond-R+
)sequential_61_lstm_184_while_cond_1300975*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Gsequential_61/lstm_184/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
9sequential_61/lstm_184/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_61/lstm_184/while:output:3Psequential_61/lstm_184/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0
,sequential_61/lstm_184/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_61/lstm_184/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_61/lstm_184/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_61/lstm_184/strided_slice_3StridedSliceBsequential_61/lstm_184/TensorArrayV2Stack/TensorListStack:tensor:05sequential_61/lstm_184/strided_slice_3/stack:output:07sequential_61/lstm_184/strided_slice_3/stack_1:output:07sequential_61/lstm_184/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask|
'sequential_61/lstm_184/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_61/lstm_184/transpose_1	TransposeBsequential_61/lstm_184/TensorArrayV2Stack/TensorListStack:tensor:00sequential_61/lstm_184/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_61/lstm_184/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_61/lstm_185/ShapeShape&sequential_61/lstm_184/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_61/lstm_185/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_61/lstm_185/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_61/lstm_185/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_61/lstm_185/strided_sliceStridedSlice%sequential_61/lstm_185/Shape:output:03sequential_61/lstm_185/strided_slice/stack:output:05sequential_61/lstm_185/strided_slice/stack_1:output:05sequential_61/lstm_185/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_61/lstm_185/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
#sequential_61/lstm_185/zeros/packedPack-sequential_61/lstm_185/strided_slice:output:0.sequential_61/lstm_185/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_61/lstm_185/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_61/lstm_185/zerosFill,sequential_61/lstm_185/zeros/packed:output:0+sequential_61/lstm_185/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
i
'sequential_61/lstm_185/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
%sequential_61/lstm_185/zeros_1/packedPack-sequential_61/lstm_185/strided_slice:output:00sequential_61/lstm_185/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_61/lstm_185/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_61/lstm_185/zeros_1Fill.sequential_61/lstm_185/zeros_1/packed:output:0-sequential_61/lstm_185/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
z
%sequential_61/lstm_185/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_61/lstm_185/transpose	Transpose&sequential_61/lstm_184/transpose_1:y:0.sequential_61/lstm_185/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_61/lstm_185/Shape_1Shape$sequential_61/lstm_185/transpose:y:0*
T0*
_output_shapes
:v
,sequential_61/lstm_185/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_61/lstm_185/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_61/lstm_185/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_61/lstm_185/strided_slice_1StridedSlice'sequential_61/lstm_185/Shape_1:output:05sequential_61/lstm_185/strided_slice_1/stack:output:07sequential_61/lstm_185/strided_slice_1/stack_1:output:07sequential_61/lstm_185/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_61/lstm_185/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_61/lstm_185/TensorArrayV2TensorListReserve;sequential_61/lstm_185/TensorArrayV2/element_shape:output:0/sequential_61/lstm_185/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_61/lstm_185/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
>sequential_61/lstm_185/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_61/lstm_185/transpose:y:0Usequential_61/lstm_185/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_61/lstm_185/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_61/lstm_185/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_61/lstm_185/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_61/lstm_185/strided_slice_2StridedSlice$sequential_61/lstm_185/transpose:y:05sequential_61/lstm_185/strided_slice_2/stack:output:07sequential_61/lstm_185/strided_slice_2/stack_1:output:07sequential_61/lstm_185/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
:sequential_61/lstm_185/lstm_cell_215/MatMul/ReadVariableOpReadVariableOpCsequential_61_lstm_185_lstm_cell_215_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
+sequential_61/lstm_185/lstm_cell_215/MatMulMatMul/sequential_61/lstm_185/strided_slice_2:output:0Bsequential_61/lstm_185/lstm_cell_215/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
<sequential_61/lstm_185/lstm_cell_215/MatMul_1/ReadVariableOpReadVariableOpEsequential_61_lstm_185_lstm_cell_215_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
-sequential_61/lstm_185/lstm_cell_215/MatMul_1MatMul%sequential_61/lstm_185/zeros:output:0Dsequential_61/lstm_185/lstm_cell_215/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
(sequential_61/lstm_185/lstm_cell_215/addAddV25sequential_61/lstm_185/lstm_cell_215/MatMul:product:07sequential_61/lstm_185/lstm_cell_215/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
;sequential_61/lstm_185/lstm_cell_215/BiasAdd/ReadVariableOpReadVariableOpDsequential_61_lstm_185_lstm_cell_215_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
,sequential_61/lstm_185/lstm_cell_215/BiasAddBiasAdd,sequential_61/lstm_185/lstm_cell_215/add:z:0Csequential_61/lstm_185/lstm_cell_215/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(v
4sequential_61/lstm_185/lstm_cell_215/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_61/lstm_185/lstm_cell_215/splitSplit=sequential_61/lstm_185/lstm_cell_215/split/split_dim:output:05sequential_61/lstm_185/lstm_cell_215/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
,sequential_61/lstm_185/lstm_cell_215/SigmoidSigmoid3sequential_61/lstm_185/lstm_cell_215/split:output:0*
T0*'
_output_shapes
:?????????
?
.sequential_61/lstm_185/lstm_cell_215/Sigmoid_1Sigmoid3sequential_61/lstm_185/lstm_cell_215/split:output:1*
T0*'
_output_shapes
:?????????
?
(sequential_61/lstm_185/lstm_cell_215/mulMul2sequential_61/lstm_185/lstm_cell_215/Sigmoid_1:y:0'sequential_61/lstm_185/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
)sequential_61/lstm_185/lstm_cell_215/ReluRelu3sequential_61/lstm_185/lstm_cell_215/split:output:2*
T0*'
_output_shapes
:?????????
?
*sequential_61/lstm_185/lstm_cell_215/mul_1Mul0sequential_61/lstm_185/lstm_cell_215/Sigmoid:y:07sequential_61/lstm_185/lstm_cell_215/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
*sequential_61/lstm_185/lstm_cell_215/add_1AddV2,sequential_61/lstm_185/lstm_cell_215/mul:z:0.sequential_61/lstm_185/lstm_cell_215/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
.sequential_61/lstm_185/lstm_cell_215/Sigmoid_2Sigmoid3sequential_61/lstm_185/lstm_cell_215/split:output:3*
T0*'
_output_shapes
:?????????
?
+sequential_61/lstm_185/lstm_cell_215/Relu_1Relu.sequential_61/lstm_185/lstm_cell_215/add_1:z:0*
T0*'
_output_shapes
:?????????
?
*sequential_61/lstm_185/lstm_cell_215/mul_2Mul2sequential_61/lstm_185/lstm_cell_215/Sigmoid_2:y:09sequential_61/lstm_185/lstm_cell_215/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
4sequential_61/lstm_185/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
&sequential_61/lstm_185/TensorArrayV2_1TensorListReserve=sequential_61/lstm_185/TensorArrayV2_1/element_shape:output:0/sequential_61/lstm_185/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_61/lstm_185/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_61/lstm_185/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_61/lstm_185/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_61/lstm_185/whileWhile2sequential_61/lstm_185/while/loop_counter:output:08sequential_61/lstm_185/while/maximum_iterations:output:0$sequential_61/lstm_185/time:output:0/sequential_61/lstm_185/TensorArrayV2_1:handle:0%sequential_61/lstm_185/zeros:output:0'sequential_61/lstm_185/zeros_1:output:0/sequential_61/lstm_185/strided_slice_1:output:0Nsequential_61/lstm_185/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_61_lstm_185_lstm_cell_215_matmul_readvariableop_resourceEsequential_61_lstm_185_lstm_cell_215_matmul_1_readvariableop_resourceDsequential_61_lstm_185_lstm_cell_215_biasadd_readvariableop_resource*
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
)sequential_61_lstm_185_while_body_1301115*5
cond-R+
)sequential_61_lstm_185_while_cond_1301114*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Gsequential_61/lstm_185/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
9sequential_61/lstm_185/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_61/lstm_185/while:output:3Psequential_61/lstm_185/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0
,sequential_61/lstm_185/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_61/lstm_185/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_61/lstm_185/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_61/lstm_185/strided_slice_3StridedSliceBsequential_61/lstm_185/TensorArrayV2Stack/TensorListStack:tensor:05sequential_61/lstm_185/strided_slice_3/stack:output:07sequential_61/lstm_185/strided_slice_3/stack_1:output:07sequential_61/lstm_185/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask|
'sequential_61/lstm_185/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_61/lstm_185/transpose_1	TransposeBsequential_61/lstm_185/TensorArrayV2Stack/TensorListStack:tensor:00sequential_61/lstm_185/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
r
sequential_61/lstm_185/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_61/dense_61/MatMul/ReadVariableOpReadVariableOp5sequential_61_dense_61_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_61/dense_61/MatMulMatMul/sequential_61/lstm_185/strided_slice_3:output:04sequential_61/dense_61/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_61/dense_61/BiasAdd/ReadVariableOpReadVariableOp6sequential_61_dense_61_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_61/dense_61/BiasAddBiasAdd'sequential_61/dense_61/MatMul:product:05sequential_61/dense_61/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_61/dense_61/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_61/dense_61/BiasAdd/ReadVariableOp-^sequential_61/dense_61/MatMul/ReadVariableOp<^sequential_61/lstm_183/lstm_cell_213/BiasAdd/ReadVariableOp;^sequential_61/lstm_183/lstm_cell_213/MatMul/ReadVariableOp=^sequential_61/lstm_183/lstm_cell_213/MatMul_1/ReadVariableOp^sequential_61/lstm_183/while<^sequential_61/lstm_184/lstm_cell_214/BiasAdd/ReadVariableOp;^sequential_61/lstm_184/lstm_cell_214/MatMul/ReadVariableOp=^sequential_61/lstm_184/lstm_cell_214/MatMul_1/ReadVariableOp^sequential_61/lstm_184/while<^sequential_61/lstm_185/lstm_cell_215/BiasAdd/ReadVariableOp;^sequential_61/lstm_185/lstm_cell_215/MatMul/ReadVariableOp=^sequential_61/lstm_185/lstm_cell_215/MatMul_1/ReadVariableOp^sequential_61/lstm_185/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2^
-sequential_61/dense_61/BiasAdd/ReadVariableOp-sequential_61/dense_61/BiasAdd/ReadVariableOp2\
,sequential_61/dense_61/MatMul/ReadVariableOp,sequential_61/dense_61/MatMul/ReadVariableOp2z
;sequential_61/lstm_183/lstm_cell_213/BiasAdd/ReadVariableOp;sequential_61/lstm_183/lstm_cell_213/BiasAdd/ReadVariableOp2x
:sequential_61/lstm_183/lstm_cell_213/MatMul/ReadVariableOp:sequential_61/lstm_183/lstm_cell_213/MatMul/ReadVariableOp2|
<sequential_61/lstm_183/lstm_cell_213/MatMul_1/ReadVariableOp<sequential_61/lstm_183/lstm_cell_213/MatMul_1/ReadVariableOp2<
sequential_61/lstm_183/whilesequential_61/lstm_183/while2z
;sequential_61/lstm_184/lstm_cell_214/BiasAdd/ReadVariableOp;sequential_61/lstm_184/lstm_cell_214/BiasAdd/ReadVariableOp2x
:sequential_61/lstm_184/lstm_cell_214/MatMul/ReadVariableOp:sequential_61/lstm_184/lstm_cell_214/MatMul/ReadVariableOp2|
<sequential_61/lstm_184/lstm_cell_214/MatMul_1/ReadVariableOp<sequential_61/lstm_184/lstm_cell_214/MatMul_1/ReadVariableOp2<
sequential_61/lstm_184/whilesequential_61/lstm_184/while2z
;sequential_61/lstm_185/lstm_cell_215/BiasAdd/ReadVariableOp;sequential_61/lstm_185/lstm_cell_215/BiasAdd/ReadVariableOp2x
:sequential_61/lstm_185/lstm_cell_215/MatMul/ReadVariableOp:sequential_61/lstm_185/lstm_cell_215/MatMul/ReadVariableOp2|
<sequential_61/lstm_185/lstm_cell_215/MatMul_1/ReadVariableOp<sequential_61/lstm_185/lstm_cell_215/MatMul_1/ReadVariableOp2<
sequential_61/lstm_185/whilesequential_61/lstm_185/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_183_input
?8
?
while_body_1306137
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_215_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_215_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_215_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_215_matmul_readvariableop_resource:2(F
4while_lstm_cell_215_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_215_biasadd_readvariableop_resource:(??*while/lstm_cell_215/BiasAdd/ReadVariableOp?)while/lstm_cell_215/MatMul/ReadVariableOp?+while/lstm_cell_215/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_215/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_215_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_215/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_215/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_215/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_215_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_215/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_215/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_215/addAddV2$while/lstm_cell_215/MatMul:product:0&while/lstm_cell_215/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_215/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_215_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_215/BiasAddBiasAddwhile/lstm_cell_215/add:z:02while/lstm_cell_215/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_215/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_215/splitSplit,while/lstm_cell_215/split/split_dim:output:0$while/lstm_cell_215/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_215/SigmoidSigmoid"while/lstm_cell_215/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_215/Sigmoid_1Sigmoid"while/lstm_cell_215/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_215/mulMul!while/lstm_cell_215/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_215/ReluRelu"while/lstm_cell_215/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_215/mul_1Mulwhile/lstm_cell_215/Sigmoid:y:0&while/lstm_cell_215/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_215/add_1AddV2while/lstm_cell_215/mul:z:0while/lstm_cell_215/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_215/Sigmoid_2Sigmoid"while/lstm_cell_215/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_215/Relu_1Reluwhile/lstm_cell_215/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_215/mul_2Mul!while/lstm_cell_215/Sigmoid_2:y:0(while/lstm_cell_215/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_215/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_215/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_215/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_215/BiasAdd/ReadVariableOp*^while/lstm_cell_215/MatMul/ReadVariableOp,^while/lstm_cell_215/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_215_biasadd_readvariableop_resource5while_lstm_cell_215_biasadd_readvariableop_resource_0"n
4while_lstm_cell_215_matmul_1_readvariableop_resource6while_lstm_cell_215_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_215_matmul_readvariableop_resource4while_lstm_cell_215_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_215/BiasAdd/ReadVariableOp*while/lstm_cell_215/BiasAdd/ReadVariableOp2V
)while/lstm_cell_215/MatMul/ReadVariableOp)while/lstm_cell_215/MatMul/ReadVariableOp2Z
+while/lstm_cell_215/MatMul_1/ReadVariableOp+while/lstm_cell_215/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1303000
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1303000___redundant_placeholder05
1while_while_cond_1303000___redundant_placeholder15
1while_while_cond_1303000___redundant_placeholder25
1while_while_cond_1303000___redundant_placeholder3
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
J__inference_lstm_cell_215_layer_call_and_return_conditional_losses_1306534

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
#__inference__traced_restore_1306807
file_prefix2
 assignvariableop_dense_61_kernel:
.
 assignvariableop_1_dense_61_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_183_lstm_cell_183_kernel:	?M
:assignvariableop_8_lstm_183_lstm_cell_183_recurrent_kernel:	d?=
.assignvariableop_9_lstm_183_lstm_cell_183_bias:	?D
1assignvariableop_10_lstm_184_lstm_cell_184_kernel:	d?N
;assignvariableop_11_lstm_184_lstm_cell_184_recurrent_kernel:	2?>
/assignvariableop_12_lstm_184_lstm_cell_184_bias:	?C
1assignvariableop_13_lstm_185_lstm_cell_185_kernel:2(M
;assignvariableop_14_lstm_185_lstm_cell_185_recurrent_kernel:
(=
/assignvariableop_15_lstm_185_lstm_cell_185_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_61_kernel_m:
6
(assignvariableop_19_adam_dense_61_bias_m:K
8assignvariableop_20_adam_lstm_183_lstm_cell_183_kernel_m:	?U
Bassignvariableop_21_adam_lstm_183_lstm_cell_183_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_183_lstm_cell_183_bias_m:	?K
8assignvariableop_23_adam_lstm_184_lstm_cell_184_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_184_lstm_cell_184_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_184_lstm_cell_184_bias_m:	?J
8assignvariableop_26_adam_lstm_185_lstm_cell_185_kernel_m:2(T
Bassignvariableop_27_adam_lstm_185_lstm_cell_185_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_185_lstm_cell_185_bias_m:(<
*assignvariableop_29_adam_dense_61_kernel_v:
6
(assignvariableop_30_adam_dense_61_bias_v:K
8assignvariableop_31_adam_lstm_183_lstm_cell_183_kernel_v:	?U
Bassignvariableop_32_adam_lstm_183_lstm_cell_183_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_183_lstm_cell_183_bias_v:	?K
8assignvariableop_34_adam_lstm_184_lstm_cell_184_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_184_lstm_cell_184_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_184_lstm_cell_184_bias_v:	?J
8assignvariableop_37_adam_lstm_185_lstm_cell_185_kernel_v:2(T
Bassignvariableop_38_adam_lstm_185_lstm_cell_185_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_185_lstm_cell_185_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_61_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_61_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_183_lstm_cell_183_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_183_lstm_cell_183_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_183_lstm_cell_183_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_184_lstm_cell_184_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_184_lstm_cell_184_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_184_lstm_cell_184_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_185_lstm_cell_185_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_185_lstm_cell_185_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_185_lstm_cell_185_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_61_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_61_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_183_lstm_cell_183_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_183_lstm_cell_183_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_183_lstm_cell_183_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_184_lstm_cell_184_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_184_lstm_cell_184_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_184_lstm_cell_184_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_185_lstm_cell_185_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_185_lstm_cell_185_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_185_lstm_cell_185_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_61_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_61_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_183_lstm_cell_183_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_183_lstm_cell_183_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_183_lstm_cell_183_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_184_lstm_cell_184_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_184_lstm_cell_184_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_184_lstm_cell_184_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_185_lstm_cell_185_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_185_lstm_cell_185_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_185_lstm_cell_185_bias_vIdentity_39:output:0"/device:CPU:0*
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
??
?
J__inference_sequential_61_layer_call_and_return_conditional_losses_1303946

inputsH
5lstm_183_lstm_cell_213_matmul_readvariableop_resource:	?J
7lstm_183_lstm_cell_213_matmul_1_readvariableop_resource:	d?E
6lstm_183_lstm_cell_213_biasadd_readvariableop_resource:	?H
5lstm_184_lstm_cell_214_matmul_readvariableop_resource:	d?J
7lstm_184_lstm_cell_214_matmul_1_readvariableop_resource:	2?E
6lstm_184_lstm_cell_214_biasadd_readvariableop_resource:	?G
5lstm_185_lstm_cell_215_matmul_readvariableop_resource:2(I
7lstm_185_lstm_cell_215_matmul_1_readvariableop_resource:
(D
6lstm_185_lstm_cell_215_biasadd_readvariableop_resource:(9
'dense_61_matmul_readvariableop_resource:
6
(dense_61_biasadd_readvariableop_resource:
identity??dense_61/BiasAdd/ReadVariableOp?dense_61/MatMul/ReadVariableOp?-lstm_183/lstm_cell_213/BiasAdd/ReadVariableOp?,lstm_183/lstm_cell_213/MatMul/ReadVariableOp?.lstm_183/lstm_cell_213/MatMul_1/ReadVariableOp?lstm_183/while?-lstm_184/lstm_cell_214/BiasAdd/ReadVariableOp?,lstm_184/lstm_cell_214/MatMul/ReadVariableOp?.lstm_184/lstm_cell_214/MatMul_1/ReadVariableOp?lstm_184/while?-lstm_185/lstm_cell_215/BiasAdd/ReadVariableOp?,lstm_185/lstm_cell_215/MatMul/ReadVariableOp?.lstm_185/lstm_cell_215/MatMul_1/ReadVariableOp?lstm_185/whileD
lstm_183/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_183/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_183/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_183/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_183/strided_sliceStridedSlicelstm_183/Shape:output:0%lstm_183/strided_slice/stack:output:0'lstm_183/strided_slice/stack_1:output:0'lstm_183/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_183/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_183/zeros/packedPacklstm_183/strided_slice:output:0 lstm_183/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_183/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_183/zerosFilllstm_183/zeros/packed:output:0lstm_183/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_183/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_183/zeros_1/packedPacklstm_183/strided_slice:output:0"lstm_183/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_183/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_183/zeros_1Fill lstm_183/zeros_1/packed:output:0lstm_183/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_183/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_183/transpose	Transposeinputs lstm_183/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_183/Shape_1Shapelstm_183/transpose:y:0*
T0*
_output_shapes
:h
lstm_183/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_183/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_183/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_183/strided_slice_1StridedSlicelstm_183/Shape_1:output:0'lstm_183/strided_slice_1/stack:output:0)lstm_183/strided_slice_1/stack_1:output:0)lstm_183/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_183/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_183/TensorArrayV2TensorListReserve-lstm_183/TensorArrayV2/element_shape:output:0!lstm_183/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_183/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_183/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_183/transpose:y:0Glstm_183/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_183/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_183/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_183/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_183/strided_slice_2StridedSlicelstm_183/transpose:y:0'lstm_183/strided_slice_2/stack:output:0)lstm_183/strided_slice_2/stack_1:output:0)lstm_183/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_183/lstm_cell_213/MatMul/ReadVariableOpReadVariableOp5lstm_183_lstm_cell_213_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_183/lstm_cell_213/MatMulMatMul!lstm_183/strided_slice_2:output:04lstm_183/lstm_cell_213/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_183/lstm_cell_213/MatMul_1/ReadVariableOpReadVariableOp7lstm_183_lstm_cell_213_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_183/lstm_cell_213/MatMul_1MatMullstm_183/zeros:output:06lstm_183/lstm_cell_213/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_183/lstm_cell_213/addAddV2'lstm_183/lstm_cell_213/MatMul:product:0)lstm_183/lstm_cell_213/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_183/lstm_cell_213/BiasAdd/ReadVariableOpReadVariableOp6lstm_183_lstm_cell_213_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_183/lstm_cell_213/BiasAddBiasAddlstm_183/lstm_cell_213/add:z:05lstm_183/lstm_cell_213/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_183/lstm_cell_213/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_183/lstm_cell_213/splitSplit/lstm_183/lstm_cell_213/split/split_dim:output:0'lstm_183/lstm_cell_213/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_183/lstm_cell_213/SigmoidSigmoid%lstm_183/lstm_cell_213/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_183/lstm_cell_213/Sigmoid_1Sigmoid%lstm_183/lstm_cell_213/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_183/lstm_cell_213/mulMul$lstm_183/lstm_cell_213/Sigmoid_1:y:0lstm_183/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_183/lstm_cell_213/ReluRelu%lstm_183/lstm_cell_213/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_183/lstm_cell_213/mul_1Mul"lstm_183/lstm_cell_213/Sigmoid:y:0)lstm_183/lstm_cell_213/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_183/lstm_cell_213/add_1AddV2lstm_183/lstm_cell_213/mul:z:0 lstm_183/lstm_cell_213/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_183/lstm_cell_213/Sigmoid_2Sigmoid%lstm_183/lstm_cell_213/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_183/lstm_cell_213/Relu_1Relu lstm_183/lstm_cell_213/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_183/lstm_cell_213/mul_2Mul$lstm_183/lstm_cell_213/Sigmoid_2:y:0+lstm_183/lstm_cell_213/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_183/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_183/TensorArrayV2_1TensorListReserve/lstm_183/TensorArrayV2_1/element_shape:output:0!lstm_183/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_183/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_183/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_183/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_183/whileWhile$lstm_183/while/loop_counter:output:0*lstm_183/while/maximum_iterations:output:0lstm_183/time:output:0!lstm_183/TensorArrayV2_1:handle:0lstm_183/zeros:output:0lstm_183/zeros_1:output:0!lstm_183/strided_slice_1:output:0@lstm_183/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_183_lstm_cell_213_matmul_readvariableop_resource7lstm_183_lstm_cell_213_matmul_1_readvariableop_resource6lstm_183_lstm_cell_213_biasadd_readvariableop_resource*
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
lstm_183_while_body_1303578*'
condR
lstm_183_while_cond_1303577*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_183/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_183/TensorArrayV2Stack/TensorListStackTensorListStacklstm_183/while:output:3Blstm_183/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_183/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_183/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_183/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_183/strided_slice_3StridedSlice4lstm_183/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_183/strided_slice_3/stack:output:0)lstm_183/strided_slice_3/stack_1:output:0)lstm_183/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_183/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_183/transpose_1	Transpose4lstm_183/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_183/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_183/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_184/ShapeShapelstm_183/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_184/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_184/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_184/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_184/strided_sliceStridedSlicelstm_184/Shape:output:0%lstm_184/strided_slice/stack:output:0'lstm_184/strided_slice/stack_1:output:0'lstm_184/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_184/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_184/zeros/packedPacklstm_184/strided_slice:output:0 lstm_184/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_184/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_184/zerosFilllstm_184/zeros/packed:output:0lstm_184/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_184/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_184/zeros_1/packedPacklstm_184/strided_slice:output:0"lstm_184/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_184/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_184/zeros_1Fill lstm_184/zeros_1/packed:output:0lstm_184/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_184/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_184/transpose	Transposelstm_183/transpose_1:y:0 lstm_184/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_184/Shape_1Shapelstm_184/transpose:y:0*
T0*
_output_shapes
:h
lstm_184/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_184/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_184/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_184/strided_slice_1StridedSlicelstm_184/Shape_1:output:0'lstm_184/strided_slice_1/stack:output:0)lstm_184/strided_slice_1/stack_1:output:0)lstm_184/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_184/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_184/TensorArrayV2TensorListReserve-lstm_184/TensorArrayV2/element_shape:output:0!lstm_184/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_184/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_184/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_184/transpose:y:0Glstm_184/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_184/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_184/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_184/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_184/strided_slice_2StridedSlicelstm_184/transpose:y:0'lstm_184/strided_slice_2/stack:output:0)lstm_184/strided_slice_2/stack_1:output:0)lstm_184/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_184/lstm_cell_214/MatMul/ReadVariableOpReadVariableOp5lstm_184_lstm_cell_214_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_184/lstm_cell_214/MatMulMatMul!lstm_184/strided_slice_2:output:04lstm_184/lstm_cell_214/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_184/lstm_cell_214/MatMul_1/ReadVariableOpReadVariableOp7lstm_184_lstm_cell_214_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_184/lstm_cell_214/MatMul_1MatMullstm_184/zeros:output:06lstm_184/lstm_cell_214/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_184/lstm_cell_214/addAddV2'lstm_184/lstm_cell_214/MatMul:product:0)lstm_184/lstm_cell_214/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_184/lstm_cell_214/BiasAdd/ReadVariableOpReadVariableOp6lstm_184_lstm_cell_214_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_184/lstm_cell_214/BiasAddBiasAddlstm_184/lstm_cell_214/add:z:05lstm_184/lstm_cell_214/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_184/lstm_cell_214/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_184/lstm_cell_214/splitSplit/lstm_184/lstm_cell_214/split/split_dim:output:0'lstm_184/lstm_cell_214/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_184/lstm_cell_214/SigmoidSigmoid%lstm_184/lstm_cell_214/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_184/lstm_cell_214/Sigmoid_1Sigmoid%lstm_184/lstm_cell_214/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_184/lstm_cell_214/mulMul$lstm_184/lstm_cell_214/Sigmoid_1:y:0lstm_184/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_184/lstm_cell_214/ReluRelu%lstm_184/lstm_cell_214/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_184/lstm_cell_214/mul_1Mul"lstm_184/lstm_cell_214/Sigmoid:y:0)lstm_184/lstm_cell_214/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_184/lstm_cell_214/add_1AddV2lstm_184/lstm_cell_214/mul:z:0 lstm_184/lstm_cell_214/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_184/lstm_cell_214/Sigmoid_2Sigmoid%lstm_184/lstm_cell_214/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_184/lstm_cell_214/Relu_1Relu lstm_184/lstm_cell_214/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_184/lstm_cell_214/mul_2Mul$lstm_184/lstm_cell_214/Sigmoid_2:y:0+lstm_184/lstm_cell_214/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_184/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_184/TensorArrayV2_1TensorListReserve/lstm_184/TensorArrayV2_1/element_shape:output:0!lstm_184/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_184/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_184/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_184/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_184/whileWhile$lstm_184/while/loop_counter:output:0*lstm_184/while/maximum_iterations:output:0lstm_184/time:output:0!lstm_184/TensorArrayV2_1:handle:0lstm_184/zeros:output:0lstm_184/zeros_1:output:0!lstm_184/strided_slice_1:output:0@lstm_184/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_184_lstm_cell_214_matmul_readvariableop_resource7lstm_184_lstm_cell_214_matmul_1_readvariableop_resource6lstm_184_lstm_cell_214_biasadd_readvariableop_resource*
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
lstm_184_while_body_1303717*'
condR
lstm_184_while_cond_1303716*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_184/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_184/TensorArrayV2Stack/TensorListStackTensorListStacklstm_184/while:output:3Blstm_184/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_184/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_184/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_184/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_184/strided_slice_3StridedSlice4lstm_184/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_184/strided_slice_3/stack:output:0)lstm_184/strided_slice_3/stack_1:output:0)lstm_184/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_184/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_184/transpose_1	Transpose4lstm_184/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_184/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_184/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_185/ShapeShapelstm_184/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_185/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_185/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_185/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_185/strided_sliceStridedSlicelstm_185/Shape:output:0%lstm_185/strided_slice/stack:output:0'lstm_185/strided_slice/stack_1:output:0'lstm_185/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_185/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_185/zeros/packedPacklstm_185/strided_slice:output:0 lstm_185/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_185/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_185/zerosFilllstm_185/zeros/packed:output:0lstm_185/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_185/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_185/zeros_1/packedPacklstm_185/strided_slice:output:0"lstm_185/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_185/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_185/zeros_1Fill lstm_185/zeros_1/packed:output:0lstm_185/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_185/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_185/transpose	Transposelstm_184/transpose_1:y:0 lstm_185/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_185/Shape_1Shapelstm_185/transpose:y:0*
T0*
_output_shapes
:h
lstm_185/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_185/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_185/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_185/strided_slice_1StridedSlicelstm_185/Shape_1:output:0'lstm_185/strided_slice_1/stack:output:0)lstm_185/strided_slice_1/stack_1:output:0)lstm_185/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_185/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_185/TensorArrayV2TensorListReserve-lstm_185/TensorArrayV2/element_shape:output:0!lstm_185/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_185/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_185/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_185/transpose:y:0Glstm_185/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_185/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_185/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_185/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_185/strided_slice_2StridedSlicelstm_185/transpose:y:0'lstm_185/strided_slice_2/stack:output:0)lstm_185/strided_slice_2/stack_1:output:0)lstm_185/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_185/lstm_cell_215/MatMul/ReadVariableOpReadVariableOp5lstm_185_lstm_cell_215_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_185/lstm_cell_215/MatMulMatMul!lstm_185/strided_slice_2:output:04lstm_185/lstm_cell_215/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_185/lstm_cell_215/MatMul_1/ReadVariableOpReadVariableOp7lstm_185_lstm_cell_215_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_185/lstm_cell_215/MatMul_1MatMullstm_185/zeros:output:06lstm_185/lstm_cell_215/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_185/lstm_cell_215/addAddV2'lstm_185/lstm_cell_215/MatMul:product:0)lstm_185/lstm_cell_215/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_185/lstm_cell_215/BiasAdd/ReadVariableOpReadVariableOp6lstm_185_lstm_cell_215_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_185/lstm_cell_215/BiasAddBiasAddlstm_185/lstm_cell_215/add:z:05lstm_185/lstm_cell_215/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_185/lstm_cell_215/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_185/lstm_cell_215/splitSplit/lstm_185/lstm_cell_215/split/split_dim:output:0'lstm_185/lstm_cell_215/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_185/lstm_cell_215/SigmoidSigmoid%lstm_185/lstm_cell_215/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_185/lstm_cell_215/Sigmoid_1Sigmoid%lstm_185/lstm_cell_215/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_185/lstm_cell_215/mulMul$lstm_185/lstm_cell_215/Sigmoid_1:y:0lstm_185/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_185/lstm_cell_215/ReluRelu%lstm_185/lstm_cell_215/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_185/lstm_cell_215/mul_1Mul"lstm_185/lstm_cell_215/Sigmoid:y:0)lstm_185/lstm_cell_215/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_185/lstm_cell_215/add_1AddV2lstm_185/lstm_cell_215/mul:z:0 lstm_185/lstm_cell_215/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_185/lstm_cell_215/Sigmoid_2Sigmoid%lstm_185/lstm_cell_215/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_185/lstm_cell_215/Relu_1Relu lstm_185/lstm_cell_215/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_185/lstm_cell_215/mul_2Mul$lstm_185/lstm_cell_215/Sigmoid_2:y:0+lstm_185/lstm_cell_215/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_185/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_185/TensorArrayV2_1TensorListReserve/lstm_185/TensorArrayV2_1/element_shape:output:0!lstm_185/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_185/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_185/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_185/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_185/whileWhile$lstm_185/while/loop_counter:output:0*lstm_185/while/maximum_iterations:output:0lstm_185/time:output:0!lstm_185/TensorArrayV2_1:handle:0lstm_185/zeros:output:0lstm_185/zeros_1:output:0!lstm_185/strided_slice_1:output:0@lstm_185/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_185_lstm_cell_215_matmul_readvariableop_resource7lstm_185_lstm_cell_215_matmul_1_readvariableop_resource6lstm_185_lstm_cell_215_biasadd_readvariableop_resource*
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
lstm_185_while_body_1303856*'
condR
lstm_185_while_cond_1303855*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_185/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_185/TensorArrayV2Stack/TensorListStackTensorListStacklstm_185/while:output:3Blstm_185/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_185/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_185/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_185/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_185/strided_slice_3StridedSlice4lstm_185/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_185/strided_slice_3/stack:output:0)lstm_185/strided_slice_3/stack_1:output:0)lstm_185/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_185/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_185/transpose_1	Transpose4lstm_185/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_185/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_185/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_61/MatMul/ReadVariableOpReadVariableOp'dense_61_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_61/MatMulMatMul!lstm_185/strided_slice_3:output:0&dense_61/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_61/BiasAdd/ReadVariableOpReadVariableOp(dense_61_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_61/BiasAddBiasAdddense_61/MatMul:product:0'dense_61/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_61/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_61/BiasAdd/ReadVariableOp^dense_61/MatMul/ReadVariableOp.^lstm_183/lstm_cell_213/BiasAdd/ReadVariableOp-^lstm_183/lstm_cell_213/MatMul/ReadVariableOp/^lstm_183/lstm_cell_213/MatMul_1/ReadVariableOp^lstm_183/while.^lstm_184/lstm_cell_214/BiasAdd/ReadVariableOp-^lstm_184/lstm_cell_214/MatMul/ReadVariableOp/^lstm_184/lstm_cell_214/MatMul_1/ReadVariableOp^lstm_184/while.^lstm_185/lstm_cell_215/BiasAdd/ReadVariableOp-^lstm_185/lstm_cell_215/MatMul/ReadVariableOp/^lstm_185/lstm_cell_215/MatMul_1/ReadVariableOp^lstm_185/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_61/BiasAdd/ReadVariableOpdense_61/BiasAdd/ReadVariableOp2@
dense_61/MatMul/ReadVariableOpdense_61/MatMul/ReadVariableOp2^
-lstm_183/lstm_cell_213/BiasAdd/ReadVariableOp-lstm_183/lstm_cell_213/BiasAdd/ReadVariableOp2\
,lstm_183/lstm_cell_213/MatMul/ReadVariableOp,lstm_183/lstm_cell_213/MatMul/ReadVariableOp2`
.lstm_183/lstm_cell_213/MatMul_1/ReadVariableOp.lstm_183/lstm_cell_213/MatMul_1/ReadVariableOp2 
lstm_183/whilelstm_183/while2^
-lstm_184/lstm_cell_214/BiasAdd/ReadVariableOp-lstm_184/lstm_cell_214/BiasAdd/ReadVariableOp2\
,lstm_184/lstm_cell_214/MatMul/ReadVariableOp,lstm_184/lstm_cell_214/MatMul/ReadVariableOp2`
.lstm_184/lstm_cell_214/MatMul_1/ReadVariableOp.lstm_184/lstm_cell_214/MatMul_1/ReadVariableOp2 
lstm_184/whilelstm_184/while2^
-lstm_185/lstm_cell_215/BiasAdd/ReadVariableOp-lstm_185/lstm_cell_215/BiasAdd/ReadVariableOp2\
,lstm_185/lstm_cell_215/MatMul/ReadVariableOp,lstm_185/lstm_cell_215/MatMul/ReadVariableOp2`
.lstm_185/lstm_cell_215/MatMul_1/ReadVariableOp.lstm_185/lstm_cell_215/MatMul_1/ReadVariableOp2 
lstm_185/whilelstm_185/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_185_while_cond_1303855.
*lstm_185_while_lstm_185_while_loop_counter4
0lstm_185_while_lstm_185_while_maximum_iterations
lstm_185_while_placeholder 
lstm_185_while_placeholder_1 
lstm_185_while_placeholder_2 
lstm_185_while_placeholder_30
,lstm_185_while_less_lstm_185_strided_slice_1G
Clstm_185_while_lstm_185_while_cond_1303855___redundant_placeholder0G
Clstm_185_while_lstm_185_while_cond_1303855___redundant_placeholder1G
Clstm_185_while_lstm_185_while_cond_1303855___redundant_placeholder2G
Clstm_185_while_lstm_185_while_cond_1303855___redundant_placeholder3
lstm_185_while_identity
?
lstm_185/while/LessLesslstm_185_while_placeholder,lstm_185_while_less_lstm_185_strided_slice_1*
T0*
_output_shapes
: ]
lstm_185/while/IdentityIdentitylstm_185/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_185_while_identity lstm_185/while/Identity:output:0*(
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
E__inference_lstm_184_layer_call_and_return_conditional_losses_1305462

inputs?
,lstm_cell_214_matmul_readvariableop_resource:	d?A
.lstm_cell_214_matmul_1_readvariableop_resource:	2?<
-lstm_cell_214_biasadd_readvariableop_resource:	?
identity??$lstm_cell_214/BiasAdd/ReadVariableOp?#lstm_cell_214/MatMul/ReadVariableOp?%lstm_cell_214/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_214/MatMul/ReadVariableOpReadVariableOp,lstm_cell_214_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_214/MatMulMatMulstrided_slice_2:output:0+lstm_cell_214/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_214/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_214_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_214/MatMul_1MatMulzeros:output:0-lstm_cell_214/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_214/addAddV2lstm_cell_214/MatMul:product:0 lstm_cell_214/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_214/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_214_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_214/BiasAddBiasAddlstm_cell_214/add:z:0,lstm_cell_214/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_214/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_214/splitSplit&lstm_cell_214/split/split_dim:output:0lstm_cell_214/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_214/SigmoidSigmoidlstm_cell_214/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_214/Sigmoid_1Sigmoidlstm_cell_214/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_214/mulMullstm_cell_214/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_214/ReluRelulstm_cell_214/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_214/mul_1Mullstm_cell_214/Sigmoid:y:0 lstm_cell_214/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_214/add_1AddV2lstm_cell_214/mul:z:0lstm_cell_214/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_214/Sigmoid_2Sigmoidlstm_cell_214/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_214/Relu_1Relulstm_cell_214/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_214/mul_2Mullstm_cell_214/Sigmoid_2:y:0"lstm_cell_214/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_214_matmul_readvariableop_resource.lstm_cell_214_matmul_1_readvariableop_resource-lstm_cell_214_biasadd_readvariableop_resource*
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
while_body_1305378*
condR
while_cond_1305377*K
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
NoOpNoOp%^lstm_cell_214/BiasAdd/ReadVariableOp$^lstm_cell_214/MatMul/ReadVariableOp&^lstm_cell_214/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_214/BiasAdd/ReadVariableOp$lstm_cell_214/BiasAdd/ReadVariableOp2J
#lstm_cell_214/MatMul/ReadVariableOp#lstm_cell_214/MatMul/ReadVariableOp2N
%lstm_cell_214/MatMul_1/ReadVariableOp%lstm_cell_214/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_1301285
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1301285___redundant_placeholder05
1while_while_cond_1301285___redundant_placeholder15
1while_while_cond_1301285___redundant_placeholder25
1while_while_cond_1301285___redundant_placeholder3
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
while_cond_1302319
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1302319___redundant_placeholder05
1while_while_cond_1302319___redundant_placeholder15
1while_while_cond_1302319___redundant_placeholder25
1while_while_cond_1302319___redundant_placeholder3
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
lstm_183_while_cond_1304004.
*lstm_183_while_lstm_183_while_loop_counter4
0lstm_183_while_lstm_183_while_maximum_iterations
lstm_183_while_placeholder 
lstm_183_while_placeholder_1 
lstm_183_while_placeholder_2 
lstm_183_while_placeholder_30
,lstm_183_while_less_lstm_183_strided_slice_1G
Clstm_183_while_lstm_183_while_cond_1304004___redundant_placeholder0G
Clstm_183_while_lstm_183_while_cond_1304004___redundant_placeholder1G
Clstm_183_while_lstm_183_while_cond_1304004___redundant_placeholder2G
Clstm_183_while_lstm_183_while_cond_1304004___redundant_placeholder3
lstm_183_while_identity
?
lstm_183/while/LessLesslstm_183_while_placeholder,lstm_183_while_less_lstm_183_strided_slice_1*
T0*
_output_shapes
: ]
lstm_183/while/IdentityIdentitylstm_183/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_183_while_identity lstm_183/while/Identity:output:0*(
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
?
)sequential_61_lstm_184_while_cond_1300975J
Fsequential_61_lstm_184_while_sequential_61_lstm_184_while_loop_counterP
Lsequential_61_lstm_184_while_sequential_61_lstm_184_while_maximum_iterations,
(sequential_61_lstm_184_while_placeholder.
*sequential_61_lstm_184_while_placeholder_1.
*sequential_61_lstm_184_while_placeholder_2.
*sequential_61_lstm_184_while_placeholder_3L
Hsequential_61_lstm_184_while_less_sequential_61_lstm_184_strided_slice_1c
_sequential_61_lstm_184_while_sequential_61_lstm_184_while_cond_1300975___redundant_placeholder0c
_sequential_61_lstm_184_while_sequential_61_lstm_184_while_cond_1300975___redundant_placeholder1c
_sequential_61_lstm_184_while_sequential_61_lstm_184_while_cond_1300975___redundant_placeholder2c
_sequential_61_lstm_184_while_sequential_61_lstm_184_while_cond_1300975___redundant_placeholder3)
%sequential_61_lstm_184_while_identity
?
!sequential_61/lstm_184/while/LessLess(sequential_61_lstm_184_while_placeholderHsequential_61_lstm_184_while_less_sequential_61_lstm_184_strided_slice_1*
T0*
_output_shapes
: y
%sequential_61/lstm_184/while/IdentityIdentity%sequential_61/lstm_184/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_61_lstm_184_while_identity.sequential_61/lstm_184/while/Identity:output:0*(
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
while_cond_1305377
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1305377___redundant_placeholder05
1while_while_cond_1305377___redundant_placeholder15
1while_while_cond_1305377___redundant_placeholder25
1while_while_cond_1305377___redundant_placeholder3
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
while_cond_1302176
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1302176___redundant_placeholder05
1while_while_cond_1302176___redundant_placeholder15
1while_while_cond_1302176___redundant_placeholder25
1while_while_cond_1302176___redundant_placeholder3
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
*__inference_lstm_185_layer_call_fn_1305627
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
E__inference_lstm_185_layer_call_and_return_conditional_losses_1302246o
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
E__inference_lstm_185_layer_call_and_return_conditional_losses_1305935
inputs_0>
,lstm_cell_215_matmul_readvariableop_resource:2(@
.lstm_cell_215_matmul_1_readvariableop_resource:
(;
-lstm_cell_215_biasadd_readvariableop_resource:(
identity??$lstm_cell_215/BiasAdd/ReadVariableOp?#lstm_cell_215/MatMul/ReadVariableOp?%lstm_cell_215/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_215/MatMul/ReadVariableOpReadVariableOp,lstm_cell_215_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_215/MatMulMatMulstrided_slice_2:output:0+lstm_cell_215/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_215/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_215_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_215/MatMul_1MatMulzeros:output:0-lstm_cell_215/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_215/addAddV2lstm_cell_215/MatMul:product:0 lstm_cell_215/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_215/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_215_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_215/BiasAddBiasAddlstm_cell_215/add:z:0,lstm_cell_215/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_215/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_215/splitSplit&lstm_cell_215/split/split_dim:output:0lstm_cell_215/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_215/SigmoidSigmoidlstm_cell_215/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_215/Sigmoid_1Sigmoidlstm_cell_215/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_215/mulMullstm_cell_215/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_215/ReluRelulstm_cell_215/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_215/mul_1Mullstm_cell_215/Sigmoid:y:0 lstm_cell_215/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_215/add_1AddV2lstm_cell_215/mul:z:0lstm_cell_215/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_215/Sigmoid_2Sigmoidlstm_cell_215/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_215/Relu_1Relulstm_cell_215/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_215/mul_2Mullstm_cell_215/Sigmoid_2:y:0"lstm_cell_215/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_215_matmul_readvariableop_resource.lstm_cell_215_matmul_1_readvariableop_resource-lstm_cell_215_biasadd_readvariableop_resource*
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
while_body_1305851*
condR
while_cond_1305850*K
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
NoOpNoOp%^lstm_cell_215/BiasAdd/ReadVariableOp$^lstm_cell_215/MatMul/ReadVariableOp&^lstm_cell_215/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_215/BiasAdd/ReadVariableOp$lstm_cell_215/BiasAdd/ReadVariableOp2J
#lstm_cell_215/MatMul/ReadVariableOp#lstm_cell_215/MatMul/ReadVariableOp2N
%lstm_cell_215/MatMul_1/ReadVariableOp%lstm_cell_215/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?

?
/__inference_sequential_61_layer_call_fn_1302754
lstm_183_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_183_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_61_layer_call_and_return_conditional_losses_1302729o
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
_user_specified_namelstm_183_input
?8
?
while_body_1305851
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_215_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_215_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_215_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_215_matmul_readvariableop_resource:2(F
4while_lstm_cell_215_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_215_biasadd_readvariableop_resource:(??*while/lstm_cell_215/BiasAdd/ReadVariableOp?)while/lstm_cell_215/MatMul/ReadVariableOp?+while/lstm_cell_215/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_215/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_215_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_215/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_215/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_215/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_215_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_215/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_215/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_215/addAddV2$while/lstm_cell_215/MatMul:product:0&while/lstm_cell_215/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_215/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_215_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_215/BiasAddBiasAddwhile/lstm_cell_215/add:z:02while/lstm_cell_215/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_215/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_215/splitSplit,while/lstm_cell_215/split/split_dim:output:0$while/lstm_cell_215/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_215/SigmoidSigmoid"while/lstm_cell_215/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_215/Sigmoid_1Sigmoid"while/lstm_cell_215/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_215/mulMul!while/lstm_cell_215/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_215/ReluRelu"while/lstm_cell_215/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_215/mul_1Mulwhile/lstm_cell_215/Sigmoid:y:0&while/lstm_cell_215/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_215/add_1AddV2while/lstm_cell_215/mul:z:0while/lstm_cell_215/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_215/Sigmoid_2Sigmoid"while/lstm_cell_215/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_215/Relu_1Reluwhile/lstm_cell_215/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_215/mul_2Mul!while/lstm_cell_215/Sigmoid_2:y:0(while/lstm_cell_215/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_215/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_215/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_215/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_215/BiasAdd/ReadVariableOp*^while/lstm_cell_215/MatMul/ReadVariableOp,^while/lstm_cell_215/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_215_biasadd_readvariableop_resource5while_lstm_cell_215_biasadd_readvariableop_resource_0"n
4while_lstm_cell_215_matmul_1_readvariableop_resource6while_lstm_cell_215_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_215_matmul_readvariableop_resource4while_lstm_cell_215_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_215/BiasAdd/ReadVariableOp*while/lstm_cell_215/BiasAdd/ReadVariableOp2V
)while/lstm_cell_215/MatMul/ReadVariableOp)while/lstm_cell_215/MatMul/ReadVariableOp2Z
+while/lstm_cell_215/MatMul_1/ReadVariableOp+while/lstm_cell_215/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1301286
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_213_1301310_0:	?0
while_lstm_cell_213_1301312_0:	d?,
while_lstm_cell_213_1301314_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_213_1301310:	?.
while_lstm_cell_213_1301312:	d?*
while_lstm_cell_213_1301314:	???+while/lstm_cell_213/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_213/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_213_1301310_0while_lstm_cell_213_1301312_0while_lstm_cell_213_1301314_0*
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
J__inference_lstm_cell_213_layer_call_and_return_conditional_losses_1301272?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_213/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_213/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_213/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_213/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_213_1301310while_lstm_cell_213_1301310_0"<
while_lstm_cell_213_1301312while_lstm_cell_213_1301312_0"<
while_lstm_cell_213_1301314while_lstm_cell_213_1301314_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_213/StatefulPartitionedCall+while/lstm_cell_213/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_1301826
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1301826___redundant_placeholder05
1while_while_cond_1301826___redundant_placeholder15
1while_while_cond_1301826___redundant_placeholder25
1while_while_cond_1301826___redundant_placeholder3
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

lstm_185_while_body_1303856.
*lstm_185_while_lstm_185_while_loop_counter4
0lstm_185_while_lstm_185_while_maximum_iterations
lstm_185_while_placeholder 
lstm_185_while_placeholder_1 
lstm_185_while_placeholder_2 
lstm_185_while_placeholder_3-
)lstm_185_while_lstm_185_strided_slice_1_0i
elstm_185_while_tensorarrayv2read_tensorlistgetitem_lstm_185_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_185_while_lstm_cell_215_matmul_readvariableop_resource_0:2(Q
?lstm_185_while_lstm_cell_215_matmul_1_readvariableop_resource_0:
(L
>lstm_185_while_lstm_cell_215_biasadd_readvariableop_resource_0:(
lstm_185_while_identity
lstm_185_while_identity_1
lstm_185_while_identity_2
lstm_185_while_identity_3
lstm_185_while_identity_4
lstm_185_while_identity_5+
'lstm_185_while_lstm_185_strided_slice_1g
clstm_185_while_tensorarrayv2read_tensorlistgetitem_lstm_185_tensorarrayunstack_tensorlistfromtensorM
;lstm_185_while_lstm_cell_215_matmul_readvariableop_resource:2(O
=lstm_185_while_lstm_cell_215_matmul_1_readvariableop_resource:
(J
<lstm_185_while_lstm_cell_215_biasadd_readvariableop_resource:(??3lstm_185/while/lstm_cell_215/BiasAdd/ReadVariableOp?2lstm_185/while/lstm_cell_215/MatMul/ReadVariableOp?4lstm_185/while/lstm_cell_215/MatMul_1/ReadVariableOp?
@lstm_185/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_185/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_185_while_tensorarrayv2read_tensorlistgetitem_lstm_185_tensorarrayunstack_tensorlistfromtensor_0lstm_185_while_placeholderIlstm_185/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_185/while/lstm_cell_215/MatMul/ReadVariableOpReadVariableOp=lstm_185_while_lstm_cell_215_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_185/while/lstm_cell_215/MatMulMatMul9lstm_185/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_185/while/lstm_cell_215/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_185/while/lstm_cell_215/MatMul_1/ReadVariableOpReadVariableOp?lstm_185_while_lstm_cell_215_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_185/while/lstm_cell_215/MatMul_1MatMullstm_185_while_placeholder_2<lstm_185/while/lstm_cell_215/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_185/while/lstm_cell_215/addAddV2-lstm_185/while/lstm_cell_215/MatMul:product:0/lstm_185/while/lstm_cell_215/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_185/while/lstm_cell_215/BiasAdd/ReadVariableOpReadVariableOp>lstm_185_while_lstm_cell_215_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_185/while/lstm_cell_215/BiasAddBiasAdd$lstm_185/while/lstm_cell_215/add:z:0;lstm_185/while/lstm_cell_215/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_185/while/lstm_cell_215/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_185/while/lstm_cell_215/splitSplit5lstm_185/while/lstm_cell_215/split/split_dim:output:0-lstm_185/while/lstm_cell_215/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_185/while/lstm_cell_215/SigmoidSigmoid+lstm_185/while/lstm_cell_215/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_185/while/lstm_cell_215/Sigmoid_1Sigmoid+lstm_185/while/lstm_cell_215/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_185/while/lstm_cell_215/mulMul*lstm_185/while/lstm_cell_215/Sigmoid_1:y:0lstm_185_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_185/while/lstm_cell_215/ReluRelu+lstm_185/while/lstm_cell_215/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_185/while/lstm_cell_215/mul_1Mul(lstm_185/while/lstm_cell_215/Sigmoid:y:0/lstm_185/while/lstm_cell_215/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_185/while/lstm_cell_215/add_1AddV2$lstm_185/while/lstm_cell_215/mul:z:0&lstm_185/while/lstm_cell_215/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_185/while/lstm_cell_215/Sigmoid_2Sigmoid+lstm_185/while/lstm_cell_215/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_185/while/lstm_cell_215/Relu_1Relu&lstm_185/while/lstm_cell_215/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_185/while/lstm_cell_215/mul_2Mul*lstm_185/while/lstm_cell_215/Sigmoid_2:y:01lstm_185/while/lstm_cell_215/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_185/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_185_while_placeholder_1lstm_185_while_placeholder&lstm_185/while/lstm_cell_215/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_185/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_185/while/addAddV2lstm_185_while_placeholderlstm_185/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_185/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_185/while/add_1AddV2*lstm_185_while_lstm_185_while_loop_counterlstm_185/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_185/while/IdentityIdentitylstm_185/while/add_1:z:0^lstm_185/while/NoOp*
T0*
_output_shapes
: ?
lstm_185/while/Identity_1Identity0lstm_185_while_lstm_185_while_maximum_iterations^lstm_185/while/NoOp*
T0*
_output_shapes
: t
lstm_185/while/Identity_2Identitylstm_185/while/add:z:0^lstm_185/while/NoOp*
T0*
_output_shapes
: ?
lstm_185/while/Identity_3IdentityClstm_185/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_185/while/NoOp*
T0*
_output_shapes
: ?
lstm_185/while/Identity_4Identity&lstm_185/while/lstm_cell_215/mul_2:z:0^lstm_185/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_185/while/Identity_5Identity&lstm_185/while/lstm_cell_215/add_1:z:0^lstm_185/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_185/while/NoOpNoOp4^lstm_185/while/lstm_cell_215/BiasAdd/ReadVariableOp3^lstm_185/while/lstm_cell_215/MatMul/ReadVariableOp5^lstm_185/while/lstm_cell_215/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_185_while_identity lstm_185/while/Identity:output:0"?
lstm_185_while_identity_1"lstm_185/while/Identity_1:output:0"?
lstm_185_while_identity_2"lstm_185/while/Identity_2:output:0"?
lstm_185_while_identity_3"lstm_185/while/Identity_3:output:0"?
lstm_185_while_identity_4"lstm_185/while/Identity_4:output:0"?
lstm_185_while_identity_5"lstm_185/while/Identity_5:output:0"T
'lstm_185_while_lstm_185_strided_slice_1)lstm_185_while_lstm_185_strided_slice_1_0"~
<lstm_185_while_lstm_cell_215_biasadd_readvariableop_resource>lstm_185_while_lstm_cell_215_biasadd_readvariableop_resource_0"?
=lstm_185_while_lstm_cell_215_matmul_1_readvariableop_resource?lstm_185_while_lstm_cell_215_matmul_1_readvariableop_resource_0"|
;lstm_185_while_lstm_cell_215_matmul_readvariableop_resource=lstm_185_while_lstm_cell_215_matmul_readvariableop_resource_0"?
clstm_185_while_tensorarrayv2read_tensorlistgetitem_lstm_185_tensorarrayunstack_tensorlistfromtensorelstm_185_while_tensorarrayv2read_tensorlistgetitem_lstm_185_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_185/while/lstm_cell_215/BiasAdd/ReadVariableOp3lstm_185/while/lstm_cell_215/BiasAdd/ReadVariableOp2h
2lstm_185/while/lstm_cell_215/MatMul/ReadVariableOp2lstm_185/while/lstm_cell_215/MatMul/ReadVariableOp2l
4lstm_185/while/lstm_cell_215/MatMul_1/ReadVariableOp4lstm_185/while/lstm_cell_215/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1304476
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_213_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_213_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_213_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_213_matmul_readvariableop_resource:	?G
4while_lstm_cell_213_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_213_biasadd_readvariableop_resource:	???*while/lstm_cell_213/BiasAdd/ReadVariableOp?)while/lstm_cell_213/MatMul/ReadVariableOp?+while/lstm_cell_213/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_213/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_213_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_213/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_213/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_213/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_213_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_213/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_213/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_213/addAddV2$while/lstm_cell_213/MatMul:product:0&while/lstm_cell_213/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_213/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_213_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_213/BiasAddBiasAddwhile/lstm_cell_213/add:z:02while/lstm_cell_213/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_213/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_213/splitSplit,while/lstm_cell_213/split/split_dim:output:0$while/lstm_cell_213/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_213/SigmoidSigmoid"while/lstm_cell_213/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_213/Sigmoid_1Sigmoid"while/lstm_cell_213/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_213/mulMul!while/lstm_cell_213/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_213/ReluRelu"while/lstm_cell_213/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_213/mul_1Mulwhile/lstm_cell_213/Sigmoid:y:0&while/lstm_cell_213/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_213/add_1AddV2while/lstm_cell_213/mul:z:0while/lstm_cell_213/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_213/Sigmoid_2Sigmoid"while/lstm_cell_213/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_213/Relu_1Reluwhile/lstm_cell_213/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_213/mul_2Mul!while/lstm_cell_213/Sigmoid_2:y:0(while/lstm_cell_213/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_213/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_213/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_213/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_213/BiasAdd/ReadVariableOp*^while/lstm_cell_213/MatMul/ReadVariableOp,^while/lstm_cell_213/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_213_biasadd_readvariableop_resource5while_lstm_cell_213_biasadd_readvariableop_resource_0"n
4while_lstm_cell_213_matmul_1_readvariableop_resource6while_lstm_cell_213_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_213_matmul_readvariableop_resource4while_lstm_cell_213_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_213/BiasAdd/ReadVariableOp*while/lstm_cell_213/BiasAdd/ReadVariableOp2V
)while/lstm_cell_213/MatMul/ReadVariableOp)while/lstm_cell_213/MatMul/ReadVariableOp2Z
+while/lstm_cell_213/MatMul_1/ReadVariableOp+while/lstm_cell_213/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_213_layer_call_and_return_conditional_losses_1301418

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
E__inference_lstm_183_layer_call_and_return_conditional_losses_1302404

inputs?
,lstm_cell_213_matmul_readvariableop_resource:	?A
.lstm_cell_213_matmul_1_readvariableop_resource:	d?<
-lstm_cell_213_biasadd_readvariableop_resource:	?
identity??$lstm_cell_213/BiasAdd/ReadVariableOp?#lstm_cell_213/MatMul/ReadVariableOp?%lstm_cell_213/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_213/MatMul/ReadVariableOpReadVariableOp,lstm_cell_213_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_213/MatMulMatMulstrided_slice_2:output:0+lstm_cell_213/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_213/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_213_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_213/MatMul_1MatMulzeros:output:0-lstm_cell_213/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_213/addAddV2lstm_cell_213/MatMul:product:0 lstm_cell_213/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_213/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_213_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_213/BiasAddBiasAddlstm_cell_213/add:z:0,lstm_cell_213/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_213/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_213/splitSplit&lstm_cell_213/split/split_dim:output:0lstm_cell_213/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_213/SigmoidSigmoidlstm_cell_213/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_213/Sigmoid_1Sigmoidlstm_cell_213/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_213/mulMullstm_cell_213/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_213/ReluRelulstm_cell_213/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_213/mul_1Mullstm_cell_213/Sigmoid:y:0 lstm_cell_213/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_213/add_1AddV2lstm_cell_213/mul:z:0lstm_cell_213/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_213/Sigmoid_2Sigmoidlstm_cell_213/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_213/Relu_1Relulstm_cell_213/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_213/mul_2Mullstm_cell_213/Sigmoid_2:y:0"lstm_cell_213/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_213_matmul_readvariableop_resource.lstm_cell_213_matmul_1_readvariableop_resource-lstm_cell_213_biasadd_readvariableop_resource*
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
while_body_1302320*
condR
while_cond_1302319*K
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
NoOpNoOp%^lstm_cell_213/BiasAdd/ReadVariableOp$^lstm_cell_213/MatMul/ReadVariableOp&^lstm_cell_213/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_213/BiasAdd/ReadVariableOp$lstm_cell_213/BiasAdd/ReadVariableOp2J
#lstm_cell_213/MatMul/ReadVariableOp#lstm_cell_213/MatMul/ReadVariableOp2N
%lstm_cell_213/MatMul_1/ReadVariableOp%lstm_cell_213/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_sequential_61_layer_call_and_return_conditional_losses_1303430
lstm_183_input#
lstm_183_1303403:	?#
lstm_183_1303405:	d?
lstm_183_1303407:	?#
lstm_184_1303410:	d?#
lstm_184_1303412:	2?
lstm_184_1303414:	?"
lstm_185_1303417:2("
lstm_185_1303419:
(
lstm_185_1303421:("
dense_61_1303424:

dense_61_1303426:
identity?? dense_61/StatefulPartitionedCall? lstm_183/StatefulPartitionedCall? lstm_184/StatefulPartitionedCall? lstm_185/StatefulPartitionedCall?
 lstm_183/StatefulPartitionedCallStatefulPartitionedCalllstm_183_inputlstm_183_1303403lstm_183_1303405lstm_183_1303407*
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
E__inference_lstm_183_layer_call_and_return_conditional_losses_1303250?
 lstm_184/StatefulPartitionedCallStatefulPartitionedCall)lstm_183/StatefulPartitionedCall:output:0lstm_184_1303410lstm_184_1303412lstm_184_1303414*
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
E__inference_lstm_184_layer_call_and_return_conditional_losses_1303085?
 lstm_185/StatefulPartitionedCallStatefulPartitionedCall)lstm_184/StatefulPartitionedCall:output:0lstm_185_1303417lstm_185_1303419lstm_185_1303421*
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
E__inference_lstm_185_layer_call_and_return_conditional_losses_1302920?
 dense_61/StatefulPartitionedCallStatefulPartitionedCall)lstm_185/StatefulPartitionedCall:output:0dense_61_1303424dense_61_1303426*
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
E__inference_dense_61_layer_call_and_return_conditional_losses_1302722x
IdentityIdentity)dense_61/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_61/StatefulPartitionedCall!^lstm_183/StatefulPartitionedCall!^lstm_184/StatefulPartitionedCall!^lstm_185/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_61/StatefulPartitionedCall dense_61/StatefulPartitionedCall2D
 lstm_183/StatefulPartitionedCall lstm_183/StatefulPartitionedCall2D
 lstm_184/StatefulPartitionedCall lstm_184/StatefulPartitionedCall2D
 lstm_185/StatefulPartitionedCall lstm_185/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_183_input
?8
?
E__inference_lstm_183_layer_call_and_return_conditional_losses_1301546

inputs(
lstm_cell_213_1301464:	?(
lstm_cell_213_1301466:	d?$
lstm_cell_213_1301468:	?
identity??%lstm_cell_213/StatefulPartitionedCall?while;
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
%lstm_cell_213/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_213_1301464lstm_cell_213_1301466lstm_cell_213_1301468*
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
J__inference_lstm_cell_213_layer_call_and_return_conditional_losses_1301418n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_213_1301464lstm_cell_213_1301466lstm_cell_213_1301468*
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
while_body_1301477*
condR
while_cond_1301476*K
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
NoOpNoOp&^lstm_cell_213/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_213/StatefulPartitionedCall%lstm_cell_213/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_1301985
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1301985___redundant_placeholder05
1while_while_cond_1301985___redundant_placeholder15
1while_while_cond_1301985___redundant_placeholder25
1while_while_cond_1301985___redundant_placeholder3
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
while_body_1304905
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_213_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_213_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_213_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_213_matmul_readvariableop_resource:	?G
4while_lstm_cell_213_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_213_biasadd_readvariableop_resource:	???*while/lstm_cell_213/BiasAdd/ReadVariableOp?)while/lstm_cell_213/MatMul/ReadVariableOp?+while/lstm_cell_213/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_213/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_213_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_213/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_213/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_213/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_213_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_213/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_213/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_213/addAddV2$while/lstm_cell_213/MatMul:product:0&while/lstm_cell_213/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_213/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_213_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_213/BiasAddBiasAddwhile/lstm_cell_213/add:z:02while/lstm_cell_213/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_213/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_213/splitSplit,while/lstm_cell_213/split/split_dim:output:0$while/lstm_cell_213/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_213/SigmoidSigmoid"while/lstm_cell_213/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_213/Sigmoid_1Sigmoid"while/lstm_cell_213/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_213/mulMul!while/lstm_cell_213/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_213/ReluRelu"while/lstm_cell_213/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_213/mul_1Mulwhile/lstm_cell_213/Sigmoid:y:0&while/lstm_cell_213/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_213/add_1AddV2while/lstm_cell_213/mul:z:0while/lstm_cell_213/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_213/Sigmoid_2Sigmoid"while/lstm_cell_213/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_213/Relu_1Reluwhile/lstm_cell_213/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_213/mul_2Mul!while/lstm_cell_213/Sigmoid_2:y:0(while/lstm_cell_213/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_213/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_213/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_213/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_213/BiasAdd/ReadVariableOp*^while/lstm_cell_213/MatMul/ReadVariableOp,^while/lstm_cell_213/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_213_biasadd_readvariableop_resource5while_lstm_cell_213_biasadd_readvariableop_resource_0"n
4while_lstm_cell_213_matmul_1_readvariableop_resource6while_lstm_cell_213_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_213_matmul_readvariableop_resource4while_lstm_cell_213_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_213/BiasAdd/ReadVariableOp*while/lstm_cell_213/BiasAdd/ReadVariableOp2V
)while/lstm_cell_213/MatMul/ReadVariableOp)while/lstm_cell_213/MatMul/ReadVariableOp2Z
+while/lstm_cell_213/MatMul_1/ReadVariableOp+while/lstm_cell_213/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_61_layer_call_and_return_conditional_losses_1303400
lstm_183_input#
lstm_183_1303373:	?#
lstm_183_1303375:	d?
lstm_183_1303377:	?#
lstm_184_1303380:	d?#
lstm_184_1303382:	2?
lstm_184_1303384:	?"
lstm_185_1303387:2("
lstm_185_1303389:
(
lstm_185_1303391:("
dense_61_1303394:

dense_61_1303396:
identity?? dense_61/StatefulPartitionedCall? lstm_183/StatefulPartitionedCall? lstm_184/StatefulPartitionedCall? lstm_185/StatefulPartitionedCall?
 lstm_183/StatefulPartitionedCallStatefulPartitionedCalllstm_183_inputlstm_183_1303373lstm_183_1303375lstm_183_1303377*
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
E__inference_lstm_183_layer_call_and_return_conditional_losses_1302404?
 lstm_184/StatefulPartitionedCallStatefulPartitionedCall)lstm_183/StatefulPartitionedCall:output:0lstm_184_1303380lstm_184_1303382lstm_184_1303384*
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
E__inference_lstm_184_layer_call_and_return_conditional_losses_1302554?
 lstm_185/StatefulPartitionedCallStatefulPartitionedCall)lstm_184/StatefulPartitionedCall:output:0lstm_185_1303387lstm_185_1303389lstm_185_1303391*
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
E__inference_lstm_185_layer_call_and_return_conditional_losses_1302704?
 dense_61/StatefulPartitionedCallStatefulPartitionedCall)lstm_185/StatefulPartitionedCall:output:0dense_61_1303394dense_61_1303396*
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
E__inference_dense_61_layer_call_and_return_conditional_losses_1302722x
IdentityIdentity)dense_61/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_61/StatefulPartitionedCall!^lstm_183/StatefulPartitionedCall!^lstm_184/StatefulPartitionedCall!^lstm_185/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_61/StatefulPartitionedCall dense_61/StatefulPartitionedCall2D
 lstm_183/StatefulPartitionedCall lstm_183/StatefulPartitionedCall2D
 lstm_184/StatefulPartitionedCall lstm_184/StatefulPartitionedCall2D
 lstm_185/StatefulPartitionedCall lstm_185/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_183_input
?

?
lstm_184_while_cond_1304143.
*lstm_184_while_lstm_184_while_loop_counter4
0lstm_184_while_lstm_184_while_maximum_iterations
lstm_184_while_placeholder 
lstm_184_while_placeholder_1 
lstm_184_while_placeholder_2 
lstm_184_while_placeholder_30
,lstm_184_while_less_lstm_184_strided_slice_1G
Clstm_184_while_lstm_184_while_cond_1304143___redundant_placeholder0G
Clstm_184_while_lstm_184_while_cond_1304143___redundant_placeholder1G
Clstm_184_while_lstm_184_while_cond_1304143___redundant_placeholder2G
Clstm_184_while_lstm_184_while_cond_1304143___redundant_placeholder3
lstm_184_while_identity
?
lstm_184/while/LessLesslstm_184_while_placeholder,lstm_184_while_less_lstm_184_strided_slice_1*
T0*
_output_shapes
: ]
lstm_184/while/IdentityIdentitylstm_184/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_184_while_identity lstm_184/while/Identity:output:0*(
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

lstm_185_while_body_1304283.
*lstm_185_while_lstm_185_while_loop_counter4
0lstm_185_while_lstm_185_while_maximum_iterations
lstm_185_while_placeholder 
lstm_185_while_placeholder_1 
lstm_185_while_placeholder_2 
lstm_185_while_placeholder_3-
)lstm_185_while_lstm_185_strided_slice_1_0i
elstm_185_while_tensorarrayv2read_tensorlistgetitem_lstm_185_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_185_while_lstm_cell_215_matmul_readvariableop_resource_0:2(Q
?lstm_185_while_lstm_cell_215_matmul_1_readvariableop_resource_0:
(L
>lstm_185_while_lstm_cell_215_biasadd_readvariableop_resource_0:(
lstm_185_while_identity
lstm_185_while_identity_1
lstm_185_while_identity_2
lstm_185_while_identity_3
lstm_185_while_identity_4
lstm_185_while_identity_5+
'lstm_185_while_lstm_185_strided_slice_1g
clstm_185_while_tensorarrayv2read_tensorlistgetitem_lstm_185_tensorarrayunstack_tensorlistfromtensorM
;lstm_185_while_lstm_cell_215_matmul_readvariableop_resource:2(O
=lstm_185_while_lstm_cell_215_matmul_1_readvariableop_resource:
(J
<lstm_185_while_lstm_cell_215_biasadd_readvariableop_resource:(??3lstm_185/while/lstm_cell_215/BiasAdd/ReadVariableOp?2lstm_185/while/lstm_cell_215/MatMul/ReadVariableOp?4lstm_185/while/lstm_cell_215/MatMul_1/ReadVariableOp?
@lstm_185/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_185/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_185_while_tensorarrayv2read_tensorlistgetitem_lstm_185_tensorarrayunstack_tensorlistfromtensor_0lstm_185_while_placeholderIlstm_185/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_185/while/lstm_cell_215/MatMul/ReadVariableOpReadVariableOp=lstm_185_while_lstm_cell_215_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_185/while/lstm_cell_215/MatMulMatMul9lstm_185/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_185/while/lstm_cell_215/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_185/while/lstm_cell_215/MatMul_1/ReadVariableOpReadVariableOp?lstm_185_while_lstm_cell_215_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_185/while/lstm_cell_215/MatMul_1MatMullstm_185_while_placeholder_2<lstm_185/while/lstm_cell_215/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_185/while/lstm_cell_215/addAddV2-lstm_185/while/lstm_cell_215/MatMul:product:0/lstm_185/while/lstm_cell_215/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_185/while/lstm_cell_215/BiasAdd/ReadVariableOpReadVariableOp>lstm_185_while_lstm_cell_215_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_185/while/lstm_cell_215/BiasAddBiasAdd$lstm_185/while/lstm_cell_215/add:z:0;lstm_185/while/lstm_cell_215/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_185/while/lstm_cell_215/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_185/while/lstm_cell_215/splitSplit5lstm_185/while/lstm_cell_215/split/split_dim:output:0-lstm_185/while/lstm_cell_215/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_185/while/lstm_cell_215/SigmoidSigmoid+lstm_185/while/lstm_cell_215/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_185/while/lstm_cell_215/Sigmoid_1Sigmoid+lstm_185/while/lstm_cell_215/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_185/while/lstm_cell_215/mulMul*lstm_185/while/lstm_cell_215/Sigmoid_1:y:0lstm_185_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_185/while/lstm_cell_215/ReluRelu+lstm_185/while/lstm_cell_215/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_185/while/lstm_cell_215/mul_1Mul(lstm_185/while/lstm_cell_215/Sigmoid:y:0/lstm_185/while/lstm_cell_215/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_185/while/lstm_cell_215/add_1AddV2$lstm_185/while/lstm_cell_215/mul:z:0&lstm_185/while/lstm_cell_215/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_185/while/lstm_cell_215/Sigmoid_2Sigmoid+lstm_185/while/lstm_cell_215/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_185/while/lstm_cell_215/Relu_1Relu&lstm_185/while/lstm_cell_215/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_185/while/lstm_cell_215/mul_2Mul*lstm_185/while/lstm_cell_215/Sigmoid_2:y:01lstm_185/while/lstm_cell_215/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_185/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_185_while_placeholder_1lstm_185_while_placeholder&lstm_185/while/lstm_cell_215/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_185/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_185/while/addAddV2lstm_185_while_placeholderlstm_185/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_185/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_185/while/add_1AddV2*lstm_185_while_lstm_185_while_loop_counterlstm_185/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_185/while/IdentityIdentitylstm_185/while/add_1:z:0^lstm_185/while/NoOp*
T0*
_output_shapes
: ?
lstm_185/while/Identity_1Identity0lstm_185_while_lstm_185_while_maximum_iterations^lstm_185/while/NoOp*
T0*
_output_shapes
: t
lstm_185/while/Identity_2Identitylstm_185/while/add:z:0^lstm_185/while/NoOp*
T0*
_output_shapes
: ?
lstm_185/while/Identity_3IdentityClstm_185/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_185/while/NoOp*
T0*
_output_shapes
: ?
lstm_185/while/Identity_4Identity&lstm_185/while/lstm_cell_215/mul_2:z:0^lstm_185/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_185/while/Identity_5Identity&lstm_185/while/lstm_cell_215/add_1:z:0^lstm_185/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_185/while/NoOpNoOp4^lstm_185/while/lstm_cell_215/BiasAdd/ReadVariableOp3^lstm_185/while/lstm_cell_215/MatMul/ReadVariableOp5^lstm_185/while/lstm_cell_215/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_185_while_identity lstm_185/while/Identity:output:0"?
lstm_185_while_identity_1"lstm_185/while/Identity_1:output:0"?
lstm_185_while_identity_2"lstm_185/while/Identity_2:output:0"?
lstm_185_while_identity_3"lstm_185/while/Identity_3:output:0"?
lstm_185_while_identity_4"lstm_185/while/Identity_4:output:0"?
lstm_185_while_identity_5"lstm_185/while/Identity_5:output:0"T
'lstm_185_while_lstm_185_strided_slice_1)lstm_185_while_lstm_185_strided_slice_1_0"~
<lstm_185_while_lstm_cell_215_biasadd_readvariableop_resource>lstm_185_while_lstm_cell_215_biasadd_readvariableop_resource_0"?
=lstm_185_while_lstm_cell_215_matmul_1_readvariableop_resource?lstm_185_while_lstm_cell_215_matmul_1_readvariableop_resource_0"|
;lstm_185_while_lstm_cell_215_matmul_readvariableop_resource=lstm_185_while_lstm_cell_215_matmul_readvariableop_resource_0"?
clstm_185_while_tensorarrayv2read_tensorlistgetitem_lstm_185_tensorarrayunstack_tensorlistfromtensorelstm_185_while_tensorarrayv2read_tensorlistgetitem_lstm_185_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_185/while/lstm_cell_215/BiasAdd/ReadVariableOp3lstm_185/while/lstm_cell_215/BiasAdd/ReadVariableOp2h
2lstm_185/while/lstm_cell_215/MatMul/ReadVariableOp2lstm_185/while/lstm_cell_215/MatMul/ReadVariableOp2l
4lstm_185/while/lstm_cell_215/MatMul_1/ReadVariableOp4lstm_185/while/lstm_cell_215/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1305520
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1305520___redundant_placeholder05
1while_while_cond_1305520___redundant_placeholder15
1while_while_cond_1305520___redundant_placeholder25
1while_while_cond_1305520___redundant_placeholder3
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
J__inference_lstm_cell_213_layer_call_and_return_conditional_losses_1306338

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
while_body_1301827
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_214_1301851_0:	d?0
while_lstm_cell_214_1301853_0:	2?,
while_lstm_cell_214_1301855_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_214_1301851:	d?.
while_lstm_cell_214_1301853:	2?*
while_lstm_cell_214_1301855:	???+while/lstm_cell_214/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_214/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_214_1301851_0while_lstm_cell_214_1301853_0while_lstm_cell_214_1301855_0*
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
J__inference_lstm_cell_214_layer_call_and_return_conditional_losses_1301768?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_214/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_214/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_214/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_214/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_214_1301851while_lstm_cell_214_1301851_0"<
while_lstm_cell_214_1301853while_lstm_cell_214_1301853_0"<
while_lstm_cell_214_1301855while_lstm_cell_214_1301855_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_214/StatefulPartitionedCall+while/lstm_cell_214/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_215_layer_call_and_return_conditional_losses_1301972

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
?
?
J__inference_sequential_61_layer_call_and_return_conditional_losses_1302729

inputs#
lstm_183_1302405:	?#
lstm_183_1302407:	d?
lstm_183_1302409:	?#
lstm_184_1302555:	d?#
lstm_184_1302557:	2?
lstm_184_1302559:	?"
lstm_185_1302705:2("
lstm_185_1302707:
(
lstm_185_1302709:("
dense_61_1302723:

dense_61_1302725:
identity?? dense_61/StatefulPartitionedCall? lstm_183/StatefulPartitionedCall? lstm_184/StatefulPartitionedCall? lstm_185/StatefulPartitionedCall?
 lstm_183/StatefulPartitionedCallStatefulPartitionedCallinputslstm_183_1302405lstm_183_1302407lstm_183_1302409*
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
E__inference_lstm_183_layer_call_and_return_conditional_losses_1302404?
 lstm_184/StatefulPartitionedCallStatefulPartitionedCall)lstm_183/StatefulPartitionedCall:output:0lstm_184_1302555lstm_184_1302557lstm_184_1302559*
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
E__inference_lstm_184_layer_call_and_return_conditional_losses_1302554?
 lstm_185/StatefulPartitionedCallStatefulPartitionedCall)lstm_184/StatefulPartitionedCall:output:0lstm_185_1302705lstm_185_1302707lstm_185_1302709*
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
E__inference_lstm_185_layer_call_and_return_conditional_losses_1302704?
 dense_61/StatefulPartitionedCallStatefulPartitionedCall)lstm_185/StatefulPartitionedCall:output:0dense_61_1302723dense_61_1302725*
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
E__inference_dense_61_layer_call_and_return_conditional_losses_1302722x
IdentityIdentity)dense_61/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_61/StatefulPartitionedCall!^lstm_183/StatefulPartitionedCall!^lstm_184/StatefulPartitionedCall!^lstm_185/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_61/StatefulPartitionedCall dense_61/StatefulPartitionedCall2D
 lstm_183/StatefulPartitionedCall lstm_183/StatefulPartitionedCall2D
 lstm_184/StatefulPartitionedCall lstm_184/StatefulPartitionedCall2D
 lstm_185/StatefulPartitionedCall lstm_185/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1301635
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1301635___redundant_placeholder05
1while_while_cond_1301635___redundant_placeholder15
1while_while_cond_1301635___redundant_placeholder25
1while_while_cond_1301635___redundant_placeholder3
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
while_cond_1302469
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1302469___redundant_placeholder05
1while_while_cond_1302469___redundant_placeholder15
1while_while_cond_1302469___redundant_placeholder25
1while_while_cond_1302469___redundant_placeholder3
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
*__inference_lstm_184_layer_call_fn_1305000
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
E__inference_lstm_184_layer_call_and_return_conditional_losses_1301705|
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
while_cond_1305707
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1305707___redundant_placeholder05
1while_while_cond_1305707___redundant_placeholder15
1while_while_cond_1305707___redundant_placeholder25
1while_while_cond_1305707___redundant_placeholder3
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
J__inference_lstm_cell_214_layer_call_and_return_conditional_losses_1301768

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
?
)sequential_61_lstm_185_while_cond_1301114J
Fsequential_61_lstm_185_while_sequential_61_lstm_185_while_loop_counterP
Lsequential_61_lstm_185_while_sequential_61_lstm_185_while_maximum_iterations,
(sequential_61_lstm_185_while_placeholder.
*sequential_61_lstm_185_while_placeholder_1.
*sequential_61_lstm_185_while_placeholder_2.
*sequential_61_lstm_185_while_placeholder_3L
Hsequential_61_lstm_185_while_less_sequential_61_lstm_185_strided_slice_1c
_sequential_61_lstm_185_while_sequential_61_lstm_185_while_cond_1301114___redundant_placeholder0c
_sequential_61_lstm_185_while_sequential_61_lstm_185_while_cond_1301114___redundant_placeholder1c
_sequential_61_lstm_185_while_sequential_61_lstm_185_while_cond_1301114___redundant_placeholder2c
_sequential_61_lstm_185_while_sequential_61_lstm_185_while_cond_1301114___redundant_placeholder3)
%sequential_61_lstm_185_while_identity
?
!sequential_61/lstm_185/while/LessLess(sequential_61_lstm_185_while_placeholderHsequential_61_lstm_185_while_less_sequential_61_lstm_185_strided_slice_1*
T0*
_output_shapes
: y
%sequential_61/lstm_185/while/IdentityIdentity%sequential_61/lstm_185/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_61_lstm_185_while_identity.sequential_61/lstm_185/while/Identity:output:0*(
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
J__inference_sequential_61_layer_call_and_return_conditional_losses_1303318

inputs#
lstm_183_1303291:	?#
lstm_183_1303293:	d?
lstm_183_1303295:	?#
lstm_184_1303298:	d?#
lstm_184_1303300:	2?
lstm_184_1303302:	?"
lstm_185_1303305:2("
lstm_185_1303307:
(
lstm_185_1303309:("
dense_61_1303312:

dense_61_1303314:
identity?? dense_61/StatefulPartitionedCall? lstm_183/StatefulPartitionedCall? lstm_184/StatefulPartitionedCall? lstm_185/StatefulPartitionedCall?
 lstm_183/StatefulPartitionedCallStatefulPartitionedCallinputslstm_183_1303291lstm_183_1303293lstm_183_1303295*
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
E__inference_lstm_183_layer_call_and_return_conditional_losses_1303250?
 lstm_184/StatefulPartitionedCallStatefulPartitionedCall)lstm_183/StatefulPartitionedCall:output:0lstm_184_1303298lstm_184_1303300lstm_184_1303302*
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
E__inference_lstm_184_layer_call_and_return_conditional_losses_1303085?
 lstm_185/StatefulPartitionedCallStatefulPartitionedCall)lstm_184/StatefulPartitionedCall:output:0lstm_185_1303305lstm_185_1303307lstm_185_1303309*
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
E__inference_lstm_185_layer_call_and_return_conditional_losses_1302920?
 dense_61/StatefulPartitionedCallStatefulPartitionedCall)lstm_185/StatefulPartitionedCall:output:0dense_61_1303312dense_61_1303314*
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
E__inference_dense_61_layer_call_and_return_conditional_losses_1302722x
IdentityIdentity)dense_61/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_61/StatefulPartitionedCall!^lstm_183/StatefulPartitionedCall!^lstm_184/StatefulPartitionedCall!^lstm_185/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_61/StatefulPartitionedCall dense_61/StatefulPartitionedCall2D
 lstm_183/StatefulPartitionedCall lstm_183/StatefulPartitionedCall2D
 lstm_184/StatefulPartitionedCall lstm_184/StatefulPartitionedCall2D
 lstm_185/StatefulPartitionedCall lstm_185/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_185_layer_call_and_return_conditional_losses_1302920

inputs>
,lstm_cell_215_matmul_readvariableop_resource:2(@
.lstm_cell_215_matmul_1_readvariableop_resource:
(;
-lstm_cell_215_biasadd_readvariableop_resource:(
identity??$lstm_cell_215/BiasAdd/ReadVariableOp?#lstm_cell_215/MatMul/ReadVariableOp?%lstm_cell_215/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_215/MatMul/ReadVariableOpReadVariableOp,lstm_cell_215_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_215/MatMulMatMulstrided_slice_2:output:0+lstm_cell_215/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_215/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_215_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_215/MatMul_1MatMulzeros:output:0-lstm_cell_215/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_215/addAddV2lstm_cell_215/MatMul:product:0 lstm_cell_215/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_215/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_215_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_215/BiasAddBiasAddlstm_cell_215/add:z:0,lstm_cell_215/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_215/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_215/splitSplit&lstm_cell_215/split/split_dim:output:0lstm_cell_215/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_215/SigmoidSigmoidlstm_cell_215/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_215/Sigmoid_1Sigmoidlstm_cell_215/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_215/mulMullstm_cell_215/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_215/ReluRelulstm_cell_215/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_215/mul_1Mullstm_cell_215/Sigmoid:y:0 lstm_cell_215/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_215/add_1AddV2lstm_cell_215/mul:z:0lstm_cell_215/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_215/Sigmoid_2Sigmoidlstm_cell_215/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_215/Relu_1Relulstm_cell_215/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_215/mul_2Mullstm_cell_215/Sigmoid_2:y:0"lstm_cell_215/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_215_matmul_readvariableop_resource.lstm_cell_215_matmul_1_readvariableop_resource-lstm_cell_215_biasadd_readvariableop_resource*
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
while_body_1302836*
condR
while_cond_1302835*K
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
NoOpNoOp%^lstm_cell_215/BiasAdd/ReadVariableOp$^lstm_cell_215/MatMul/ReadVariableOp&^lstm_cell_215/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_215/BiasAdd/ReadVariableOp$lstm_cell_215/BiasAdd/ReadVariableOp2J
#lstm_cell_215/MatMul/ReadVariableOp#lstm_cell_215/MatMul/ReadVariableOp2N
%lstm_cell_215/MatMul_1/ReadVariableOp%lstm_cell_215/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_1303001
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_214_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_214_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_214_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_214_matmul_readvariableop_resource:	d?G
4while_lstm_cell_214_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_214_biasadd_readvariableop_resource:	???*while/lstm_cell_214/BiasAdd/ReadVariableOp?)while/lstm_cell_214/MatMul/ReadVariableOp?+while/lstm_cell_214/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_214/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_214_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_214/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_214/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_214/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_214_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_214/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_214/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_214/addAddV2$while/lstm_cell_214/MatMul:product:0&while/lstm_cell_214/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_214/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_214_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_214/BiasAddBiasAddwhile/lstm_cell_214/add:z:02while/lstm_cell_214/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_214/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_214/splitSplit,while/lstm_cell_214/split/split_dim:output:0$while/lstm_cell_214/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_214/SigmoidSigmoid"while/lstm_cell_214/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_214/Sigmoid_1Sigmoid"while/lstm_cell_214/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_214/mulMul!while/lstm_cell_214/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_214/ReluRelu"while/lstm_cell_214/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_214/mul_1Mulwhile/lstm_cell_214/Sigmoid:y:0&while/lstm_cell_214/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_214/add_1AddV2while/lstm_cell_214/mul:z:0while/lstm_cell_214/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_214/Sigmoid_2Sigmoid"while/lstm_cell_214/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_214/Relu_1Reluwhile/lstm_cell_214/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_214/mul_2Mul!while/lstm_cell_214/Sigmoid_2:y:0(while/lstm_cell_214/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_214/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_214/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_214/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_214/BiasAdd/ReadVariableOp*^while/lstm_cell_214/MatMul/ReadVariableOp,^while/lstm_cell_214/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_214_biasadd_readvariableop_resource5while_lstm_cell_214_biasadd_readvariableop_resource_0"n
4while_lstm_cell_214_matmul_1_readvariableop_resource6while_lstm_cell_214_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_214_matmul_readvariableop_resource4while_lstm_cell_214_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_214/BiasAdd/ReadVariableOp*while/lstm_cell_214/BiasAdd/ReadVariableOp2V
)while/lstm_cell_214/MatMul/ReadVariableOp)while/lstm_cell_214/MatMul/ReadVariableOp2Z
+while/lstm_cell_214/MatMul_1/ReadVariableOp+while/lstm_cell_214/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_183_while_cond_1303577.
*lstm_183_while_lstm_183_while_loop_counter4
0lstm_183_while_lstm_183_while_maximum_iterations
lstm_183_while_placeholder 
lstm_183_while_placeholder_1 
lstm_183_while_placeholder_2 
lstm_183_while_placeholder_30
,lstm_183_while_less_lstm_183_strided_slice_1G
Clstm_183_while_lstm_183_while_cond_1303577___redundant_placeholder0G
Clstm_183_while_lstm_183_while_cond_1303577___redundant_placeholder1G
Clstm_183_while_lstm_183_while_cond_1303577___redundant_placeholder2G
Clstm_183_while_lstm_183_while_cond_1303577___redundant_placeholder3
lstm_183_while_identity
?
lstm_183/while/LessLesslstm_183_while_placeholder,lstm_183_while_less_lstm_183_strided_slice_1*
T0*
_output_shapes
: ]
lstm_183/while/IdentityIdentitylstm_183/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_183_while_identity lstm_183/while/Identity:output:0*(
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
E__inference_lstm_185_layer_call_and_return_conditional_losses_1306078

inputs>
,lstm_cell_215_matmul_readvariableop_resource:2(@
.lstm_cell_215_matmul_1_readvariableop_resource:
(;
-lstm_cell_215_biasadd_readvariableop_resource:(
identity??$lstm_cell_215/BiasAdd/ReadVariableOp?#lstm_cell_215/MatMul/ReadVariableOp?%lstm_cell_215/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_215/MatMul/ReadVariableOpReadVariableOp,lstm_cell_215_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_215/MatMulMatMulstrided_slice_2:output:0+lstm_cell_215/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_215/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_215_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_215/MatMul_1MatMulzeros:output:0-lstm_cell_215/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_215/addAddV2lstm_cell_215/MatMul:product:0 lstm_cell_215/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_215/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_215_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_215/BiasAddBiasAddlstm_cell_215/add:z:0,lstm_cell_215/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_215/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_215/splitSplit&lstm_cell_215/split/split_dim:output:0lstm_cell_215/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_215/SigmoidSigmoidlstm_cell_215/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_215/Sigmoid_1Sigmoidlstm_cell_215/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_215/mulMullstm_cell_215/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_215/ReluRelulstm_cell_215/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_215/mul_1Mullstm_cell_215/Sigmoid:y:0 lstm_cell_215/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_215/add_1AddV2lstm_cell_215/mul:z:0lstm_cell_215/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_215/Sigmoid_2Sigmoidlstm_cell_215/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_215/Relu_1Relulstm_cell_215/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_215/mul_2Mullstm_cell_215/Sigmoid_2:y:0"lstm_cell_215/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_215_matmul_readvariableop_resource.lstm_cell_215_matmul_1_readvariableop_resource-lstm_cell_215_biasadd_readvariableop_resource*
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
while_body_1305994*
condR
while_cond_1305993*K
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
NoOpNoOp%^lstm_cell_215/BiasAdd/ReadVariableOp$^lstm_cell_215/MatMul/ReadVariableOp&^lstm_cell_215/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_215/BiasAdd/ReadVariableOp$lstm_cell_215/BiasAdd/ReadVariableOp2J
#lstm_cell_215/MatMul/ReadVariableOp#lstm_cell_215/MatMul/ReadVariableOp2N
%lstm_cell_215/MatMul_1/ReadVariableOp%lstm_cell_215/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_185_layer_call_fn_1305638

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
E__inference_lstm_185_layer_call_and_return_conditional_losses_1302704o
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
?
while_body_1302836
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_215_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_215_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_215_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_215_matmul_readvariableop_resource:2(F
4while_lstm_cell_215_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_215_biasadd_readvariableop_resource:(??*while/lstm_cell_215/BiasAdd/ReadVariableOp?)while/lstm_cell_215/MatMul/ReadVariableOp?+while/lstm_cell_215/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_215/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_215_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_215/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_215/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_215/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_215_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_215/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_215/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_215/addAddV2$while/lstm_cell_215/MatMul:product:0&while/lstm_cell_215/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_215/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_215_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_215/BiasAddBiasAddwhile/lstm_cell_215/add:z:02while/lstm_cell_215/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_215/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_215/splitSplit,while/lstm_cell_215/split/split_dim:output:0$while/lstm_cell_215/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_215/SigmoidSigmoid"while/lstm_cell_215/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_215/Sigmoid_1Sigmoid"while/lstm_cell_215/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_215/mulMul!while/lstm_cell_215/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_215/ReluRelu"while/lstm_cell_215/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_215/mul_1Mulwhile/lstm_cell_215/Sigmoid:y:0&while/lstm_cell_215/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_215/add_1AddV2while/lstm_cell_215/mul:z:0while/lstm_cell_215/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_215/Sigmoid_2Sigmoid"while/lstm_cell_215/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_215/Relu_1Reluwhile/lstm_cell_215/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_215/mul_2Mul!while/lstm_cell_215/Sigmoid_2:y:0(while/lstm_cell_215/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_215/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_215/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_215/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_215/BiasAdd/ReadVariableOp*^while/lstm_cell_215/MatMul/ReadVariableOp,^while/lstm_cell_215/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_215_biasadd_readvariableop_resource5while_lstm_cell_215_biasadd_readvariableop_resource_0"n
4while_lstm_cell_215_matmul_1_readvariableop_resource6while_lstm_cell_215_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_215_matmul_readvariableop_resource4while_lstm_cell_215_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_215/BiasAdd/ReadVariableOp*while/lstm_cell_215/BiasAdd/ReadVariableOp2V
)while/lstm_cell_215/MatMul/ReadVariableOp)while/lstm_cell_215/MatMul/ReadVariableOp2Z
+while/lstm_cell_215/MatMul_1/ReadVariableOp+while/lstm_cell_215/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_184_layer_call_fn_1305011
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
E__inference_lstm_184_layer_call_and_return_conditional_losses_1301896|
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
*__inference_lstm_183_layer_call_fn_1304384
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
E__inference_lstm_183_layer_call_and_return_conditional_losses_1301355|
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
while_cond_1304904
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1304904___redundant_placeholder05
1while_while_cond_1304904___redundant_placeholder15
1while_while_cond_1304904___redundant_placeholder25
1while_while_cond_1304904___redundant_placeholder3
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
/__inference_lstm_cell_215_layer_call_fn_1306453

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
J__inference_lstm_cell_215_layer_call_and_return_conditional_losses_1301972o
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
?C
?

lstm_183_while_body_1303578.
*lstm_183_while_lstm_183_while_loop_counter4
0lstm_183_while_lstm_183_while_maximum_iterations
lstm_183_while_placeholder 
lstm_183_while_placeholder_1 
lstm_183_while_placeholder_2 
lstm_183_while_placeholder_3-
)lstm_183_while_lstm_183_strided_slice_1_0i
elstm_183_while_tensorarrayv2read_tensorlistgetitem_lstm_183_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_183_while_lstm_cell_213_matmul_readvariableop_resource_0:	?R
?lstm_183_while_lstm_cell_213_matmul_1_readvariableop_resource_0:	d?M
>lstm_183_while_lstm_cell_213_biasadd_readvariableop_resource_0:	?
lstm_183_while_identity
lstm_183_while_identity_1
lstm_183_while_identity_2
lstm_183_while_identity_3
lstm_183_while_identity_4
lstm_183_while_identity_5+
'lstm_183_while_lstm_183_strided_slice_1g
clstm_183_while_tensorarrayv2read_tensorlistgetitem_lstm_183_tensorarrayunstack_tensorlistfromtensorN
;lstm_183_while_lstm_cell_213_matmul_readvariableop_resource:	?P
=lstm_183_while_lstm_cell_213_matmul_1_readvariableop_resource:	d?K
<lstm_183_while_lstm_cell_213_biasadd_readvariableop_resource:	???3lstm_183/while/lstm_cell_213/BiasAdd/ReadVariableOp?2lstm_183/while/lstm_cell_213/MatMul/ReadVariableOp?4lstm_183/while/lstm_cell_213/MatMul_1/ReadVariableOp?
@lstm_183/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_183/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_183_while_tensorarrayv2read_tensorlistgetitem_lstm_183_tensorarrayunstack_tensorlistfromtensor_0lstm_183_while_placeholderIlstm_183/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_183/while/lstm_cell_213/MatMul/ReadVariableOpReadVariableOp=lstm_183_while_lstm_cell_213_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_183/while/lstm_cell_213/MatMulMatMul9lstm_183/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_183/while/lstm_cell_213/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_183/while/lstm_cell_213/MatMul_1/ReadVariableOpReadVariableOp?lstm_183_while_lstm_cell_213_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_183/while/lstm_cell_213/MatMul_1MatMullstm_183_while_placeholder_2<lstm_183/while/lstm_cell_213/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_183/while/lstm_cell_213/addAddV2-lstm_183/while/lstm_cell_213/MatMul:product:0/lstm_183/while/lstm_cell_213/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_183/while/lstm_cell_213/BiasAdd/ReadVariableOpReadVariableOp>lstm_183_while_lstm_cell_213_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_183/while/lstm_cell_213/BiasAddBiasAdd$lstm_183/while/lstm_cell_213/add:z:0;lstm_183/while/lstm_cell_213/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_183/while/lstm_cell_213/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_183/while/lstm_cell_213/splitSplit5lstm_183/while/lstm_cell_213/split/split_dim:output:0-lstm_183/while/lstm_cell_213/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_183/while/lstm_cell_213/SigmoidSigmoid+lstm_183/while/lstm_cell_213/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_183/while/lstm_cell_213/Sigmoid_1Sigmoid+lstm_183/while/lstm_cell_213/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_183/while/lstm_cell_213/mulMul*lstm_183/while/lstm_cell_213/Sigmoid_1:y:0lstm_183_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_183/while/lstm_cell_213/ReluRelu+lstm_183/while/lstm_cell_213/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_183/while/lstm_cell_213/mul_1Mul(lstm_183/while/lstm_cell_213/Sigmoid:y:0/lstm_183/while/lstm_cell_213/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_183/while/lstm_cell_213/add_1AddV2$lstm_183/while/lstm_cell_213/mul:z:0&lstm_183/while/lstm_cell_213/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_183/while/lstm_cell_213/Sigmoid_2Sigmoid+lstm_183/while/lstm_cell_213/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_183/while/lstm_cell_213/Relu_1Relu&lstm_183/while/lstm_cell_213/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_183/while/lstm_cell_213/mul_2Mul*lstm_183/while/lstm_cell_213/Sigmoid_2:y:01lstm_183/while/lstm_cell_213/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_183/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_183_while_placeholder_1lstm_183_while_placeholder&lstm_183/while/lstm_cell_213/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_183/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_183/while/addAddV2lstm_183_while_placeholderlstm_183/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_183/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_183/while/add_1AddV2*lstm_183_while_lstm_183_while_loop_counterlstm_183/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_183/while/IdentityIdentitylstm_183/while/add_1:z:0^lstm_183/while/NoOp*
T0*
_output_shapes
: ?
lstm_183/while/Identity_1Identity0lstm_183_while_lstm_183_while_maximum_iterations^lstm_183/while/NoOp*
T0*
_output_shapes
: t
lstm_183/while/Identity_2Identitylstm_183/while/add:z:0^lstm_183/while/NoOp*
T0*
_output_shapes
: ?
lstm_183/while/Identity_3IdentityClstm_183/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_183/while/NoOp*
T0*
_output_shapes
: ?
lstm_183/while/Identity_4Identity&lstm_183/while/lstm_cell_213/mul_2:z:0^lstm_183/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_183/while/Identity_5Identity&lstm_183/while/lstm_cell_213/add_1:z:0^lstm_183/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_183/while/NoOpNoOp4^lstm_183/while/lstm_cell_213/BiasAdd/ReadVariableOp3^lstm_183/while/lstm_cell_213/MatMul/ReadVariableOp5^lstm_183/while/lstm_cell_213/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_183_while_identity lstm_183/while/Identity:output:0"?
lstm_183_while_identity_1"lstm_183/while/Identity_1:output:0"?
lstm_183_while_identity_2"lstm_183/while/Identity_2:output:0"?
lstm_183_while_identity_3"lstm_183/while/Identity_3:output:0"?
lstm_183_while_identity_4"lstm_183/while/Identity_4:output:0"?
lstm_183_while_identity_5"lstm_183/while/Identity_5:output:0"T
'lstm_183_while_lstm_183_strided_slice_1)lstm_183_while_lstm_183_strided_slice_1_0"~
<lstm_183_while_lstm_cell_213_biasadd_readvariableop_resource>lstm_183_while_lstm_cell_213_biasadd_readvariableop_resource_0"?
=lstm_183_while_lstm_cell_213_matmul_1_readvariableop_resource?lstm_183_while_lstm_cell_213_matmul_1_readvariableop_resource_0"|
;lstm_183_while_lstm_cell_213_matmul_readvariableop_resource=lstm_183_while_lstm_cell_213_matmul_readvariableop_resource_0"?
clstm_183_while_tensorarrayv2read_tensorlistgetitem_lstm_183_tensorarrayunstack_tensorlistfromtensorelstm_183_while_tensorarrayv2read_tensorlistgetitem_lstm_183_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_183/while/lstm_cell_213/BiasAdd/ReadVariableOp3lstm_183/while/lstm_cell_213/BiasAdd/ReadVariableOp2h
2lstm_183/while/lstm_cell_213/MatMul/ReadVariableOp2lstm_183/while/lstm_cell_213/MatMul/ReadVariableOp2l
4lstm_183/while/lstm_cell_213/MatMul_1/ReadVariableOp4lstm_183/while/lstm_cell_213/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1303166
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_213_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_213_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_213_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_213_matmul_readvariableop_resource:	?G
4while_lstm_cell_213_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_213_biasadd_readvariableop_resource:	???*while/lstm_cell_213/BiasAdd/ReadVariableOp?)while/lstm_cell_213/MatMul/ReadVariableOp?+while/lstm_cell_213/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_213/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_213_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_213/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_213/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_213/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_213_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_213/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_213/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_213/addAddV2$while/lstm_cell_213/MatMul:product:0&while/lstm_cell_213/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_213/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_213_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_213/BiasAddBiasAddwhile/lstm_cell_213/add:z:02while/lstm_cell_213/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_213/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_213/splitSplit,while/lstm_cell_213/split/split_dim:output:0$while/lstm_cell_213/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_213/SigmoidSigmoid"while/lstm_cell_213/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_213/Sigmoid_1Sigmoid"while/lstm_cell_213/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_213/mulMul!while/lstm_cell_213/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_213/ReluRelu"while/lstm_cell_213/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_213/mul_1Mulwhile/lstm_cell_213/Sigmoid:y:0&while/lstm_cell_213/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_213/add_1AddV2while/lstm_cell_213/mul:z:0while/lstm_cell_213/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_213/Sigmoid_2Sigmoid"while/lstm_cell_213/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_213/Relu_1Reluwhile/lstm_cell_213/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_213/mul_2Mul!while/lstm_cell_213/Sigmoid_2:y:0(while/lstm_cell_213/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_213/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_213/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_213/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_213/BiasAdd/ReadVariableOp*^while/lstm_cell_213/MatMul/ReadVariableOp,^while/lstm_cell_213/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_213_biasadd_readvariableop_resource5while_lstm_cell_213_biasadd_readvariableop_resource_0"n
4while_lstm_cell_213_matmul_1_readvariableop_resource6while_lstm_cell_213_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_213_matmul_readvariableop_resource4while_lstm_cell_213_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_213/BiasAdd/ReadVariableOp*while/lstm_cell_213/BiasAdd/ReadVariableOp2V
)while/lstm_cell_213/MatMul/ReadVariableOp)while/lstm_cell_213/MatMul/ReadVariableOp2Z
+while/lstm_cell_213/MatMul_1/ReadVariableOp+while/lstm_cell_213/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_sequential_61_layer_call_fn_1303519

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
J__inference_sequential_61_layer_call_and_return_conditional_losses_1303318o
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
*__inference_lstm_183_layer_call_fn_1304417

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
E__inference_lstm_183_layer_call_and_return_conditional_losses_1303250s
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
while_cond_1304618
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1304618___redundant_placeholder05
1while_while_cond_1304618___redundant_placeholder15
1while_while_cond_1304618___redundant_placeholder25
1while_while_cond_1304618___redundant_placeholder3
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
/__inference_lstm_cell_213_layer_call_fn_1306257

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
J__inference_lstm_cell_213_layer_call_and_return_conditional_losses_1301272o
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
while_body_1305521
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_214_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_214_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_214_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_214_matmul_readvariableop_resource:	d?G
4while_lstm_cell_214_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_214_biasadd_readvariableop_resource:	???*while/lstm_cell_214/BiasAdd/ReadVariableOp?)while/lstm_cell_214/MatMul/ReadVariableOp?+while/lstm_cell_214/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_214/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_214_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_214/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_214/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_214/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_214_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_214/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_214/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_214/addAddV2$while/lstm_cell_214/MatMul:product:0&while/lstm_cell_214/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_214/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_214_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_214/BiasAddBiasAddwhile/lstm_cell_214/add:z:02while/lstm_cell_214/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_214/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_214/splitSplit,while/lstm_cell_214/split/split_dim:output:0$while/lstm_cell_214/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_214/SigmoidSigmoid"while/lstm_cell_214/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_214/Sigmoid_1Sigmoid"while/lstm_cell_214/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_214/mulMul!while/lstm_cell_214/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_214/ReluRelu"while/lstm_cell_214/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_214/mul_1Mulwhile/lstm_cell_214/Sigmoid:y:0&while/lstm_cell_214/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_214/add_1AddV2while/lstm_cell_214/mul:z:0while/lstm_cell_214/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_214/Sigmoid_2Sigmoid"while/lstm_cell_214/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_214/Relu_1Reluwhile/lstm_cell_214/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_214/mul_2Mul!while/lstm_cell_214/Sigmoid_2:y:0(while/lstm_cell_214/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_214/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_214/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_214/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_214/BiasAdd/ReadVariableOp*^while/lstm_cell_214/MatMul/ReadVariableOp,^while/lstm_cell_214/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_214_biasadd_readvariableop_resource5while_lstm_cell_214_biasadd_readvariableop_resource_0"n
4while_lstm_cell_214_matmul_1_readvariableop_resource6while_lstm_cell_214_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_214_matmul_readvariableop_resource4while_lstm_cell_214_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_214/BiasAdd/ReadVariableOp*while/lstm_cell_214/BiasAdd/ReadVariableOp2V
)while/lstm_cell_214/MatMul/ReadVariableOp)while/lstm_cell_214/MatMul/ReadVariableOp2Z
+while/lstm_cell_214/MatMul_1/ReadVariableOp+while/lstm_cell_214/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_184_layer_call_and_return_conditional_losses_1303085

inputs?
,lstm_cell_214_matmul_readvariableop_resource:	d?A
.lstm_cell_214_matmul_1_readvariableop_resource:	2?<
-lstm_cell_214_biasadd_readvariableop_resource:	?
identity??$lstm_cell_214/BiasAdd/ReadVariableOp?#lstm_cell_214/MatMul/ReadVariableOp?%lstm_cell_214/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_214/MatMul/ReadVariableOpReadVariableOp,lstm_cell_214_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_214/MatMulMatMulstrided_slice_2:output:0+lstm_cell_214/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_214/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_214_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_214/MatMul_1MatMulzeros:output:0-lstm_cell_214/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_214/addAddV2lstm_cell_214/MatMul:product:0 lstm_cell_214/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_214/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_214_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_214/BiasAddBiasAddlstm_cell_214/add:z:0,lstm_cell_214/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_214/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_214/splitSplit&lstm_cell_214/split/split_dim:output:0lstm_cell_214/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_214/SigmoidSigmoidlstm_cell_214/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_214/Sigmoid_1Sigmoidlstm_cell_214/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_214/mulMullstm_cell_214/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_214/ReluRelulstm_cell_214/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_214/mul_1Mullstm_cell_214/Sigmoid:y:0 lstm_cell_214/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_214/add_1AddV2lstm_cell_214/mul:z:0lstm_cell_214/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_214/Sigmoid_2Sigmoidlstm_cell_214/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_214/Relu_1Relulstm_cell_214/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_214/mul_2Mullstm_cell_214/Sigmoid_2:y:0"lstm_cell_214/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_214_matmul_readvariableop_resource.lstm_cell_214_matmul_1_readvariableop_resource-lstm_cell_214_biasadd_readvariableop_resource*
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
while_body_1303001*
condR
while_cond_1303000*K
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
NoOpNoOp%^lstm_cell_214/BiasAdd/ReadVariableOp$^lstm_cell_214/MatMul/ReadVariableOp&^lstm_cell_214/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_214/BiasAdd/ReadVariableOp$lstm_cell_214/BiasAdd/ReadVariableOp2J
#lstm_cell_214/MatMul/ReadVariableOp#lstm_cell_214/MatMul/ReadVariableOp2N
%lstm_cell_214/MatMul_1/ReadVariableOp%lstm_cell_214/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?C
?

lstm_183_while_body_1304005.
*lstm_183_while_lstm_183_while_loop_counter4
0lstm_183_while_lstm_183_while_maximum_iterations
lstm_183_while_placeholder 
lstm_183_while_placeholder_1 
lstm_183_while_placeholder_2 
lstm_183_while_placeholder_3-
)lstm_183_while_lstm_183_strided_slice_1_0i
elstm_183_while_tensorarrayv2read_tensorlistgetitem_lstm_183_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_183_while_lstm_cell_213_matmul_readvariableop_resource_0:	?R
?lstm_183_while_lstm_cell_213_matmul_1_readvariableop_resource_0:	d?M
>lstm_183_while_lstm_cell_213_biasadd_readvariableop_resource_0:	?
lstm_183_while_identity
lstm_183_while_identity_1
lstm_183_while_identity_2
lstm_183_while_identity_3
lstm_183_while_identity_4
lstm_183_while_identity_5+
'lstm_183_while_lstm_183_strided_slice_1g
clstm_183_while_tensorarrayv2read_tensorlistgetitem_lstm_183_tensorarrayunstack_tensorlistfromtensorN
;lstm_183_while_lstm_cell_213_matmul_readvariableop_resource:	?P
=lstm_183_while_lstm_cell_213_matmul_1_readvariableop_resource:	d?K
<lstm_183_while_lstm_cell_213_biasadd_readvariableop_resource:	???3lstm_183/while/lstm_cell_213/BiasAdd/ReadVariableOp?2lstm_183/while/lstm_cell_213/MatMul/ReadVariableOp?4lstm_183/while/lstm_cell_213/MatMul_1/ReadVariableOp?
@lstm_183/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_183/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_183_while_tensorarrayv2read_tensorlistgetitem_lstm_183_tensorarrayunstack_tensorlistfromtensor_0lstm_183_while_placeholderIlstm_183/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_183/while/lstm_cell_213/MatMul/ReadVariableOpReadVariableOp=lstm_183_while_lstm_cell_213_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_183/while/lstm_cell_213/MatMulMatMul9lstm_183/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_183/while/lstm_cell_213/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_183/while/lstm_cell_213/MatMul_1/ReadVariableOpReadVariableOp?lstm_183_while_lstm_cell_213_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_183/while/lstm_cell_213/MatMul_1MatMullstm_183_while_placeholder_2<lstm_183/while/lstm_cell_213/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_183/while/lstm_cell_213/addAddV2-lstm_183/while/lstm_cell_213/MatMul:product:0/lstm_183/while/lstm_cell_213/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_183/while/lstm_cell_213/BiasAdd/ReadVariableOpReadVariableOp>lstm_183_while_lstm_cell_213_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_183/while/lstm_cell_213/BiasAddBiasAdd$lstm_183/while/lstm_cell_213/add:z:0;lstm_183/while/lstm_cell_213/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_183/while/lstm_cell_213/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_183/while/lstm_cell_213/splitSplit5lstm_183/while/lstm_cell_213/split/split_dim:output:0-lstm_183/while/lstm_cell_213/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_183/while/lstm_cell_213/SigmoidSigmoid+lstm_183/while/lstm_cell_213/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_183/while/lstm_cell_213/Sigmoid_1Sigmoid+lstm_183/while/lstm_cell_213/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_183/while/lstm_cell_213/mulMul*lstm_183/while/lstm_cell_213/Sigmoid_1:y:0lstm_183_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_183/while/lstm_cell_213/ReluRelu+lstm_183/while/lstm_cell_213/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_183/while/lstm_cell_213/mul_1Mul(lstm_183/while/lstm_cell_213/Sigmoid:y:0/lstm_183/while/lstm_cell_213/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_183/while/lstm_cell_213/add_1AddV2$lstm_183/while/lstm_cell_213/mul:z:0&lstm_183/while/lstm_cell_213/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_183/while/lstm_cell_213/Sigmoid_2Sigmoid+lstm_183/while/lstm_cell_213/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_183/while/lstm_cell_213/Relu_1Relu&lstm_183/while/lstm_cell_213/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_183/while/lstm_cell_213/mul_2Mul*lstm_183/while/lstm_cell_213/Sigmoid_2:y:01lstm_183/while/lstm_cell_213/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_183/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_183_while_placeholder_1lstm_183_while_placeholder&lstm_183/while/lstm_cell_213/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_183/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_183/while/addAddV2lstm_183_while_placeholderlstm_183/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_183/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_183/while/add_1AddV2*lstm_183_while_lstm_183_while_loop_counterlstm_183/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_183/while/IdentityIdentitylstm_183/while/add_1:z:0^lstm_183/while/NoOp*
T0*
_output_shapes
: ?
lstm_183/while/Identity_1Identity0lstm_183_while_lstm_183_while_maximum_iterations^lstm_183/while/NoOp*
T0*
_output_shapes
: t
lstm_183/while/Identity_2Identitylstm_183/while/add:z:0^lstm_183/while/NoOp*
T0*
_output_shapes
: ?
lstm_183/while/Identity_3IdentityClstm_183/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_183/while/NoOp*
T0*
_output_shapes
: ?
lstm_183/while/Identity_4Identity&lstm_183/while/lstm_cell_213/mul_2:z:0^lstm_183/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_183/while/Identity_5Identity&lstm_183/while/lstm_cell_213/add_1:z:0^lstm_183/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_183/while/NoOpNoOp4^lstm_183/while/lstm_cell_213/BiasAdd/ReadVariableOp3^lstm_183/while/lstm_cell_213/MatMul/ReadVariableOp5^lstm_183/while/lstm_cell_213/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_183_while_identity lstm_183/while/Identity:output:0"?
lstm_183_while_identity_1"lstm_183/while/Identity_1:output:0"?
lstm_183_while_identity_2"lstm_183/while/Identity_2:output:0"?
lstm_183_while_identity_3"lstm_183/while/Identity_3:output:0"?
lstm_183_while_identity_4"lstm_183/while/Identity_4:output:0"?
lstm_183_while_identity_5"lstm_183/while/Identity_5:output:0"T
'lstm_183_while_lstm_183_strided_slice_1)lstm_183_while_lstm_183_strided_slice_1_0"~
<lstm_183_while_lstm_cell_213_biasadd_readvariableop_resource>lstm_183_while_lstm_cell_213_biasadd_readvariableop_resource_0"?
=lstm_183_while_lstm_cell_213_matmul_1_readvariableop_resource?lstm_183_while_lstm_cell_213_matmul_1_readvariableop_resource_0"|
;lstm_183_while_lstm_cell_213_matmul_readvariableop_resource=lstm_183_while_lstm_cell_213_matmul_readvariableop_resource_0"?
clstm_183_while_tensorarrayv2read_tensorlistgetitem_lstm_183_tensorarrayunstack_tensorlistfromtensorelstm_183_while_tensorarrayv2read_tensorlistgetitem_lstm_183_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_183/while/lstm_cell_213/BiasAdd/ReadVariableOp3lstm_183/while/lstm_cell_213/BiasAdd/ReadVariableOp2h
2lstm_183/while/lstm_cell_213/MatMul/ReadVariableOp2lstm_183/while/lstm_cell_213/MatMul/ReadVariableOp2l
4lstm_183/while/lstm_cell_213/MatMul_1/ReadVariableOp4lstm_183/while/lstm_cell_213/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1305850
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1305850___redundant_placeholder05
1while_while_cond_1305850___redundant_placeholder15
1while_while_cond_1305850___redundant_placeholder25
1while_while_cond_1305850___redundant_placeholder3
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
)sequential_61_lstm_183_while_body_1300837J
Fsequential_61_lstm_183_while_sequential_61_lstm_183_while_loop_counterP
Lsequential_61_lstm_183_while_sequential_61_lstm_183_while_maximum_iterations,
(sequential_61_lstm_183_while_placeholder.
*sequential_61_lstm_183_while_placeholder_1.
*sequential_61_lstm_183_while_placeholder_2.
*sequential_61_lstm_183_while_placeholder_3I
Esequential_61_lstm_183_while_sequential_61_lstm_183_strided_slice_1_0?
?sequential_61_lstm_183_while_tensorarrayv2read_tensorlistgetitem_sequential_61_lstm_183_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_61_lstm_183_while_lstm_cell_213_matmul_readvariableop_resource_0:	?`
Msequential_61_lstm_183_while_lstm_cell_213_matmul_1_readvariableop_resource_0:	d?[
Lsequential_61_lstm_183_while_lstm_cell_213_biasadd_readvariableop_resource_0:	?)
%sequential_61_lstm_183_while_identity+
'sequential_61_lstm_183_while_identity_1+
'sequential_61_lstm_183_while_identity_2+
'sequential_61_lstm_183_while_identity_3+
'sequential_61_lstm_183_while_identity_4+
'sequential_61_lstm_183_while_identity_5G
Csequential_61_lstm_183_while_sequential_61_lstm_183_strided_slice_1?
sequential_61_lstm_183_while_tensorarrayv2read_tensorlistgetitem_sequential_61_lstm_183_tensorarrayunstack_tensorlistfromtensor\
Isequential_61_lstm_183_while_lstm_cell_213_matmul_readvariableop_resource:	?^
Ksequential_61_lstm_183_while_lstm_cell_213_matmul_1_readvariableop_resource:	d?Y
Jsequential_61_lstm_183_while_lstm_cell_213_biasadd_readvariableop_resource:	???Asequential_61/lstm_183/while/lstm_cell_213/BiasAdd/ReadVariableOp?@sequential_61/lstm_183/while/lstm_cell_213/MatMul/ReadVariableOp?Bsequential_61/lstm_183/while/lstm_cell_213/MatMul_1/ReadVariableOp?
Nsequential_61/lstm_183/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
@sequential_61/lstm_183/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_61_lstm_183_while_tensorarrayv2read_tensorlistgetitem_sequential_61_lstm_183_tensorarrayunstack_tensorlistfromtensor_0(sequential_61_lstm_183_while_placeholderWsequential_61/lstm_183/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
@sequential_61/lstm_183/while/lstm_cell_213/MatMul/ReadVariableOpReadVariableOpKsequential_61_lstm_183_while_lstm_cell_213_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
1sequential_61/lstm_183/while/lstm_cell_213/MatMulMatMulGsequential_61/lstm_183/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_61/lstm_183/while/lstm_cell_213/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_61/lstm_183/while/lstm_cell_213/MatMul_1/ReadVariableOpReadVariableOpMsequential_61_lstm_183_while_lstm_cell_213_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
3sequential_61/lstm_183/while/lstm_cell_213/MatMul_1MatMul*sequential_61_lstm_183_while_placeholder_2Jsequential_61/lstm_183/while/lstm_cell_213/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_61/lstm_183/while/lstm_cell_213/addAddV2;sequential_61/lstm_183/while/lstm_cell_213/MatMul:product:0=sequential_61/lstm_183/while/lstm_cell_213/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_61/lstm_183/while/lstm_cell_213/BiasAdd/ReadVariableOpReadVariableOpLsequential_61_lstm_183_while_lstm_cell_213_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_61/lstm_183/while/lstm_cell_213/BiasAddBiasAdd2sequential_61/lstm_183/while/lstm_cell_213/add:z:0Isequential_61/lstm_183/while/lstm_cell_213/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_61/lstm_183/while/lstm_cell_213/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_61/lstm_183/while/lstm_cell_213/splitSplitCsequential_61/lstm_183/while/lstm_cell_213/split/split_dim:output:0;sequential_61/lstm_183/while/lstm_cell_213/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
2sequential_61/lstm_183/while/lstm_cell_213/SigmoidSigmoid9sequential_61/lstm_183/while/lstm_cell_213/split:output:0*
T0*'
_output_shapes
:?????????d?
4sequential_61/lstm_183/while/lstm_cell_213/Sigmoid_1Sigmoid9sequential_61/lstm_183/while/lstm_cell_213/split:output:1*
T0*'
_output_shapes
:?????????d?
.sequential_61/lstm_183/while/lstm_cell_213/mulMul8sequential_61/lstm_183/while/lstm_cell_213/Sigmoid_1:y:0*sequential_61_lstm_183_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
/sequential_61/lstm_183/while/lstm_cell_213/ReluRelu9sequential_61/lstm_183/while/lstm_cell_213/split:output:2*
T0*'
_output_shapes
:?????????d?
0sequential_61/lstm_183/while/lstm_cell_213/mul_1Mul6sequential_61/lstm_183/while/lstm_cell_213/Sigmoid:y:0=sequential_61/lstm_183/while/lstm_cell_213/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
0sequential_61/lstm_183/while/lstm_cell_213/add_1AddV22sequential_61/lstm_183/while/lstm_cell_213/mul:z:04sequential_61/lstm_183/while/lstm_cell_213/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
4sequential_61/lstm_183/while/lstm_cell_213/Sigmoid_2Sigmoid9sequential_61/lstm_183/while/lstm_cell_213/split:output:3*
T0*'
_output_shapes
:?????????d?
1sequential_61/lstm_183/while/lstm_cell_213/Relu_1Relu4sequential_61/lstm_183/while/lstm_cell_213/add_1:z:0*
T0*'
_output_shapes
:?????????d?
0sequential_61/lstm_183/while/lstm_cell_213/mul_2Mul8sequential_61/lstm_183/while/lstm_cell_213/Sigmoid_2:y:0?sequential_61/lstm_183/while/lstm_cell_213/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Asequential_61/lstm_183/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_61_lstm_183_while_placeholder_1(sequential_61_lstm_183_while_placeholder4sequential_61/lstm_183/while/lstm_cell_213/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_61/lstm_183/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_61/lstm_183/while/addAddV2(sequential_61_lstm_183_while_placeholder+sequential_61/lstm_183/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_61/lstm_183/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_61/lstm_183/while/add_1AddV2Fsequential_61_lstm_183_while_sequential_61_lstm_183_while_loop_counter-sequential_61/lstm_183/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_61/lstm_183/while/IdentityIdentity&sequential_61/lstm_183/while/add_1:z:0"^sequential_61/lstm_183/while/NoOp*
T0*
_output_shapes
: ?
'sequential_61/lstm_183/while/Identity_1IdentityLsequential_61_lstm_183_while_sequential_61_lstm_183_while_maximum_iterations"^sequential_61/lstm_183/while/NoOp*
T0*
_output_shapes
: ?
'sequential_61/lstm_183/while/Identity_2Identity$sequential_61/lstm_183/while/add:z:0"^sequential_61/lstm_183/while/NoOp*
T0*
_output_shapes
: ?
'sequential_61/lstm_183/while/Identity_3IdentityQsequential_61/lstm_183/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_61/lstm_183/while/NoOp*
T0*
_output_shapes
: ?
'sequential_61/lstm_183/while/Identity_4Identity4sequential_61/lstm_183/while/lstm_cell_213/mul_2:z:0"^sequential_61/lstm_183/while/NoOp*
T0*'
_output_shapes
:?????????d?
'sequential_61/lstm_183/while/Identity_5Identity4sequential_61/lstm_183/while/lstm_cell_213/add_1:z:0"^sequential_61/lstm_183/while/NoOp*
T0*'
_output_shapes
:?????????d?
!sequential_61/lstm_183/while/NoOpNoOpB^sequential_61/lstm_183/while/lstm_cell_213/BiasAdd/ReadVariableOpA^sequential_61/lstm_183/while/lstm_cell_213/MatMul/ReadVariableOpC^sequential_61/lstm_183/while/lstm_cell_213/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_61_lstm_183_while_identity.sequential_61/lstm_183/while/Identity:output:0"[
'sequential_61_lstm_183_while_identity_10sequential_61/lstm_183/while/Identity_1:output:0"[
'sequential_61_lstm_183_while_identity_20sequential_61/lstm_183/while/Identity_2:output:0"[
'sequential_61_lstm_183_while_identity_30sequential_61/lstm_183/while/Identity_3:output:0"[
'sequential_61_lstm_183_while_identity_40sequential_61/lstm_183/while/Identity_4:output:0"[
'sequential_61_lstm_183_while_identity_50sequential_61/lstm_183/while/Identity_5:output:0"?
Jsequential_61_lstm_183_while_lstm_cell_213_biasadd_readvariableop_resourceLsequential_61_lstm_183_while_lstm_cell_213_biasadd_readvariableop_resource_0"?
Ksequential_61_lstm_183_while_lstm_cell_213_matmul_1_readvariableop_resourceMsequential_61_lstm_183_while_lstm_cell_213_matmul_1_readvariableop_resource_0"?
Isequential_61_lstm_183_while_lstm_cell_213_matmul_readvariableop_resourceKsequential_61_lstm_183_while_lstm_cell_213_matmul_readvariableop_resource_0"?
Csequential_61_lstm_183_while_sequential_61_lstm_183_strided_slice_1Esequential_61_lstm_183_while_sequential_61_lstm_183_strided_slice_1_0"?
sequential_61_lstm_183_while_tensorarrayv2read_tensorlistgetitem_sequential_61_lstm_183_tensorarrayunstack_tensorlistfromtensor?sequential_61_lstm_183_while_tensorarrayv2read_tensorlistgetitem_sequential_61_lstm_183_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Asequential_61/lstm_183/while/lstm_cell_213/BiasAdd/ReadVariableOpAsequential_61/lstm_183/while/lstm_cell_213/BiasAdd/ReadVariableOp2?
@sequential_61/lstm_183/while/lstm_cell_213/MatMul/ReadVariableOp@sequential_61/lstm_183/while/lstm_cell_213/MatMul/ReadVariableOp2?
Bsequential_61/lstm_183/while/lstm_cell_213/MatMul_1/ReadVariableOpBsequential_61/lstm_183/while/lstm_cell_213/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1303165
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1303165___redundant_placeholder05
1while_while_cond_1303165___redundant_placeholder15
1while_while_cond_1303165___redundant_placeholder25
1while_while_cond_1303165___redundant_placeholder3
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
lstm_185_while_cond_1304282.
*lstm_185_while_lstm_185_while_loop_counter4
0lstm_185_while_lstm_185_while_maximum_iterations
lstm_185_while_placeholder 
lstm_185_while_placeholder_1 
lstm_185_while_placeholder_2 
lstm_185_while_placeholder_30
,lstm_185_while_less_lstm_185_strided_slice_1G
Clstm_185_while_lstm_185_while_cond_1304282___redundant_placeholder0G
Clstm_185_while_lstm_185_while_cond_1304282___redundant_placeholder1G
Clstm_185_while_lstm_185_while_cond_1304282___redundant_placeholder2G
Clstm_185_while_lstm_185_while_cond_1304282___redundant_placeholder3
lstm_185_while_identity
?
lstm_185/while/LessLesslstm_185_while_placeholder,lstm_185_while_less_lstm_185_strided_slice_1*
T0*
_output_shapes
: ]
lstm_185/while/IdentityIdentitylstm_185/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_185_while_identity lstm_185/while/Identity:output:0*(
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
)sequential_61_lstm_185_while_body_1301115J
Fsequential_61_lstm_185_while_sequential_61_lstm_185_while_loop_counterP
Lsequential_61_lstm_185_while_sequential_61_lstm_185_while_maximum_iterations,
(sequential_61_lstm_185_while_placeholder.
*sequential_61_lstm_185_while_placeholder_1.
*sequential_61_lstm_185_while_placeholder_2.
*sequential_61_lstm_185_while_placeholder_3I
Esequential_61_lstm_185_while_sequential_61_lstm_185_strided_slice_1_0?
?sequential_61_lstm_185_while_tensorarrayv2read_tensorlistgetitem_sequential_61_lstm_185_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_61_lstm_185_while_lstm_cell_215_matmul_readvariableop_resource_0:2(_
Msequential_61_lstm_185_while_lstm_cell_215_matmul_1_readvariableop_resource_0:
(Z
Lsequential_61_lstm_185_while_lstm_cell_215_biasadd_readvariableop_resource_0:()
%sequential_61_lstm_185_while_identity+
'sequential_61_lstm_185_while_identity_1+
'sequential_61_lstm_185_while_identity_2+
'sequential_61_lstm_185_while_identity_3+
'sequential_61_lstm_185_while_identity_4+
'sequential_61_lstm_185_while_identity_5G
Csequential_61_lstm_185_while_sequential_61_lstm_185_strided_slice_1?
sequential_61_lstm_185_while_tensorarrayv2read_tensorlistgetitem_sequential_61_lstm_185_tensorarrayunstack_tensorlistfromtensor[
Isequential_61_lstm_185_while_lstm_cell_215_matmul_readvariableop_resource:2(]
Ksequential_61_lstm_185_while_lstm_cell_215_matmul_1_readvariableop_resource:
(X
Jsequential_61_lstm_185_while_lstm_cell_215_biasadd_readvariableop_resource:(??Asequential_61/lstm_185/while/lstm_cell_215/BiasAdd/ReadVariableOp?@sequential_61/lstm_185/while/lstm_cell_215/MatMul/ReadVariableOp?Bsequential_61/lstm_185/while/lstm_cell_215/MatMul_1/ReadVariableOp?
Nsequential_61/lstm_185/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
@sequential_61/lstm_185/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_61_lstm_185_while_tensorarrayv2read_tensorlistgetitem_sequential_61_lstm_185_tensorarrayunstack_tensorlistfromtensor_0(sequential_61_lstm_185_while_placeholderWsequential_61/lstm_185/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
@sequential_61/lstm_185/while/lstm_cell_215/MatMul/ReadVariableOpReadVariableOpKsequential_61_lstm_185_while_lstm_cell_215_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
1sequential_61/lstm_185/while/lstm_cell_215/MatMulMatMulGsequential_61/lstm_185/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_61/lstm_185/while/lstm_cell_215/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Bsequential_61/lstm_185/while/lstm_cell_215/MatMul_1/ReadVariableOpReadVariableOpMsequential_61_lstm_185_while_lstm_cell_215_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
3sequential_61/lstm_185/while/lstm_cell_215/MatMul_1MatMul*sequential_61_lstm_185_while_placeholder_2Jsequential_61/lstm_185/while/lstm_cell_215/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.sequential_61/lstm_185/while/lstm_cell_215/addAddV2;sequential_61/lstm_185/while/lstm_cell_215/MatMul:product:0=sequential_61/lstm_185/while/lstm_cell_215/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Asequential_61/lstm_185/while/lstm_cell_215/BiasAdd/ReadVariableOpReadVariableOpLsequential_61_lstm_185_while_lstm_cell_215_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
2sequential_61/lstm_185/while/lstm_cell_215/BiasAddBiasAdd2sequential_61/lstm_185/while/lstm_cell_215/add:z:0Isequential_61/lstm_185/while/lstm_cell_215/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(|
:sequential_61/lstm_185/while/lstm_cell_215/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_61/lstm_185/while/lstm_cell_215/splitSplitCsequential_61/lstm_185/while/lstm_cell_215/split/split_dim:output:0;sequential_61/lstm_185/while/lstm_cell_215/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
2sequential_61/lstm_185/while/lstm_cell_215/SigmoidSigmoid9sequential_61/lstm_185/while/lstm_cell_215/split:output:0*
T0*'
_output_shapes
:?????????
?
4sequential_61/lstm_185/while/lstm_cell_215/Sigmoid_1Sigmoid9sequential_61/lstm_185/while/lstm_cell_215/split:output:1*
T0*'
_output_shapes
:?????????
?
.sequential_61/lstm_185/while/lstm_cell_215/mulMul8sequential_61/lstm_185/while/lstm_cell_215/Sigmoid_1:y:0*sequential_61_lstm_185_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
/sequential_61/lstm_185/while/lstm_cell_215/ReluRelu9sequential_61/lstm_185/while/lstm_cell_215/split:output:2*
T0*'
_output_shapes
:?????????
?
0sequential_61/lstm_185/while/lstm_cell_215/mul_1Mul6sequential_61/lstm_185/while/lstm_cell_215/Sigmoid:y:0=sequential_61/lstm_185/while/lstm_cell_215/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
0sequential_61/lstm_185/while/lstm_cell_215/add_1AddV22sequential_61/lstm_185/while/lstm_cell_215/mul:z:04sequential_61/lstm_185/while/lstm_cell_215/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
4sequential_61/lstm_185/while/lstm_cell_215/Sigmoid_2Sigmoid9sequential_61/lstm_185/while/lstm_cell_215/split:output:3*
T0*'
_output_shapes
:?????????
?
1sequential_61/lstm_185/while/lstm_cell_215/Relu_1Relu4sequential_61/lstm_185/while/lstm_cell_215/add_1:z:0*
T0*'
_output_shapes
:?????????
?
0sequential_61/lstm_185/while/lstm_cell_215/mul_2Mul8sequential_61/lstm_185/while/lstm_cell_215/Sigmoid_2:y:0?sequential_61/lstm_185/while/lstm_cell_215/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Asequential_61/lstm_185/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_61_lstm_185_while_placeholder_1(sequential_61_lstm_185_while_placeholder4sequential_61/lstm_185/while/lstm_cell_215/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_61/lstm_185/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_61/lstm_185/while/addAddV2(sequential_61_lstm_185_while_placeholder+sequential_61/lstm_185/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_61/lstm_185/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_61/lstm_185/while/add_1AddV2Fsequential_61_lstm_185_while_sequential_61_lstm_185_while_loop_counter-sequential_61/lstm_185/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_61/lstm_185/while/IdentityIdentity&sequential_61/lstm_185/while/add_1:z:0"^sequential_61/lstm_185/while/NoOp*
T0*
_output_shapes
: ?
'sequential_61/lstm_185/while/Identity_1IdentityLsequential_61_lstm_185_while_sequential_61_lstm_185_while_maximum_iterations"^sequential_61/lstm_185/while/NoOp*
T0*
_output_shapes
: ?
'sequential_61/lstm_185/while/Identity_2Identity$sequential_61/lstm_185/while/add:z:0"^sequential_61/lstm_185/while/NoOp*
T0*
_output_shapes
: ?
'sequential_61/lstm_185/while/Identity_3IdentityQsequential_61/lstm_185/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_61/lstm_185/while/NoOp*
T0*
_output_shapes
: ?
'sequential_61/lstm_185/while/Identity_4Identity4sequential_61/lstm_185/while/lstm_cell_215/mul_2:z:0"^sequential_61/lstm_185/while/NoOp*
T0*'
_output_shapes
:?????????
?
'sequential_61/lstm_185/while/Identity_5Identity4sequential_61/lstm_185/while/lstm_cell_215/add_1:z:0"^sequential_61/lstm_185/while/NoOp*
T0*'
_output_shapes
:?????????
?
!sequential_61/lstm_185/while/NoOpNoOpB^sequential_61/lstm_185/while/lstm_cell_215/BiasAdd/ReadVariableOpA^sequential_61/lstm_185/while/lstm_cell_215/MatMul/ReadVariableOpC^sequential_61/lstm_185/while/lstm_cell_215/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_61_lstm_185_while_identity.sequential_61/lstm_185/while/Identity:output:0"[
'sequential_61_lstm_185_while_identity_10sequential_61/lstm_185/while/Identity_1:output:0"[
'sequential_61_lstm_185_while_identity_20sequential_61/lstm_185/while/Identity_2:output:0"[
'sequential_61_lstm_185_while_identity_30sequential_61/lstm_185/while/Identity_3:output:0"[
'sequential_61_lstm_185_while_identity_40sequential_61/lstm_185/while/Identity_4:output:0"[
'sequential_61_lstm_185_while_identity_50sequential_61/lstm_185/while/Identity_5:output:0"?
Jsequential_61_lstm_185_while_lstm_cell_215_biasadd_readvariableop_resourceLsequential_61_lstm_185_while_lstm_cell_215_biasadd_readvariableop_resource_0"?
Ksequential_61_lstm_185_while_lstm_cell_215_matmul_1_readvariableop_resourceMsequential_61_lstm_185_while_lstm_cell_215_matmul_1_readvariableop_resource_0"?
Isequential_61_lstm_185_while_lstm_cell_215_matmul_readvariableop_resourceKsequential_61_lstm_185_while_lstm_cell_215_matmul_readvariableop_resource_0"?
Csequential_61_lstm_185_while_sequential_61_lstm_185_strided_slice_1Esequential_61_lstm_185_while_sequential_61_lstm_185_strided_slice_1_0"?
sequential_61_lstm_185_while_tensorarrayv2read_tensorlistgetitem_sequential_61_lstm_185_tensorarrayunstack_tensorlistfromtensor?sequential_61_lstm_185_while_tensorarrayv2read_tensorlistgetitem_sequential_61_lstm_185_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Asequential_61/lstm_185/while/lstm_cell_215/BiasAdd/ReadVariableOpAsequential_61/lstm_185/while/lstm_cell_215/BiasAdd/ReadVariableOp2?
@sequential_61/lstm_185/while/lstm_cell_215/MatMul/ReadVariableOp@sequential_61/lstm_185/while/lstm_cell_215/MatMul/ReadVariableOp2?
Bsequential_61/lstm_185/while/lstm_cell_215/MatMul_1/ReadVariableOpBsequential_61/lstm_185/while/lstm_cell_215/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_183_layer_call_fn_1304406

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
E__inference_lstm_183_layer_call_and_return_conditional_losses_1302404s
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
%__inference_signature_wrapper_1303465
lstm_183_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_183_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_1301205o
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
_user_specified_namelstm_183_input
?K
?
E__inference_lstm_183_layer_call_and_return_conditional_losses_1304703
inputs_0?
,lstm_cell_213_matmul_readvariableop_resource:	?A
.lstm_cell_213_matmul_1_readvariableop_resource:	d?<
-lstm_cell_213_biasadd_readvariableop_resource:	?
identity??$lstm_cell_213/BiasAdd/ReadVariableOp?#lstm_cell_213/MatMul/ReadVariableOp?%lstm_cell_213/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_213/MatMul/ReadVariableOpReadVariableOp,lstm_cell_213_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_213/MatMulMatMulstrided_slice_2:output:0+lstm_cell_213/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_213/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_213_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_213/MatMul_1MatMulzeros:output:0-lstm_cell_213/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_213/addAddV2lstm_cell_213/MatMul:product:0 lstm_cell_213/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_213/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_213_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_213/BiasAddBiasAddlstm_cell_213/add:z:0,lstm_cell_213/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_213/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_213/splitSplit&lstm_cell_213/split/split_dim:output:0lstm_cell_213/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_213/SigmoidSigmoidlstm_cell_213/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_213/Sigmoid_1Sigmoidlstm_cell_213/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_213/mulMullstm_cell_213/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_213/ReluRelulstm_cell_213/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_213/mul_1Mullstm_cell_213/Sigmoid:y:0 lstm_cell_213/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_213/add_1AddV2lstm_cell_213/mul:z:0lstm_cell_213/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_213/Sigmoid_2Sigmoidlstm_cell_213/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_213/Relu_1Relulstm_cell_213/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_213/mul_2Mullstm_cell_213/Sigmoid_2:y:0"lstm_cell_213/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_213_matmul_readvariableop_resource.lstm_cell_213_matmul_1_readvariableop_resource-lstm_cell_213_biasadd_readvariableop_resource*
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
while_body_1304619*
condR
while_cond_1304618*K
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
NoOpNoOp%^lstm_cell_213/BiasAdd/ReadVariableOp$^lstm_cell_213/MatMul/ReadVariableOp&^lstm_cell_213/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_213/BiasAdd/ReadVariableOp$lstm_cell_213/BiasAdd/ReadVariableOp2J
#lstm_cell_213/MatMul/ReadVariableOp#lstm_cell_213/MatMul/ReadVariableOp2N
%lstm_cell_213/MatMul_1/ReadVariableOp%lstm_cell_213/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?K
?
E__inference_lstm_184_layer_call_and_return_conditional_losses_1305319
inputs_0?
,lstm_cell_214_matmul_readvariableop_resource:	d?A
.lstm_cell_214_matmul_1_readvariableop_resource:	2?<
-lstm_cell_214_biasadd_readvariableop_resource:	?
identity??$lstm_cell_214/BiasAdd/ReadVariableOp?#lstm_cell_214/MatMul/ReadVariableOp?%lstm_cell_214/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_214/MatMul/ReadVariableOpReadVariableOp,lstm_cell_214_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_214/MatMulMatMulstrided_slice_2:output:0+lstm_cell_214/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_214/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_214_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_214/MatMul_1MatMulzeros:output:0-lstm_cell_214/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_214/addAddV2lstm_cell_214/MatMul:product:0 lstm_cell_214/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_214/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_214_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_214/BiasAddBiasAddlstm_cell_214/add:z:0,lstm_cell_214/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_214/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_214/splitSplit&lstm_cell_214/split/split_dim:output:0lstm_cell_214/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_214/SigmoidSigmoidlstm_cell_214/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_214/Sigmoid_1Sigmoidlstm_cell_214/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_214/mulMullstm_cell_214/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_214/ReluRelulstm_cell_214/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_214/mul_1Mullstm_cell_214/Sigmoid:y:0 lstm_cell_214/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_214/add_1AddV2lstm_cell_214/mul:z:0lstm_cell_214/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_214/Sigmoid_2Sigmoidlstm_cell_214/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_214/Relu_1Relulstm_cell_214/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_214/mul_2Mullstm_cell_214/Sigmoid_2:y:0"lstm_cell_214/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_214_matmul_readvariableop_resource.lstm_cell_214_matmul_1_readvariableop_resource-lstm_cell_214_biasadd_readvariableop_resource*
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
while_body_1305235*
condR
while_cond_1305234*K
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
NoOpNoOp%^lstm_cell_214/BiasAdd/ReadVariableOp$^lstm_cell_214/MatMul/ReadVariableOp&^lstm_cell_214/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_214/BiasAdd/ReadVariableOp$lstm_cell_214/BiasAdd/ReadVariableOp2J
#lstm_cell_214/MatMul/ReadVariableOp#lstm_cell_214/MatMul/ReadVariableOp2N
%lstm_cell_214/MatMul_1/ReadVariableOp%lstm_cell_214/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_213_layer_call_fn_1306274

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
J__inference_lstm_cell_213_layer_call_and_return_conditional_losses_1301418o
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

lstm_184_while_body_1304144.
*lstm_184_while_lstm_184_while_loop_counter4
0lstm_184_while_lstm_184_while_maximum_iterations
lstm_184_while_placeholder 
lstm_184_while_placeholder_1 
lstm_184_while_placeholder_2 
lstm_184_while_placeholder_3-
)lstm_184_while_lstm_184_strided_slice_1_0i
elstm_184_while_tensorarrayv2read_tensorlistgetitem_lstm_184_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_184_while_lstm_cell_214_matmul_readvariableop_resource_0:	d?R
?lstm_184_while_lstm_cell_214_matmul_1_readvariableop_resource_0:	2?M
>lstm_184_while_lstm_cell_214_biasadd_readvariableop_resource_0:	?
lstm_184_while_identity
lstm_184_while_identity_1
lstm_184_while_identity_2
lstm_184_while_identity_3
lstm_184_while_identity_4
lstm_184_while_identity_5+
'lstm_184_while_lstm_184_strided_slice_1g
clstm_184_while_tensorarrayv2read_tensorlistgetitem_lstm_184_tensorarrayunstack_tensorlistfromtensorN
;lstm_184_while_lstm_cell_214_matmul_readvariableop_resource:	d?P
=lstm_184_while_lstm_cell_214_matmul_1_readvariableop_resource:	2?K
<lstm_184_while_lstm_cell_214_biasadd_readvariableop_resource:	???3lstm_184/while/lstm_cell_214/BiasAdd/ReadVariableOp?2lstm_184/while/lstm_cell_214/MatMul/ReadVariableOp?4lstm_184/while/lstm_cell_214/MatMul_1/ReadVariableOp?
@lstm_184/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_184/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_184_while_tensorarrayv2read_tensorlistgetitem_lstm_184_tensorarrayunstack_tensorlistfromtensor_0lstm_184_while_placeholderIlstm_184/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_184/while/lstm_cell_214/MatMul/ReadVariableOpReadVariableOp=lstm_184_while_lstm_cell_214_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_184/while/lstm_cell_214/MatMulMatMul9lstm_184/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_184/while/lstm_cell_214/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_184/while/lstm_cell_214/MatMul_1/ReadVariableOpReadVariableOp?lstm_184_while_lstm_cell_214_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_184/while/lstm_cell_214/MatMul_1MatMullstm_184_while_placeholder_2<lstm_184/while/lstm_cell_214/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_184/while/lstm_cell_214/addAddV2-lstm_184/while/lstm_cell_214/MatMul:product:0/lstm_184/while/lstm_cell_214/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_184/while/lstm_cell_214/BiasAdd/ReadVariableOpReadVariableOp>lstm_184_while_lstm_cell_214_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_184/while/lstm_cell_214/BiasAddBiasAdd$lstm_184/while/lstm_cell_214/add:z:0;lstm_184/while/lstm_cell_214/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_184/while/lstm_cell_214/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_184/while/lstm_cell_214/splitSplit5lstm_184/while/lstm_cell_214/split/split_dim:output:0-lstm_184/while/lstm_cell_214/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_184/while/lstm_cell_214/SigmoidSigmoid+lstm_184/while/lstm_cell_214/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_184/while/lstm_cell_214/Sigmoid_1Sigmoid+lstm_184/while/lstm_cell_214/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_184/while/lstm_cell_214/mulMul*lstm_184/while/lstm_cell_214/Sigmoid_1:y:0lstm_184_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_184/while/lstm_cell_214/ReluRelu+lstm_184/while/lstm_cell_214/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_184/while/lstm_cell_214/mul_1Mul(lstm_184/while/lstm_cell_214/Sigmoid:y:0/lstm_184/while/lstm_cell_214/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_184/while/lstm_cell_214/add_1AddV2$lstm_184/while/lstm_cell_214/mul:z:0&lstm_184/while/lstm_cell_214/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_184/while/lstm_cell_214/Sigmoid_2Sigmoid+lstm_184/while/lstm_cell_214/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_184/while/lstm_cell_214/Relu_1Relu&lstm_184/while/lstm_cell_214/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_184/while/lstm_cell_214/mul_2Mul*lstm_184/while/lstm_cell_214/Sigmoid_2:y:01lstm_184/while/lstm_cell_214/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_184/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_184_while_placeholder_1lstm_184_while_placeholder&lstm_184/while/lstm_cell_214/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_184/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_184/while/addAddV2lstm_184_while_placeholderlstm_184/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_184/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_184/while/add_1AddV2*lstm_184_while_lstm_184_while_loop_counterlstm_184/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_184/while/IdentityIdentitylstm_184/while/add_1:z:0^lstm_184/while/NoOp*
T0*
_output_shapes
: ?
lstm_184/while/Identity_1Identity0lstm_184_while_lstm_184_while_maximum_iterations^lstm_184/while/NoOp*
T0*
_output_shapes
: t
lstm_184/while/Identity_2Identitylstm_184/while/add:z:0^lstm_184/while/NoOp*
T0*
_output_shapes
: ?
lstm_184/while/Identity_3IdentityClstm_184/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_184/while/NoOp*
T0*
_output_shapes
: ?
lstm_184/while/Identity_4Identity&lstm_184/while/lstm_cell_214/mul_2:z:0^lstm_184/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_184/while/Identity_5Identity&lstm_184/while/lstm_cell_214/add_1:z:0^lstm_184/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_184/while/NoOpNoOp4^lstm_184/while/lstm_cell_214/BiasAdd/ReadVariableOp3^lstm_184/while/lstm_cell_214/MatMul/ReadVariableOp5^lstm_184/while/lstm_cell_214/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_184_while_identity lstm_184/while/Identity:output:0"?
lstm_184_while_identity_1"lstm_184/while/Identity_1:output:0"?
lstm_184_while_identity_2"lstm_184/while/Identity_2:output:0"?
lstm_184_while_identity_3"lstm_184/while/Identity_3:output:0"?
lstm_184_while_identity_4"lstm_184/while/Identity_4:output:0"?
lstm_184_while_identity_5"lstm_184/while/Identity_5:output:0"T
'lstm_184_while_lstm_184_strided_slice_1)lstm_184_while_lstm_184_strided_slice_1_0"~
<lstm_184_while_lstm_cell_214_biasadd_readvariableop_resource>lstm_184_while_lstm_cell_214_biasadd_readvariableop_resource_0"?
=lstm_184_while_lstm_cell_214_matmul_1_readvariableop_resource?lstm_184_while_lstm_cell_214_matmul_1_readvariableop_resource_0"|
;lstm_184_while_lstm_cell_214_matmul_readvariableop_resource=lstm_184_while_lstm_cell_214_matmul_readvariableop_resource_0"?
clstm_184_while_tensorarrayv2read_tensorlistgetitem_lstm_184_tensorarrayunstack_tensorlistfromtensorelstm_184_while_tensorarrayv2read_tensorlistgetitem_lstm_184_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_184/while/lstm_cell_214/BiasAdd/ReadVariableOp3lstm_184/while/lstm_cell_214/BiasAdd/ReadVariableOp2h
2lstm_184/while/lstm_cell_214/MatMul/ReadVariableOp2lstm_184/while/lstm_cell_214/MatMul/ReadVariableOp2l
4lstm_184/while/lstm_cell_214/MatMul_1/ReadVariableOp4lstm_184/while/lstm_cell_214/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1304762
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_213_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_213_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_213_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_213_matmul_readvariableop_resource:	?G
4while_lstm_cell_213_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_213_biasadd_readvariableop_resource:	???*while/lstm_cell_213/BiasAdd/ReadVariableOp?)while/lstm_cell_213/MatMul/ReadVariableOp?+while/lstm_cell_213/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_213/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_213_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_213/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_213/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_213/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_213_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_213/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_213/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_213/addAddV2$while/lstm_cell_213/MatMul:product:0&while/lstm_cell_213/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_213/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_213_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_213/BiasAddBiasAddwhile/lstm_cell_213/add:z:02while/lstm_cell_213/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_213/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_213/splitSplit,while/lstm_cell_213/split/split_dim:output:0$while/lstm_cell_213/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_213/SigmoidSigmoid"while/lstm_cell_213/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_213/Sigmoid_1Sigmoid"while/lstm_cell_213/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_213/mulMul!while/lstm_cell_213/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_213/ReluRelu"while/lstm_cell_213/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_213/mul_1Mulwhile/lstm_cell_213/Sigmoid:y:0&while/lstm_cell_213/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_213/add_1AddV2while/lstm_cell_213/mul:z:0while/lstm_cell_213/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_213/Sigmoid_2Sigmoid"while/lstm_cell_213/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_213/Relu_1Reluwhile/lstm_cell_213/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_213/mul_2Mul!while/lstm_cell_213/Sigmoid_2:y:0(while/lstm_cell_213/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_213/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_213/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_213/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_213/BiasAdd/ReadVariableOp*^while/lstm_cell_213/MatMul/ReadVariableOp,^while/lstm_cell_213/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_213_biasadd_readvariableop_resource5while_lstm_cell_213_biasadd_readvariableop_resource_0"n
4while_lstm_cell_213_matmul_1_readvariableop_resource6while_lstm_cell_213_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_213_matmul_readvariableop_resource4while_lstm_cell_213_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_213/BiasAdd/ReadVariableOp*while/lstm_cell_213/BiasAdd/ReadVariableOp2V
)while/lstm_cell_213/MatMul/ReadVariableOp)while/lstm_cell_213/MatMul/ReadVariableOp2Z
+while/lstm_cell_213/MatMul_1/ReadVariableOp+while/lstm_cell_213/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1305091
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1305091___redundant_placeholder05
1while_while_cond_1305091___redundant_placeholder15
1while_while_cond_1305091___redundant_placeholder25
1while_while_cond_1305091___redundant_placeholder3
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
E__inference_lstm_185_layer_call_and_return_conditional_losses_1302055

inputs'
lstm_cell_215_1301973:2('
lstm_cell_215_1301975:
(#
lstm_cell_215_1301977:(
identity??%lstm_cell_215/StatefulPartitionedCall?while;
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
%lstm_cell_215/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_215_1301973lstm_cell_215_1301975lstm_cell_215_1301977*
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
J__inference_lstm_cell_215_layer_call_and_return_conditional_losses_1301972n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_215_1301973lstm_cell_215_1301975lstm_cell_215_1301977*
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
while_body_1301986*
condR
while_cond_1301985*K
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
NoOpNoOp&^lstm_cell_215/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_215/StatefulPartitionedCall%lstm_cell_215/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_1306136
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1306136___redundant_placeholder05
1while_while_cond_1306136___redundant_placeholder15
1while_while_cond_1306136___redundant_placeholder25
1while_while_cond_1306136___redundant_placeholder3
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
E__inference_dense_61_layer_call_and_return_conditional_losses_1306240

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
while_body_1302470
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_214_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_214_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_214_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_214_matmul_readvariableop_resource:	d?G
4while_lstm_cell_214_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_214_biasadd_readvariableop_resource:	???*while/lstm_cell_214/BiasAdd/ReadVariableOp?)while/lstm_cell_214/MatMul/ReadVariableOp?+while/lstm_cell_214/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_214/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_214_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_214/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_214/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_214/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_214_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_214/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_214/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_214/addAddV2$while/lstm_cell_214/MatMul:product:0&while/lstm_cell_214/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_214/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_214_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_214/BiasAddBiasAddwhile/lstm_cell_214/add:z:02while/lstm_cell_214/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_214/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_214/splitSplit,while/lstm_cell_214/split/split_dim:output:0$while/lstm_cell_214/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_214/SigmoidSigmoid"while/lstm_cell_214/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_214/Sigmoid_1Sigmoid"while/lstm_cell_214/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_214/mulMul!while/lstm_cell_214/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_214/ReluRelu"while/lstm_cell_214/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_214/mul_1Mulwhile/lstm_cell_214/Sigmoid:y:0&while/lstm_cell_214/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_214/add_1AddV2while/lstm_cell_214/mul:z:0while/lstm_cell_214/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_214/Sigmoid_2Sigmoid"while/lstm_cell_214/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_214/Relu_1Reluwhile/lstm_cell_214/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_214/mul_2Mul!while/lstm_cell_214/Sigmoid_2:y:0(while/lstm_cell_214/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_214/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_214/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_214/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_214/BiasAdd/ReadVariableOp*^while/lstm_cell_214/MatMul/ReadVariableOp,^while/lstm_cell_214/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_214_biasadd_readvariableop_resource5while_lstm_cell_214_biasadd_readvariableop_resource_0"n
4while_lstm_cell_214_matmul_1_readvariableop_resource6while_lstm_cell_214_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_214_matmul_readvariableop_resource4while_lstm_cell_214_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_214/BiasAdd/ReadVariableOp*while/lstm_cell_214/BiasAdd/ReadVariableOp2V
)while/lstm_cell_214/MatMul/ReadVariableOp)while/lstm_cell_214/MatMul/ReadVariableOp2Z
+while/lstm_cell_214/MatMul_1/ReadVariableOp+while/lstm_cell_214/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
 __inference__traced_save_1306677
file_prefix.
*savev2_dense_61_kernel_read_readvariableop,
(savev2_dense_61_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_183_lstm_cell_183_kernel_read_readvariableopF
Bsavev2_lstm_183_lstm_cell_183_recurrent_kernel_read_readvariableop:
6savev2_lstm_183_lstm_cell_183_bias_read_readvariableop<
8savev2_lstm_184_lstm_cell_184_kernel_read_readvariableopF
Bsavev2_lstm_184_lstm_cell_184_recurrent_kernel_read_readvariableop:
6savev2_lstm_184_lstm_cell_184_bias_read_readvariableop<
8savev2_lstm_185_lstm_cell_185_kernel_read_readvariableopF
Bsavev2_lstm_185_lstm_cell_185_recurrent_kernel_read_readvariableop:
6savev2_lstm_185_lstm_cell_185_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_61_kernel_m_read_readvariableop3
/savev2_adam_dense_61_bias_m_read_readvariableopC
?savev2_adam_lstm_183_lstm_cell_183_kernel_m_read_readvariableopM
Isavev2_adam_lstm_183_lstm_cell_183_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_183_lstm_cell_183_bias_m_read_readvariableopC
?savev2_adam_lstm_184_lstm_cell_184_kernel_m_read_readvariableopM
Isavev2_adam_lstm_184_lstm_cell_184_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_184_lstm_cell_184_bias_m_read_readvariableopC
?savev2_adam_lstm_185_lstm_cell_185_kernel_m_read_readvariableopM
Isavev2_adam_lstm_185_lstm_cell_185_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_185_lstm_cell_185_bias_m_read_readvariableop5
1savev2_adam_dense_61_kernel_v_read_readvariableop3
/savev2_adam_dense_61_bias_v_read_readvariableopC
?savev2_adam_lstm_183_lstm_cell_183_kernel_v_read_readvariableopM
Isavev2_adam_lstm_183_lstm_cell_183_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_183_lstm_cell_183_bias_v_read_readvariableopC
?savev2_adam_lstm_184_lstm_cell_184_kernel_v_read_readvariableopM
Isavev2_adam_lstm_184_lstm_cell_184_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_184_lstm_cell_184_bias_v_read_readvariableopC
?savev2_adam_lstm_185_lstm_cell_185_kernel_v_read_readvariableopM
Isavev2_adam_lstm_185_lstm_cell_185_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_185_lstm_cell_185_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_61_kernel_read_readvariableop(savev2_dense_61_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_183_lstm_cell_183_kernel_read_readvariableopBsavev2_lstm_183_lstm_cell_183_recurrent_kernel_read_readvariableop6savev2_lstm_183_lstm_cell_183_bias_read_readvariableop8savev2_lstm_184_lstm_cell_184_kernel_read_readvariableopBsavev2_lstm_184_lstm_cell_184_recurrent_kernel_read_readvariableop6savev2_lstm_184_lstm_cell_184_bias_read_readvariableop8savev2_lstm_185_lstm_cell_185_kernel_read_readvariableopBsavev2_lstm_185_lstm_cell_185_recurrent_kernel_read_readvariableop6savev2_lstm_185_lstm_cell_185_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_61_kernel_m_read_readvariableop/savev2_adam_dense_61_bias_m_read_readvariableop?savev2_adam_lstm_183_lstm_cell_183_kernel_m_read_readvariableopIsavev2_adam_lstm_183_lstm_cell_183_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_183_lstm_cell_183_bias_m_read_readvariableop?savev2_adam_lstm_184_lstm_cell_184_kernel_m_read_readvariableopIsavev2_adam_lstm_184_lstm_cell_184_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_184_lstm_cell_184_bias_m_read_readvariableop?savev2_adam_lstm_185_lstm_cell_185_kernel_m_read_readvariableopIsavev2_adam_lstm_185_lstm_cell_185_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_185_lstm_cell_185_bias_m_read_readvariableop1savev2_adam_dense_61_kernel_v_read_readvariableop/savev2_adam_dense_61_bias_v_read_readvariableop?savev2_adam_lstm_183_lstm_cell_183_kernel_v_read_readvariableopIsavev2_adam_lstm_183_lstm_cell_183_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_183_lstm_cell_183_bias_v_read_readvariableop?savev2_adam_lstm_184_lstm_cell_184_kernel_v_read_readvariableopIsavev2_adam_lstm_184_lstm_cell_184_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_184_lstm_cell_184_bias_v_read_readvariableop?savev2_adam_lstm_185_lstm_cell_185_kernel_v_read_readvariableopIsavev2_adam_lstm_185_lstm_cell_185_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_185_lstm_cell_185_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
E__inference_lstm_183_layer_call_and_return_conditional_losses_1304989

inputs?
,lstm_cell_213_matmul_readvariableop_resource:	?A
.lstm_cell_213_matmul_1_readvariableop_resource:	d?<
-lstm_cell_213_biasadd_readvariableop_resource:	?
identity??$lstm_cell_213/BiasAdd/ReadVariableOp?#lstm_cell_213/MatMul/ReadVariableOp?%lstm_cell_213/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_213/MatMul/ReadVariableOpReadVariableOp,lstm_cell_213_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_213/MatMulMatMulstrided_slice_2:output:0+lstm_cell_213/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_213/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_213_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_213/MatMul_1MatMulzeros:output:0-lstm_cell_213/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_213/addAddV2lstm_cell_213/MatMul:product:0 lstm_cell_213/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_213/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_213_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_213/BiasAddBiasAddlstm_cell_213/add:z:0,lstm_cell_213/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_213/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_213/splitSplit&lstm_cell_213/split/split_dim:output:0lstm_cell_213/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_213/SigmoidSigmoidlstm_cell_213/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_213/Sigmoid_1Sigmoidlstm_cell_213/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_213/mulMullstm_cell_213/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_213/ReluRelulstm_cell_213/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_213/mul_1Mullstm_cell_213/Sigmoid:y:0 lstm_cell_213/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_213/add_1AddV2lstm_cell_213/mul:z:0lstm_cell_213/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_213/Sigmoid_2Sigmoidlstm_cell_213/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_213/Relu_1Relulstm_cell_213/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_213/mul_2Mullstm_cell_213/Sigmoid_2:y:0"lstm_cell_213/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_213_matmul_readvariableop_resource.lstm_cell_213_matmul_1_readvariableop_resource-lstm_cell_213_biasadd_readvariableop_resource*
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
while_body_1304905*
condR
while_cond_1304904*K
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
NoOpNoOp%^lstm_cell_213/BiasAdd/ReadVariableOp$^lstm_cell_213/MatMul/ReadVariableOp&^lstm_cell_213/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_213/BiasAdd/ReadVariableOp$lstm_cell_213/BiasAdd/ReadVariableOp2J
#lstm_cell_213/MatMul/ReadVariableOp#lstm_cell_213/MatMul/ReadVariableOp2N
%lstm_cell_213/MatMul_1/ReadVariableOp%lstm_cell_213/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_1305092
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_214_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_214_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_214_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_214_matmul_readvariableop_resource:	d?G
4while_lstm_cell_214_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_214_biasadd_readvariableop_resource:	???*while/lstm_cell_214/BiasAdd/ReadVariableOp?)while/lstm_cell_214/MatMul/ReadVariableOp?+while/lstm_cell_214/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_214/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_214_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_214/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_214/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_214/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_214_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_214/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_214/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_214/addAddV2$while/lstm_cell_214/MatMul:product:0&while/lstm_cell_214/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_214/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_214_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_214/BiasAddBiasAddwhile/lstm_cell_214/add:z:02while/lstm_cell_214/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_214/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_214/splitSplit,while/lstm_cell_214/split/split_dim:output:0$while/lstm_cell_214/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_214/SigmoidSigmoid"while/lstm_cell_214/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_214/Sigmoid_1Sigmoid"while/lstm_cell_214/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_214/mulMul!while/lstm_cell_214/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_214/ReluRelu"while/lstm_cell_214/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_214/mul_1Mulwhile/lstm_cell_214/Sigmoid:y:0&while/lstm_cell_214/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_214/add_1AddV2while/lstm_cell_214/mul:z:0while/lstm_cell_214/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_214/Sigmoid_2Sigmoid"while/lstm_cell_214/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_214/Relu_1Reluwhile/lstm_cell_214/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_214/mul_2Mul!while/lstm_cell_214/Sigmoid_2:y:0(while/lstm_cell_214/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_214/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_214/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_214/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_214/BiasAdd/ReadVariableOp*^while/lstm_cell_214/MatMul/ReadVariableOp,^while/lstm_cell_214/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_214_biasadd_readvariableop_resource5while_lstm_cell_214_biasadd_readvariableop_resource_0"n
4while_lstm_cell_214_matmul_1_readvariableop_resource6while_lstm_cell_214_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_214_matmul_readvariableop_resource4while_lstm_cell_214_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_214/BiasAdd/ReadVariableOp*while/lstm_cell_214/BiasAdd/ReadVariableOp2V
)while/lstm_cell_214/MatMul/ReadVariableOp)while/lstm_cell_214/MatMul/ReadVariableOp2Z
+while/lstm_cell_214/MatMul_1/ReadVariableOp+while/lstm_cell_214/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_184_layer_call_and_return_conditional_losses_1302554

inputs?
,lstm_cell_214_matmul_readvariableop_resource:	d?A
.lstm_cell_214_matmul_1_readvariableop_resource:	2?<
-lstm_cell_214_biasadd_readvariableop_resource:	?
identity??$lstm_cell_214/BiasAdd/ReadVariableOp?#lstm_cell_214/MatMul/ReadVariableOp?%lstm_cell_214/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_214/MatMul/ReadVariableOpReadVariableOp,lstm_cell_214_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_214/MatMulMatMulstrided_slice_2:output:0+lstm_cell_214/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_214/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_214_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_214/MatMul_1MatMulzeros:output:0-lstm_cell_214/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_214/addAddV2lstm_cell_214/MatMul:product:0 lstm_cell_214/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_214/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_214_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_214/BiasAddBiasAddlstm_cell_214/add:z:0,lstm_cell_214/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_214/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_214/splitSplit&lstm_cell_214/split/split_dim:output:0lstm_cell_214/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_214/SigmoidSigmoidlstm_cell_214/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_214/Sigmoid_1Sigmoidlstm_cell_214/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_214/mulMullstm_cell_214/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_214/ReluRelulstm_cell_214/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_214/mul_1Mullstm_cell_214/Sigmoid:y:0 lstm_cell_214/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_214/add_1AddV2lstm_cell_214/mul:z:0lstm_cell_214/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_214/Sigmoid_2Sigmoidlstm_cell_214/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_214/Relu_1Relulstm_cell_214/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_214/mul_2Mullstm_cell_214/Sigmoid_2:y:0"lstm_cell_214/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_214_matmul_readvariableop_resource.lstm_cell_214_matmul_1_readvariableop_resource-lstm_cell_214_biasadd_readvariableop_resource*
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
while_body_1302470*
condR
while_cond_1302469*K
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
NoOpNoOp%^lstm_cell_214/BiasAdd/ReadVariableOp$^lstm_cell_214/MatMul/ReadVariableOp&^lstm_cell_214/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_214/BiasAdd/ReadVariableOp$lstm_cell_214/BiasAdd/ReadVariableOp2J
#lstm_cell_214/MatMul/ReadVariableOp#lstm_cell_214/MatMul/ReadVariableOp2N
%lstm_cell_214/MatMul_1/ReadVariableOp%lstm_cell_214/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_1304761
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1304761___redundant_placeholder05
1while_while_cond_1304761___redundant_placeholder15
1while_while_cond_1304761___redundant_placeholder25
1while_while_cond_1304761___redundant_placeholder3
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
?
)sequential_61_lstm_183_while_cond_1300836J
Fsequential_61_lstm_183_while_sequential_61_lstm_183_while_loop_counterP
Lsequential_61_lstm_183_while_sequential_61_lstm_183_while_maximum_iterations,
(sequential_61_lstm_183_while_placeholder.
*sequential_61_lstm_183_while_placeholder_1.
*sequential_61_lstm_183_while_placeholder_2.
*sequential_61_lstm_183_while_placeholder_3L
Hsequential_61_lstm_183_while_less_sequential_61_lstm_183_strided_slice_1c
_sequential_61_lstm_183_while_sequential_61_lstm_183_while_cond_1300836___redundant_placeholder0c
_sequential_61_lstm_183_while_sequential_61_lstm_183_while_cond_1300836___redundant_placeholder1c
_sequential_61_lstm_183_while_sequential_61_lstm_183_while_cond_1300836___redundant_placeholder2c
_sequential_61_lstm_183_while_sequential_61_lstm_183_while_cond_1300836___redundant_placeholder3)
%sequential_61_lstm_183_while_identity
?
!sequential_61/lstm_183/while/LessLess(sequential_61_lstm_183_while_placeholderHsequential_61_lstm_183_while_less_sequential_61_lstm_183_strided_slice_1*
T0*
_output_shapes
: y
%sequential_61/lstm_183/while/IdentityIdentity%sequential_61/lstm_183/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_61_lstm_183_while_identity.sequential_61/lstm_183/while/Identity:output:0*(
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
while_body_1302320
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_213_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_213_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_213_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_213_matmul_readvariableop_resource:	?G
4while_lstm_cell_213_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_213_biasadd_readvariableop_resource:	???*while/lstm_cell_213/BiasAdd/ReadVariableOp?)while/lstm_cell_213/MatMul/ReadVariableOp?+while/lstm_cell_213/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_213/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_213_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_213/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_213/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_213/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_213_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_213/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_213/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_213/addAddV2$while/lstm_cell_213/MatMul:product:0&while/lstm_cell_213/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_213/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_213_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_213/BiasAddBiasAddwhile/lstm_cell_213/add:z:02while/lstm_cell_213/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_213/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_213/splitSplit,while/lstm_cell_213/split/split_dim:output:0$while/lstm_cell_213/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_213/SigmoidSigmoid"while/lstm_cell_213/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_213/Sigmoid_1Sigmoid"while/lstm_cell_213/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_213/mulMul!while/lstm_cell_213/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_213/ReluRelu"while/lstm_cell_213/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_213/mul_1Mulwhile/lstm_cell_213/Sigmoid:y:0&while/lstm_cell_213/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_213/add_1AddV2while/lstm_cell_213/mul:z:0while/lstm_cell_213/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_213/Sigmoid_2Sigmoid"while/lstm_cell_213/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_213/Relu_1Reluwhile/lstm_cell_213/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_213/mul_2Mul!while/lstm_cell_213/Sigmoid_2:y:0(while/lstm_cell_213/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_213/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_213/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_213/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_213/BiasAdd/ReadVariableOp*^while/lstm_cell_213/MatMul/ReadVariableOp,^while/lstm_cell_213/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_213_biasadd_readvariableop_resource5while_lstm_cell_213_biasadd_readvariableop_resource_0"n
4while_lstm_cell_213_matmul_1_readvariableop_resource6while_lstm_cell_213_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_213_matmul_readvariableop_resource4while_lstm_cell_213_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_213/BiasAdd/ReadVariableOp*while/lstm_cell_213/BiasAdd/ReadVariableOp2V
)while/lstm_cell_213/MatMul/ReadVariableOp)while/lstm_cell_213/MatMul/ReadVariableOp2Z
+while/lstm_cell_213/MatMul_1/ReadVariableOp+while/lstm_cell_213/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_185_layer_call_and_return_conditional_losses_1302246

inputs'
lstm_cell_215_1302164:2('
lstm_cell_215_1302166:
(#
lstm_cell_215_1302168:(
identity??%lstm_cell_215/StatefulPartitionedCall?while;
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
%lstm_cell_215/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_215_1302164lstm_cell_215_1302166lstm_cell_215_1302168*
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
J__inference_lstm_cell_215_layer_call_and_return_conditional_losses_1302118n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_215_1302164lstm_cell_215_1302166lstm_cell_215_1302168*
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
while_body_1302177*
condR
while_cond_1302176*K
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
NoOpNoOp&^lstm_cell_215/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_215/StatefulPartitionedCall%lstm_cell_215/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_214_layer_call_and_return_conditional_losses_1301622

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
?
*__inference_lstm_184_layer_call_fn_1305022

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
E__inference_lstm_184_layer_call_and_return_conditional_losses_1302554s
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
?#
?
while_body_1302177
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_215_1302201_0:2(/
while_lstm_cell_215_1302203_0:
(+
while_lstm_cell_215_1302205_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_215_1302201:2(-
while_lstm_cell_215_1302203:
()
while_lstm_cell_215_1302205:(??+while/lstm_cell_215/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_215/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_215_1302201_0while_lstm_cell_215_1302203_0while_lstm_cell_215_1302205_0*
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
J__inference_lstm_cell_215_layer_call_and_return_conditional_losses_1302118?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_215/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_215/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_215/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_215/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_215_1302201while_lstm_cell_215_1302201_0"<
while_lstm_cell_215_1302203while_lstm_cell_215_1302203_0"<
while_lstm_cell_215_1302205while_lstm_cell_215_1302205_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_215/StatefulPartitionedCall+while/lstm_cell_215/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_214_layer_call_fn_1306372

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
J__inference_lstm_cell_214_layer_call_and_return_conditional_losses_1301768o
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
E__inference_lstm_183_layer_call_and_return_conditional_losses_1304560
inputs_0?
,lstm_cell_213_matmul_readvariableop_resource:	?A
.lstm_cell_213_matmul_1_readvariableop_resource:	d?<
-lstm_cell_213_biasadd_readvariableop_resource:	?
identity??$lstm_cell_213/BiasAdd/ReadVariableOp?#lstm_cell_213/MatMul/ReadVariableOp?%lstm_cell_213/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_213/MatMul/ReadVariableOpReadVariableOp,lstm_cell_213_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_213/MatMulMatMulstrided_slice_2:output:0+lstm_cell_213/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_213/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_213_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_213/MatMul_1MatMulzeros:output:0-lstm_cell_213/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_213/addAddV2lstm_cell_213/MatMul:product:0 lstm_cell_213/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_213/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_213_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_213/BiasAddBiasAddlstm_cell_213/add:z:0,lstm_cell_213/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_213/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_213/splitSplit&lstm_cell_213/split/split_dim:output:0lstm_cell_213/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_213/SigmoidSigmoidlstm_cell_213/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_213/Sigmoid_1Sigmoidlstm_cell_213/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_213/mulMullstm_cell_213/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_213/ReluRelulstm_cell_213/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_213/mul_1Mullstm_cell_213/Sigmoid:y:0 lstm_cell_213/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_213/add_1AddV2lstm_cell_213/mul:z:0lstm_cell_213/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_213/Sigmoid_2Sigmoidlstm_cell_213/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_213/Relu_1Relulstm_cell_213/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_213/mul_2Mullstm_cell_213/Sigmoid_2:y:0"lstm_cell_213/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_213_matmul_readvariableop_resource.lstm_cell_213_matmul_1_readvariableop_resource-lstm_cell_213_biasadd_readvariableop_resource*
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
while_body_1304476*
condR
while_cond_1304475*K
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
NoOpNoOp%^lstm_cell_213/BiasAdd/ReadVariableOp$^lstm_cell_213/MatMul/ReadVariableOp&^lstm_cell_213/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_213/BiasAdd/ReadVariableOp$lstm_cell_213/BiasAdd/ReadVariableOp2J
#lstm_cell_213/MatMul/ReadVariableOp#lstm_cell_213/MatMul/ReadVariableOp2N
%lstm_cell_213/MatMul_1/ReadVariableOp%lstm_cell_213/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_215_layer_call_and_return_conditional_losses_1306502

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
while_body_1301636
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_214_1301660_0:	d?0
while_lstm_cell_214_1301662_0:	2?,
while_lstm_cell_214_1301664_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_214_1301660:	d?.
while_lstm_cell_214_1301662:	2?*
while_lstm_cell_214_1301664:	???+while/lstm_cell_214/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_214/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_214_1301660_0while_lstm_cell_214_1301662_0while_lstm_cell_214_1301664_0*
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
J__inference_lstm_cell_214_layer_call_and_return_conditional_losses_1301622?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_214/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_214/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_214/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_214/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_214_1301660while_lstm_cell_214_1301660_0"<
while_lstm_cell_214_1301662while_lstm_cell_214_1301662_0"<
while_lstm_cell_214_1301664while_lstm_cell_214_1301664_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_214/StatefulPartitionedCall+while/lstm_cell_214/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_sequential_61_layer_call_fn_1303370
lstm_183_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_183_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_61_layer_call_and_return_conditional_losses_1303318o
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
_user_specified_namelstm_183_input
?
?
J__inference_lstm_cell_214_layer_call_and_return_conditional_losses_1306436

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
while_body_1301986
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_215_1302010_0:2(/
while_lstm_cell_215_1302012_0:
(+
while_lstm_cell_215_1302014_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_215_1302010:2(-
while_lstm_cell_215_1302012:
()
while_lstm_cell_215_1302014:(??+while/lstm_cell_215/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_215/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_215_1302010_0while_lstm_cell_215_1302012_0while_lstm_cell_215_1302014_0*
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
J__inference_lstm_cell_215_layer_call_and_return_conditional_losses_1301972?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_215/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_215/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_215/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_215/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_215_1302010while_lstm_cell_215_1302010_0"<
while_lstm_cell_215_1302012while_lstm_cell_215_1302012_0"<
while_lstm_cell_215_1302014while_lstm_cell_215_1302014_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_215/StatefulPartitionedCall+while/lstm_cell_215/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_1302620
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_215_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_215_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_215_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_215_matmul_readvariableop_resource:2(F
4while_lstm_cell_215_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_215_biasadd_readvariableop_resource:(??*while/lstm_cell_215/BiasAdd/ReadVariableOp?)while/lstm_cell_215/MatMul/ReadVariableOp?+while/lstm_cell_215/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_215/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_215_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_215/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_215/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_215/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_215_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_215/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_215/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_215/addAddV2$while/lstm_cell_215/MatMul:product:0&while/lstm_cell_215/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_215/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_215_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_215/BiasAddBiasAddwhile/lstm_cell_215/add:z:02while/lstm_cell_215/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_215/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_215/splitSplit,while/lstm_cell_215/split/split_dim:output:0$while/lstm_cell_215/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_215/SigmoidSigmoid"while/lstm_cell_215/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_215/Sigmoid_1Sigmoid"while/lstm_cell_215/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_215/mulMul!while/lstm_cell_215/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_215/ReluRelu"while/lstm_cell_215/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_215/mul_1Mulwhile/lstm_cell_215/Sigmoid:y:0&while/lstm_cell_215/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_215/add_1AddV2while/lstm_cell_215/mul:z:0while/lstm_cell_215/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_215/Sigmoid_2Sigmoid"while/lstm_cell_215/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_215/Relu_1Reluwhile/lstm_cell_215/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_215/mul_2Mul!while/lstm_cell_215/Sigmoid_2:y:0(while/lstm_cell_215/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_215/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_215/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_215/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_215/BiasAdd/ReadVariableOp*^while/lstm_cell_215/MatMul/ReadVariableOp,^while/lstm_cell_215/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_215_biasadd_readvariableop_resource5while_lstm_cell_215_biasadd_readvariableop_resource_0"n
4while_lstm_cell_215_matmul_1_readvariableop_resource6while_lstm_cell_215_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_215_matmul_readvariableop_resource4while_lstm_cell_215_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_215/BiasAdd/ReadVariableOp*while/lstm_cell_215/BiasAdd/ReadVariableOp2V
)while/lstm_cell_215/MatMul/ReadVariableOp)while/lstm_cell_215/MatMul/ReadVariableOp2Z
+while/lstm_cell_215/MatMul_1/ReadVariableOp+while/lstm_cell_215/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1304475
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1304475___redundant_placeholder05
1while_while_cond_1304475___redundant_placeholder15
1while_while_cond_1304475___redundant_placeholder25
1while_while_cond_1304475___redundant_placeholder3
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
E__inference_lstm_184_layer_call_and_return_conditional_losses_1305176
inputs_0?
,lstm_cell_214_matmul_readvariableop_resource:	d?A
.lstm_cell_214_matmul_1_readvariableop_resource:	2?<
-lstm_cell_214_biasadd_readvariableop_resource:	?
identity??$lstm_cell_214/BiasAdd/ReadVariableOp?#lstm_cell_214/MatMul/ReadVariableOp?%lstm_cell_214/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_214/MatMul/ReadVariableOpReadVariableOp,lstm_cell_214_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_214/MatMulMatMulstrided_slice_2:output:0+lstm_cell_214/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_214/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_214_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_214/MatMul_1MatMulzeros:output:0-lstm_cell_214/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_214/addAddV2lstm_cell_214/MatMul:product:0 lstm_cell_214/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_214/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_214_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_214/BiasAddBiasAddlstm_cell_214/add:z:0,lstm_cell_214/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_214/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_214/splitSplit&lstm_cell_214/split/split_dim:output:0lstm_cell_214/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_214/SigmoidSigmoidlstm_cell_214/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_214/Sigmoid_1Sigmoidlstm_cell_214/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_214/mulMullstm_cell_214/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_214/ReluRelulstm_cell_214/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_214/mul_1Mullstm_cell_214/Sigmoid:y:0 lstm_cell_214/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_214/add_1AddV2lstm_cell_214/mul:z:0lstm_cell_214/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_214/Sigmoid_2Sigmoidlstm_cell_214/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_214/Relu_1Relulstm_cell_214/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_214/mul_2Mullstm_cell_214/Sigmoid_2:y:0"lstm_cell_214/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_214_matmul_readvariableop_resource.lstm_cell_214_matmul_1_readvariableop_resource-lstm_cell_214_biasadd_readvariableop_resource*
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
while_body_1305092*
condR
while_cond_1305091*K
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
NoOpNoOp%^lstm_cell_214/BiasAdd/ReadVariableOp$^lstm_cell_214/MatMul/ReadVariableOp&^lstm_cell_214/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_214/BiasAdd/ReadVariableOp$lstm_cell_214/BiasAdd/ReadVariableOp2J
#lstm_cell_214/MatMul/ReadVariableOp#lstm_cell_214/MatMul/ReadVariableOp2N
%lstm_cell_214/MatMul_1/ReadVariableOp%lstm_cell_214/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_214_layer_call_and_return_conditional_losses_1306404

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
while_cond_1302619
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1302619___redundant_placeholder05
1while_while_cond_1302619___redundant_placeholder15
1while_while_cond_1302619___redundant_placeholder25
1while_while_cond_1302619___redundant_placeholder3
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
lstm_184_while_cond_1303716.
*lstm_184_while_lstm_184_while_loop_counter4
0lstm_184_while_lstm_184_while_maximum_iterations
lstm_184_while_placeholder 
lstm_184_while_placeholder_1 
lstm_184_while_placeholder_2 
lstm_184_while_placeholder_30
,lstm_184_while_less_lstm_184_strided_slice_1G
Clstm_184_while_lstm_184_while_cond_1303716___redundant_placeholder0G
Clstm_184_while_lstm_184_while_cond_1303716___redundant_placeholder1G
Clstm_184_while_lstm_184_while_cond_1303716___redundant_placeholder2G
Clstm_184_while_lstm_184_while_cond_1303716___redundant_placeholder3
lstm_184_while_identity
?
lstm_184/while/LessLesslstm_184_while_placeholder,lstm_184_while_less_lstm_184_strided_slice_1*
T0*
_output_shapes
: ]
lstm_184/while/IdentityIdentitylstm_184/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_184_while_identity lstm_184/while/Identity:output:0*(
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
while_body_1305378
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_214_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_214_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_214_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_214_matmul_readvariableop_resource:	d?G
4while_lstm_cell_214_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_214_biasadd_readvariableop_resource:	???*while/lstm_cell_214/BiasAdd/ReadVariableOp?)while/lstm_cell_214/MatMul/ReadVariableOp?+while/lstm_cell_214/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_214/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_214_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_214/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_214/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_214/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_214_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_214/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_214/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_214/addAddV2$while/lstm_cell_214/MatMul:product:0&while/lstm_cell_214/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_214/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_214_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_214/BiasAddBiasAddwhile/lstm_cell_214/add:z:02while/lstm_cell_214/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_214/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_214/splitSplit,while/lstm_cell_214/split/split_dim:output:0$while/lstm_cell_214/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_214/SigmoidSigmoid"while/lstm_cell_214/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_214/Sigmoid_1Sigmoid"while/lstm_cell_214/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_214/mulMul!while/lstm_cell_214/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_214/ReluRelu"while/lstm_cell_214/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_214/mul_1Mulwhile/lstm_cell_214/Sigmoid:y:0&while/lstm_cell_214/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_214/add_1AddV2while/lstm_cell_214/mul:z:0while/lstm_cell_214/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_214/Sigmoid_2Sigmoid"while/lstm_cell_214/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_214/Relu_1Reluwhile/lstm_cell_214/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_214/mul_2Mul!while/lstm_cell_214/Sigmoid_2:y:0(while/lstm_cell_214/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_214/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_214/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_214/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_214/BiasAdd/ReadVariableOp*^while/lstm_cell_214/MatMul/ReadVariableOp,^while/lstm_cell_214/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_214_biasadd_readvariableop_resource5while_lstm_cell_214_biasadd_readvariableop_resource_0"n
4while_lstm_cell_214_matmul_1_readvariableop_resource6while_lstm_cell_214_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_214_matmul_readvariableop_resource4while_lstm_cell_214_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_214/BiasAdd/ReadVariableOp*while/lstm_cell_214/BiasAdd/ReadVariableOp2V
)while/lstm_cell_214/MatMul/ReadVariableOp)while/lstm_cell_214/MatMul/ReadVariableOp2Z
+while/lstm_cell_214/MatMul_1/ReadVariableOp+while/lstm_cell_214/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_214_layer_call_fn_1306355

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
J__inference_lstm_cell_214_layer_call_and_return_conditional_losses_1301622o
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
?J
?
E__inference_lstm_185_layer_call_and_return_conditional_losses_1302704

inputs>
,lstm_cell_215_matmul_readvariableop_resource:2(@
.lstm_cell_215_matmul_1_readvariableop_resource:
(;
-lstm_cell_215_biasadd_readvariableop_resource:(
identity??$lstm_cell_215/BiasAdd/ReadVariableOp?#lstm_cell_215/MatMul/ReadVariableOp?%lstm_cell_215/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_215/MatMul/ReadVariableOpReadVariableOp,lstm_cell_215_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_215/MatMulMatMulstrided_slice_2:output:0+lstm_cell_215/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_215/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_215_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_215/MatMul_1MatMulzeros:output:0-lstm_cell_215/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_215/addAddV2lstm_cell_215/MatMul:product:0 lstm_cell_215/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_215/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_215_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_215/BiasAddBiasAddlstm_cell_215/add:z:0,lstm_cell_215/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_215/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_215/splitSplit&lstm_cell_215/split/split_dim:output:0lstm_cell_215/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_215/SigmoidSigmoidlstm_cell_215/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_215/Sigmoid_1Sigmoidlstm_cell_215/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_215/mulMullstm_cell_215/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_215/ReluRelulstm_cell_215/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_215/mul_1Mullstm_cell_215/Sigmoid:y:0 lstm_cell_215/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_215/add_1AddV2lstm_cell_215/mul:z:0lstm_cell_215/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_215/Sigmoid_2Sigmoidlstm_cell_215/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_215/Relu_1Relulstm_cell_215/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_215/mul_2Mullstm_cell_215/Sigmoid_2:y:0"lstm_cell_215/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_215_matmul_readvariableop_resource.lstm_cell_215_matmul_1_readvariableop_resource-lstm_cell_215_biasadd_readvariableop_resource*
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
while_body_1302620*
condR
while_cond_1302619*K
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
NoOpNoOp%^lstm_cell_215/BiasAdd/ReadVariableOp$^lstm_cell_215/MatMul/ReadVariableOp&^lstm_cell_215/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_215/BiasAdd/ReadVariableOp$lstm_cell_215/BiasAdd/ReadVariableOp2J
#lstm_cell_215/MatMul/ReadVariableOp#lstm_cell_215/MatMul/ReadVariableOp2N
%lstm_cell_215/MatMul_1/ReadVariableOp%lstm_cell_215/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?C
?

lstm_184_while_body_1303717.
*lstm_184_while_lstm_184_while_loop_counter4
0lstm_184_while_lstm_184_while_maximum_iterations
lstm_184_while_placeholder 
lstm_184_while_placeholder_1 
lstm_184_while_placeholder_2 
lstm_184_while_placeholder_3-
)lstm_184_while_lstm_184_strided_slice_1_0i
elstm_184_while_tensorarrayv2read_tensorlistgetitem_lstm_184_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_184_while_lstm_cell_214_matmul_readvariableop_resource_0:	d?R
?lstm_184_while_lstm_cell_214_matmul_1_readvariableop_resource_0:	2?M
>lstm_184_while_lstm_cell_214_biasadd_readvariableop_resource_0:	?
lstm_184_while_identity
lstm_184_while_identity_1
lstm_184_while_identity_2
lstm_184_while_identity_3
lstm_184_while_identity_4
lstm_184_while_identity_5+
'lstm_184_while_lstm_184_strided_slice_1g
clstm_184_while_tensorarrayv2read_tensorlistgetitem_lstm_184_tensorarrayunstack_tensorlistfromtensorN
;lstm_184_while_lstm_cell_214_matmul_readvariableop_resource:	d?P
=lstm_184_while_lstm_cell_214_matmul_1_readvariableop_resource:	2?K
<lstm_184_while_lstm_cell_214_biasadd_readvariableop_resource:	???3lstm_184/while/lstm_cell_214/BiasAdd/ReadVariableOp?2lstm_184/while/lstm_cell_214/MatMul/ReadVariableOp?4lstm_184/while/lstm_cell_214/MatMul_1/ReadVariableOp?
@lstm_184/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_184/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_184_while_tensorarrayv2read_tensorlistgetitem_lstm_184_tensorarrayunstack_tensorlistfromtensor_0lstm_184_while_placeholderIlstm_184/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_184/while/lstm_cell_214/MatMul/ReadVariableOpReadVariableOp=lstm_184_while_lstm_cell_214_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_184/while/lstm_cell_214/MatMulMatMul9lstm_184/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_184/while/lstm_cell_214/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_184/while/lstm_cell_214/MatMul_1/ReadVariableOpReadVariableOp?lstm_184_while_lstm_cell_214_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_184/while/lstm_cell_214/MatMul_1MatMullstm_184_while_placeholder_2<lstm_184/while/lstm_cell_214/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_184/while/lstm_cell_214/addAddV2-lstm_184/while/lstm_cell_214/MatMul:product:0/lstm_184/while/lstm_cell_214/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_184/while/lstm_cell_214/BiasAdd/ReadVariableOpReadVariableOp>lstm_184_while_lstm_cell_214_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_184/while/lstm_cell_214/BiasAddBiasAdd$lstm_184/while/lstm_cell_214/add:z:0;lstm_184/while/lstm_cell_214/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_184/while/lstm_cell_214/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_184/while/lstm_cell_214/splitSplit5lstm_184/while/lstm_cell_214/split/split_dim:output:0-lstm_184/while/lstm_cell_214/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_184/while/lstm_cell_214/SigmoidSigmoid+lstm_184/while/lstm_cell_214/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_184/while/lstm_cell_214/Sigmoid_1Sigmoid+lstm_184/while/lstm_cell_214/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_184/while/lstm_cell_214/mulMul*lstm_184/while/lstm_cell_214/Sigmoid_1:y:0lstm_184_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_184/while/lstm_cell_214/ReluRelu+lstm_184/while/lstm_cell_214/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_184/while/lstm_cell_214/mul_1Mul(lstm_184/while/lstm_cell_214/Sigmoid:y:0/lstm_184/while/lstm_cell_214/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_184/while/lstm_cell_214/add_1AddV2$lstm_184/while/lstm_cell_214/mul:z:0&lstm_184/while/lstm_cell_214/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_184/while/lstm_cell_214/Sigmoid_2Sigmoid+lstm_184/while/lstm_cell_214/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_184/while/lstm_cell_214/Relu_1Relu&lstm_184/while/lstm_cell_214/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_184/while/lstm_cell_214/mul_2Mul*lstm_184/while/lstm_cell_214/Sigmoid_2:y:01lstm_184/while/lstm_cell_214/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_184/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_184_while_placeholder_1lstm_184_while_placeholder&lstm_184/while/lstm_cell_214/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_184/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_184/while/addAddV2lstm_184_while_placeholderlstm_184/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_184/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_184/while/add_1AddV2*lstm_184_while_lstm_184_while_loop_counterlstm_184/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_184/while/IdentityIdentitylstm_184/while/add_1:z:0^lstm_184/while/NoOp*
T0*
_output_shapes
: ?
lstm_184/while/Identity_1Identity0lstm_184_while_lstm_184_while_maximum_iterations^lstm_184/while/NoOp*
T0*
_output_shapes
: t
lstm_184/while/Identity_2Identitylstm_184/while/add:z:0^lstm_184/while/NoOp*
T0*
_output_shapes
: ?
lstm_184/while/Identity_3IdentityClstm_184/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_184/while/NoOp*
T0*
_output_shapes
: ?
lstm_184/while/Identity_4Identity&lstm_184/while/lstm_cell_214/mul_2:z:0^lstm_184/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_184/while/Identity_5Identity&lstm_184/while/lstm_cell_214/add_1:z:0^lstm_184/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_184/while/NoOpNoOp4^lstm_184/while/lstm_cell_214/BiasAdd/ReadVariableOp3^lstm_184/while/lstm_cell_214/MatMul/ReadVariableOp5^lstm_184/while/lstm_cell_214/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_184_while_identity lstm_184/while/Identity:output:0"?
lstm_184_while_identity_1"lstm_184/while/Identity_1:output:0"?
lstm_184_while_identity_2"lstm_184/while/Identity_2:output:0"?
lstm_184_while_identity_3"lstm_184/while/Identity_3:output:0"?
lstm_184_while_identity_4"lstm_184/while/Identity_4:output:0"?
lstm_184_while_identity_5"lstm_184/while/Identity_5:output:0"T
'lstm_184_while_lstm_184_strided_slice_1)lstm_184_while_lstm_184_strided_slice_1_0"~
<lstm_184_while_lstm_cell_214_biasadd_readvariableop_resource>lstm_184_while_lstm_cell_214_biasadd_readvariableop_resource_0"?
=lstm_184_while_lstm_cell_214_matmul_1_readvariableop_resource?lstm_184_while_lstm_cell_214_matmul_1_readvariableop_resource_0"|
;lstm_184_while_lstm_cell_214_matmul_readvariableop_resource=lstm_184_while_lstm_cell_214_matmul_readvariableop_resource_0"?
clstm_184_while_tensorarrayv2read_tensorlistgetitem_lstm_184_tensorarrayunstack_tensorlistfromtensorelstm_184_while_tensorarrayv2read_tensorlistgetitem_lstm_184_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_184/while/lstm_cell_214/BiasAdd/ReadVariableOp3lstm_184/while/lstm_cell_214/BiasAdd/ReadVariableOp2h
2lstm_184/while/lstm_cell_214/MatMul/ReadVariableOp2lstm_184/while/lstm_cell_214/MatMul/ReadVariableOp2l
4lstm_184/while/lstm_cell_214/MatMul_1/ReadVariableOp4lstm_184/while/lstm_cell_214/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_213_layer_call_and_return_conditional_losses_1301272

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
while_body_1305235
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_214_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_214_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_214_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_214_matmul_readvariableop_resource:	d?G
4while_lstm_cell_214_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_214_biasadd_readvariableop_resource:	???*while/lstm_cell_214/BiasAdd/ReadVariableOp?)while/lstm_cell_214/MatMul/ReadVariableOp?+while/lstm_cell_214/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_214/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_214_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_214/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_214/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_214/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_214_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_214/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_214/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_214/addAddV2$while/lstm_cell_214/MatMul:product:0&while/lstm_cell_214/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_214/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_214_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_214/BiasAddBiasAddwhile/lstm_cell_214/add:z:02while/lstm_cell_214/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_214/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_214/splitSplit,while/lstm_cell_214/split/split_dim:output:0$while/lstm_cell_214/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_214/SigmoidSigmoid"while/lstm_cell_214/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_214/Sigmoid_1Sigmoid"while/lstm_cell_214/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_214/mulMul!while/lstm_cell_214/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_214/ReluRelu"while/lstm_cell_214/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_214/mul_1Mulwhile/lstm_cell_214/Sigmoid:y:0&while/lstm_cell_214/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_214/add_1AddV2while/lstm_cell_214/mul:z:0while/lstm_cell_214/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_214/Sigmoid_2Sigmoid"while/lstm_cell_214/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_214/Relu_1Reluwhile/lstm_cell_214/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_214/mul_2Mul!while/lstm_cell_214/Sigmoid_2:y:0(while/lstm_cell_214/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_214/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_214/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_214/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_214/BiasAdd/ReadVariableOp*^while/lstm_cell_214/MatMul/ReadVariableOp,^while/lstm_cell_214/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_214_biasadd_readvariableop_resource5while_lstm_cell_214_biasadd_readvariableop_resource_0"n
4while_lstm_cell_214_matmul_1_readvariableop_resource6while_lstm_cell_214_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_214_matmul_readvariableop_resource4while_lstm_cell_214_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_214/BiasAdd/ReadVariableOp*while/lstm_cell_214/BiasAdd/ReadVariableOp2V
)while/lstm_cell_214/MatMul/ReadVariableOp)while/lstm_cell_214/MatMul/ReadVariableOp2Z
+while/lstm_cell_214/MatMul_1/ReadVariableOp+while/lstm_cell_214/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_183_input;
 serving_default_lstm_183_input:0?????????<
dense_610
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
2dense_61/kernel
:2dense_61/bias
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
0:.	?2lstm_183/lstm_cell_183/kernel
::8	d?2'lstm_183/lstm_cell_183/recurrent_kernel
*:(?2lstm_183/lstm_cell_183/bias
0:.	d?2lstm_184/lstm_cell_184/kernel
::8	2?2'lstm_184/lstm_cell_184/recurrent_kernel
*:(?2lstm_184/lstm_cell_184/bias
/:-2(2lstm_185/lstm_cell_185/kernel
9:7
(2'lstm_185/lstm_cell_185/recurrent_kernel
):'(2lstm_185/lstm_cell_185/bias
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
2Adam/dense_61/kernel/m
 :2Adam/dense_61/bias/m
5:3	?2$Adam/lstm_183/lstm_cell_183/kernel/m
?:=	d?2.Adam/lstm_183/lstm_cell_183/recurrent_kernel/m
/:-?2"Adam/lstm_183/lstm_cell_183/bias/m
5:3	d?2$Adam/lstm_184/lstm_cell_184/kernel/m
?:=	2?2.Adam/lstm_184/lstm_cell_184/recurrent_kernel/m
/:-?2"Adam/lstm_184/lstm_cell_184/bias/m
4:22(2$Adam/lstm_185/lstm_cell_185/kernel/m
>:<
(2.Adam/lstm_185/lstm_cell_185/recurrent_kernel/m
.:,(2"Adam/lstm_185/lstm_cell_185/bias/m
&:$
2Adam/dense_61/kernel/v
 :2Adam/dense_61/bias/v
5:3	?2$Adam/lstm_183/lstm_cell_183/kernel/v
?:=	d?2.Adam/lstm_183/lstm_cell_183/recurrent_kernel/v
/:-?2"Adam/lstm_183/lstm_cell_183/bias/v
5:3	d?2$Adam/lstm_184/lstm_cell_184/kernel/v
?:=	2?2.Adam/lstm_184/lstm_cell_184/recurrent_kernel/v
/:-?2"Adam/lstm_184/lstm_cell_184/bias/v
4:22(2$Adam/lstm_185/lstm_cell_185/kernel/v
>:<
(2.Adam/lstm_185/lstm_cell_185/recurrent_kernel/v
.:,(2"Adam/lstm_185/lstm_cell_185/bias/v
?2?
/__inference_sequential_61_layer_call_fn_1302754
/__inference_sequential_61_layer_call_fn_1303492
/__inference_sequential_61_layer_call_fn_1303519
/__inference_sequential_61_layer_call_fn_1303370?
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
J__inference_sequential_61_layer_call_and_return_conditional_losses_1303946
J__inference_sequential_61_layer_call_and_return_conditional_losses_1304373
J__inference_sequential_61_layer_call_and_return_conditional_losses_1303400
J__inference_sequential_61_layer_call_and_return_conditional_losses_1303430?
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
"__inference__wrapped_model_1301205lstm_183_input"?
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
*__inference_lstm_183_layer_call_fn_1304384
*__inference_lstm_183_layer_call_fn_1304395
*__inference_lstm_183_layer_call_fn_1304406
*__inference_lstm_183_layer_call_fn_1304417?
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
E__inference_lstm_183_layer_call_and_return_conditional_losses_1304560
E__inference_lstm_183_layer_call_and_return_conditional_losses_1304703
E__inference_lstm_183_layer_call_and_return_conditional_losses_1304846
E__inference_lstm_183_layer_call_and_return_conditional_losses_1304989?
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
*__inference_lstm_184_layer_call_fn_1305000
*__inference_lstm_184_layer_call_fn_1305011
*__inference_lstm_184_layer_call_fn_1305022
*__inference_lstm_184_layer_call_fn_1305033?
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
E__inference_lstm_184_layer_call_and_return_conditional_losses_1305176
E__inference_lstm_184_layer_call_and_return_conditional_losses_1305319
E__inference_lstm_184_layer_call_and_return_conditional_losses_1305462
E__inference_lstm_184_layer_call_and_return_conditional_losses_1305605?
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
*__inference_lstm_185_layer_call_fn_1305616
*__inference_lstm_185_layer_call_fn_1305627
*__inference_lstm_185_layer_call_fn_1305638
*__inference_lstm_185_layer_call_fn_1305649?
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
E__inference_lstm_185_layer_call_and_return_conditional_losses_1305792
E__inference_lstm_185_layer_call_and_return_conditional_losses_1305935
E__inference_lstm_185_layer_call_and_return_conditional_losses_1306078
E__inference_lstm_185_layer_call_and_return_conditional_losses_1306221?
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
*__inference_dense_61_layer_call_fn_1306230?
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
E__inference_dense_61_layer_call_and_return_conditional_losses_1306240?
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
%__inference_signature_wrapper_1303465lstm_183_input"?
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
/__inference_lstm_cell_213_layer_call_fn_1306257
/__inference_lstm_cell_213_layer_call_fn_1306274?
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
J__inference_lstm_cell_213_layer_call_and_return_conditional_losses_1306306
J__inference_lstm_cell_213_layer_call_and_return_conditional_losses_1306338?
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
/__inference_lstm_cell_214_layer_call_fn_1306355
/__inference_lstm_cell_214_layer_call_fn_1306372?
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
J__inference_lstm_cell_214_layer_call_and_return_conditional_losses_1306404
J__inference_lstm_cell_214_layer_call_and_return_conditional_losses_1306436?
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
/__inference_lstm_cell_215_layer_call_fn_1306453
/__inference_lstm_cell_215_layer_call_fn_1306470?
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
J__inference_lstm_cell_215_layer_call_and_return_conditional_losses_1306502
J__inference_lstm_cell_215_layer_call_and_return_conditional_losses_1306534?
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
"__inference__wrapped_model_1301205-./012345!";?8
1?.
,?)
lstm_183_input?????????
? "3?0
.
dense_61"?
dense_61??????????
E__inference_dense_61_layer_call_and_return_conditional_losses_1306240\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_61_layer_call_fn_1306230O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_183_layer_call_and_return_conditional_losses_1304560?-./O?L
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
E__inference_lstm_183_layer_call_and_return_conditional_losses_1304703?-./O?L
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
E__inference_lstm_183_layer_call_and_return_conditional_losses_1304846q-./??<
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
E__inference_lstm_183_layer_call_and_return_conditional_losses_1304989q-./??<
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
*__inference_lstm_183_layer_call_fn_1304384}-./O?L
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
*__inference_lstm_183_layer_call_fn_1304395}-./O?L
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
*__inference_lstm_183_layer_call_fn_1304406d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_183_layer_call_fn_1304417d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_184_layer_call_and_return_conditional_losses_1305176?012O?L
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
E__inference_lstm_184_layer_call_and_return_conditional_losses_1305319?012O?L
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
E__inference_lstm_184_layer_call_and_return_conditional_losses_1305462q012??<
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
E__inference_lstm_184_layer_call_and_return_conditional_losses_1305605q012??<
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
*__inference_lstm_184_layer_call_fn_1305000}012O?L
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
*__inference_lstm_184_layer_call_fn_1305011}012O?L
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
*__inference_lstm_184_layer_call_fn_1305022d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_184_layer_call_fn_1305033d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_185_layer_call_and_return_conditional_losses_1305792}345O?L
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
E__inference_lstm_185_layer_call_and_return_conditional_losses_1305935}345O?L
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
E__inference_lstm_185_layer_call_and_return_conditional_losses_1306078m345??<
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
E__inference_lstm_185_layer_call_and_return_conditional_losses_1306221m345??<
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
*__inference_lstm_185_layer_call_fn_1305616p345O?L
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
*__inference_lstm_185_layer_call_fn_1305627p345O?L
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
*__inference_lstm_185_layer_call_fn_1305638`345??<
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
*__inference_lstm_185_layer_call_fn_1305649`345??<
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
J__inference_lstm_cell_213_layer_call_and_return_conditional_losses_1306306?-./??}
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
J__inference_lstm_cell_213_layer_call_and_return_conditional_losses_1306338?-./??}
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
/__inference_lstm_cell_213_layer_call_fn_1306257?-./??}
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
/__inference_lstm_cell_213_layer_call_fn_1306274?-./??}
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
J__inference_lstm_cell_214_layer_call_and_return_conditional_losses_1306404?012??}
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
J__inference_lstm_cell_214_layer_call_and_return_conditional_losses_1306436?012??}
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
/__inference_lstm_cell_214_layer_call_fn_1306355?012??}
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
/__inference_lstm_cell_214_layer_call_fn_1306372?012??}
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
J__inference_lstm_cell_215_layer_call_and_return_conditional_losses_1306502?345??}
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
J__inference_lstm_cell_215_layer_call_and_return_conditional_losses_1306534?345??}
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
/__inference_lstm_cell_215_layer_call_fn_1306453?345??}
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
/__inference_lstm_cell_215_layer_call_fn_1306470?345??}
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
J__inference_sequential_61_layer_call_and_return_conditional_losses_1303400y-./012345!"C?@
9?6
,?)
lstm_183_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_61_layer_call_and_return_conditional_losses_1303430y-./012345!"C?@
9?6
,?)
lstm_183_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_61_layer_call_and_return_conditional_losses_1303946q-./012345!";?8
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
J__inference_sequential_61_layer_call_and_return_conditional_losses_1304373q-./012345!";?8
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
/__inference_sequential_61_layer_call_fn_1302754l-./012345!"C?@
9?6
,?)
lstm_183_input?????????
p 

 
? "???????????
/__inference_sequential_61_layer_call_fn_1303370l-./012345!"C?@
9?6
,?)
lstm_183_input?????????
p

 
? "???????????
/__inference_sequential_61_layer_call_fn_1303492d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_61_layer_call_fn_1303519d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_1303465?-./012345!"M?J
? 
C?@
>
lstm_183_input,?)
lstm_183_input?????????"3?0
.
dense_61"?
dense_61?????????