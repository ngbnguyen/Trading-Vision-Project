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
dense_55/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_55/kernel
s
#dense_55/kernel/Read/ReadVariableOpReadVariableOpdense_55/kernel*
_output_shapes

:
*
dtype0
r
dense_55/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_55/bias
k
!dense_55/bias/Read/ReadVariableOpReadVariableOpdense_55/bias*
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
lstm_165/lstm_cell_165/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_165/lstm_cell_165/kernel
?
1lstm_165/lstm_cell_165/kernel/Read/ReadVariableOpReadVariableOplstm_165/lstm_cell_165/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_165/lstm_cell_165/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_165/lstm_cell_165/recurrent_kernel
?
;lstm_165/lstm_cell_165/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_165/lstm_cell_165/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_165/lstm_cell_165/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_165/lstm_cell_165/bias
?
/lstm_165/lstm_cell_165/bias/Read/ReadVariableOpReadVariableOplstm_165/lstm_cell_165/bias*
_output_shapes	
:?*
dtype0
?
lstm_166/lstm_cell_166/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_166/lstm_cell_166/kernel
?
1lstm_166/lstm_cell_166/kernel/Read/ReadVariableOpReadVariableOplstm_166/lstm_cell_166/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_166/lstm_cell_166/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_166/lstm_cell_166/recurrent_kernel
?
;lstm_166/lstm_cell_166/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_166/lstm_cell_166/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_166/lstm_cell_166/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_166/lstm_cell_166/bias
?
/lstm_166/lstm_cell_166/bias/Read/ReadVariableOpReadVariableOplstm_166/lstm_cell_166/bias*
_output_shapes	
:?*
dtype0
?
lstm_167/lstm_cell_167/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_167/lstm_cell_167/kernel
?
1lstm_167/lstm_cell_167/kernel/Read/ReadVariableOpReadVariableOplstm_167/lstm_cell_167/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_167/lstm_cell_167/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_167/lstm_cell_167/recurrent_kernel
?
;lstm_167/lstm_cell_167/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_167/lstm_cell_167/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_167/lstm_cell_167/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_167/lstm_cell_167/bias
?
/lstm_167/lstm_cell_167/bias/Read/ReadVariableOpReadVariableOplstm_167/lstm_cell_167/bias*
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
Adam/dense_55/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_55/kernel/m
?
*Adam/dense_55/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_55/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_55/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_55/bias/m
y
(Adam/dense_55/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_55/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_165/lstm_cell_165/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_165/lstm_cell_165/kernel/m
?
8Adam/lstm_165/lstm_cell_165/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_165/lstm_cell_165/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_165/lstm_cell_165/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_165/lstm_cell_165/recurrent_kernel/m
?
BAdam/lstm_165/lstm_cell_165/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_165/lstm_cell_165/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_165/lstm_cell_165/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_165/lstm_cell_165/bias/m
?
6Adam/lstm_165/lstm_cell_165/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_165/lstm_cell_165/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_166/lstm_cell_166/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_166/lstm_cell_166/kernel/m
?
8Adam/lstm_166/lstm_cell_166/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_166/lstm_cell_166/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_166/lstm_cell_166/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_166/lstm_cell_166/recurrent_kernel/m
?
BAdam/lstm_166/lstm_cell_166/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_166/lstm_cell_166/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_166/lstm_cell_166/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_166/lstm_cell_166/bias/m
?
6Adam/lstm_166/lstm_cell_166/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_166/lstm_cell_166/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_167/lstm_cell_167/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_167/lstm_cell_167/kernel/m
?
8Adam/lstm_167/lstm_cell_167/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_167/lstm_cell_167/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_167/lstm_cell_167/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_167/lstm_cell_167/recurrent_kernel/m
?
BAdam/lstm_167/lstm_cell_167/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_167/lstm_cell_167/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_167/lstm_cell_167/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_167/lstm_cell_167/bias/m
?
6Adam/lstm_167/lstm_cell_167/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_167/lstm_cell_167/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_55/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_55/kernel/v
?
*Adam/dense_55/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_55/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_55/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_55/bias/v
y
(Adam/dense_55/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_55/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_165/lstm_cell_165/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_165/lstm_cell_165/kernel/v
?
8Adam/lstm_165/lstm_cell_165/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_165/lstm_cell_165/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_165/lstm_cell_165/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_165/lstm_cell_165/recurrent_kernel/v
?
BAdam/lstm_165/lstm_cell_165/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_165/lstm_cell_165/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_165/lstm_cell_165/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_165/lstm_cell_165/bias/v
?
6Adam/lstm_165/lstm_cell_165/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_165/lstm_cell_165/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_166/lstm_cell_166/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_166/lstm_cell_166/kernel/v
?
8Adam/lstm_166/lstm_cell_166/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_166/lstm_cell_166/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_166/lstm_cell_166/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_166/lstm_cell_166/recurrent_kernel/v
?
BAdam/lstm_166/lstm_cell_166/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_166/lstm_cell_166/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_166/lstm_cell_166/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_166/lstm_cell_166/bias/v
?
6Adam/lstm_166/lstm_cell_166/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_166/lstm_cell_166/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_167/lstm_cell_167/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_167/lstm_cell_167/kernel/v
?
8Adam/lstm_167/lstm_cell_167/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_167/lstm_cell_167/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_167/lstm_cell_167/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_167/lstm_cell_167/recurrent_kernel/v
?
BAdam/lstm_167/lstm_cell_167/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_167/lstm_cell_167/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_167/lstm_cell_167/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_167/lstm_cell_167/bias/v
?
6Adam/lstm_167/lstm_cell_167/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_167/lstm_cell_167/bias/v*
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
VARIABLE_VALUEdense_55/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_55/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_165/lstm_cell_165/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_165/lstm_cell_165/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_165/lstm_cell_165/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_166/lstm_cell_166/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_166/lstm_cell_166/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_166/lstm_cell_166/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_167/lstm_cell_167/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_167/lstm_cell_167/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_167/lstm_cell_167/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_55/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_55/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_165/lstm_cell_165/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_165/lstm_cell_165/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_165/lstm_cell_165/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_166/lstm_cell_166/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_166/lstm_cell_166/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_166/lstm_cell_166/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_167/lstm_cell_167/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_167/lstm_cell_167/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_167/lstm_cell_167/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_55/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_55/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_165/lstm_cell_165/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_165/lstm_cell_165/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_165/lstm_cell_165/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_166/lstm_cell_166/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_166/lstm_cell_166/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_166/lstm_cell_166/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_167/lstm_cell_167/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_167/lstm_cell_167/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_167/lstm_cell_167/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_165_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_165_inputlstm_165/lstm_cell_165/kernel'lstm_165/lstm_cell_165/recurrent_kernellstm_165/lstm_cell_165/biaslstm_166/lstm_cell_166/kernel'lstm_166/lstm_cell_166/recurrent_kernellstm_166/lstm_cell_166/biaslstm_167/lstm_cell_167/kernel'lstm_167/lstm_cell_167/recurrent_kernellstm_167/lstm_cell_167/biasdense_55/kerneldense_55/bias*
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
%__inference_signature_wrapper_3007964
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_55/kernel/Read/ReadVariableOp!dense_55/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_165/lstm_cell_165/kernel/Read/ReadVariableOp;lstm_165/lstm_cell_165/recurrent_kernel/Read/ReadVariableOp/lstm_165/lstm_cell_165/bias/Read/ReadVariableOp1lstm_166/lstm_cell_166/kernel/Read/ReadVariableOp;lstm_166/lstm_cell_166/recurrent_kernel/Read/ReadVariableOp/lstm_166/lstm_cell_166/bias/Read/ReadVariableOp1lstm_167/lstm_cell_167/kernel/Read/ReadVariableOp;lstm_167/lstm_cell_167/recurrent_kernel/Read/ReadVariableOp/lstm_167/lstm_cell_167/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_55/kernel/m/Read/ReadVariableOp(Adam/dense_55/bias/m/Read/ReadVariableOp8Adam/lstm_165/lstm_cell_165/kernel/m/Read/ReadVariableOpBAdam/lstm_165/lstm_cell_165/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_165/lstm_cell_165/bias/m/Read/ReadVariableOp8Adam/lstm_166/lstm_cell_166/kernel/m/Read/ReadVariableOpBAdam/lstm_166/lstm_cell_166/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_166/lstm_cell_166/bias/m/Read/ReadVariableOp8Adam/lstm_167/lstm_cell_167/kernel/m/Read/ReadVariableOpBAdam/lstm_167/lstm_cell_167/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_167/lstm_cell_167/bias/m/Read/ReadVariableOp*Adam/dense_55/kernel/v/Read/ReadVariableOp(Adam/dense_55/bias/v/Read/ReadVariableOp8Adam/lstm_165/lstm_cell_165/kernel/v/Read/ReadVariableOpBAdam/lstm_165/lstm_cell_165/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_165/lstm_cell_165/bias/v/Read/ReadVariableOp8Adam/lstm_166/lstm_cell_166/kernel/v/Read/ReadVariableOpBAdam/lstm_166/lstm_cell_166/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_166/lstm_cell_166/bias/v/Read/ReadVariableOp8Adam/lstm_167/lstm_cell_167/kernel/v/Read/ReadVariableOpBAdam/lstm_167/lstm_cell_167/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_167/lstm_cell_167/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3011176
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_55/kerneldense_55/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_165/lstm_cell_165/kernel'lstm_165/lstm_cell_165/recurrent_kernellstm_165/lstm_cell_165/biaslstm_166/lstm_cell_166/kernel'lstm_166/lstm_cell_166/recurrent_kernellstm_166/lstm_cell_166/biaslstm_167/lstm_cell_167/kernel'lstm_167/lstm_cell_167/recurrent_kernellstm_167/lstm_cell_167/biastotalcountAdam/dense_55/kernel/mAdam/dense_55/bias/m$Adam/lstm_165/lstm_cell_165/kernel/m.Adam/lstm_165/lstm_cell_165/recurrent_kernel/m"Adam/lstm_165/lstm_cell_165/bias/m$Adam/lstm_166/lstm_cell_166/kernel/m.Adam/lstm_166/lstm_cell_166/recurrent_kernel/m"Adam/lstm_166/lstm_cell_166/bias/m$Adam/lstm_167/lstm_cell_167/kernel/m.Adam/lstm_167/lstm_cell_167/recurrent_kernel/m"Adam/lstm_167/lstm_cell_167/bias/mAdam/dense_55/kernel/vAdam/dense_55/bias/v$Adam/lstm_165/lstm_cell_165/kernel/v.Adam/lstm_165/lstm_cell_165/recurrent_kernel/v"Adam/lstm_165/lstm_cell_165/bias/v$Adam/lstm_166/lstm_cell_166/kernel/v.Adam/lstm_166/lstm_cell_166/recurrent_kernel/v"Adam/lstm_166/lstm_cell_166/bias/v$Adam/lstm_167/lstm_cell_167/kernel/v.Adam/lstm_167/lstm_cell_167/recurrent_kernel/v"Adam/lstm_167/lstm_cell_167/bias/v*4
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
#__inference__traced_restore_3011306??+
?
?
*__inference_lstm_166_layer_call_fn_3009532

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
E__inference_lstm_166_layer_call_and_return_conditional_losses_3007584s
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
while_cond_3008974
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3008974___redundant_placeholder05
1while_while_cond_3008974___redundant_placeholder15
1while_while_cond_3008974___redundant_placeholder25
1while_while_cond_3008974___redundant_placeholder3
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
J__inference_lstm_cell_497_layer_call_and_return_conditional_losses_3011033

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
while_cond_3006325
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3006325___redundant_placeholder05
1while_while_cond_3006325___redundant_placeholder15
1while_while_cond_3006325___redundant_placeholder25
1while_while_cond_3006325___redundant_placeholder3
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
/__inference_sequential_55_layer_call_fn_3007253
lstm_165_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_165_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_55_layer_call_and_return_conditional_losses_3007228o
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
_user_specified_namelstm_165_input
?J
?
E__inference_lstm_165_layer_call_and_return_conditional_losses_3009345

inputs?
,lstm_cell_495_matmul_readvariableop_resource:	?A
.lstm_cell_495_matmul_1_readvariableop_resource:	d?<
-lstm_cell_495_biasadd_readvariableop_resource:	?
identity??$lstm_cell_495/BiasAdd/ReadVariableOp?#lstm_cell_495/MatMul/ReadVariableOp?%lstm_cell_495/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_495/MatMul/ReadVariableOpReadVariableOp,lstm_cell_495_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_495/MatMulMatMulstrided_slice_2:output:0+lstm_cell_495/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_495/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_495_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_495/MatMul_1MatMulzeros:output:0-lstm_cell_495/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_495/addAddV2lstm_cell_495/MatMul:product:0 lstm_cell_495/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_495/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_495_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_495/BiasAddBiasAddlstm_cell_495/add:z:0,lstm_cell_495/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_495/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_495/splitSplit&lstm_cell_495/split/split_dim:output:0lstm_cell_495/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_495/SigmoidSigmoidlstm_cell_495/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_495/Sigmoid_1Sigmoidlstm_cell_495/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_495/mulMullstm_cell_495/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_495/ReluRelulstm_cell_495/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_495/mul_1Mullstm_cell_495/Sigmoid:y:0 lstm_cell_495/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_495/add_1AddV2lstm_cell_495/mul:z:0lstm_cell_495/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_495/Sigmoid_2Sigmoidlstm_cell_495/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_495/Relu_1Relulstm_cell_495/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_495/mul_2Mullstm_cell_495/Sigmoid_2:y:0"lstm_cell_495/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_495_matmul_readvariableop_resource.lstm_cell_495_matmul_1_readvariableop_resource-lstm_cell_495_biasadd_readvariableop_resource*
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
while_body_3009261*
condR
while_cond_3009260*K
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
NoOpNoOp%^lstm_cell_495/BiasAdd/ReadVariableOp$^lstm_cell_495/MatMul/ReadVariableOp&^lstm_cell_495/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_495/BiasAdd/ReadVariableOp$lstm_cell_495/BiasAdd/ReadVariableOp2J
#lstm_cell_495/MatMul/ReadVariableOp#lstm_cell_495/MatMul/ReadVariableOp2N
%lstm_cell_495/MatMul_1/ReadVariableOp%lstm_cell_495/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_3005976
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_495_3006000_0:	?0
while_lstm_cell_495_3006002_0:	d?,
while_lstm_cell_495_3006004_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_495_3006000:	?.
while_lstm_cell_495_3006002:	d?*
while_lstm_cell_495_3006004:	???+while/lstm_cell_495/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_495/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_495_3006000_0while_lstm_cell_495_3006002_0while_lstm_cell_495_3006004_0*
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
J__inference_lstm_cell_495_layer_call_and_return_conditional_losses_3005917?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_495/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_495/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_495/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_495/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_495_3006000while_lstm_cell_495_3006000_0"<
while_lstm_cell_495_3006002while_lstm_cell_495_3006002_0"<
while_lstm_cell_495_3006004while_lstm_cell_495_3006004_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_495/StatefulPartitionedCall+while/lstm_cell_495/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3007499
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3007499___redundant_placeholder05
1while_while_cond_3007499___redundant_placeholder15
1while_while_cond_3007499___redundant_placeholder25
1while_while_cond_3007499___redundant_placeholder3
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
while_cond_3007334
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3007334___redundant_placeholder05
1while_while_cond_3007334___redundant_placeholder15
1while_while_cond_3007334___redundant_placeholder25
1while_while_cond_3007334___redundant_placeholder3
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
*__inference_lstm_167_layer_call_fn_3010115
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
E__inference_lstm_167_layer_call_and_return_conditional_losses_3006554o
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
E__inference_lstm_166_layer_call_and_return_conditional_losses_3009818
inputs_0?
,lstm_cell_496_matmul_readvariableop_resource:	d?A
.lstm_cell_496_matmul_1_readvariableop_resource:	2?<
-lstm_cell_496_biasadd_readvariableop_resource:	?
identity??$lstm_cell_496/BiasAdd/ReadVariableOp?#lstm_cell_496/MatMul/ReadVariableOp?%lstm_cell_496/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_496/MatMul/ReadVariableOpReadVariableOp,lstm_cell_496_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_496/MatMulMatMulstrided_slice_2:output:0+lstm_cell_496/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_496/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_496_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_496/MatMul_1MatMulzeros:output:0-lstm_cell_496/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_496/addAddV2lstm_cell_496/MatMul:product:0 lstm_cell_496/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_496/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_496_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_496/BiasAddBiasAddlstm_cell_496/add:z:0,lstm_cell_496/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_496/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_496/splitSplit&lstm_cell_496/split/split_dim:output:0lstm_cell_496/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_496/SigmoidSigmoidlstm_cell_496/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_496/Sigmoid_1Sigmoidlstm_cell_496/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_496/mulMullstm_cell_496/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_496/ReluRelulstm_cell_496/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_496/mul_1Mullstm_cell_496/Sigmoid:y:0 lstm_cell_496/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_496/add_1AddV2lstm_cell_496/mul:z:0lstm_cell_496/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_496/Sigmoid_2Sigmoidlstm_cell_496/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_496/Relu_1Relulstm_cell_496/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_496/mul_2Mullstm_cell_496/Sigmoid_2:y:0"lstm_cell_496/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_496_matmul_readvariableop_resource.lstm_cell_496_matmul_1_readvariableop_resource-lstm_cell_496_biasadd_readvariableop_resource*
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
while_body_3009734*
condR
while_cond_3009733*K
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
NoOpNoOp%^lstm_cell_496/BiasAdd/ReadVariableOp$^lstm_cell_496/MatMul/ReadVariableOp&^lstm_cell_496/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_496/BiasAdd/ReadVariableOp$lstm_cell_496/BiasAdd/ReadVariableOp2J
#lstm_cell_496/MatMul/ReadVariableOp#lstm_cell_496/MatMul/ReadVariableOp2N
%lstm_cell_496/MatMul_1/ReadVariableOp%lstm_cell_496/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_3006675
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3006675___redundant_placeholder05
1while_while_cond_3006675___redundant_placeholder15
1while_while_cond_3006675___redundant_placeholder25
1while_while_cond_3006675___redundant_placeholder3
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
/__inference_lstm_cell_495_layer_call_fn_3010756

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
J__inference_lstm_cell_495_layer_call_and_return_conditional_losses_3005771o
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
E__inference_lstm_167_layer_call_and_return_conditional_losses_3010291
inputs_0>
,lstm_cell_497_matmul_readvariableop_resource:2(@
.lstm_cell_497_matmul_1_readvariableop_resource:
(;
-lstm_cell_497_biasadd_readvariableop_resource:(
identity??$lstm_cell_497/BiasAdd/ReadVariableOp?#lstm_cell_497/MatMul/ReadVariableOp?%lstm_cell_497/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_497/MatMul/ReadVariableOpReadVariableOp,lstm_cell_497_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_497/MatMulMatMulstrided_slice_2:output:0+lstm_cell_497/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_497/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_497_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_497/MatMul_1MatMulzeros:output:0-lstm_cell_497/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_497/addAddV2lstm_cell_497/MatMul:product:0 lstm_cell_497/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_497/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_497_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_497/BiasAddBiasAddlstm_cell_497/add:z:0,lstm_cell_497/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_497/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_497/splitSplit&lstm_cell_497/split/split_dim:output:0lstm_cell_497/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_497/SigmoidSigmoidlstm_cell_497/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_497/Sigmoid_1Sigmoidlstm_cell_497/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_497/mulMullstm_cell_497/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_497/ReluRelulstm_cell_497/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_497/mul_1Mullstm_cell_497/Sigmoid:y:0 lstm_cell_497/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_497/add_1AddV2lstm_cell_497/mul:z:0lstm_cell_497/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_497/Sigmoid_2Sigmoidlstm_cell_497/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_497/Relu_1Relulstm_cell_497/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_497/mul_2Mullstm_cell_497/Sigmoid_2:y:0"lstm_cell_497/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_497_matmul_readvariableop_resource.lstm_cell_497_matmul_1_readvariableop_resource-lstm_cell_497_biasadd_readvariableop_resource*
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
while_body_3010207*
condR
while_cond_3010206*K
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
NoOpNoOp%^lstm_cell_497/BiasAdd/ReadVariableOp$^lstm_cell_497/MatMul/ReadVariableOp&^lstm_cell_497/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_497/BiasAdd/ReadVariableOp$lstm_cell_497/BiasAdd/ReadVariableOp2J
#lstm_cell_497/MatMul/ReadVariableOp#lstm_cell_497/MatMul/ReadVariableOp2N
%lstm_cell_497/MatMul_1/ReadVariableOp%lstm_cell_497/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?

?
/__inference_sequential_55_layer_call_fn_3007991

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
J__inference_sequential_55_layer_call_and_return_conditional_losses_3007228o
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

?
/__inference_sequential_55_layer_call_fn_3007869
lstm_165_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_165_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_55_layer_call_and_return_conditional_losses_3007817o
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
_user_specified_namelstm_165_input
?
?
J__inference_lstm_cell_497_layer_call_and_return_conditional_losses_3011001

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
E__inference_lstm_166_layer_call_and_return_conditional_losses_3009675
inputs_0?
,lstm_cell_496_matmul_readvariableop_resource:	d?A
.lstm_cell_496_matmul_1_readvariableop_resource:	2?<
-lstm_cell_496_biasadd_readvariableop_resource:	?
identity??$lstm_cell_496/BiasAdd/ReadVariableOp?#lstm_cell_496/MatMul/ReadVariableOp?%lstm_cell_496/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_496/MatMul/ReadVariableOpReadVariableOp,lstm_cell_496_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_496/MatMulMatMulstrided_slice_2:output:0+lstm_cell_496/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_496/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_496_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_496/MatMul_1MatMulzeros:output:0-lstm_cell_496/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_496/addAddV2lstm_cell_496/MatMul:product:0 lstm_cell_496/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_496/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_496_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_496/BiasAddBiasAddlstm_cell_496/add:z:0,lstm_cell_496/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_496/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_496/splitSplit&lstm_cell_496/split/split_dim:output:0lstm_cell_496/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_496/SigmoidSigmoidlstm_cell_496/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_496/Sigmoid_1Sigmoidlstm_cell_496/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_496/mulMullstm_cell_496/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_496/ReluRelulstm_cell_496/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_496/mul_1Mullstm_cell_496/Sigmoid:y:0 lstm_cell_496/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_496/add_1AddV2lstm_cell_496/mul:z:0lstm_cell_496/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_496/Sigmoid_2Sigmoidlstm_cell_496/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_496/Relu_1Relulstm_cell_496/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_496/mul_2Mullstm_cell_496/Sigmoid_2:y:0"lstm_cell_496/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_496_matmul_readvariableop_resource.lstm_cell_496_matmul_1_readvariableop_resource-lstm_cell_496_biasadd_readvariableop_resource*
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
while_body_3009591*
condR
while_cond_3009590*K
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
NoOpNoOp%^lstm_cell_496/BiasAdd/ReadVariableOp$^lstm_cell_496/MatMul/ReadVariableOp&^lstm_cell_496/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_496/BiasAdd/ReadVariableOp$lstm_cell_496/BiasAdd/ReadVariableOp2J
#lstm_cell_496/MatMul/ReadVariableOp#lstm_cell_496/MatMul/ReadVariableOp2N
%lstm_cell_496/MatMul_1/ReadVariableOp%lstm_cell_496/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_496_layer_call_fn_3010854

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
J__inference_lstm_cell_496_layer_call_and_return_conditional_losses_3006121o
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
?8
?
E__inference_lstm_166_layer_call_and_return_conditional_losses_3006204

inputs(
lstm_cell_496_3006122:	d?(
lstm_cell_496_3006124:	2?$
lstm_cell_496_3006126:	?
identity??%lstm_cell_496/StatefulPartitionedCall?while;
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
%lstm_cell_496/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_496_3006122lstm_cell_496_3006124lstm_cell_496_3006126*
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
J__inference_lstm_cell_496_layer_call_and_return_conditional_losses_3006121n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_496_3006122lstm_cell_496_3006124lstm_cell_496_3006126*
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
while_body_3006135*
condR
while_cond_3006134*K
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
NoOpNoOp&^lstm_cell_496/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_496/StatefulPartitionedCall%lstm_cell_496/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_497_layer_call_fn_3010969

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
J__inference_lstm_cell_497_layer_call_and_return_conditional_losses_3006617o
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
E__inference_lstm_167_layer_call_and_return_conditional_losses_3010434
inputs_0>
,lstm_cell_497_matmul_readvariableop_resource:2(@
.lstm_cell_497_matmul_1_readvariableop_resource:
(;
-lstm_cell_497_biasadd_readvariableop_resource:(
identity??$lstm_cell_497/BiasAdd/ReadVariableOp?#lstm_cell_497/MatMul/ReadVariableOp?%lstm_cell_497/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_497/MatMul/ReadVariableOpReadVariableOp,lstm_cell_497_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_497/MatMulMatMulstrided_slice_2:output:0+lstm_cell_497/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_497/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_497_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_497/MatMul_1MatMulzeros:output:0-lstm_cell_497/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_497/addAddV2lstm_cell_497/MatMul:product:0 lstm_cell_497/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_497/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_497_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_497/BiasAddBiasAddlstm_cell_497/add:z:0,lstm_cell_497/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_497/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_497/splitSplit&lstm_cell_497/split/split_dim:output:0lstm_cell_497/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_497/SigmoidSigmoidlstm_cell_497/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_497/Sigmoid_1Sigmoidlstm_cell_497/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_497/mulMullstm_cell_497/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_497/ReluRelulstm_cell_497/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_497/mul_1Mullstm_cell_497/Sigmoid:y:0 lstm_cell_497/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_497/add_1AddV2lstm_cell_497/mul:z:0lstm_cell_497/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_497/Sigmoid_2Sigmoidlstm_cell_497/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_497/Relu_1Relulstm_cell_497/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_497/mul_2Mullstm_cell_497/Sigmoid_2:y:0"lstm_cell_497/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_497_matmul_readvariableop_resource.lstm_cell_497_matmul_1_readvariableop_resource-lstm_cell_497_biasadd_readvariableop_resource*
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
while_body_3010350*
condR
while_cond_3010349*K
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
NoOpNoOp%^lstm_cell_497/BiasAdd/ReadVariableOp$^lstm_cell_497/MatMul/ReadVariableOp&^lstm_cell_497/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_497/BiasAdd/ReadVariableOp$lstm_cell_497/BiasAdd/ReadVariableOp2J
#lstm_cell_497/MatMul/ReadVariableOp#lstm_cell_497/MatMul/ReadVariableOp2N
%lstm_cell_497/MatMul_1/ReadVariableOp%lstm_cell_497/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_166_layer_call_fn_3009521

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
E__inference_lstm_166_layer_call_and_return_conditional_losses_3007053s
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
?
?
J__inference_sequential_55_layer_call_and_return_conditional_losses_3007929
lstm_165_input#
lstm_165_3007902:	?#
lstm_165_3007904:	d?
lstm_165_3007906:	?#
lstm_166_3007909:	d?#
lstm_166_3007911:	2?
lstm_166_3007913:	?"
lstm_167_3007916:2("
lstm_167_3007918:
(
lstm_167_3007920:("
dense_55_3007923:

dense_55_3007925:
identity?? dense_55/StatefulPartitionedCall? lstm_165/StatefulPartitionedCall? lstm_166/StatefulPartitionedCall? lstm_167/StatefulPartitionedCall?
 lstm_165/StatefulPartitionedCallStatefulPartitionedCalllstm_165_inputlstm_165_3007902lstm_165_3007904lstm_165_3007906*
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
E__inference_lstm_165_layer_call_and_return_conditional_losses_3007749?
 lstm_166/StatefulPartitionedCallStatefulPartitionedCall)lstm_165/StatefulPartitionedCall:output:0lstm_166_3007909lstm_166_3007911lstm_166_3007913*
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
E__inference_lstm_166_layer_call_and_return_conditional_losses_3007584?
 lstm_167/StatefulPartitionedCallStatefulPartitionedCall)lstm_166/StatefulPartitionedCall:output:0lstm_167_3007916lstm_167_3007918lstm_167_3007920*
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
E__inference_lstm_167_layer_call_and_return_conditional_losses_3007419?
 dense_55/StatefulPartitionedCallStatefulPartitionedCall)lstm_167/StatefulPartitionedCall:output:0dense_55_3007923dense_55_3007925*
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
E__inference_dense_55_layer_call_and_return_conditional_losses_3007221x
IdentityIdentity)dense_55/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_55/StatefulPartitionedCall!^lstm_165/StatefulPartitionedCall!^lstm_166/StatefulPartitionedCall!^lstm_167/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_55/StatefulPartitionedCall dense_55/StatefulPartitionedCall2D
 lstm_165/StatefulPartitionedCall lstm_165/StatefulPartitionedCall2D
 lstm_166/StatefulPartitionedCall lstm_166/StatefulPartitionedCall2D
 lstm_167/StatefulPartitionedCall lstm_167/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_165_input
?
?
*__inference_lstm_167_layer_call_fn_3010137

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
E__inference_lstm_167_layer_call_and_return_conditional_losses_3007203o
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
?#
?
while_body_3006135
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_496_3006159_0:	d?0
while_lstm_cell_496_3006161_0:	2?,
while_lstm_cell_496_3006163_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_496_3006159:	d?.
while_lstm_cell_496_3006161:	2?*
while_lstm_cell_496_3006163:	???+while/lstm_cell_496/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_496/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_496_3006159_0while_lstm_cell_496_3006161_0while_lstm_cell_496_3006163_0*
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
J__inference_lstm_cell_496_layer_call_and_return_conditional_losses_3006121?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_496/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_496/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_496/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_496/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_496_3006159while_lstm_cell_496_3006159_0"<
while_lstm_cell_496_3006161while_lstm_cell_496_3006161_0"<
while_lstm_cell_496_3006163while_lstm_cell_496_3006163_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_496/StatefulPartitionedCall+while/lstm_cell_496/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3009733
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3009733___redundant_placeholder05
1while_while_cond_3009733___redundant_placeholder15
1while_while_cond_3009733___redundant_placeholder25
1while_while_cond_3009733___redundant_placeholder3
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
while_body_3010350
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_497_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_497_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_497_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_497_matmul_readvariableop_resource:2(F
4while_lstm_cell_497_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_497_biasadd_readvariableop_resource:(??*while/lstm_cell_497/BiasAdd/ReadVariableOp?)while/lstm_cell_497/MatMul/ReadVariableOp?+while/lstm_cell_497/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_497/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_497_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_497/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_497/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_497/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_497_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_497/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_497/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_497/addAddV2$while/lstm_cell_497/MatMul:product:0&while/lstm_cell_497/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_497/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_497_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_497/BiasAddBiasAddwhile/lstm_cell_497/add:z:02while/lstm_cell_497/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_497/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_497/splitSplit,while/lstm_cell_497/split/split_dim:output:0$while/lstm_cell_497/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_497/SigmoidSigmoid"while/lstm_cell_497/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_497/Sigmoid_1Sigmoid"while/lstm_cell_497/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_497/mulMul!while/lstm_cell_497/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_497/ReluRelu"while/lstm_cell_497/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_497/mul_1Mulwhile/lstm_cell_497/Sigmoid:y:0&while/lstm_cell_497/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_497/add_1AddV2while/lstm_cell_497/mul:z:0while/lstm_cell_497/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_497/Sigmoid_2Sigmoid"while/lstm_cell_497/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_497/Relu_1Reluwhile/lstm_cell_497/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_497/mul_2Mul!while/lstm_cell_497/Sigmoid_2:y:0(while/lstm_cell_497/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_497/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_497/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_497/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_497/BiasAdd/ReadVariableOp*^while/lstm_cell_497/MatMul/ReadVariableOp,^while/lstm_cell_497/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_497_biasadd_readvariableop_resource5while_lstm_cell_497_biasadd_readvariableop_resource_0"n
4while_lstm_cell_497_matmul_1_readvariableop_resource6while_lstm_cell_497_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_497_matmul_readvariableop_resource4while_lstm_cell_497_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_497/BiasAdd/ReadVariableOp*while/lstm_cell_497/BiasAdd/ReadVariableOp2V
)while/lstm_cell_497/MatMul/ReadVariableOp)while/lstm_cell_497/MatMul/ReadVariableOp2Z
+while/lstm_cell_497/MatMul_1/ReadVariableOp+while/lstm_cell_497/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3010635
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3010635___redundant_placeholder05
1while_while_cond_3010635___redundant_placeholder15
1while_while_cond_3010635___redundant_placeholder25
1while_while_cond_3010635___redundant_placeholder3
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
/__inference_lstm_cell_497_layer_call_fn_3010952

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
J__inference_lstm_cell_497_layer_call_and_return_conditional_losses_3006471o
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
while_body_3010493
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_497_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_497_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_497_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_497_matmul_readvariableop_resource:2(F
4while_lstm_cell_497_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_497_biasadd_readvariableop_resource:(??*while/lstm_cell_497/BiasAdd/ReadVariableOp?)while/lstm_cell_497/MatMul/ReadVariableOp?+while/lstm_cell_497/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_497/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_497_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_497/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_497/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_497/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_497_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_497/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_497/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_497/addAddV2$while/lstm_cell_497/MatMul:product:0&while/lstm_cell_497/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_497/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_497_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_497/BiasAddBiasAddwhile/lstm_cell_497/add:z:02while/lstm_cell_497/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_497/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_497/splitSplit,while/lstm_cell_497/split/split_dim:output:0$while/lstm_cell_497/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_497/SigmoidSigmoid"while/lstm_cell_497/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_497/Sigmoid_1Sigmoid"while/lstm_cell_497/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_497/mulMul!while/lstm_cell_497/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_497/ReluRelu"while/lstm_cell_497/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_497/mul_1Mulwhile/lstm_cell_497/Sigmoid:y:0&while/lstm_cell_497/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_497/add_1AddV2while/lstm_cell_497/mul:z:0while/lstm_cell_497/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_497/Sigmoid_2Sigmoid"while/lstm_cell_497/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_497/Relu_1Reluwhile/lstm_cell_497/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_497/mul_2Mul!while/lstm_cell_497/Sigmoid_2:y:0(while/lstm_cell_497/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_497/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_497/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_497/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_497/BiasAdd/ReadVariableOp*^while/lstm_cell_497/MatMul/ReadVariableOp,^while/lstm_cell_497/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_497_biasadd_readvariableop_resource5while_lstm_cell_497_biasadd_readvariableop_resource_0"n
4while_lstm_cell_497_matmul_1_readvariableop_resource6while_lstm_cell_497_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_497_matmul_readvariableop_resource4while_lstm_cell_497_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_497/BiasAdd/ReadVariableOp*while/lstm_cell_497/BiasAdd/ReadVariableOp2V
)while/lstm_cell_497/MatMul/ReadVariableOp)while/lstm_cell_497/MatMul/ReadVariableOp2Z
+while/lstm_cell_497/MatMul_1/ReadVariableOp+while/lstm_cell_497/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3007665
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_495_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_495_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_495_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_495_matmul_readvariableop_resource:	?G
4while_lstm_cell_495_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_495_biasadd_readvariableop_resource:	???*while/lstm_cell_495/BiasAdd/ReadVariableOp?)while/lstm_cell_495/MatMul/ReadVariableOp?+while/lstm_cell_495/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_495/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_495_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_495/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_495/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_495/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_495_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_495/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_495/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_495/addAddV2$while/lstm_cell_495/MatMul:product:0&while/lstm_cell_495/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_495/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_495_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_495/BiasAddBiasAddwhile/lstm_cell_495/add:z:02while/lstm_cell_495/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_495/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_495/splitSplit,while/lstm_cell_495/split/split_dim:output:0$while/lstm_cell_495/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_495/SigmoidSigmoid"while/lstm_cell_495/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_495/Sigmoid_1Sigmoid"while/lstm_cell_495/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_495/mulMul!while/lstm_cell_495/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_495/ReluRelu"while/lstm_cell_495/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_495/mul_1Mulwhile/lstm_cell_495/Sigmoid:y:0&while/lstm_cell_495/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_495/add_1AddV2while/lstm_cell_495/mul:z:0while/lstm_cell_495/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_495/Sigmoid_2Sigmoid"while/lstm_cell_495/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_495/Relu_1Reluwhile/lstm_cell_495/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_495/mul_2Mul!while/lstm_cell_495/Sigmoid_2:y:0(while/lstm_cell_495/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_495/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_495/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_495/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_495/BiasAdd/ReadVariableOp*^while/lstm_cell_495/MatMul/ReadVariableOp,^while/lstm_cell_495/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_495_biasadd_readvariableop_resource5while_lstm_cell_495_biasadd_readvariableop_resource_0"n
4while_lstm_cell_495_matmul_1_readvariableop_resource6while_lstm_cell_495_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_495_matmul_readvariableop_resource4while_lstm_cell_495_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_495/BiasAdd/ReadVariableOp*while/lstm_cell_495/BiasAdd/ReadVariableOp2V
)while/lstm_cell_495/MatMul/ReadVariableOp)while/lstm_cell_495/MatMul/ReadVariableOp2Z
+while/lstm_cell_495/MatMul_1/ReadVariableOp+while/lstm_cell_495/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_496_layer_call_and_return_conditional_losses_3010935

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
while_body_3006485
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_497_3006509_0:2(/
while_lstm_cell_497_3006511_0:
(+
while_lstm_cell_497_3006513_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_497_3006509:2(-
while_lstm_cell_497_3006511:
()
while_lstm_cell_497_3006513:(??+while/lstm_cell_497/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_497/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_497_3006509_0while_lstm_cell_497_3006511_0while_lstm_cell_497_3006513_0*
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
J__inference_lstm_cell_497_layer_call_and_return_conditional_losses_3006471?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_497/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_497/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_497/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_497/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_497_3006509while_lstm_cell_497_3006509_0"<
while_lstm_cell_497_3006511while_lstm_cell_497_3006511_0"<
while_lstm_cell_497_3006513while_lstm_cell_497_3006513_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_497/StatefulPartitionedCall+while/lstm_cell_497/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_55_layer_call_and_return_conditional_losses_3008445

inputsH
5lstm_165_lstm_cell_495_matmul_readvariableop_resource:	?J
7lstm_165_lstm_cell_495_matmul_1_readvariableop_resource:	d?E
6lstm_165_lstm_cell_495_biasadd_readvariableop_resource:	?H
5lstm_166_lstm_cell_496_matmul_readvariableop_resource:	d?J
7lstm_166_lstm_cell_496_matmul_1_readvariableop_resource:	2?E
6lstm_166_lstm_cell_496_biasadd_readvariableop_resource:	?G
5lstm_167_lstm_cell_497_matmul_readvariableop_resource:2(I
7lstm_167_lstm_cell_497_matmul_1_readvariableop_resource:
(D
6lstm_167_lstm_cell_497_biasadd_readvariableop_resource:(9
'dense_55_matmul_readvariableop_resource:
6
(dense_55_biasadd_readvariableop_resource:
identity??dense_55/BiasAdd/ReadVariableOp?dense_55/MatMul/ReadVariableOp?-lstm_165/lstm_cell_495/BiasAdd/ReadVariableOp?,lstm_165/lstm_cell_495/MatMul/ReadVariableOp?.lstm_165/lstm_cell_495/MatMul_1/ReadVariableOp?lstm_165/while?-lstm_166/lstm_cell_496/BiasAdd/ReadVariableOp?,lstm_166/lstm_cell_496/MatMul/ReadVariableOp?.lstm_166/lstm_cell_496/MatMul_1/ReadVariableOp?lstm_166/while?-lstm_167/lstm_cell_497/BiasAdd/ReadVariableOp?,lstm_167/lstm_cell_497/MatMul/ReadVariableOp?.lstm_167/lstm_cell_497/MatMul_1/ReadVariableOp?lstm_167/whileD
lstm_165/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_165/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_165/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_165/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_165/strided_sliceStridedSlicelstm_165/Shape:output:0%lstm_165/strided_slice/stack:output:0'lstm_165/strided_slice/stack_1:output:0'lstm_165/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_165/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_165/zeros/packedPacklstm_165/strided_slice:output:0 lstm_165/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_165/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_165/zerosFilllstm_165/zeros/packed:output:0lstm_165/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_165/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_165/zeros_1/packedPacklstm_165/strided_slice:output:0"lstm_165/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_165/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_165/zeros_1Fill lstm_165/zeros_1/packed:output:0lstm_165/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_165/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_165/transpose	Transposeinputs lstm_165/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_165/Shape_1Shapelstm_165/transpose:y:0*
T0*
_output_shapes
:h
lstm_165/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_165/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_165/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_165/strided_slice_1StridedSlicelstm_165/Shape_1:output:0'lstm_165/strided_slice_1/stack:output:0)lstm_165/strided_slice_1/stack_1:output:0)lstm_165/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_165/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_165/TensorArrayV2TensorListReserve-lstm_165/TensorArrayV2/element_shape:output:0!lstm_165/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_165/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_165/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_165/transpose:y:0Glstm_165/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_165/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_165/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_165/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_165/strided_slice_2StridedSlicelstm_165/transpose:y:0'lstm_165/strided_slice_2/stack:output:0)lstm_165/strided_slice_2/stack_1:output:0)lstm_165/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_165/lstm_cell_495/MatMul/ReadVariableOpReadVariableOp5lstm_165_lstm_cell_495_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_165/lstm_cell_495/MatMulMatMul!lstm_165/strided_slice_2:output:04lstm_165/lstm_cell_495/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_165/lstm_cell_495/MatMul_1/ReadVariableOpReadVariableOp7lstm_165_lstm_cell_495_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_165/lstm_cell_495/MatMul_1MatMullstm_165/zeros:output:06lstm_165/lstm_cell_495/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_165/lstm_cell_495/addAddV2'lstm_165/lstm_cell_495/MatMul:product:0)lstm_165/lstm_cell_495/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_165/lstm_cell_495/BiasAdd/ReadVariableOpReadVariableOp6lstm_165_lstm_cell_495_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_165/lstm_cell_495/BiasAddBiasAddlstm_165/lstm_cell_495/add:z:05lstm_165/lstm_cell_495/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_165/lstm_cell_495/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_165/lstm_cell_495/splitSplit/lstm_165/lstm_cell_495/split/split_dim:output:0'lstm_165/lstm_cell_495/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_165/lstm_cell_495/SigmoidSigmoid%lstm_165/lstm_cell_495/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_165/lstm_cell_495/Sigmoid_1Sigmoid%lstm_165/lstm_cell_495/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_165/lstm_cell_495/mulMul$lstm_165/lstm_cell_495/Sigmoid_1:y:0lstm_165/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_165/lstm_cell_495/ReluRelu%lstm_165/lstm_cell_495/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_165/lstm_cell_495/mul_1Mul"lstm_165/lstm_cell_495/Sigmoid:y:0)lstm_165/lstm_cell_495/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_165/lstm_cell_495/add_1AddV2lstm_165/lstm_cell_495/mul:z:0 lstm_165/lstm_cell_495/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_165/lstm_cell_495/Sigmoid_2Sigmoid%lstm_165/lstm_cell_495/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_165/lstm_cell_495/Relu_1Relu lstm_165/lstm_cell_495/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_165/lstm_cell_495/mul_2Mul$lstm_165/lstm_cell_495/Sigmoid_2:y:0+lstm_165/lstm_cell_495/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_165/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_165/TensorArrayV2_1TensorListReserve/lstm_165/TensorArrayV2_1/element_shape:output:0!lstm_165/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_165/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_165/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_165/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_165/whileWhile$lstm_165/while/loop_counter:output:0*lstm_165/while/maximum_iterations:output:0lstm_165/time:output:0!lstm_165/TensorArrayV2_1:handle:0lstm_165/zeros:output:0lstm_165/zeros_1:output:0!lstm_165/strided_slice_1:output:0@lstm_165/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_165_lstm_cell_495_matmul_readvariableop_resource7lstm_165_lstm_cell_495_matmul_1_readvariableop_resource6lstm_165_lstm_cell_495_biasadd_readvariableop_resource*
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
lstm_165_while_body_3008077*'
condR
lstm_165_while_cond_3008076*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_165/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_165/TensorArrayV2Stack/TensorListStackTensorListStacklstm_165/while:output:3Blstm_165/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_165/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_165/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_165/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_165/strided_slice_3StridedSlice4lstm_165/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_165/strided_slice_3/stack:output:0)lstm_165/strided_slice_3/stack_1:output:0)lstm_165/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_165/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_165/transpose_1	Transpose4lstm_165/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_165/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_165/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_166/ShapeShapelstm_165/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_166/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_166/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_166/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_166/strided_sliceStridedSlicelstm_166/Shape:output:0%lstm_166/strided_slice/stack:output:0'lstm_166/strided_slice/stack_1:output:0'lstm_166/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_166/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_166/zeros/packedPacklstm_166/strided_slice:output:0 lstm_166/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_166/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_166/zerosFilllstm_166/zeros/packed:output:0lstm_166/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_166/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_166/zeros_1/packedPacklstm_166/strided_slice:output:0"lstm_166/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_166/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_166/zeros_1Fill lstm_166/zeros_1/packed:output:0lstm_166/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_166/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_166/transpose	Transposelstm_165/transpose_1:y:0 lstm_166/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_166/Shape_1Shapelstm_166/transpose:y:0*
T0*
_output_shapes
:h
lstm_166/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_166/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_166/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_166/strided_slice_1StridedSlicelstm_166/Shape_1:output:0'lstm_166/strided_slice_1/stack:output:0)lstm_166/strided_slice_1/stack_1:output:0)lstm_166/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_166/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_166/TensorArrayV2TensorListReserve-lstm_166/TensorArrayV2/element_shape:output:0!lstm_166/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_166/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_166/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_166/transpose:y:0Glstm_166/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_166/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_166/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_166/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_166/strided_slice_2StridedSlicelstm_166/transpose:y:0'lstm_166/strided_slice_2/stack:output:0)lstm_166/strided_slice_2/stack_1:output:0)lstm_166/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_166/lstm_cell_496/MatMul/ReadVariableOpReadVariableOp5lstm_166_lstm_cell_496_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_166/lstm_cell_496/MatMulMatMul!lstm_166/strided_slice_2:output:04lstm_166/lstm_cell_496/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_166/lstm_cell_496/MatMul_1/ReadVariableOpReadVariableOp7lstm_166_lstm_cell_496_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_166/lstm_cell_496/MatMul_1MatMullstm_166/zeros:output:06lstm_166/lstm_cell_496/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_166/lstm_cell_496/addAddV2'lstm_166/lstm_cell_496/MatMul:product:0)lstm_166/lstm_cell_496/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_166/lstm_cell_496/BiasAdd/ReadVariableOpReadVariableOp6lstm_166_lstm_cell_496_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_166/lstm_cell_496/BiasAddBiasAddlstm_166/lstm_cell_496/add:z:05lstm_166/lstm_cell_496/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_166/lstm_cell_496/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_166/lstm_cell_496/splitSplit/lstm_166/lstm_cell_496/split/split_dim:output:0'lstm_166/lstm_cell_496/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_166/lstm_cell_496/SigmoidSigmoid%lstm_166/lstm_cell_496/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_166/lstm_cell_496/Sigmoid_1Sigmoid%lstm_166/lstm_cell_496/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_166/lstm_cell_496/mulMul$lstm_166/lstm_cell_496/Sigmoid_1:y:0lstm_166/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_166/lstm_cell_496/ReluRelu%lstm_166/lstm_cell_496/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_166/lstm_cell_496/mul_1Mul"lstm_166/lstm_cell_496/Sigmoid:y:0)lstm_166/lstm_cell_496/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_166/lstm_cell_496/add_1AddV2lstm_166/lstm_cell_496/mul:z:0 lstm_166/lstm_cell_496/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_166/lstm_cell_496/Sigmoid_2Sigmoid%lstm_166/lstm_cell_496/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_166/lstm_cell_496/Relu_1Relu lstm_166/lstm_cell_496/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_166/lstm_cell_496/mul_2Mul$lstm_166/lstm_cell_496/Sigmoid_2:y:0+lstm_166/lstm_cell_496/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_166/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_166/TensorArrayV2_1TensorListReserve/lstm_166/TensorArrayV2_1/element_shape:output:0!lstm_166/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_166/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_166/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_166/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_166/whileWhile$lstm_166/while/loop_counter:output:0*lstm_166/while/maximum_iterations:output:0lstm_166/time:output:0!lstm_166/TensorArrayV2_1:handle:0lstm_166/zeros:output:0lstm_166/zeros_1:output:0!lstm_166/strided_slice_1:output:0@lstm_166/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_166_lstm_cell_496_matmul_readvariableop_resource7lstm_166_lstm_cell_496_matmul_1_readvariableop_resource6lstm_166_lstm_cell_496_biasadd_readvariableop_resource*
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
lstm_166_while_body_3008216*'
condR
lstm_166_while_cond_3008215*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_166/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_166/TensorArrayV2Stack/TensorListStackTensorListStacklstm_166/while:output:3Blstm_166/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_166/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_166/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_166/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_166/strided_slice_3StridedSlice4lstm_166/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_166/strided_slice_3/stack:output:0)lstm_166/strided_slice_3/stack_1:output:0)lstm_166/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_166/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_166/transpose_1	Transpose4lstm_166/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_166/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_166/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_167/ShapeShapelstm_166/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_167/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_167/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_167/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_167/strided_sliceStridedSlicelstm_167/Shape:output:0%lstm_167/strided_slice/stack:output:0'lstm_167/strided_slice/stack_1:output:0'lstm_167/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_167/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_167/zeros/packedPacklstm_167/strided_slice:output:0 lstm_167/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_167/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_167/zerosFilllstm_167/zeros/packed:output:0lstm_167/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_167/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_167/zeros_1/packedPacklstm_167/strided_slice:output:0"lstm_167/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_167/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_167/zeros_1Fill lstm_167/zeros_1/packed:output:0lstm_167/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_167/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_167/transpose	Transposelstm_166/transpose_1:y:0 lstm_167/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_167/Shape_1Shapelstm_167/transpose:y:0*
T0*
_output_shapes
:h
lstm_167/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_167/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_167/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_167/strided_slice_1StridedSlicelstm_167/Shape_1:output:0'lstm_167/strided_slice_1/stack:output:0)lstm_167/strided_slice_1/stack_1:output:0)lstm_167/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_167/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_167/TensorArrayV2TensorListReserve-lstm_167/TensorArrayV2/element_shape:output:0!lstm_167/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_167/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_167/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_167/transpose:y:0Glstm_167/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_167/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_167/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_167/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_167/strided_slice_2StridedSlicelstm_167/transpose:y:0'lstm_167/strided_slice_2/stack:output:0)lstm_167/strided_slice_2/stack_1:output:0)lstm_167/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_167/lstm_cell_497/MatMul/ReadVariableOpReadVariableOp5lstm_167_lstm_cell_497_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_167/lstm_cell_497/MatMulMatMul!lstm_167/strided_slice_2:output:04lstm_167/lstm_cell_497/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_167/lstm_cell_497/MatMul_1/ReadVariableOpReadVariableOp7lstm_167_lstm_cell_497_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_167/lstm_cell_497/MatMul_1MatMullstm_167/zeros:output:06lstm_167/lstm_cell_497/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_167/lstm_cell_497/addAddV2'lstm_167/lstm_cell_497/MatMul:product:0)lstm_167/lstm_cell_497/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_167/lstm_cell_497/BiasAdd/ReadVariableOpReadVariableOp6lstm_167_lstm_cell_497_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_167/lstm_cell_497/BiasAddBiasAddlstm_167/lstm_cell_497/add:z:05lstm_167/lstm_cell_497/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_167/lstm_cell_497/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_167/lstm_cell_497/splitSplit/lstm_167/lstm_cell_497/split/split_dim:output:0'lstm_167/lstm_cell_497/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_167/lstm_cell_497/SigmoidSigmoid%lstm_167/lstm_cell_497/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_167/lstm_cell_497/Sigmoid_1Sigmoid%lstm_167/lstm_cell_497/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_167/lstm_cell_497/mulMul$lstm_167/lstm_cell_497/Sigmoid_1:y:0lstm_167/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_167/lstm_cell_497/ReluRelu%lstm_167/lstm_cell_497/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_167/lstm_cell_497/mul_1Mul"lstm_167/lstm_cell_497/Sigmoid:y:0)lstm_167/lstm_cell_497/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_167/lstm_cell_497/add_1AddV2lstm_167/lstm_cell_497/mul:z:0 lstm_167/lstm_cell_497/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_167/lstm_cell_497/Sigmoid_2Sigmoid%lstm_167/lstm_cell_497/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_167/lstm_cell_497/Relu_1Relu lstm_167/lstm_cell_497/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_167/lstm_cell_497/mul_2Mul$lstm_167/lstm_cell_497/Sigmoid_2:y:0+lstm_167/lstm_cell_497/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_167/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_167/TensorArrayV2_1TensorListReserve/lstm_167/TensorArrayV2_1/element_shape:output:0!lstm_167/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_167/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_167/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_167/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_167/whileWhile$lstm_167/while/loop_counter:output:0*lstm_167/while/maximum_iterations:output:0lstm_167/time:output:0!lstm_167/TensorArrayV2_1:handle:0lstm_167/zeros:output:0lstm_167/zeros_1:output:0!lstm_167/strided_slice_1:output:0@lstm_167/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_167_lstm_cell_497_matmul_readvariableop_resource7lstm_167_lstm_cell_497_matmul_1_readvariableop_resource6lstm_167_lstm_cell_497_biasadd_readvariableop_resource*
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
lstm_167_while_body_3008355*'
condR
lstm_167_while_cond_3008354*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_167/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_167/TensorArrayV2Stack/TensorListStackTensorListStacklstm_167/while:output:3Blstm_167/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_167/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_167/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_167/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_167/strided_slice_3StridedSlice4lstm_167/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_167/strided_slice_3/stack:output:0)lstm_167/strided_slice_3/stack_1:output:0)lstm_167/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_167/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_167/transpose_1	Transpose4lstm_167/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_167/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_167/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_55/MatMul/ReadVariableOpReadVariableOp'dense_55_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_55/MatMulMatMul!lstm_167/strided_slice_3:output:0&dense_55/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_55/BiasAdd/ReadVariableOpReadVariableOp(dense_55_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_55/BiasAddBiasAdddense_55/MatMul:product:0'dense_55/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_55/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_55/BiasAdd/ReadVariableOp^dense_55/MatMul/ReadVariableOp.^lstm_165/lstm_cell_495/BiasAdd/ReadVariableOp-^lstm_165/lstm_cell_495/MatMul/ReadVariableOp/^lstm_165/lstm_cell_495/MatMul_1/ReadVariableOp^lstm_165/while.^lstm_166/lstm_cell_496/BiasAdd/ReadVariableOp-^lstm_166/lstm_cell_496/MatMul/ReadVariableOp/^lstm_166/lstm_cell_496/MatMul_1/ReadVariableOp^lstm_166/while.^lstm_167/lstm_cell_497/BiasAdd/ReadVariableOp-^lstm_167/lstm_cell_497/MatMul/ReadVariableOp/^lstm_167/lstm_cell_497/MatMul_1/ReadVariableOp^lstm_167/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_55/BiasAdd/ReadVariableOpdense_55/BiasAdd/ReadVariableOp2@
dense_55/MatMul/ReadVariableOpdense_55/MatMul/ReadVariableOp2^
-lstm_165/lstm_cell_495/BiasAdd/ReadVariableOp-lstm_165/lstm_cell_495/BiasAdd/ReadVariableOp2\
,lstm_165/lstm_cell_495/MatMul/ReadVariableOp,lstm_165/lstm_cell_495/MatMul/ReadVariableOp2`
.lstm_165/lstm_cell_495/MatMul_1/ReadVariableOp.lstm_165/lstm_cell_495/MatMul_1/ReadVariableOp2 
lstm_165/whilelstm_165/while2^
-lstm_166/lstm_cell_496/BiasAdd/ReadVariableOp-lstm_166/lstm_cell_496/BiasAdd/ReadVariableOp2\
,lstm_166/lstm_cell_496/MatMul/ReadVariableOp,lstm_166/lstm_cell_496/MatMul/ReadVariableOp2`
.lstm_166/lstm_cell_496/MatMul_1/ReadVariableOp.lstm_166/lstm_cell_496/MatMul_1/ReadVariableOp2 
lstm_166/whilelstm_166/while2^
-lstm_167/lstm_cell_497/BiasAdd/ReadVariableOp-lstm_167/lstm_cell_497/BiasAdd/ReadVariableOp2\
,lstm_167/lstm_cell_497/MatMul/ReadVariableOp,lstm_167/lstm_cell_497/MatMul/ReadVariableOp2`
.lstm_167/lstm_cell_497/MatMul_1/ReadVariableOp.lstm_167/lstm_cell_497/MatMul_1/ReadVariableOp2 
lstm_167/whilelstm_167/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3007664
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3007664___redundant_placeholder05
1while_while_cond_3007664___redundant_placeholder15
1while_while_cond_3007664___redundant_placeholder25
1while_while_cond_3007664___redundant_placeholder3
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
while_cond_3006818
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3006818___redundant_placeholder05
1while_while_cond_3006818___redundant_placeholder15
1while_while_cond_3006818___redundant_placeholder25
1while_while_cond_3006818___redundant_placeholder3
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
while_cond_3005975
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3005975___redundant_placeholder05
1while_while_cond_3005975___redundant_placeholder15
1while_while_cond_3005975___redundant_placeholder25
1while_while_cond_3005975___redundant_placeholder3
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
while_cond_3005784
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3005784___redundant_placeholder05
1while_while_cond_3005784___redundant_placeholder15
1while_while_cond_3005784___redundant_placeholder25
1while_while_cond_3005784___redundant_placeholder3
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
lstm_166_while_cond_3008642.
*lstm_166_while_lstm_166_while_loop_counter4
0lstm_166_while_lstm_166_while_maximum_iterations
lstm_166_while_placeholder 
lstm_166_while_placeholder_1 
lstm_166_while_placeholder_2 
lstm_166_while_placeholder_30
,lstm_166_while_less_lstm_166_strided_slice_1G
Clstm_166_while_lstm_166_while_cond_3008642___redundant_placeholder0G
Clstm_166_while_lstm_166_while_cond_3008642___redundant_placeholder1G
Clstm_166_while_lstm_166_while_cond_3008642___redundant_placeholder2G
Clstm_166_while_lstm_166_while_cond_3008642___redundant_placeholder3
lstm_166_while_identity
?
lstm_166/while/LessLesslstm_166_while_placeholder,lstm_166_while_less_lstm_166_strided_slice_1*
T0*
_output_shapes
: ]
lstm_166/while/IdentityIdentitylstm_166/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_166_while_identity lstm_166/while/Identity:output:0*(
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
lstm_165_while_cond_3008076.
*lstm_165_while_lstm_165_while_loop_counter4
0lstm_165_while_lstm_165_while_maximum_iterations
lstm_165_while_placeholder 
lstm_165_while_placeholder_1 
lstm_165_while_placeholder_2 
lstm_165_while_placeholder_30
,lstm_165_while_less_lstm_165_strided_slice_1G
Clstm_165_while_lstm_165_while_cond_3008076___redundant_placeholder0G
Clstm_165_while_lstm_165_while_cond_3008076___redundant_placeholder1G
Clstm_165_while_lstm_165_while_cond_3008076___redundant_placeholder2G
Clstm_165_while_lstm_165_while_cond_3008076___redundant_placeholder3
lstm_165_while_identity
?
lstm_165/while/LessLesslstm_165_while_placeholder,lstm_165_while_less_lstm_165_strided_slice_1*
T0*
_output_shapes
: ]
lstm_165/while/IdentityIdentitylstm_165/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_165_while_identity lstm_165/while/Identity:output:0*(
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
/__inference_lstm_cell_496_layer_call_fn_3010871

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
J__inference_lstm_cell_496_layer_call_and_return_conditional_losses_3006267o
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
?
?
J__inference_lstm_cell_496_layer_call_and_return_conditional_losses_3006121

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
while_body_3007119
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_497_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_497_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_497_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_497_matmul_readvariableop_resource:2(F
4while_lstm_cell_497_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_497_biasadd_readvariableop_resource:(??*while/lstm_cell_497/BiasAdd/ReadVariableOp?)while/lstm_cell_497/MatMul/ReadVariableOp?+while/lstm_cell_497/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_497/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_497_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_497/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_497/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_497/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_497_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_497/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_497/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_497/addAddV2$while/lstm_cell_497/MatMul:product:0&while/lstm_cell_497/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_497/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_497_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_497/BiasAddBiasAddwhile/lstm_cell_497/add:z:02while/lstm_cell_497/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_497/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_497/splitSplit,while/lstm_cell_497/split/split_dim:output:0$while/lstm_cell_497/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_497/SigmoidSigmoid"while/lstm_cell_497/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_497/Sigmoid_1Sigmoid"while/lstm_cell_497/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_497/mulMul!while/lstm_cell_497/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_497/ReluRelu"while/lstm_cell_497/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_497/mul_1Mulwhile/lstm_cell_497/Sigmoid:y:0&while/lstm_cell_497/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_497/add_1AddV2while/lstm_cell_497/mul:z:0while/lstm_cell_497/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_497/Sigmoid_2Sigmoid"while/lstm_cell_497/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_497/Relu_1Reluwhile/lstm_cell_497/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_497/mul_2Mul!while/lstm_cell_497/Sigmoid_2:y:0(while/lstm_cell_497/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_497/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_497/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_497/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_497/BiasAdd/ReadVariableOp*^while/lstm_cell_497/MatMul/ReadVariableOp,^while/lstm_cell_497/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_497_biasadd_readvariableop_resource5while_lstm_cell_497_biasadd_readvariableop_resource_0"n
4while_lstm_cell_497_matmul_1_readvariableop_resource6while_lstm_cell_497_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_497_matmul_readvariableop_resource4while_lstm_cell_497_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_497/BiasAdd/ReadVariableOp*while/lstm_cell_497/BiasAdd/ReadVariableOp2V
)while/lstm_cell_497/MatMul/ReadVariableOp)while/lstm_cell_497/MatMul/ReadVariableOp2Z
+while/lstm_cell_497/MatMul_1/ReadVariableOp+while/lstm_cell_497/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_166_layer_call_and_return_conditional_losses_3007053

inputs?
,lstm_cell_496_matmul_readvariableop_resource:	d?A
.lstm_cell_496_matmul_1_readvariableop_resource:	2?<
-lstm_cell_496_biasadd_readvariableop_resource:	?
identity??$lstm_cell_496/BiasAdd/ReadVariableOp?#lstm_cell_496/MatMul/ReadVariableOp?%lstm_cell_496/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_496/MatMul/ReadVariableOpReadVariableOp,lstm_cell_496_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_496/MatMulMatMulstrided_slice_2:output:0+lstm_cell_496/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_496/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_496_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_496/MatMul_1MatMulzeros:output:0-lstm_cell_496/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_496/addAddV2lstm_cell_496/MatMul:product:0 lstm_cell_496/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_496/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_496_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_496/BiasAddBiasAddlstm_cell_496/add:z:0,lstm_cell_496/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_496/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_496/splitSplit&lstm_cell_496/split/split_dim:output:0lstm_cell_496/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_496/SigmoidSigmoidlstm_cell_496/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_496/Sigmoid_1Sigmoidlstm_cell_496/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_496/mulMullstm_cell_496/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_496/ReluRelulstm_cell_496/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_496/mul_1Mullstm_cell_496/Sigmoid:y:0 lstm_cell_496/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_496/add_1AddV2lstm_cell_496/mul:z:0lstm_cell_496/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_496/Sigmoid_2Sigmoidlstm_cell_496/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_496/Relu_1Relulstm_cell_496/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_496/mul_2Mullstm_cell_496/Sigmoid_2:y:0"lstm_cell_496/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_496_matmul_readvariableop_resource.lstm_cell_496_matmul_1_readvariableop_resource-lstm_cell_496_biasadd_readvariableop_resource*
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
while_body_3006969*
condR
while_cond_3006968*K
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
NoOpNoOp%^lstm_cell_496/BiasAdd/ReadVariableOp$^lstm_cell_496/MatMul/ReadVariableOp&^lstm_cell_496/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_496/BiasAdd/ReadVariableOp$lstm_cell_496/BiasAdd/ReadVariableOp2J
#lstm_cell_496/MatMul/ReadVariableOp#lstm_cell_496/MatMul/ReadVariableOp2N
%lstm_cell_496/MatMul_1/ReadVariableOp%lstm_cell_496/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_3007500
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_496_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_496_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_496_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_496_matmul_readvariableop_resource:	d?G
4while_lstm_cell_496_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_496_biasadd_readvariableop_resource:	???*while/lstm_cell_496/BiasAdd/ReadVariableOp?)while/lstm_cell_496/MatMul/ReadVariableOp?+while/lstm_cell_496/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_496/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_496_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_496/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_496/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_496/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_496_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_496/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_496/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_496/addAddV2$while/lstm_cell_496/MatMul:product:0&while/lstm_cell_496/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_496/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_496_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_496/BiasAddBiasAddwhile/lstm_cell_496/add:z:02while/lstm_cell_496/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_496/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_496/splitSplit,while/lstm_cell_496/split/split_dim:output:0$while/lstm_cell_496/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_496/SigmoidSigmoid"while/lstm_cell_496/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_496/Sigmoid_1Sigmoid"while/lstm_cell_496/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_496/mulMul!while/lstm_cell_496/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_496/ReluRelu"while/lstm_cell_496/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_496/mul_1Mulwhile/lstm_cell_496/Sigmoid:y:0&while/lstm_cell_496/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_496/add_1AddV2while/lstm_cell_496/mul:z:0while/lstm_cell_496/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_496/Sigmoid_2Sigmoid"while/lstm_cell_496/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_496/Relu_1Reluwhile/lstm_cell_496/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_496/mul_2Mul!while/lstm_cell_496/Sigmoid_2:y:0(while/lstm_cell_496/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_496/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_496/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_496/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_496/BiasAdd/ReadVariableOp*^while/lstm_cell_496/MatMul/ReadVariableOp,^while/lstm_cell_496/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_496_biasadd_readvariableop_resource5while_lstm_cell_496_biasadd_readvariableop_resource_0"n
4while_lstm_cell_496_matmul_1_readvariableop_resource6while_lstm_cell_496_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_496_matmul_readvariableop_resource4while_lstm_cell_496_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_496/BiasAdd/ReadVariableOp*while/lstm_cell_496/BiasAdd/ReadVariableOp2V
)while/lstm_cell_496/MatMul/ReadVariableOp)while/lstm_cell_496/MatMul/ReadVariableOp2Z
+while/lstm_cell_496/MatMul_1/ReadVariableOp+while/lstm_cell_496/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_165_while_body_3008077.
*lstm_165_while_lstm_165_while_loop_counter4
0lstm_165_while_lstm_165_while_maximum_iterations
lstm_165_while_placeholder 
lstm_165_while_placeholder_1 
lstm_165_while_placeholder_2 
lstm_165_while_placeholder_3-
)lstm_165_while_lstm_165_strided_slice_1_0i
elstm_165_while_tensorarrayv2read_tensorlistgetitem_lstm_165_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_165_while_lstm_cell_495_matmul_readvariableop_resource_0:	?R
?lstm_165_while_lstm_cell_495_matmul_1_readvariableop_resource_0:	d?M
>lstm_165_while_lstm_cell_495_biasadd_readvariableop_resource_0:	?
lstm_165_while_identity
lstm_165_while_identity_1
lstm_165_while_identity_2
lstm_165_while_identity_3
lstm_165_while_identity_4
lstm_165_while_identity_5+
'lstm_165_while_lstm_165_strided_slice_1g
clstm_165_while_tensorarrayv2read_tensorlistgetitem_lstm_165_tensorarrayunstack_tensorlistfromtensorN
;lstm_165_while_lstm_cell_495_matmul_readvariableop_resource:	?P
=lstm_165_while_lstm_cell_495_matmul_1_readvariableop_resource:	d?K
<lstm_165_while_lstm_cell_495_biasadd_readvariableop_resource:	???3lstm_165/while/lstm_cell_495/BiasAdd/ReadVariableOp?2lstm_165/while/lstm_cell_495/MatMul/ReadVariableOp?4lstm_165/while/lstm_cell_495/MatMul_1/ReadVariableOp?
@lstm_165/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_165/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_165_while_tensorarrayv2read_tensorlistgetitem_lstm_165_tensorarrayunstack_tensorlistfromtensor_0lstm_165_while_placeholderIlstm_165/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_165/while/lstm_cell_495/MatMul/ReadVariableOpReadVariableOp=lstm_165_while_lstm_cell_495_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_165/while/lstm_cell_495/MatMulMatMul9lstm_165/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_165/while/lstm_cell_495/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_165/while/lstm_cell_495/MatMul_1/ReadVariableOpReadVariableOp?lstm_165_while_lstm_cell_495_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_165/while/lstm_cell_495/MatMul_1MatMullstm_165_while_placeholder_2<lstm_165/while/lstm_cell_495/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_165/while/lstm_cell_495/addAddV2-lstm_165/while/lstm_cell_495/MatMul:product:0/lstm_165/while/lstm_cell_495/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_165/while/lstm_cell_495/BiasAdd/ReadVariableOpReadVariableOp>lstm_165_while_lstm_cell_495_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_165/while/lstm_cell_495/BiasAddBiasAdd$lstm_165/while/lstm_cell_495/add:z:0;lstm_165/while/lstm_cell_495/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_165/while/lstm_cell_495/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_165/while/lstm_cell_495/splitSplit5lstm_165/while/lstm_cell_495/split/split_dim:output:0-lstm_165/while/lstm_cell_495/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_165/while/lstm_cell_495/SigmoidSigmoid+lstm_165/while/lstm_cell_495/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_165/while/lstm_cell_495/Sigmoid_1Sigmoid+lstm_165/while/lstm_cell_495/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_165/while/lstm_cell_495/mulMul*lstm_165/while/lstm_cell_495/Sigmoid_1:y:0lstm_165_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_165/while/lstm_cell_495/ReluRelu+lstm_165/while/lstm_cell_495/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_165/while/lstm_cell_495/mul_1Mul(lstm_165/while/lstm_cell_495/Sigmoid:y:0/lstm_165/while/lstm_cell_495/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_165/while/lstm_cell_495/add_1AddV2$lstm_165/while/lstm_cell_495/mul:z:0&lstm_165/while/lstm_cell_495/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_165/while/lstm_cell_495/Sigmoid_2Sigmoid+lstm_165/while/lstm_cell_495/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_165/while/lstm_cell_495/Relu_1Relu&lstm_165/while/lstm_cell_495/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_165/while/lstm_cell_495/mul_2Mul*lstm_165/while/lstm_cell_495/Sigmoid_2:y:01lstm_165/while/lstm_cell_495/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_165/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_165_while_placeholder_1lstm_165_while_placeholder&lstm_165/while/lstm_cell_495/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_165/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_165/while/addAddV2lstm_165_while_placeholderlstm_165/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_165/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_165/while/add_1AddV2*lstm_165_while_lstm_165_while_loop_counterlstm_165/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_165/while/IdentityIdentitylstm_165/while/add_1:z:0^lstm_165/while/NoOp*
T0*
_output_shapes
: ?
lstm_165/while/Identity_1Identity0lstm_165_while_lstm_165_while_maximum_iterations^lstm_165/while/NoOp*
T0*
_output_shapes
: t
lstm_165/while/Identity_2Identitylstm_165/while/add:z:0^lstm_165/while/NoOp*
T0*
_output_shapes
: ?
lstm_165/while/Identity_3IdentityClstm_165/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_165/while/NoOp*
T0*
_output_shapes
: ?
lstm_165/while/Identity_4Identity&lstm_165/while/lstm_cell_495/mul_2:z:0^lstm_165/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_165/while/Identity_5Identity&lstm_165/while/lstm_cell_495/add_1:z:0^lstm_165/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_165/while/NoOpNoOp4^lstm_165/while/lstm_cell_495/BiasAdd/ReadVariableOp3^lstm_165/while/lstm_cell_495/MatMul/ReadVariableOp5^lstm_165/while/lstm_cell_495/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_165_while_identity lstm_165/while/Identity:output:0"?
lstm_165_while_identity_1"lstm_165/while/Identity_1:output:0"?
lstm_165_while_identity_2"lstm_165/while/Identity_2:output:0"?
lstm_165_while_identity_3"lstm_165/while/Identity_3:output:0"?
lstm_165_while_identity_4"lstm_165/while/Identity_4:output:0"?
lstm_165_while_identity_5"lstm_165/while/Identity_5:output:0"T
'lstm_165_while_lstm_165_strided_slice_1)lstm_165_while_lstm_165_strided_slice_1_0"~
<lstm_165_while_lstm_cell_495_biasadd_readvariableop_resource>lstm_165_while_lstm_cell_495_biasadd_readvariableop_resource_0"?
=lstm_165_while_lstm_cell_495_matmul_1_readvariableop_resource?lstm_165_while_lstm_cell_495_matmul_1_readvariableop_resource_0"|
;lstm_165_while_lstm_cell_495_matmul_readvariableop_resource=lstm_165_while_lstm_cell_495_matmul_readvariableop_resource_0"?
clstm_165_while_tensorarrayv2read_tensorlistgetitem_lstm_165_tensorarrayunstack_tensorlistfromtensorelstm_165_while_tensorarrayv2read_tensorlistgetitem_lstm_165_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_165/while/lstm_cell_495/BiasAdd/ReadVariableOp3lstm_165/while/lstm_cell_495/BiasAdd/ReadVariableOp2h
2lstm_165/while/lstm_cell_495/MatMul/ReadVariableOp2lstm_165/while/lstm_cell_495/MatMul/ReadVariableOp2l
4lstm_165/while/lstm_cell_495/MatMul_1/ReadVariableOp4lstm_165/while/lstm_cell_495/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_165_layer_call_fn_3008883
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
E__inference_lstm_165_layer_call_and_return_conditional_losses_3005854|
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
)sequential_55_lstm_166_while_body_3005475J
Fsequential_55_lstm_166_while_sequential_55_lstm_166_while_loop_counterP
Lsequential_55_lstm_166_while_sequential_55_lstm_166_while_maximum_iterations,
(sequential_55_lstm_166_while_placeholder.
*sequential_55_lstm_166_while_placeholder_1.
*sequential_55_lstm_166_while_placeholder_2.
*sequential_55_lstm_166_while_placeholder_3I
Esequential_55_lstm_166_while_sequential_55_lstm_166_strided_slice_1_0?
?sequential_55_lstm_166_while_tensorarrayv2read_tensorlistgetitem_sequential_55_lstm_166_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_55_lstm_166_while_lstm_cell_496_matmul_readvariableop_resource_0:	d?`
Msequential_55_lstm_166_while_lstm_cell_496_matmul_1_readvariableop_resource_0:	2?[
Lsequential_55_lstm_166_while_lstm_cell_496_biasadd_readvariableop_resource_0:	?)
%sequential_55_lstm_166_while_identity+
'sequential_55_lstm_166_while_identity_1+
'sequential_55_lstm_166_while_identity_2+
'sequential_55_lstm_166_while_identity_3+
'sequential_55_lstm_166_while_identity_4+
'sequential_55_lstm_166_while_identity_5G
Csequential_55_lstm_166_while_sequential_55_lstm_166_strided_slice_1?
sequential_55_lstm_166_while_tensorarrayv2read_tensorlistgetitem_sequential_55_lstm_166_tensorarrayunstack_tensorlistfromtensor\
Isequential_55_lstm_166_while_lstm_cell_496_matmul_readvariableop_resource:	d?^
Ksequential_55_lstm_166_while_lstm_cell_496_matmul_1_readvariableop_resource:	2?Y
Jsequential_55_lstm_166_while_lstm_cell_496_biasadd_readvariableop_resource:	???Asequential_55/lstm_166/while/lstm_cell_496/BiasAdd/ReadVariableOp?@sequential_55/lstm_166/while/lstm_cell_496/MatMul/ReadVariableOp?Bsequential_55/lstm_166/while/lstm_cell_496/MatMul_1/ReadVariableOp?
Nsequential_55/lstm_166/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
@sequential_55/lstm_166/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_55_lstm_166_while_tensorarrayv2read_tensorlistgetitem_sequential_55_lstm_166_tensorarrayunstack_tensorlistfromtensor_0(sequential_55_lstm_166_while_placeholderWsequential_55/lstm_166/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
@sequential_55/lstm_166/while/lstm_cell_496/MatMul/ReadVariableOpReadVariableOpKsequential_55_lstm_166_while_lstm_cell_496_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
1sequential_55/lstm_166/while/lstm_cell_496/MatMulMatMulGsequential_55/lstm_166/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_55/lstm_166/while/lstm_cell_496/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_55/lstm_166/while/lstm_cell_496/MatMul_1/ReadVariableOpReadVariableOpMsequential_55_lstm_166_while_lstm_cell_496_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
3sequential_55/lstm_166/while/lstm_cell_496/MatMul_1MatMul*sequential_55_lstm_166_while_placeholder_2Jsequential_55/lstm_166/while/lstm_cell_496/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_55/lstm_166/while/lstm_cell_496/addAddV2;sequential_55/lstm_166/while/lstm_cell_496/MatMul:product:0=sequential_55/lstm_166/while/lstm_cell_496/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_55/lstm_166/while/lstm_cell_496/BiasAdd/ReadVariableOpReadVariableOpLsequential_55_lstm_166_while_lstm_cell_496_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_55/lstm_166/while/lstm_cell_496/BiasAddBiasAdd2sequential_55/lstm_166/while/lstm_cell_496/add:z:0Isequential_55/lstm_166/while/lstm_cell_496/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_55/lstm_166/while/lstm_cell_496/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_55/lstm_166/while/lstm_cell_496/splitSplitCsequential_55/lstm_166/while/lstm_cell_496/split/split_dim:output:0;sequential_55/lstm_166/while/lstm_cell_496/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
2sequential_55/lstm_166/while/lstm_cell_496/SigmoidSigmoid9sequential_55/lstm_166/while/lstm_cell_496/split:output:0*
T0*'
_output_shapes
:?????????2?
4sequential_55/lstm_166/while/lstm_cell_496/Sigmoid_1Sigmoid9sequential_55/lstm_166/while/lstm_cell_496/split:output:1*
T0*'
_output_shapes
:?????????2?
.sequential_55/lstm_166/while/lstm_cell_496/mulMul8sequential_55/lstm_166/while/lstm_cell_496/Sigmoid_1:y:0*sequential_55_lstm_166_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
/sequential_55/lstm_166/while/lstm_cell_496/ReluRelu9sequential_55/lstm_166/while/lstm_cell_496/split:output:2*
T0*'
_output_shapes
:?????????2?
0sequential_55/lstm_166/while/lstm_cell_496/mul_1Mul6sequential_55/lstm_166/while/lstm_cell_496/Sigmoid:y:0=sequential_55/lstm_166/while/lstm_cell_496/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
0sequential_55/lstm_166/while/lstm_cell_496/add_1AddV22sequential_55/lstm_166/while/lstm_cell_496/mul:z:04sequential_55/lstm_166/while/lstm_cell_496/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
4sequential_55/lstm_166/while/lstm_cell_496/Sigmoid_2Sigmoid9sequential_55/lstm_166/while/lstm_cell_496/split:output:3*
T0*'
_output_shapes
:?????????2?
1sequential_55/lstm_166/while/lstm_cell_496/Relu_1Relu4sequential_55/lstm_166/while/lstm_cell_496/add_1:z:0*
T0*'
_output_shapes
:?????????2?
0sequential_55/lstm_166/while/lstm_cell_496/mul_2Mul8sequential_55/lstm_166/while/lstm_cell_496/Sigmoid_2:y:0?sequential_55/lstm_166/while/lstm_cell_496/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Asequential_55/lstm_166/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_55_lstm_166_while_placeholder_1(sequential_55_lstm_166_while_placeholder4sequential_55/lstm_166/while/lstm_cell_496/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_55/lstm_166/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_55/lstm_166/while/addAddV2(sequential_55_lstm_166_while_placeholder+sequential_55/lstm_166/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_55/lstm_166/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_55/lstm_166/while/add_1AddV2Fsequential_55_lstm_166_while_sequential_55_lstm_166_while_loop_counter-sequential_55/lstm_166/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_55/lstm_166/while/IdentityIdentity&sequential_55/lstm_166/while/add_1:z:0"^sequential_55/lstm_166/while/NoOp*
T0*
_output_shapes
: ?
'sequential_55/lstm_166/while/Identity_1IdentityLsequential_55_lstm_166_while_sequential_55_lstm_166_while_maximum_iterations"^sequential_55/lstm_166/while/NoOp*
T0*
_output_shapes
: ?
'sequential_55/lstm_166/while/Identity_2Identity$sequential_55/lstm_166/while/add:z:0"^sequential_55/lstm_166/while/NoOp*
T0*
_output_shapes
: ?
'sequential_55/lstm_166/while/Identity_3IdentityQsequential_55/lstm_166/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_55/lstm_166/while/NoOp*
T0*
_output_shapes
: ?
'sequential_55/lstm_166/while/Identity_4Identity4sequential_55/lstm_166/while/lstm_cell_496/mul_2:z:0"^sequential_55/lstm_166/while/NoOp*
T0*'
_output_shapes
:?????????2?
'sequential_55/lstm_166/while/Identity_5Identity4sequential_55/lstm_166/while/lstm_cell_496/add_1:z:0"^sequential_55/lstm_166/while/NoOp*
T0*'
_output_shapes
:?????????2?
!sequential_55/lstm_166/while/NoOpNoOpB^sequential_55/lstm_166/while/lstm_cell_496/BiasAdd/ReadVariableOpA^sequential_55/lstm_166/while/lstm_cell_496/MatMul/ReadVariableOpC^sequential_55/lstm_166/while/lstm_cell_496/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_55_lstm_166_while_identity.sequential_55/lstm_166/while/Identity:output:0"[
'sequential_55_lstm_166_while_identity_10sequential_55/lstm_166/while/Identity_1:output:0"[
'sequential_55_lstm_166_while_identity_20sequential_55/lstm_166/while/Identity_2:output:0"[
'sequential_55_lstm_166_while_identity_30sequential_55/lstm_166/while/Identity_3:output:0"[
'sequential_55_lstm_166_while_identity_40sequential_55/lstm_166/while/Identity_4:output:0"[
'sequential_55_lstm_166_while_identity_50sequential_55/lstm_166/while/Identity_5:output:0"?
Jsequential_55_lstm_166_while_lstm_cell_496_biasadd_readvariableop_resourceLsequential_55_lstm_166_while_lstm_cell_496_biasadd_readvariableop_resource_0"?
Ksequential_55_lstm_166_while_lstm_cell_496_matmul_1_readvariableop_resourceMsequential_55_lstm_166_while_lstm_cell_496_matmul_1_readvariableop_resource_0"?
Isequential_55_lstm_166_while_lstm_cell_496_matmul_readvariableop_resourceKsequential_55_lstm_166_while_lstm_cell_496_matmul_readvariableop_resource_0"?
Csequential_55_lstm_166_while_sequential_55_lstm_166_strided_slice_1Esequential_55_lstm_166_while_sequential_55_lstm_166_strided_slice_1_0"?
sequential_55_lstm_166_while_tensorarrayv2read_tensorlistgetitem_sequential_55_lstm_166_tensorarrayunstack_tensorlistfromtensor?sequential_55_lstm_166_while_tensorarrayv2read_tensorlistgetitem_sequential_55_lstm_166_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Asequential_55/lstm_166/while/lstm_cell_496/BiasAdd/ReadVariableOpAsequential_55/lstm_166/while/lstm_cell_496/BiasAdd/ReadVariableOp2?
@sequential_55/lstm_166/while/lstm_cell_496/MatMul/ReadVariableOp@sequential_55/lstm_166/while/lstm_cell_496/MatMul/ReadVariableOp2?
Bsequential_55/lstm_166/while/lstm_cell_496/MatMul_1/ReadVariableOpBsequential_55/lstm_166/while/lstm_cell_496/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3007118
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3007118___redundant_placeholder05
1while_while_cond_3007118___redundant_placeholder15
1while_while_cond_3007118___redundant_placeholder25
1while_while_cond_3007118___redundant_placeholder3
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
/__inference_sequential_55_layer_call_fn_3008018

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
J__inference_sequential_55_layer_call_and_return_conditional_losses_3007817o
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
?J
?
E__inference_lstm_166_layer_call_and_return_conditional_losses_3007584

inputs?
,lstm_cell_496_matmul_readvariableop_resource:	d?A
.lstm_cell_496_matmul_1_readvariableop_resource:	2?<
-lstm_cell_496_biasadd_readvariableop_resource:	?
identity??$lstm_cell_496/BiasAdd/ReadVariableOp?#lstm_cell_496/MatMul/ReadVariableOp?%lstm_cell_496/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_496/MatMul/ReadVariableOpReadVariableOp,lstm_cell_496_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_496/MatMulMatMulstrided_slice_2:output:0+lstm_cell_496/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_496/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_496_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_496/MatMul_1MatMulzeros:output:0-lstm_cell_496/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_496/addAddV2lstm_cell_496/MatMul:product:0 lstm_cell_496/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_496/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_496_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_496/BiasAddBiasAddlstm_cell_496/add:z:0,lstm_cell_496/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_496/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_496/splitSplit&lstm_cell_496/split/split_dim:output:0lstm_cell_496/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_496/SigmoidSigmoidlstm_cell_496/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_496/Sigmoid_1Sigmoidlstm_cell_496/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_496/mulMullstm_cell_496/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_496/ReluRelulstm_cell_496/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_496/mul_1Mullstm_cell_496/Sigmoid:y:0 lstm_cell_496/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_496/add_1AddV2lstm_cell_496/mul:z:0lstm_cell_496/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_496/Sigmoid_2Sigmoidlstm_cell_496/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_496/Relu_1Relulstm_cell_496/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_496/mul_2Mullstm_cell_496/Sigmoid_2:y:0"lstm_cell_496/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_496_matmul_readvariableop_resource.lstm_cell_496_matmul_1_readvariableop_resource-lstm_cell_496_biasadd_readvariableop_resource*
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
while_body_3007500*
condR
while_cond_3007499*K
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
NoOpNoOp%^lstm_cell_496/BiasAdd/ReadVariableOp$^lstm_cell_496/MatMul/ReadVariableOp&^lstm_cell_496/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_496/BiasAdd/ReadVariableOp$lstm_cell_496/BiasAdd/ReadVariableOp2J
#lstm_cell_496/MatMul/ReadVariableOp#lstm_cell_496/MatMul/ReadVariableOp2N
%lstm_cell_496/MatMul_1/ReadVariableOp%lstm_cell_496/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_166_layer_call_fn_3009499
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
E__inference_lstm_166_layer_call_and_return_conditional_losses_3006204|
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
J__inference_lstm_cell_495_layer_call_and_return_conditional_losses_3005917

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
?
?
*__inference_lstm_167_layer_call_fn_3010148

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
E__inference_lstm_167_layer_call_and_return_conditional_losses_3007419o
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
)sequential_55_lstm_167_while_body_3005614J
Fsequential_55_lstm_167_while_sequential_55_lstm_167_while_loop_counterP
Lsequential_55_lstm_167_while_sequential_55_lstm_167_while_maximum_iterations,
(sequential_55_lstm_167_while_placeholder.
*sequential_55_lstm_167_while_placeholder_1.
*sequential_55_lstm_167_while_placeholder_2.
*sequential_55_lstm_167_while_placeholder_3I
Esequential_55_lstm_167_while_sequential_55_lstm_167_strided_slice_1_0?
?sequential_55_lstm_167_while_tensorarrayv2read_tensorlistgetitem_sequential_55_lstm_167_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_55_lstm_167_while_lstm_cell_497_matmul_readvariableop_resource_0:2(_
Msequential_55_lstm_167_while_lstm_cell_497_matmul_1_readvariableop_resource_0:
(Z
Lsequential_55_lstm_167_while_lstm_cell_497_biasadd_readvariableop_resource_0:()
%sequential_55_lstm_167_while_identity+
'sequential_55_lstm_167_while_identity_1+
'sequential_55_lstm_167_while_identity_2+
'sequential_55_lstm_167_while_identity_3+
'sequential_55_lstm_167_while_identity_4+
'sequential_55_lstm_167_while_identity_5G
Csequential_55_lstm_167_while_sequential_55_lstm_167_strided_slice_1?
sequential_55_lstm_167_while_tensorarrayv2read_tensorlistgetitem_sequential_55_lstm_167_tensorarrayunstack_tensorlistfromtensor[
Isequential_55_lstm_167_while_lstm_cell_497_matmul_readvariableop_resource:2(]
Ksequential_55_lstm_167_while_lstm_cell_497_matmul_1_readvariableop_resource:
(X
Jsequential_55_lstm_167_while_lstm_cell_497_biasadd_readvariableop_resource:(??Asequential_55/lstm_167/while/lstm_cell_497/BiasAdd/ReadVariableOp?@sequential_55/lstm_167/while/lstm_cell_497/MatMul/ReadVariableOp?Bsequential_55/lstm_167/while/lstm_cell_497/MatMul_1/ReadVariableOp?
Nsequential_55/lstm_167/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
@sequential_55/lstm_167/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_55_lstm_167_while_tensorarrayv2read_tensorlistgetitem_sequential_55_lstm_167_tensorarrayunstack_tensorlistfromtensor_0(sequential_55_lstm_167_while_placeholderWsequential_55/lstm_167/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
@sequential_55/lstm_167/while/lstm_cell_497/MatMul/ReadVariableOpReadVariableOpKsequential_55_lstm_167_while_lstm_cell_497_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
1sequential_55/lstm_167/while/lstm_cell_497/MatMulMatMulGsequential_55/lstm_167/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_55/lstm_167/while/lstm_cell_497/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Bsequential_55/lstm_167/while/lstm_cell_497/MatMul_1/ReadVariableOpReadVariableOpMsequential_55_lstm_167_while_lstm_cell_497_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
3sequential_55/lstm_167/while/lstm_cell_497/MatMul_1MatMul*sequential_55_lstm_167_while_placeholder_2Jsequential_55/lstm_167/while/lstm_cell_497/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.sequential_55/lstm_167/while/lstm_cell_497/addAddV2;sequential_55/lstm_167/while/lstm_cell_497/MatMul:product:0=sequential_55/lstm_167/while/lstm_cell_497/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Asequential_55/lstm_167/while/lstm_cell_497/BiasAdd/ReadVariableOpReadVariableOpLsequential_55_lstm_167_while_lstm_cell_497_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
2sequential_55/lstm_167/while/lstm_cell_497/BiasAddBiasAdd2sequential_55/lstm_167/while/lstm_cell_497/add:z:0Isequential_55/lstm_167/while/lstm_cell_497/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(|
:sequential_55/lstm_167/while/lstm_cell_497/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_55/lstm_167/while/lstm_cell_497/splitSplitCsequential_55/lstm_167/while/lstm_cell_497/split/split_dim:output:0;sequential_55/lstm_167/while/lstm_cell_497/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
2sequential_55/lstm_167/while/lstm_cell_497/SigmoidSigmoid9sequential_55/lstm_167/while/lstm_cell_497/split:output:0*
T0*'
_output_shapes
:?????????
?
4sequential_55/lstm_167/while/lstm_cell_497/Sigmoid_1Sigmoid9sequential_55/lstm_167/while/lstm_cell_497/split:output:1*
T0*'
_output_shapes
:?????????
?
.sequential_55/lstm_167/while/lstm_cell_497/mulMul8sequential_55/lstm_167/while/lstm_cell_497/Sigmoid_1:y:0*sequential_55_lstm_167_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
/sequential_55/lstm_167/while/lstm_cell_497/ReluRelu9sequential_55/lstm_167/while/lstm_cell_497/split:output:2*
T0*'
_output_shapes
:?????????
?
0sequential_55/lstm_167/while/lstm_cell_497/mul_1Mul6sequential_55/lstm_167/while/lstm_cell_497/Sigmoid:y:0=sequential_55/lstm_167/while/lstm_cell_497/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
0sequential_55/lstm_167/while/lstm_cell_497/add_1AddV22sequential_55/lstm_167/while/lstm_cell_497/mul:z:04sequential_55/lstm_167/while/lstm_cell_497/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
4sequential_55/lstm_167/while/lstm_cell_497/Sigmoid_2Sigmoid9sequential_55/lstm_167/while/lstm_cell_497/split:output:3*
T0*'
_output_shapes
:?????????
?
1sequential_55/lstm_167/while/lstm_cell_497/Relu_1Relu4sequential_55/lstm_167/while/lstm_cell_497/add_1:z:0*
T0*'
_output_shapes
:?????????
?
0sequential_55/lstm_167/while/lstm_cell_497/mul_2Mul8sequential_55/lstm_167/while/lstm_cell_497/Sigmoid_2:y:0?sequential_55/lstm_167/while/lstm_cell_497/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Asequential_55/lstm_167/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_55_lstm_167_while_placeholder_1(sequential_55_lstm_167_while_placeholder4sequential_55/lstm_167/while/lstm_cell_497/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_55/lstm_167/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_55/lstm_167/while/addAddV2(sequential_55_lstm_167_while_placeholder+sequential_55/lstm_167/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_55/lstm_167/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_55/lstm_167/while/add_1AddV2Fsequential_55_lstm_167_while_sequential_55_lstm_167_while_loop_counter-sequential_55/lstm_167/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_55/lstm_167/while/IdentityIdentity&sequential_55/lstm_167/while/add_1:z:0"^sequential_55/lstm_167/while/NoOp*
T0*
_output_shapes
: ?
'sequential_55/lstm_167/while/Identity_1IdentityLsequential_55_lstm_167_while_sequential_55_lstm_167_while_maximum_iterations"^sequential_55/lstm_167/while/NoOp*
T0*
_output_shapes
: ?
'sequential_55/lstm_167/while/Identity_2Identity$sequential_55/lstm_167/while/add:z:0"^sequential_55/lstm_167/while/NoOp*
T0*
_output_shapes
: ?
'sequential_55/lstm_167/while/Identity_3IdentityQsequential_55/lstm_167/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_55/lstm_167/while/NoOp*
T0*
_output_shapes
: ?
'sequential_55/lstm_167/while/Identity_4Identity4sequential_55/lstm_167/while/lstm_cell_497/mul_2:z:0"^sequential_55/lstm_167/while/NoOp*
T0*'
_output_shapes
:?????????
?
'sequential_55/lstm_167/while/Identity_5Identity4sequential_55/lstm_167/while/lstm_cell_497/add_1:z:0"^sequential_55/lstm_167/while/NoOp*
T0*'
_output_shapes
:?????????
?
!sequential_55/lstm_167/while/NoOpNoOpB^sequential_55/lstm_167/while/lstm_cell_497/BiasAdd/ReadVariableOpA^sequential_55/lstm_167/while/lstm_cell_497/MatMul/ReadVariableOpC^sequential_55/lstm_167/while/lstm_cell_497/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_55_lstm_167_while_identity.sequential_55/lstm_167/while/Identity:output:0"[
'sequential_55_lstm_167_while_identity_10sequential_55/lstm_167/while/Identity_1:output:0"[
'sequential_55_lstm_167_while_identity_20sequential_55/lstm_167/while/Identity_2:output:0"[
'sequential_55_lstm_167_while_identity_30sequential_55/lstm_167/while/Identity_3:output:0"[
'sequential_55_lstm_167_while_identity_40sequential_55/lstm_167/while/Identity_4:output:0"[
'sequential_55_lstm_167_while_identity_50sequential_55/lstm_167/while/Identity_5:output:0"?
Jsequential_55_lstm_167_while_lstm_cell_497_biasadd_readvariableop_resourceLsequential_55_lstm_167_while_lstm_cell_497_biasadd_readvariableop_resource_0"?
Ksequential_55_lstm_167_while_lstm_cell_497_matmul_1_readvariableop_resourceMsequential_55_lstm_167_while_lstm_cell_497_matmul_1_readvariableop_resource_0"?
Isequential_55_lstm_167_while_lstm_cell_497_matmul_readvariableop_resourceKsequential_55_lstm_167_while_lstm_cell_497_matmul_readvariableop_resource_0"?
Csequential_55_lstm_167_while_sequential_55_lstm_167_strided_slice_1Esequential_55_lstm_167_while_sequential_55_lstm_167_strided_slice_1_0"?
sequential_55_lstm_167_while_tensorarrayv2read_tensorlistgetitem_sequential_55_lstm_167_tensorarrayunstack_tensorlistfromtensor?sequential_55_lstm_167_while_tensorarrayv2read_tensorlistgetitem_sequential_55_lstm_167_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Asequential_55/lstm_167/while/lstm_cell_497/BiasAdd/ReadVariableOpAsequential_55/lstm_167/while/lstm_cell_497/BiasAdd/ReadVariableOp2?
@sequential_55/lstm_167/while/lstm_cell_497/MatMul/ReadVariableOp@sequential_55/lstm_167/while/lstm_cell_497/MatMul/ReadVariableOp2?
Bsequential_55/lstm_167/while/lstm_cell_497/MatMul_1/ReadVariableOpBsequential_55/lstm_167/while/lstm_cell_497/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3009260
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3009260___redundant_placeholder05
1while_while_cond_3009260___redundant_placeholder15
1while_while_cond_3009260___redundant_placeholder25
1while_while_cond_3009260___redundant_placeholder3
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
lstm_166_while_cond_3008215.
*lstm_166_while_lstm_166_while_loop_counter4
0lstm_166_while_lstm_166_while_maximum_iterations
lstm_166_while_placeholder 
lstm_166_while_placeholder_1 
lstm_166_while_placeholder_2 
lstm_166_while_placeholder_30
,lstm_166_while_less_lstm_166_strided_slice_1G
Clstm_166_while_lstm_166_while_cond_3008215___redundant_placeholder0G
Clstm_166_while_lstm_166_while_cond_3008215___redundant_placeholder1G
Clstm_166_while_lstm_166_while_cond_3008215___redundant_placeholder2G
Clstm_166_while_lstm_166_while_cond_3008215___redundant_placeholder3
lstm_166_while_identity
?
lstm_166/while/LessLesslstm_166_while_placeholder,lstm_166_while_less_lstm_166_strided_slice_1*
T0*
_output_shapes
: ]
lstm_166/while/IdentityIdentitylstm_166/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_166_while_identity lstm_166/while/Identity:output:0*(
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
E__inference_lstm_165_layer_call_and_return_conditional_losses_3005854

inputs(
lstm_cell_495_3005772:	?(
lstm_cell_495_3005774:	d?$
lstm_cell_495_3005776:	?
identity??%lstm_cell_495/StatefulPartitionedCall?while;
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
%lstm_cell_495/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_495_3005772lstm_cell_495_3005774lstm_cell_495_3005776*
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
J__inference_lstm_cell_495_layer_call_and_return_conditional_losses_3005771n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_495_3005772lstm_cell_495_3005774lstm_cell_495_3005776*
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
while_body_3005785*
condR
while_cond_3005784*K
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
NoOpNoOp&^lstm_cell_495/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_495/StatefulPartitionedCall%lstm_cell_495/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_497_layer_call_and_return_conditional_losses_3006617

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
while_cond_3006484
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3006484___redundant_placeholder05
1while_while_cond_3006484___redundant_placeholder15
1while_while_cond_3006484___redundant_placeholder25
1while_while_cond_3006484___redundant_placeholder3
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
while_body_3009591
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_496_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_496_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_496_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_496_matmul_readvariableop_resource:	d?G
4while_lstm_cell_496_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_496_biasadd_readvariableop_resource:	???*while/lstm_cell_496/BiasAdd/ReadVariableOp?)while/lstm_cell_496/MatMul/ReadVariableOp?+while/lstm_cell_496/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_496/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_496_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_496/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_496/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_496/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_496_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_496/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_496/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_496/addAddV2$while/lstm_cell_496/MatMul:product:0&while/lstm_cell_496/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_496/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_496_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_496/BiasAddBiasAddwhile/lstm_cell_496/add:z:02while/lstm_cell_496/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_496/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_496/splitSplit,while/lstm_cell_496/split/split_dim:output:0$while/lstm_cell_496/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_496/SigmoidSigmoid"while/lstm_cell_496/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_496/Sigmoid_1Sigmoid"while/lstm_cell_496/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_496/mulMul!while/lstm_cell_496/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_496/ReluRelu"while/lstm_cell_496/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_496/mul_1Mulwhile/lstm_cell_496/Sigmoid:y:0&while/lstm_cell_496/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_496/add_1AddV2while/lstm_cell_496/mul:z:0while/lstm_cell_496/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_496/Sigmoid_2Sigmoid"while/lstm_cell_496/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_496/Relu_1Reluwhile/lstm_cell_496/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_496/mul_2Mul!while/lstm_cell_496/Sigmoid_2:y:0(while/lstm_cell_496/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_496/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_496/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_496/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_496/BiasAdd/ReadVariableOp*^while/lstm_cell_496/MatMul/ReadVariableOp,^while/lstm_cell_496/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_496_biasadd_readvariableop_resource5while_lstm_cell_496_biasadd_readvariableop_resource_0"n
4while_lstm_cell_496_matmul_1_readvariableop_resource6while_lstm_cell_496_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_496_matmul_readvariableop_resource4while_lstm_cell_496_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_496/BiasAdd/ReadVariableOp*while/lstm_cell_496/BiasAdd/ReadVariableOp2V
)while/lstm_cell_496/MatMul/ReadVariableOp)while/lstm_cell_496/MatMul/ReadVariableOp2Z
+while/lstm_cell_496/MatMul_1/ReadVariableOp+while/lstm_cell_496/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_495_layer_call_and_return_conditional_losses_3010837

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
while_body_3010207
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_497_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_497_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_497_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_497_matmul_readvariableop_resource:2(F
4while_lstm_cell_497_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_497_biasadd_readvariableop_resource:(??*while/lstm_cell_497/BiasAdd/ReadVariableOp?)while/lstm_cell_497/MatMul/ReadVariableOp?+while/lstm_cell_497/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_497/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_497_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_497/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_497/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_497/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_497_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_497/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_497/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_497/addAddV2$while/lstm_cell_497/MatMul:product:0&while/lstm_cell_497/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_497/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_497_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_497/BiasAddBiasAddwhile/lstm_cell_497/add:z:02while/lstm_cell_497/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_497/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_497/splitSplit,while/lstm_cell_497/split/split_dim:output:0$while/lstm_cell_497/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_497/SigmoidSigmoid"while/lstm_cell_497/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_497/Sigmoid_1Sigmoid"while/lstm_cell_497/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_497/mulMul!while/lstm_cell_497/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_497/ReluRelu"while/lstm_cell_497/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_497/mul_1Mulwhile/lstm_cell_497/Sigmoid:y:0&while/lstm_cell_497/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_497/add_1AddV2while/lstm_cell_497/mul:z:0while/lstm_cell_497/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_497/Sigmoid_2Sigmoid"while/lstm_cell_497/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_497/Relu_1Reluwhile/lstm_cell_497/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_497/mul_2Mul!while/lstm_cell_497/Sigmoid_2:y:0(while/lstm_cell_497/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_497/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_497/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_497/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_497/BiasAdd/ReadVariableOp*^while/lstm_cell_497/MatMul/ReadVariableOp,^while/lstm_cell_497/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_497_biasadd_readvariableop_resource5while_lstm_cell_497_biasadd_readvariableop_resource_0"n
4while_lstm_cell_497_matmul_1_readvariableop_resource6while_lstm_cell_497_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_497_matmul_readvariableop_resource4while_lstm_cell_497_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_497/BiasAdd/ReadVariableOp*while/lstm_cell_497/BiasAdd/ReadVariableOp2V
)while/lstm_cell_497/MatMul/ReadVariableOp)while/lstm_cell_497/MatMul/ReadVariableOp2Z
+while/lstm_cell_497/MatMul_1/ReadVariableOp+while/lstm_cell_497/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3009261
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_495_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_495_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_495_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_495_matmul_readvariableop_resource:	?G
4while_lstm_cell_495_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_495_biasadd_readvariableop_resource:	???*while/lstm_cell_495/BiasAdd/ReadVariableOp?)while/lstm_cell_495/MatMul/ReadVariableOp?+while/lstm_cell_495/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_495/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_495_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_495/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_495/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_495/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_495_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_495/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_495/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_495/addAddV2$while/lstm_cell_495/MatMul:product:0&while/lstm_cell_495/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_495/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_495_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_495/BiasAddBiasAddwhile/lstm_cell_495/add:z:02while/lstm_cell_495/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_495/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_495/splitSplit,while/lstm_cell_495/split/split_dim:output:0$while/lstm_cell_495/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_495/SigmoidSigmoid"while/lstm_cell_495/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_495/Sigmoid_1Sigmoid"while/lstm_cell_495/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_495/mulMul!while/lstm_cell_495/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_495/ReluRelu"while/lstm_cell_495/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_495/mul_1Mulwhile/lstm_cell_495/Sigmoid:y:0&while/lstm_cell_495/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_495/add_1AddV2while/lstm_cell_495/mul:z:0while/lstm_cell_495/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_495/Sigmoid_2Sigmoid"while/lstm_cell_495/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_495/Relu_1Reluwhile/lstm_cell_495/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_495/mul_2Mul!while/lstm_cell_495/Sigmoid_2:y:0(while/lstm_cell_495/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_495/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_495/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_495/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_495/BiasAdd/ReadVariableOp*^while/lstm_cell_495/MatMul/ReadVariableOp,^while/lstm_cell_495/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_495_biasadd_readvariableop_resource5while_lstm_cell_495_biasadd_readvariableop_resource_0"n
4while_lstm_cell_495_matmul_1_readvariableop_resource6while_lstm_cell_495_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_495_matmul_readvariableop_resource4while_lstm_cell_495_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_495/BiasAdd/ReadVariableOp*while/lstm_cell_495/BiasAdd/ReadVariableOp2V
)while/lstm_cell_495/MatMul/ReadVariableOp)while/lstm_cell_495/MatMul/ReadVariableOp2Z
+while/lstm_cell_495/MatMul_1/ReadVariableOp+while/lstm_cell_495/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_495_layer_call_and_return_conditional_losses_3005771

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
while_cond_3010492
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3010492___redundant_placeholder05
1while_while_cond_3010492___redundant_placeholder15
1while_while_cond_3010492___redundant_placeholder25
1while_while_cond_3010492___redundant_placeholder3
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
while_body_3006819
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_495_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_495_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_495_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_495_matmul_readvariableop_resource:	?G
4while_lstm_cell_495_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_495_biasadd_readvariableop_resource:	???*while/lstm_cell_495/BiasAdd/ReadVariableOp?)while/lstm_cell_495/MatMul/ReadVariableOp?+while/lstm_cell_495/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_495/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_495_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_495/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_495/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_495/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_495_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_495/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_495/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_495/addAddV2$while/lstm_cell_495/MatMul:product:0&while/lstm_cell_495/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_495/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_495_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_495/BiasAddBiasAddwhile/lstm_cell_495/add:z:02while/lstm_cell_495/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_495/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_495/splitSplit,while/lstm_cell_495/split/split_dim:output:0$while/lstm_cell_495/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_495/SigmoidSigmoid"while/lstm_cell_495/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_495/Sigmoid_1Sigmoid"while/lstm_cell_495/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_495/mulMul!while/lstm_cell_495/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_495/ReluRelu"while/lstm_cell_495/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_495/mul_1Mulwhile/lstm_cell_495/Sigmoid:y:0&while/lstm_cell_495/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_495/add_1AddV2while/lstm_cell_495/mul:z:0while/lstm_cell_495/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_495/Sigmoid_2Sigmoid"while/lstm_cell_495/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_495/Relu_1Reluwhile/lstm_cell_495/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_495/mul_2Mul!while/lstm_cell_495/Sigmoid_2:y:0(while/lstm_cell_495/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_495/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_495/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_495/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_495/BiasAdd/ReadVariableOp*^while/lstm_cell_495/MatMul/ReadVariableOp,^while/lstm_cell_495/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_495_biasadd_readvariableop_resource5while_lstm_cell_495_biasadd_readvariableop_resource_0"n
4while_lstm_cell_495_matmul_1_readvariableop_resource6while_lstm_cell_495_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_495_matmul_readvariableop_resource4while_lstm_cell_495_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_495/BiasAdd/ReadVariableOp*while/lstm_cell_495/BiasAdd/ReadVariableOp2V
)while/lstm_cell_495/MatMul/ReadVariableOp)while/lstm_cell_495/MatMul/ReadVariableOp2Z
+while/lstm_cell_495/MatMul_1/ReadVariableOp+while/lstm_cell_495/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_167_layer_call_and_return_conditional_losses_3010577

inputs>
,lstm_cell_497_matmul_readvariableop_resource:2(@
.lstm_cell_497_matmul_1_readvariableop_resource:
(;
-lstm_cell_497_biasadd_readvariableop_resource:(
identity??$lstm_cell_497/BiasAdd/ReadVariableOp?#lstm_cell_497/MatMul/ReadVariableOp?%lstm_cell_497/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_497/MatMul/ReadVariableOpReadVariableOp,lstm_cell_497_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_497/MatMulMatMulstrided_slice_2:output:0+lstm_cell_497/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_497/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_497_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_497/MatMul_1MatMulzeros:output:0-lstm_cell_497/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_497/addAddV2lstm_cell_497/MatMul:product:0 lstm_cell_497/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_497/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_497_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_497/BiasAddBiasAddlstm_cell_497/add:z:0,lstm_cell_497/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_497/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_497/splitSplit&lstm_cell_497/split/split_dim:output:0lstm_cell_497/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_497/SigmoidSigmoidlstm_cell_497/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_497/Sigmoid_1Sigmoidlstm_cell_497/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_497/mulMullstm_cell_497/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_497/ReluRelulstm_cell_497/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_497/mul_1Mullstm_cell_497/Sigmoid:y:0 lstm_cell_497/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_497/add_1AddV2lstm_cell_497/mul:z:0lstm_cell_497/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_497/Sigmoid_2Sigmoidlstm_cell_497/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_497/Relu_1Relulstm_cell_497/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_497/mul_2Mullstm_cell_497/Sigmoid_2:y:0"lstm_cell_497/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_497_matmul_readvariableop_resource.lstm_cell_497_matmul_1_readvariableop_resource-lstm_cell_497_biasadd_readvariableop_resource*
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
while_body_3010493*
condR
while_cond_3010492*K
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
NoOpNoOp%^lstm_cell_497/BiasAdd/ReadVariableOp$^lstm_cell_497/MatMul/ReadVariableOp&^lstm_cell_497/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_497/BiasAdd/ReadVariableOp$lstm_cell_497/BiasAdd/ReadVariableOp2J
#lstm_cell_497/MatMul/ReadVariableOp#lstm_cell_497/MatMul/ReadVariableOp2N
%lstm_cell_497/MatMul_1/ReadVariableOp%lstm_cell_497/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
lstm_167_while_cond_3008354.
*lstm_167_while_lstm_167_while_loop_counter4
0lstm_167_while_lstm_167_while_maximum_iterations
lstm_167_while_placeholder 
lstm_167_while_placeholder_1 
lstm_167_while_placeholder_2 
lstm_167_while_placeholder_30
,lstm_167_while_less_lstm_167_strided_slice_1G
Clstm_167_while_lstm_167_while_cond_3008354___redundant_placeholder0G
Clstm_167_while_lstm_167_while_cond_3008354___redundant_placeholder1G
Clstm_167_while_lstm_167_while_cond_3008354___redundant_placeholder2G
Clstm_167_while_lstm_167_while_cond_3008354___redundant_placeholder3
lstm_167_while_identity
?
lstm_167/while/LessLesslstm_167_while_placeholder,lstm_167_while_less_lstm_167_strided_slice_1*
T0*
_output_shapes
: ]
lstm_167/while/IdentityIdentitylstm_167/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_167_while_identity lstm_167/while/Identity:output:0*(
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
while_body_3009877
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_496_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_496_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_496_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_496_matmul_readvariableop_resource:	d?G
4while_lstm_cell_496_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_496_biasadd_readvariableop_resource:	???*while/lstm_cell_496/BiasAdd/ReadVariableOp?)while/lstm_cell_496/MatMul/ReadVariableOp?+while/lstm_cell_496/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_496/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_496_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_496/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_496/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_496/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_496_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_496/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_496/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_496/addAddV2$while/lstm_cell_496/MatMul:product:0&while/lstm_cell_496/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_496/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_496_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_496/BiasAddBiasAddwhile/lstm_cell_496/add:z:02while/lstm_cell_496/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_496/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_496/splitSplit,while/lstm_cell_496/split/split_dim:output:0$while/lstm_cell_496/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_496/SigmoidSigmoid"while/lstm_cell_496/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_496/Sigmoid_1Sigmoid"while/lstm_cell_496/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_496/mulMul!while/lstm_cell_496/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_496/ReluRelu"while/lstm_cell_496/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_496/mul_1Mulwhile/lstm_cell_496/Sigmoid:y:0&while/lstm_cell_496/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_496/add_1AddV2while/lstm_cell_496/mul:z:0while/lstm_cell_496/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_496/Sigmoid_2Sigmoid"while/lstm_cell_496/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_496/Relu_1Reluwhile/lstm_cell_496/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_496/mul_2Mul!while/lstm_cell_496/Sigmoid_2:y:0(while/lstm_cell_496/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_496/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_496/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_496/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_496/BiasAdd/ReadVariableOp*^while/lstm_cell_496/MatMul/ReadVariableOp,^while/lstm_cell_496/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_496_biasadd_readvariableop_resource5while_lstm_cell_496_biasadd_readvariableop_resource_0"n
4while_lstm_cell_496_matmul_1_readvariableop_resource6while_lstm_cell_496_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_496_matmul_readvariableop_resource4while_lstm_cell_496_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_496/BiasAdd/ReadVariableOp*while/lstm_cell_496/BiasAdd/ReadVariableOp2V
)while/lstm_cell_496/MatMul/ReadVariableOp)while/lstm_cell_496/MatMul/ReadVariableOp2Z
+while/lstm_cell_496/MatMul_1/ReadVariableOp+while/lstm_cell_496/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_dense_55_layer_call_fn_3010729

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
E__inference_dense_55_layer_call_and_return_conditional_losses_3007221o
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
while_body_3006676
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_497_3006700_0:2(/
while_lstm_cell_497_3006702_0:
(+
while_lstm_cell_497_3006704_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_497_3006700:2(-
while_lstm_cell_497_3006702:
()
while_lstm_cell_497_3006704:(??+while/lstm_cell_497/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_497/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_497_3006700_0while_lstm_cell_497_3006702_0while_lstm_cell_497_3006704_0*
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
J__inference_lstm_cell_497_layer_call_and_return_conditional_losses_3006617?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_497/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_497/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_497/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_497/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_497_3006700while_lstm_cell_497_3006700_0"<
while_lstm_cell_497_3006702while_lstm_cell_497_3006702_0"<
while_lstm_cell_497_3006704while_lstm_cell_497_3006704_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_497/StatefulPartitionedCall+while/lstm_cell_497/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3006968
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3006968___redundant_placeholder05
1while_while_cond_3006968___redundant_placeholder15
1while_while_cond_3006968___redundant_placeholder25
1while_while_cond_3006968___redundant_placeholder3
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
E__inference_lstm_166_layer_call_and_return_conditional_losses_3006395

inputs(
lstm_cell_496_3006313:	d?(
lstm_cell_496_3006315:	2?$
lstm_cell_496_3006317:	?
identity??%lstm_cell_496/StatefulPartitionedCall?while;
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
%lstm_cell_496/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_496_3006313lstm_cell_496_3006315lstm_cell_496_3006317*
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
J__inference_lstm_cell_496_layer_call_and_return_conditional_losses_3006267n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_496_3006313lstm_cell_496_3006315lstm_cell_496_3006317*
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
while_body_3006326*
condR
while_cond_3006325*K
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
NoOpNoOp&^lstm_cell_496/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_496/StatefulPartitionedCall%lstm_cell_496/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
J__inference_sequential_55_layer_call_and_return_conditional_losses_3007228

inputs#
lstm_165_3006904:	?#
lstm_165_3006906:	d?
lstm_165_3006908:	?#
lstm_166_3007054:	d?#
lstm_166_3007056:	2?
lstm_166_3007058:	?"
lstm_167_3007204:2("
lstm_167_3007206:
(
lstm_167_3007208:("
dense_55_3007222:

dense_55_3007224:
identity?? dense_55/StatefulPartitionedCall? lstm_165/StatefulPartitionedCall? lstm_166/StatefulPartitionedCall? lstm_167/StatefulPartitionedCall?
 lstm_165/StatefulPartitionedCallStatefulPartitionedCallinputslstm_165_3006904lstm_165_3006906lstm_165_3006908*
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
E__inference_lstm_165_layer_call_and_return_conditional_losses_3006903?
 lstm_166/StatefulPartitionedCallStatefulPartitionedCall)lstm_165/StatefulPartitionedCall:output:0lstm_166_3007054lstm_166_3007056lstm_166_3007058*
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
E__inference_lstm_166_layer_call_and_return_conditional_losses_3007053?
 lstm_167/StatefulPartitionedCallStatefulPartitionedCall)lstm_166/StatefulPartitionedCall:output:0lstm_167_3007204lstm_167_3007206lstm_167_3007208*
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
E__inference_lstm_167_layer_call_and_return_conditional_losses_3007203?
 dense_55/StatefulPartitionedCallStatefulPartitionedCall)lstm_167/StatefulPartitionedCall:output:0dense_55_3007222dense_55_3007224*
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
E__inference_dense_55_layer_call_and_return_conditional_losses_3007221x
IdentityIdentity)dense_55/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_55/StatefulPartitionedCall!^lstm_165/StatefulPartitionedCall!^lstm_166/StatefulPartitionedCall!^lstm_167/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_55/StatefulPartitionedCall dense_55/StatefulPartitionedCall2D
 lstm_165/StatefulPartitionedCall lstm_165/StatefulPartitionedCall2D
 lstm_166/StatefulPartitionedCall lstm_166/StatefulPartitionedCall2D
 lstm_167/StatefulPartitionedCall lstm_167/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_165_layer_call_fn_3008894
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
E__inference_lstm_165_layer_call_and_return_conditional_losses_3006045|
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
??
?
J__inference_sequential_55_layer_call_and_return_conditional_losses_3008872

inputsH
5lstm_165_lstm_cell_495_matmul_readvariableop_resource:	?J
7lstm_165_lstm_cell_495_matmul_1_readvariableop_resource:	d?E
6lstm_165_lstm_cell_495_biasadd_readvariableop_resource:	?H
5lstm_166_lstm_cell_496_matmul_readvariableop_resource:	d?J
7lstm_166_lstm_cell_496_matmul_1_readvariableop_resource:	2?E
6lstm_166_lstm_cell_496_biasadd_readvariableop_resource:	?G
5lstm_167_lstm_cell_497_matmul_readvariableop_resource:2(I
7lstm_167_lstm_cell_497_matmul_1_readvariableop_resource:
(D
6lstm_167_lstm_cell_497_biasadd_readvariableop_resource:(9
'dense_55_matmul_readvariableop_resource:
6
(dense_55_biasadd_readvariableop_resource:
identity??dense_55/BiasAdd/ReadVariableOp?dense_55/MatMul/ReadVariableOp?-lstm_165/lstm_cell_495/BiasAdd/ReadVariableOp?,lstm_165/lstm_cell_495/MatMul/ReadVariableOp?.lstm_165/lstm_cell_495/MatMul_1/ReadVariableOp?lstm_165/while?-lstm_166/lstm_cell_496/BiasAdd/ReadVariableOp?,lstm_166/lstm_cell_496/MatMul/ReadVariableOp?.lstm_166/lstm_cell_496/MatMul_1/ReadVariableOp?lstm_166/while?-lstm_167/lstm_cell_497/BiasAdd/ReadVariableOp?,lstm_167/lstm_cell_497/MatMul/ReadVariableOp?.lstm_167/lstm_cell_497/MatMul_1/ReadVariableOp?lstm_167/whileD
lstm_165/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_165/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_165/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_165/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_165/strided_sliceStridedSlicelstm_165/Shape:output:0%lstm_165/strided_slice/stack:output:0'lstm_165/strided_slice/stack_1:output:0'lstm_165/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_165/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_165/zeros/packedPacklstm_165/strided_slice:output:0 lstm_165/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_165/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_165/zerosFilllstm_165/zeros/packed:output:0lstm_165/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_165/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_165/zeros_1/packedPacklstm_165/strided_slice:output:0"lstm_165/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_165/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_165/zeros_1Fill lstm_165/zeros_1/packed:output:0lstm_165/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_165/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_165/transpose	Transposeinputs lstm_165/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_165/Shape_1Shapelstm_165/transpose:y:0*
T0*
_output_shapes
:h
lstm_165/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_165/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_165/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_165/strided_slice_1StridedSlicelstm_165/Shape_1:output:0'lstm_165/strided_slice_1/stack:output:0)lstm_165/strided_slice_1/stack_1:output:0)lstm_165/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_165/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_165/TensorArrayV2TensorListReserve-lstm_165/TensorArrayV2/element_shape:output:0!lstm_165/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_165/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_165/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_165/transpose:y:0Glstm_165/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_165/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_165/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_165/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_165/strided_slice_2StridedSlicelstm_165/transpose:y:0'lstm_165/strided_slice_2/stack:output:0)lstm_165/strided_slice_2/stack_1:output:0)lstm_165/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_165/lstm_cell_495/MatMul/ReadVariableOpReadVariableOp5lstm_165_lstm_cell_495_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_165/lstm_cell_495/MatMulMatMul!lstm_165/strided_slice_2:output:04lstm_165/lstm_cell_495/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_165/lstm_cell_495/MatMul_1/ReadVariableOpReadVariableOp7lstm_165_lstm_cell_495_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_165/lstm_cell_495/MatMul_1MatMullstm_165/zeros:output:06lstm_165/lstm_cell_495/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_165/lstm_cell_495/addAddV2'lstm_165/lstm_cell_495/MatMul:product:0)lstm_165/lstm_cell_495/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_165/lstm_cell_495/BiasAdd/ReadVariableOpReadVariableOp6lstm_165_lstm_cell_495_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_165/lstm_cell_495/BiasAddBiasAddlstm_165/lstm_cell_495/add:z:05lstm_165/lstm_cell_495/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_165/lstm_cell_495/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_165/lstm_cell_495/splitSplit/lstm_165/lstm_cell_495/split/split_dim:output:0'lstm_165/lstm_cell_495/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_165/lstm_cell_495/SigmoidSigmoid%lstm_165/lstm_cell_495/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_165/lstm_cell_495/Sigmoid_1Sigmoid%lstm_165/lstm_cell_495/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_165/lstm_cell_495/mulMul$lstm_165/lstm_cell_495/Sigmoid_1:y:0lstm_165/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_165/lstm_cell_495/ReluRelu%lstm_165/lstm_cell_495/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_165/lstm_cell_495/mul_1Mul"lstm_165/lstm_cell_495/Sigmoid:y:0)lstm_165/lstm_cell_495/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_165/lstm_cell_495/add_1AddV2lstm_165/lstm_cell_495/mul:z:0 lstm_165/lstm_cell_495/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_165/lstm_cell_495/Sigmoid_2Sigmoid%lstm_165/lstm_cell_495/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_165/lstm_cell_495/Relu_1Relu lstm_165/lstm_cell_495/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_165/lstm_cell_495/mul_2Mul$lstm_165/lstm_cell_495/Sigmoid_2:y:0+lstm_165/lstm_cell_495/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_165/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_165/TensorArrayV2_1TensorListReserve/lstm_165/TensorArrayV2_1/element_shape:output:0!lstm_165/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_165/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_165/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_165/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_165/whileWhile$lstm_165/while/loop_counter:output:0*lstm_165/while/maximum_iterations:output:0lstm_165/time:output:0!lstm_165/TensorArrayV2_1:handle:0lstm_165/zeros:output:0lstm_165/zeros_1:output:0!lstm_165/strided_slice_1:output:0@lstm_165/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_165_lstm_cell_495_matmul_readvariableop_resource7lstm_165_lstm_cell_495_matmul_1_readvariableop_resource6lstm_165_lstm_cell_495_biasadd_readvariableop_resource*
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
lstm_165_while_body_3008504*'
condR
lstm_165_while_cond_3008503*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_165/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_165/TensorArrayV2Stack/TensorListStackTensorListStacklstm_165/while:output:3Blstm_165/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_165/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_165/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_165/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_165/strided_slice_3StridedSlice4lstm_165/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_165/strided_slice_3/stack:output:0)lstm_165/strided_slice_3/stack_1:output:0)lstm_165/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_165/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_165/transpose_1	Transpose4lstm_165/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_165/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_165/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_166/ShapeShapelstm_165/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_166/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_166/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_166/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_166/strided_sliceStridedSlicelstm_166/Shape:output:0%lstm_166/strided_slice/stack:output:0'lstm_166/strided_slice/stack_1:output:0'lstm_166/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_166/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_166/zeros/packedPacklstm_166/strided_slice:output:0 lstm_166/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_166/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_166/zerosFilllstm_166/zeros/packed:output:0lstm_166/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_166/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_166/zeros_1/packedPacklstm_166/strided_slice:output:0"lstm_166/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_166/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_166/zeros_1Fill lstm_166/zeros_1/packed:output:0lstm_166/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_166/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_166/transpose	Transposelstm_165/transpose_1:y:0 lstm_166/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_166/Shape_1Shapelstm_166/transpose:y:0*
T0*
_output_shapes
:h
lstm_166/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_166/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_166/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_166/strided_slice_1StridedSlicelstm_166/Shape_1:output:0'lstm_166/strided_slice_1/stack:output:0)lstm_166/strided_slice_1/stack_1:output:0)lstm_166/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_166/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_166/TensorArrayV2TensorListReserve-lstm_166/TensorArrayV2/element_shape:output:0!lstm_166/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_166/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_166/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_166/transpose:y:0Glstm_166/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_166/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_166/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_166/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_166/strided_slice_2StridedSlicelstm_166/transpose:y:0'lstm_166/strided_slice_2/stack:output:0)lstm_166/strided_slice_2/stack_1:output:0)lstm_166/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_166/lstm_cell_496/MatMul/ReadVariableOpReadVariableOp5lstm_166_lstm_cell_496_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_166/lstm_cell_496/MatMulMatMul!lstm_166/strided_slice_2:output:04lstm_166/lstm_cell_496/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_166/lstm_cell_496/MatMul_1/ReadVariableOpReadVariableOp7lstm_166_lstm_cell_496_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_166/lstm_cell_496/MatMul_1MatMullstm_166/zeros:output:06lstm_166/lstm_cell_496/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_166/lstm_cell_496/addAddV2'lstm_166/lstm_cell_496/MatMul:product:0)lstm_166/lstm_cell_496/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_166/lstm_cell_496/BiasAdd/ReadVariableOpReadVariableOp6lstm_166_lstm_cell_496_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_166/lstm_cell_496/BiasAddBiasAddlstm_166/lstm_cell_496/add:z:05lstm_166/lstm_cell_496/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_166/lstm_cell_496/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_166/lstm_cell_496/splitSplit/lstm_166/lstm_cell_496/split/split_dim:output:0'lstm_166/lstm_cell_496/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_166/lstm_cell_496/SigmoidSigmoid%lstm_166/lstm_cell_496/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_166/lstm_cell_496/Sigmoid_1Sigmoid%lstm_166/lstm_cell_496/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_166/lstm_cell_496/mulMul$lstm_166/lstm_cell_496/Sigmoid_1:y:0lstm_166/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_166/lstm_cell_496/ReluRelu%lstm_166/lstm_cell_496/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_166/lstm_cell_496/mul_1Mul"lstm_166/lstm_cell_496/Sigmoid:y:0)lstm_166/lstm_cell_496/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_166/lstm_cell_496/add_1AddV2lstm_166/lstm_cell_496/mul:z:0 lstm_166/lstm_cell_496/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_166/lstm_cell_496/Sigmoid_2Sigmoid%lstm_166/lstm_cell_496/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_166/lstm_cell_496/Relu_1Relu lstm_166/lstm_cell_496/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_166/lstm_cell_496/mul_2Mul$lstm_166/lstm_cell_496/Sigmoid_2:y:0+lstm_166/lstm_cell_496/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_166/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_166/TensorArrayV2_1TensorListReserve/lstm_166/TensorArrayV2_1/element_shape:output:0!lstm_166/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_166/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_166/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_166/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_166/whileWhile$lstm_166/while/loop_counter:output:0*lstm_166/while/maximum_iterations:output:0lstm_166/time:output:0!lstm_166/TensorArrayV2_1:handle:0lstm_166/zeros:output:0lstm_166/zeros_1:output:0!lstm_166/strided_slice_1:output:0@lstm_166/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_166_lstm_cell_496_matmul_readvariableop_resource7lstm_166_lstm_cell_496_matmul_1_readvariableop_resource6lstm_166_lstm_cell_496_biasadd_readvariableop_resource*
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
lstm_166_while_body_3008643*'
condR
lstm_166_while_cond_3008642*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_166/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_166/TensorArrayV2Stack/TensorListStackTensorListStacklstm_166/while:output:3Blstm_166/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_166/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_166/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_166/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_166/strided_slice_3StridedSlice4lstm_166/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_166/strided_slice_3/stack:output:0)lstm_166/strided_slice_3/stack_1:output:0)lstm_166/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_166/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_166/transpose_1	Transpose4lstm_166/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_166/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_166/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_167/ShapeShapelstm_166/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_167/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_167/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_167/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_167/strided_sliceStridedSlicelstm_167/Shape:output:0%lstm_167/strided_slice/stack:output:0'lstm_167/strided_slice/stack_1:output:0'lstm_167/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_167/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_167/zeros/packedPacklstm_167/strided_slice:output:0 lstm_167/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_167/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_167/zerosFilllstm_167/zeros/packed:output:0lstm_167/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_167/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_167/zeros_1/packedPacklstm_167/strided_slice:output:0"lstm_167/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_167/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_167/zeros_1Fill lstm_167/zeros_1/packed:output:0lstm_167/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_167/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_167/transpose	Transposelstm_166/transpose_1:y:0 lstm_167/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_167/Shape_1Shapelstm_167/transpose:y:0*
T0*
_output_shapes
:h
lstm_167/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_167/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_167/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_167/strided_slice_1StridedSlicelstm_167/Shape_1:output:0'lstm_167/strided_slice_1/stack:output:0)lstm_167/strided_slice_1/stack_1:output:0)lstm_167/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_167/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_167/TensorArrayV2TensorListReserve-lstm_167/TensorArrayV2/element_shape:output:0!lstm_167/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_167/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_167/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_167/transpose:y:0Glstm_167/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_167/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_167/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_167/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_167/strided_slice_2StridedSlicelstm_167/transpose:y:0'lstm_167/strided_slice_2/stack:output:0)lstm_167/strided_slice_2/stack_1:output:0)lstm_167/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_167/lstm_cell_497/MatMul/ReadVariableOpReadVariableOp5lstm_167_lstm_cell_497_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_167/lstm_cell_497/MatMulMatMul!lstm_167/strided_slice_2:output:04lstm_167/lstm_cell_497/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_167/lstm_cell_497/MatMul_1/ReadVariableOpReadVariableOp7lstm_167_lstm_cell_497_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_167/lstm_cell_497/MatMul_1MatMullstm_167/zeros:output:06lstm_167/lstm_cell_497/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_167/lstm_cell_497/addAddV2'lstm_167/lstm_cell_497/MatMul:product:0)lstm_167/lstm_cell_497/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_167/lstm_cell_497/BiasAdd/ReadVariableOpReadVariableOp6lstm_167_lstm_cell_497_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_167/lstm_cell_497/BiasAddBiasAddlstm_167/lstm_cell_497/add:z:05lstm_167/lstm_cell_497/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_167/lstm_cell_497/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_167/lstm_cell_497/splitSplit/lstm_167/lstm_cell_497/split/split_dim:output:0'lstm_167/lstm_cell_497/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_167/lstm_cell_497/SigmoidSigmoid%lstm_167/lstm_cell_497/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_167/lstm_cell_497/Sigmoid_1Sigmoid%lstm_167/lstm_cell_497/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_167/lstm_cell_497/mulMul$lstm_167/lstm_cell_497/Sigmoid_1:y:0lstm_167/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_167/lstm_cell_497/ReluRelu%lstm_167/lstm_cell_497/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_167/lstm_cell_497/mul_1Mul"lstm_167/lstm_cell_497/Sigmoid:y:0)lstm_167/lstm_cell_497/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_167/lstm_cell_497/add_1AddV2lstm_167/lstm_cell_497/mul:z:0 lstm_167/lstm_cell_497/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_167/lstm_cell_497/Sigmoid_2Sigmoid%lstm_167/lstm_cell_497/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_167/lstm_cell_497/Relu_1Relu lstm_167/lstm_cell_497/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_167/lstm_cell_497/mul_2Mul$lstm_167/lstm_cell_497/Sigmoid_2:y:0+lstm_167/lstm_cell_497/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_167/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_167/TensorArrayV2_1TensorListReserve/lstm_167/TensorArrayV2_1/element_shape:output:0!lstm_167/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_167/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_167/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_167/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_167/whileWhile$lstm_167/while/loop_counter:output:0*lstm_167/while/maximum_iterations:output:0lstm_167/time:output:0!lstm_167/TensorArrayV2_1:handle:0lstm_167/zeros:output:0lstm_167/zeros_1:output:0!lstm_167/strided_slice_1:output:0@lstm_167/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_167_lstm_cell_497_matmul_readvariableop_resource7lstm_167_lstm_cell_497_matmul_1_readvariableop_resource6lstm_167_lstm_cell_497_biasadd_readvariableop_resource*
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
lstm_167_while_body_3008782*'
condR
lstm_167_while_cond_3008781*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_167/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_167/TensorArrayV2Stack/TensorListStackTensorListStacklstm_167/while:output:3Blstm_167/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_167/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_167/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_167/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_167/strided_slice_3StridedSlice4lstm_167/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_167/strided_slice_3/stack:output:0)lstm_167/strided_slice_3/stack_1:output:0)lstm_167/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_167/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_167/transpose_1	Transpose4lstm_167/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_167/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_167/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_55/MatMul/ReadVariableOpReadVariableOp'dense_55_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_55/MatMulMatMul!lstm_167/strided_slice_3:output:0&dense_55/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_55/BiasAdd/ReadVariableOpReadVariableOp(dense_55_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_55/BiasAddBiasAdddense_55/MatMul:product:0'dense_55/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_55/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_55/BiasAdd/ReadVariableOp^dense_55/MatMul/ReadVariableOp.^lstm_165/lstm_cell_495/BiasAdd/ReadVariableOp-^lstm_165/lstm_cell_495/MatMul/ReadVariableOp/^lstm_165/lstm_cell_495/MatMul_1/ReadVariableOp^lstm_165/while.^lstm_166/lstm_cell_496/BiasAdd/ReadVariableOp-^lstm_166/lstm_cell_496/MatMul/ReadVariableOp/^lstm_166/lstm_cell_496/MatMul_1/ReadVariableOp^lstm_166/while.^lstm_167/lstm_cell_497/BiasAdd/ReadVariableOp-^lstm_167/lstm_cell_497/MatMul/ReadVariableOp/^lstm_167/lstm_cell_497/MatMul_1/ReadVariableOp^lstm_167/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_55/BiasAdd/ReadVariableOpdense_55/BiasAdd/ReadVariableOp2@
dense_55/MatMul/ReadVariableOpdense_55/MatMul/ReadVariableOp2^
-lstm_165/lstm_cell_495/BiasAdd/ReadVariableOp-lstm_165/lstm_cell_495/BiasAdd/ReadVariableOp2\
,lstm_165/lstm_cell_495/MatMul/ReadVariableOp,lstm_165/lstm_cell_495/MatMul/ReadVariableOp2`
.lstm_165/lstm_cell_495/MatMul_1/ReadVariableOp.lstm_165/lstm_cell_495/MatMul_1/ReadVariableOp2 
lstm_165/whilelstm_165/while2^
-lstm_166/lstm_cell_496/BiasAdd/ReadVariableOp-lstm_166/lstm_cell_496/BiasAdd/ReadVariableOp2\
,lstm_166/lstm_cell_496/MatMul/ReadVariableOp,lstm_166/lstm_cell_496/MatMul/ReadVariableOp2`
.lstm_166/lstm_cell_496/MatMul_1/ReadVariableOp.lstm_166/lstm_cell_496/MatMul_1/ReadVariableOp2 
lstm_166/whilelstm_166/while2^
-lstm_167/lstm_cell_497/BiasAdd/ReadVariableOp-lstm_167/lstm_cell_497/BiasAdd/ReadVariableOp2\
,lstm_167/lstm_cell_497/MatMul/ReadVariableOp,lstm_167/lstm_cell_497/MatMul/ReadVariableOp2`
.lstm_167/lstm_cell_497/MatMul_1/ReadVariableOp.lstm_167/lstm_cell_497/MatMul_1/ReadVariableOp2 
lstm_167/whilelstm_167/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_sequential_55_layer_call_and_return_conditional_losses_3007899
lstm_165_input#
lstm_165_3007872:	?#
lstm_165_3007874:	d?
lstm_165_3007876:	?#
lstm_166_3007879:	d?#
lstm_166_3007881:	2?
lstm_166_3007883:	?"
lstm_167_3007886:2("
lstm_167_3007888:
(
lstm_167_3007890:("
dense_55_3007893:

dense_55_3007895:
identity?? dense_55/StatefulPartitionedCall? lstm_165/StatefulPartitionedCall? lstm_166/StatefulPartitionedCall? lstm_167/StatefulPartitionedCall?
 lstm_165/StatefulPartitionedCallStatefulPartitionedCalllstm_165_inputlstm_165_3007872lstm_165_3007874lstm_165_3007876*
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
E__inference_lstm_165_layer_call_and_return_conditional_losses_3006903?
 lstm_166/StatefulPartitionedCallStatefulPartitionedCall)lstm_165/StatefulPartitionedCall:output:0lstm_166_3007879lstm_166_3007881lstm_166_3007883*
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
E__inference_lstm_166_layer_call_and_return_conditional_losses_3007053?
 lstm_167/StatefulPartitionedCallStatefulPartitionedCall)lstm_166/StatefulPartitionedCall:output:0lstm_167_3007886lstm_167_3007888lstm_167_3007890*
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
E__inference_lstm_167_layer_call_and_return_conditional_losses_3007203?
 dense_55/StatefulPartitionedCallStatefulPartitionedCall)lstm_167/StatefulPartitionedCall:output:0dense_55_3007893dense_55_3007895*
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
E__inference_dense_55_layer_call_and_return_conditional_losses_3007221x
IdentityIdentity)dense_55/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_55/StatefulPartitionedCall!^lstm_165/StatefulPartitionedCall!^lstm_166/StatefulPartitionedCall!^lstm_167/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_55/StatefulPartitionedCall dense_55/StatefulPartitionedCall2D
 lstm_165/StatefulPartitionedCall lstm_165/StatefulPartitionedCall2D
 lstm_166/StatefulPartitionedCall lstm_166/StatefulPartitionedCall2D
 lstm_167/StatefulPartitionedCall lstm_167/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_165_input
?8
?
while_body_3006969
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_496_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_496_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_496_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_496_matmul_readvariableop_resource:	d?G
4while_lstm_cell_496_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_496_biasadd_readvariableop_resource:	???*while/lstm_cell_496/BiasAdd/ReadVariableOp?)while/lstm_cell_496/MatMul/ReadVariableOp?+while/lstm_cell_496/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_496/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_496_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_496/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_496/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_496/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_496_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_496/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_496/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_496/addAddV2$while/lstm_cell_496/MatMul:product:0&while/lstm_cell_496/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_496/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_496_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_496/BiasAddBiasAddwhile/lstm_cell_496/add:z:02while/lstm_cell_496/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_496/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_496/splitSplit,while/lstm_cell_496/split/split_dim:output:0$while/lstm_cell_496/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_496/SigmoidSigmoid"while/lstm_cell_496/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_496/Sigmoid_1Sigmoid"while/lstm_cell_496/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_496/mulMul!while/lstm_cell_496/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_496/ReluRelu"while/lstm_cell_496/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_496/mul_1Mulwhile/lstm_cell_496/Sigmoid:y:0&while/lstm_cell_496/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_496/add_1AddV2while/lstm_cell_496/mul:z:0while/lstm_cell_496/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_496/Sigmoid_2Sigmoid"while/lstm_cell_496/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_496/Relu_1Reluwhile/lstm_cell_496/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_496/mul_2Mul!while/lstm_cell_496/Sigmoid_2:y:0(while/lstm_cell_496/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_496/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_496/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_496/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_496/BiasAdd/ReadVariableOp*^while/lstm_cell_496/MatMul/ReadVariableOp,^while/lstm_cell_496/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_496_biasadd_readvariableop_resource5while_lstm_cell_496_biasadd_readvariableop_resource_0"n
4while_lstm_cell_496_matmul_1_readvariableop_resource6while_lstm_cell_496_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_496_matmul_readvariableop_resource4while_lstm_cell_496_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_496/BiasAdd/ReadVariableOp*while/lstm_cell_496/BiasAdd/ReadVariableOp2V
)while/lstm_cell_496/MatMul/ReadVariableOp)while/lstm_cell_496/MatMul/ReadVariableOp2Z
+while/lstm_cell_496/MatMul_1/ReadVariableOp+while/lstm_cell_496/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_dense_55_layer_call_and_return_conditional_losses_3010739

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
E__inference_lstm_166_layer_call_and_return_conditional_losses_3010104

inputs?
,lstm_cell_496_matmul_readvariableop_resource:	d?A
.lstm_cell_496_matmul_1_readvariableop_resource:	2?<
-lstm_cell_496_biasadd_readvariableop_resource:	?
identity??$lstm_cell_496/BiasAdd/ReadVariableOp?#lstm_cell_496/MatMul/ReadVariableOp?%lstm_cell_496/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_496/MatMul/ReadVariableOpReadVariableOp,lstm_cell_496_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_496/MatMulMatMulstrided_slice_2:output:0+lstm_cell_496/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_496/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_496_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_496/MatMul_1MatMulzeros:output:0-lstm_cell_496/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_496/addAddV2lstm_cell_496/MatMul:product:0 lstm_cell_496/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_496/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_496_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_496/BiasAddBiasAddlstm_cell_496/add:z:0,lstm_cell_496/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_496/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_496/splitSplit&lstm_cell_496/split/split_dim:output:0lstm_cell_496/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_496/SigmoidSigmoidlstm_cell_496/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_496/Sigmoid_1Sigmoidlstm_cell_496/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_496/mulMullstm_cell_496/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_496/ReluRelulstm_cell_496/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_496/mul_1Mullstm_cell_496/Sigmoid:y:0 lstm_cell_496/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_496/add_1AddV2lstm_cell_496/mul:z:0lstm_cell_496/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_496/Sigmoid_2Sigmoidlstm_cell_496/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_496/Relu_1Relulstm_cell_496/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_496/mul_2Mullstm_cell_496/Sigmoid_2:y:0"lstm_cell_496/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_496_matmul_readvariableop_resource.lstm_cell_496_matmul_1_readvariableop_resource-lstm_cell_496_biasadd_readvariableop_resource*
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
while_body_3010020*
condR
while_cond_3010019*K
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
NoOpNoOp%^lstm_cell_496/BiasAdd/ReadVariableOp$^lstm_cell_496/MatMul/ReadVariableOp&^lstm_cell_496/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_496/BiasAdd/ReadVariableOp$lstm_cell_496/BiasAdd/ReadVariableOp2J
#lstm_cell_496/MatMul/ReadVariableOp#lstm_cell_496/MatMul/ReadVariableOp2N
%lstm_cell_496/MatMul_1/ReadVariableOp%lstm_cell_496/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_3010206
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3010206___redundant_placeholder05
1while_while_cond_3010206___redundant_placeholder15
1while_while_cond_3010206___redundant_placeholder25
1while_while_cond_3010206___redundant_placeholder3
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
J__inference_sequential_55_layer_call_and_return_conditional_losses_3007817

inputs#
lstm_165_3007790:	?#
lstm_165_3007792:	d?
lstm_165_3007794:	?#
lstm_166_3007797:	d?#
lstm_166_3007799:	2?
lstm_166_3007801:	?"
lstm_167_3007804:2("
lstm_167_3007806:
(
lstm_167_3007808:("
dense_55_3007811:

dense_55_3007813:
identity?? dense_55/StatefulPartitionedCall? lstm_165/StatefulPartitionedCall? lstm_166/StatefulPartitionedCall? lstm_167/StatefulPartitionedCall?
 lstm_165/StatefulPartitionedCallStatefulPartitionedCallinputslstm_165_3007790lstm_165_3007792lstm_165_3007794*
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
E__inference_lstm_165_layer_call_and_return_conditional_losses_3007749?
 lstm_166/StatefulPartitionedCallStatefulPartitionedCall)lstm_165/StatefulPartitionedCall:output:0lstm_166_3007797lstm_166_3007799lstm_166_3007801*
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
E__inference_lstm_166_layer_call_and_return_conditional_losses_3007584?
 lstm_167/StatefulPartitionedCallStatefulPartitionedCall)lstm_166/StatefulPartitionedCall:output:0lstm_167_3007804lstm_167_3007806lstm_167_3007808*
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
E__inference_lstm_167_layer_call_and_return_conditional_losses_3007419?
 dense_55/StatefulPartitionedCallStatefulPartitionedCall)lstm_167/StatefulPartitionedCall:output:0dense_55_3007811dense_55_3007813*
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
E__inference_dense_55_layer_call_and_return_conditional_losses_3007221x
IdentityIdentity)dense_55/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_55/StatefulPartitionedCall!^lstm_165/StatefulPartitionedCall!^lstm_166/StatefulPartitionedCall!^lstm_167/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_55/StatefulPartitionedCall dense_55/StatefulPartitionedCall2D
 lstm_165/StatefulPartitionedCall lstm_165/StatefulPartitionedCall2D
 lstm_166/StatefulPartitionedCall lstm_166/StatefulPartitionedCall2D
 lstm_167/StatefulPartitionedCall lstm_167/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_497_layer_call_and_return_conditional_losses_3006471

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
?
E__inference_lstm_165_layer_call_and_return_conditional_losses_3006045

inputs(
lstm_cell_495_3005963:	?(
lstm_cell_495_3005965:	d?$
lstm_cell_495_3005967:	?
identity??%lstm_cell_495/StatefulPartitionedCall?while;
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
%lstm_cell_495/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_495_3005963lstm_cell_495_3005965lstm_cell_495_3005967*
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
J__inference_lstm_cell_495_layer_call_and_return_conditional_losses_3005917n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_495_3005963lstm_cell_495_3005965lstm_cell_495_3005967*
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
while_body_3005976*
condR
while_cond_3005975*K
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
NoOpNoOp&^lstm_cell_495/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_495/StatefulPartitionedCall%lstm_cell_495/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_3009117
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3009117___redundant_placeholder05
1while_while_cond_3009117___redundant_placeholder15
1while_while_cond_3009117___redundant_placeholder25
1while_while_cond_3009117___redundant_placeholder3
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
while_body_3007335
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_497_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_497_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_497_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_497_matmul_readvariableop_resource:2(F
4while_lstm_cell_497_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_497_biasadd_readvariableop_resource:(??*while/lstm_cell_497/BiasAdd/ReadVariableOp?)while/lstm_cell_497/MatMul/ReadVariableOp?+while/lstm_cell_497/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_497/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_497_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_497/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_497/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_497/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_497_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_497/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_497/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_497/addAddV2$while/lstm_cell_497/MatMul:product:0&while/lstm_cell_497/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_497/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_497_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_497/BiasAddBiasAddwhile/lstm_cell_497/add:z:02while/lstm_cell_497/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_497/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_497/splitSplit,while/lstm_cell_497/split/split_dim:output:0$while/lstm_cell_497/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_497/SigmoidSigmoid"while/lstm_cell_497/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_497/Sigmoid_1Sigmoid"while/lstm_cell_497/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_497/mulMul!while/lstm_cell_497/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_497/ReluRelu"while/lstm_cell_497/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_497/mul_1Mulwhile/lstm_cell_497/Sigmoid:y:0&while/lstm_cell_497/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_497/add_1AddV2while/lstm_cell_497/mul:z:0while/lstm_cell_497/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_497/Sigmoid_2Sigmoid"while/lstm_cell_497/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_497/Relu_1Reluwhile/lstm_cell_497/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_497/mul_2Mul!while/lstm_cell_497/Sigmoid_2:y:0(while/lstm_cell_497/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_497/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_497/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_497/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_497/BiasAdd/ReadVariableOp*^while/lstm_cell_497/MatMul/ReadVariableOp,^while/lstm_cell_497/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_497_biasadd_readvariableop_resource5while_lstm_cell_497_biasadd_readvariableop_resource_0"n
4while_lstm_cell_497_matmul_1_readvariableop_resource6while_lstm_cell_497_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_497_matmul_readvariableop_resource4while_lstm_cell_497_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_497/BiasAdd/ReadVariableOp*while/lstm_cell_497/BiasAdd/ReadVariableOp2V
)while/lstm_cell_497/MatMul/ReadVariableOp)while/lstm_cell_497/MatMul/ReadVariableOp2Z
+while/lstm_cell_497/MatMul_1/ReadVariableOp+while/lstm_cell_497/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_167_while_body_3008782.
*lstm_167_while_lstm_167_while_loop_counter4
0lstm_167_while_lstm_167_while_maximum_iterations
lstm_167_while_placeholder 
lstm_167_while_placeholder_1 
lstm_167_while_placeholder_2 
lstm_167_while_placeholder_3-
)lstm_167_while_lstm_167_strided_slice_1_0i
elstm_167_while_tensorarrayv2read_tensorlistgetitem_lstm_167_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_167_while_lstm_cell_497_matmul_readvariableop_resource_0:2(Q
?lstm_167_while_lstm_cell_497_matmul_1_readvariableop_resource_0:
(L
>lstm_167_while_lstm_cell_497_biasadd_readvariableop_resource_0:(
lstm_167_while_identity
lstm_167_while_identity_1
lstm_167_while_identity_2
lstm_167_while_identity_3
lstm_167_while_identity_4
lstm_167_while_identity_5+
'lstm_167_while_lstm_167_strided_slice_1g
clstm_167_while_tensorarrayv2read_tensorlistgetitem_lstm_167_tensorarrayunstack_tensorlistfromtensorM
;lstm_167_while_lstm_cell_497_matmul_readvariableop_resource:2(O
=lstm_167_while_lstm_cell_497_matmul_1_readvariableop_resource:
(J
<lstm_167_while_lstm_cell_497_biasadd_readvariableop_resource:(??3lstm_167/while/lstm_cell_497/BiasAdd/ReadVariableOp?2lstm_167/while/lstm_cell_497/MatMul/ReadVariableOp?4lstm_167/while/lstm_cell_497/MatMul_1/ReadVariableOp?
@lstm_167/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_167/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_167_while_tensorarrayv2read_tensorlistgetitem_lstm_167_tensorarrayunstack_tensorlistfromtensor_0lstm_167_while_placeholderIlstm_167/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_167/while/lstm_cell_497/MatMul/ReadVariableOpReadVariableOp=lstm_167_while_lstm_cell_497_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_167/while/lstm_cell_497/MatMulMatMul9lstm_167/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_167/while/lstm_cell_497/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_167/while/lstm_cell_497/MatMul_1/ReadVariableOpReadVariableOp?lstm_167_while_lstm_cell_497_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_167/while/lstm_cell_497/MatMul_1MatMullstm_167_while_placeholder_2<lstm_167/while/lstm_cell_497/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_167/while/lstm_cell_497/addAddV2-lstm_167/while/lstm_cell_497/MatMul:product:0/lstm_167/while/lstm_cell_497/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_167/while/lstm_cell_497/BiasAdd/ReadVariableOpReadVariableOp>lstm_167_while_lstm_cell_497_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_167/while/lstm_cell_497/BiasAddBiasAdd$lstm_167/while/lstm_cell_497/add:z:0;lstm_167/while/lstm_cell_497/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_167/while/lstm_cell_497/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_167/while/lstm_cell_497/splitSplit5lstm_167/while/lstm_cell_497/split/split_dim:output:0-lstm_167/while/lstm_cell_497/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_167/while/lstm_cell_497/SigmoidSigmoid+lstm_167/while/lstm_cell_497/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_167/while/lstm_cell_497/Sigmoid_1Sigmoid+lstm_167/while/lstm_cell_497/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_167/while/lstm_cell_497/mulMul*lstm_167/while/lstm_cell_497/Sigmoid_1:y:0lstm_167_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_167/while/lstm_cell_497/ReluRelu+lstm_167/while/lstm_cell_497/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_167/while/lstm_cell_497/mul_1Mul(lstm_167/while/lstm_cell_497/Sigmoid:y:0/lstm_167/while/lstm_cell_497/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_167/while/lstm_cell_497/add_1AddV2$lstm_167/while/lstm_cell_497/mul:z:0&lstm_167/while/lstm_cell_497/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_167/while/lstm_cell_497/Sigmoid_2Sigmoid+lstm_167/while/lstm_cell_497/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_167/while/lstm_cell_497/Relu_1Relu&lstm_167/while/lstm_cell_497/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_167/while/lstm_cell_497/mul_2Mul*lstm_167/while/lstm_cell_497/Sigmoid_2:y:01lstm_167/while/lstm_cell_497/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_167/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_167_while_placeholder_1lstm_167_while_placeholder&lstm_167/while/lstm_cell_497/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_167/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_167/while/addAddV2lstm_167_while_placeholderlstm_167/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_167/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_167/while/add_1AddV2*lstm_167_while_lstm_167_while_loop_counterlstm_167/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_167/while/IdentityIdentitylstm_167/while/add_1:z:0^lstm_167/while/NoOp*
T0*
_output_shapes
: ?
lstm_167/while/Identity_1Identity0lstm_167_while_lstm_167_while_maximum_iterations^lstm_167/while/NoOp*
T0*
_output_shapes
: t
lstm_167/while/Identity_2Identitylstm_167/while/add:z:0^lstm_167/while/NoOp*
T0*
_output_shapes
: ?
lstm_167/while/Identity_3IdentityClstm_167/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_167/while/NoOp*
T0*
_output_shapes
: ?
lstm_167/while/Identity_4Identity&lstm_167/while/lstm_cell_497/mul_2:z:0^lstm_167/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_167/while/Identity_5Identity&lstm_167/while/lstm_cell_497/add_1:z:0^lstm_167/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_167/while/NoOpNoOp4^lstm_167/while/lstm_cell_497/BiasAdd/ReadVariableOp3^lstm_167/while/lstm_cell_497/MatMul/ReadVariableOp5^lstm_167/while/lstm_cell_497/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_167_while_identity lstm_167/while/Identity:output:0"?
lstm_167_while_identity_1"lstm_167/while/Identity_1:output:0"?
lstm_167_while_identity_2"lstm_167/while/Identity_2:output:0"?
lstm_167_while_identity_3"lstm_167/while/Identity_3:output:0"?
lstm_167_while_identity_4"lstm_167/while/Identity_4:output:0"?
lstm_167_while_identity_5"lstm_167/while/Identity_5:output:0"T
'lstm_167_while_lstm_167_strided_slice_1)lstm_167_while_lstm_167_strided_slice_1_0"~
<lstm_167_while_lstm_cell_497_biasadd_readvariableop_resource>lstm_167_while_lstm_cell_497_biasadd_readvariableop_resource_0"?
=lstm_167_while_lstm_cell_497_matmul_1_readvariableop_resource?lstm_167_while_lstm_cell_497_matmul_1_readvariableop_resource_0"|
;lstm_167_while_lstm_cell_497_matmul_readvariableop_resource=lstm_167_while_lstm_cell_497_matmul_readvariableop_resource_0"?
clstm_167_while_tensorarrayv2read_tensorlistgetitem_lstm_167_tensorarrayunstack_tensorlistfromtensorelstm_167_while_tensorarrayv2read_tensorlistgetitem_lstm_167_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_167/while/lstm_cell_497/BiasAdd/ReadVariableOp3lstm_167/while/lstm_cell_497/BiasAdd/ReadVariableOp2h
2lstm_167/while/lstm_cell_497/MatMul/ReadVariableOp2lstm_167/while/lstm_cell_497/MatMul/ReadVariableOp2l
4lstm_167/while/lstm_cell_497/MatMul_1/ReadVariableOp4lstm_167/while/lstm_cell_497/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3006326
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_496_3006350_0:	d?0
while_lstm_cell_496_3006352_0:	2?,
while_lstm_cell_496_3006354_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_496_3006350:	d?.
while_lstm_cell_496_3006352:	2?*
while_lstm_cell_496_3006354:	???+while/lstm_cell_496/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_496/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_496_3006350_0while_lstm_cell_496_3006352_0while_lstm_cell_496_3006354_0*
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
J__inference_lstm_cell_496_layer_call_and_return_conditional_losses_3006267?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_496/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_496/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_496/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_496/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_496_3006350while_lstm_cell_496_3006350_0"<
while_lstm_cell_496_3006352while_lstm_cell_496_3006352_0"<
while_lstm_cell_496_3006354while_lstm_cell_496_3006354_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_496/StatefulPartitionedCall+while/lstm_cell_496/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_167_while_body_3008355.
*lstm_167_while_lstm_167_while_loop_counter4
0lstm_167_while_lstm_167_while_maximum_iterations
lstm_167_while_placeholder 
lstm_167_while_placeholder_1 
lstm_167_while_placeholder_2 
lstm_167_while_placeholder_3-
)lstm_167_while_lstm_167_strided_slice_1_0i
elstm_167_while_tensorarrayv2read_tensorlistgetitem_lstm_167_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_167_while_lstm_cell_497_matmul_readvariableop_resource_0:2(Q
?lstm_167_while_lstm_cell_497_matmul_1_readvariableop_resource_0:
(L
>lstm_167_while_lstm_cell_497_biasadd_readvariableop_resource_0:(
lstm_167_while_identity
lstm_167_while_identity_1
lstm_167_while_identity_2
lstm_167_while_identity_3
lstm_167_while_identity_4
lstm_167_while_identity_5+
'lstm_167_while_lstm_167_strided_slice_1g
clstm_167_while_tensorarrayv2read_tensorlistgetitem_lstm_167_tensorarrayunstack_tensorlistfromtensorM
;lstm_167_while_lstm_cell_497_matmul_readvariableop_resource:2(O
=lstm_167_while_lstm_cell_497_matmul_1_readvariableop_resource:
(J
<lstm_167_while_lstm_cell_497_biasadd_readvariableop_resource:(??3lstm_167/while/lstm_cell_497/BiasAdd/ReadVariableOp?2lstm_167/while/lstm_cell_497/MatMul/ReadVariableOp?4lstm_167/while/lstm_cell_497/MatMul_1/ReadVariableOp?
@lstm_167/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_167/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_167_while_tensorarrayv2read_tensorlistgetitem_lstm_167_tensorarrayunstack_tensorlistfromtensor_0lstm_167_while_placeholderIlstm_167/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_167/while/lstm_cell_497/MatMul/ReadVariableOpReadVariableOp=lstm_167_while_lstm_cell_497_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_167/while/lstm_cell_497/MatMulMatMul9lstm_167/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_167/while/lstm_cell_497/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_167/while/lstm_cell_497/MatMul_1/ReadVariableOpReadVariableOp?lstm_167_while_lstm_cell_497_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_167/while/lstm_cell_497/MatMul_1MatMullstm_167_while_placeholder_2<lstm_167/while/lstm_cell_497/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_167/while/lstm_cell_497/addAddV2-lstm_167/while/lstm_cell_497/MatMul:product:0/lstm_167/while/lstm_cell_497/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_167/while/lstm_cell_497/BiasAdd/ReadVariableOpReadVariableOp>lstm_167_while_lstm_cell_497_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_167/while/lstm_cell_497/BiasAddBiasAdd$lstm_167/while/lstm_cell_497/add:z:0;lstm_167/while/lstm_cell_497/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_167/while/lstm_cell_497/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_167/while/lstm_cell_497/splitSplit5lstm_167/while/lstm_cell_497/split/split_dim:output:0-lstm_167/while/lstm_cell_497/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_167/while/lstm_cell_497/SigmoidSigmoid+lstm_167/while/lstm_cell_497/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_167/while/lstm_cell_497/Sigmoid_1Sigmoid+lstm_167/while/lstm_cell_497/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_167/while/lstm_cell_497/mulMul*lstm_167/while/lstm_cell_497/Sigmoid_1:y:0lstm_167_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_167/while/lstm_cell_497/ReluRelu+lstm_167/while/lstm_cell_497/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_167/while/lstm_cell_497/mul_1Mul(lstm_167/while/lstm_cell_497/Sigmoid:y:0/lstm_167/while/lstm_cell_497/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_167/while/lstm_cell_497/add_1AddV2$lstm_167/while/lstm_cell_497/mul:z:0&lstm_167/while/lstm_cell_497/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_167/while/lstm_cell_497/Sigmoid_2Sigmoid+lstm_167/while/lstm_cell_497/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_167/while/lstm_cell_497/Relu_1Relu&lstm_167/while/lstm_cell_497/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_167/while/lstm_cell_497/mul_2Mul*lstm_167/while/lstm_cell_497/Sigmoid_2:y:01lstm_167/while/lstm_cell_497/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_167/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_167_while_placeholder_1lstm_167_while_placeholder&lstm_167/while/lstm_cell_497/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_167/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_167/while/addAddV2lstm_167_while_placeholderlstm_167/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_167/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_167/while/add_1AddV2*lstm_167_while_lstm_167_while_loop_counterlstm_167/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_167/while/IdentityIdentitylstm_167/while/add_1:z:0^lstm_167/while/NoOp*
T0*
_output_shapes
: ?
lstm_167/while/Identity_1Identity0lstm_167_while_lstm_167_while_maximum_iterations^lstm_167/while/NoOp*
T0*
_output_shapes
: t
lstm_167/while/Identity_2Identitylstm_167/while/add:z:0^lstm_167/while/NoOp*
T0*
_output_shapes
: ?
lstm_167/while/Identity_3IdentityClstm_167/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_167/while/NoOp*
T0*
_output_shapes
: ?
lstm_167/while/Identity_4Identity&lstm_167/while/lstm_cell_497/mul_2:z:0^lstm_167/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_167/while/Identity_5Identity&lstm_167/while/lstm_cell_497/add_1:z:0^lstm_167/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_167/while/NoOpNoOp4^lstm_167/while/lstm_cell_497/BiasAdd/ReadVariableOp3^lstm_167/while/lstm_cell_497/MatMul/ReadVariableOp5^lstm_167/while/lstm_cell_497/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_167_while_identity lstm_167/while/Identity:output:0"?
lstm_167_while_identity_1"lstm_167/while/Identity_1:output:0"?
lstm_167_while_identity_2"lstm_167/while/Identity_2:output:0"?
lstm_167_while_identity_3"lstm_167/while/Identity_3:output:0"?
lstm_167_while_identity_4"lstm_167/while/Identity_4:output:0"?
lstm_167_while_identity_5"lstm_167/while/Identity_5:output:0"T
'lstm_167_while_lstm_167_strided_slice_1)lstm_167_while_lstm_167_strided_slice_1_0"~
<lstm_167_while_lstm_cell_497_biasadd_readvariableop_resource>lstm_167_while_lstm_cell_497_biasadd_readvariableop_resource_0"?
=lstm_167_while_lstm_cell_497_matmul_1_readvariableop_resource?lstm_167_while_lstm_cell_497_matmul_1_readvariableop_resource_0"|
;lstm_167_while_lstm_cell_497_matmul_readvariableop_resource=lstm_167_while_lstm_cell_497_matmul_readvariableop_resource_0"?
clstm_167_while_tensorarrayv2read_tensorlistgetitem_lstm_167_tensorarrayunstack_tensorlistfromtensorelstm_167_while_tensorarrayv2read_tensorlistgetitem_lstm_167_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_167/while/lstm_cell_497/BiasAdd/ReadVariableOp3lstm_167/while/lstm_cell_497/BiasAdd/ReadVariableOp2h
2lstm_167/while/lstm_cell_497/MatMul/ReadVariableOp2lstm_167/while/lstm_cell_497/MatMul/ReadVariableOp2l
4lstm_167/while/lstm_cell_497/MatMul_1/ReadVariableOp4lstm_167/while/lstm_cell_497/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_167_layer_call_and_return_conditional_losses_3010720

inputs>
,lstm_cell_497_matmul_readvariableop_resource:2(@
.lstm_cell_497_matmul_1_readvariableop_resource:
(;
-lstm_cell_497_biasadd_readvariableop_resource:(
identity??$lstm_cell_497/BiasAdd/ReadVariableOp?#lstm_cell_497/MatMul/ReadVariableOp?%lstm_cell_497/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_497/MatMul/ReadVariableOpReadVariableOp,lstm_cell_497_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_497/MatMulMatMulstrided_slice_2:output:0+lstm_cell_497/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_497/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_497_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_497/MatMul_1MatMulzeros:output:0-lstm_cell_497/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_497/addAddV2lstm_cell_497/MatMul:product:0 lstm_cell_497/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_497/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_497_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_497/BiasAddBiasAddlstm_cell_497/add:z:0,lstm_cell_497/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_497/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_497/splitSplit&lstm_cell_497/split/split_dim:output:0lstm_cell_497/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_497/SigmoidSigmoidlstm_cell_497/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_497/Sigmoid_1Sigmoidlstm_cell_497/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_497/mulMullstm_cell_497/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_497/ReluRelulstm_cell_497/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_497/mul_1Mullstm_cell_497/Sigmoid:y:0 lstm_cell_497/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_497/add_1AddV2lstm_cell_497/mul:z:0lstm_cell_497/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_497/Sigmoid_2Sigmoidlstm_cell_497/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_497/Relu_1Relulstm_cell_497/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_497/mul_2Mullstm_cell_497/Sigmoid_2:y:0"lstm_cell_497/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_497_matmul_readvariableop_resource.lstm_cell_497_matmul_1_readvariableop_resource-lstm_cell_497_biasadd_readvariableop_resource*
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
while_body_3010636*
condR
while_cond_3010635*K
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
NoOpNoOp%^lstm_cell_497/BiasAdd/ReadVariableOp$^lstm_cell_497/MatMul/ReadVariableOp&^lstm_cell_497/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_497/BiasAdd/ReadVariableOp$lstm_cell_497/BiasAdd/ReadVariableOp2J
#lstm_cell_497/MatMul/ReadVariableOp#lstm_cell_497/MatMul/ReadVariableOp2N
%lstm_cell_497/MatMul_1/ReadVariableOp%lstm_cell_497/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
)sequential_55_lstm_165_while_cond_3005335J
Fsequential_55_lstm_165_while_sequential_55_lstm_165_while_loop_counterP
Lsequential_55_lstm_165_while_sequential_55_lstm_165_while_maximum_iterations,
(sequential_55_lstm_165_while_placeholder.
*sequential_55_lstm_165_while_placeholder_1.
*sequential_55_lstm_165_while_placeholder_2.
*sequential_55_lstm_165_while_placeholder_3L
Hsequential_55_lstm_165_while_less_sequential_55_lstm_165_strided_slice_1c
_sequential_55_lstm_165_while_sequential_55_lstm_165_while_cond_3005335___redundant_placeholder0c
_sequential_55_lstm_165_while_sequential_55_lstm_165_while_cond_3005335___redundant_placeholder1c
_sequential_55_lstm_165_while_sequential_55_lstm_165_while_cond_3005335___redundant_placeholder2c
_sequential_55_lstm_165_while_sequential_55_lstm_165_while_cond_3005335___redundant_placeholder3)
%sequential_55_lstm_165_while_identity
?
!sequential_55/lstm_165/while/LessLess(sequential_55_lstm_165_while_placeholderHsequential_55_lstm_165_while_less_sequential_55_lstm_165_strided_slice_1*
T0*
_output_shapes
: y
%sequential_55/lstm_165/while/IdentityIdentity%sequential_55/lstm_165/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_55_lstm_165_while_identity.sequential_55/lstm_165/while/Identity:output:0*(
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
E__inference_lstm_165_layer_call_and_return_conditional_losses_3009488

inputs?
,lstm_cell_495_matmul_readvariableop_resource:	?A
.lstm_cell_495_matmul_1_readvariableop_resource:	d?<
-lstm_cell_495_biasadd_readvariableop_resource:	?
identity??$lstm_cell_495/BiasAdd/ReadVariableOp?#lstm_cell_495/MatMul/ReadVariableOp?%lstm_cell_495/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_495/MatMul/ReadVariableOpReadVariableOp,lstm_cell_495_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_495/MatMulMatMulstrided_slice_2:output:0+lstm_cell_495/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_495/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_495_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_495/MatMul_1MatMulzeros:output:0-lstm_cell_495/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_495/addAddV2lstm_cell_495/MatMul:product:0 lstm_cell_495/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_495/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_495_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_495/BiasAddBiasAddlstm_cell_495/add:z:0,lstm_cell_495/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_495/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_495/splitSplit&lstm_cell_495/split/split_dim:output:0lstm_cell_495/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_495/SigmoidSigmoidlstm_cell_495/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_495/Sigmoid_1Sigmoidlstm_cell_495/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_495/mulMullstm_cell_495/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_495/ReluRelulstm_cell_495/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_495/mul_1Mullstm_cell_495/Sigmoid:y:0 lstm_cell_495/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_495/add_1AddV2lstm_cell_495/mul:z:0lstm_cell_495/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_495/Sigmoid_2Sigmoidlstm_cell_495/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_495/Relu_1Relulstm_cell_495/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_495/mul_2Mullstm_cell_495/Sigmoid_2:y:0"lstm_cell_495/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_495_matmul_readvariableop_resource.lstm_cell_495_matmul_1_readvariableop_resource-lstm_cell_495_biasadd_readvariableop_resource*
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
while_body_3009404*
condR
while_cond_3009403*K
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
NoOpNoOp%^lstm_cell_495/BiasAdd/ReadVariableOp$^lstm_cell_495/MatMul/ReadVariableOp&^lstm_cell_495/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_495/BiasAdd/ReadVariableOp$lstm_cell_495/BiasAdd/ReadVariableOp2J
#lstm_cell_495/MatMul/ReadVariableOp#lstm_cell_495/MatMul/ReadVariableOp2N
%lstm_cell_495/MatMul_1/ReadVariableOp%lstm_cell_495/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_165_while_body_3008504.
*lstm_165_while_lstm_165_while_loop_counter4
0lstm_165_while_lstm_165_while_maximum_iterations
lstm_165_while_placeholder 
lstm_165_while_placeholder_1 
lstm_165_while_placeholder_2 
lstm_165_while_placeholder_3-
)lstm_165_while_lstm_165_strided_slice_1_0i
elstm_165_while_tensorarrayv2read_tensorlistgetitem_lstm_165_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_165_while_lstm_cell_495_matmul_readvariableop_resource_0:	?R
?lstm_165_while_lstm_cell_495_matmul_1_readvariableop_resource_0:	d?M
>lstm_165_while_lstm_cell_495_biasadd_readvariableop_resource_0:	?
lstm_165_while_identity
lstm_165_while_identity_1
lstm_165_while_identity_2
lstm_165_while_identity_3
lstm_165_while_identity_4
lstm_165_while_identity_5+
'lstm_165_while_lstm_165_strided_slice_1g
clstm_165_while_tensorarrayv2read_tensorlistgetitem_lstm_165_tensorarrayunstack_tensorlistfromtensorN
;lstm_165_while_lstm_cell_495_matmul_readvariableop_resource:	?P
=lstm_165_while_lstm_cell_495_matmul_1_readvariableop_resource:	d?K
<lstm_165_while_lstm_cell_495_biasadd_readvariableop_resource:	???3lstm_165/while/lstm_cell_495/BiasAdd/ReadVariableOp?2lstm_165/while/lstm_cell_495/MatMul/ReadVariableOp?4lstm_165/while/lstm_cell_495/MatMul_1/ReadVariableOp?
@lstm_165/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_165/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_165_while_tensorarrayv2read_tensorlistgetitem_lstm_165_tensorarrayunstack_tensorlistfromtensor_0lstm_165_while_placeholderIlstm_165/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_165/while/lstm_cell_495/MatMul/ReadVariableOpReadVariableOp=lstm_165_while_lstm_cell_495_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_165/while/lstm_cell_495/MatMulMatMul9lstm_165/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_165/while/lstm_cell_495/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_165/while/lstm_cell_495/MatMul_1/ReadVariableOpReadVariableOp?lstm_165_while_lstm_cell_495_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_165/while/lstm_cell_495/MatMul_1MatMullstm_165_while_placeholder_2<lstm_165/while/lstm_cell_495/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_165/while/lstm_cell_495/addAddV2-lstm_165/while/lstm_cell_495/MatMul:product:0/lstm_165/while/lstm_cell_495/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_165/while/lstm_cell_495/BiasAdd/ReadVariableOpReadVariableOp>lstm_165_while_lstm_cell_495_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_165/while/lstm_cell_495/BiasAddBiasAdd$lstm_165/while/lstm_cell_495/add:z:0;lstm_165/while/lstm_cell_495/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_165/while/lstm_cell_495/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_165/while/lstm_cell_495/splitSplit5lstm_165/while/lstm_cell_495/split/split_dim:output:0-lstm_165/while/lstm_cell_495/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_165/while/lstm_cell_495/SigmoidSigmoid+lstm_165/while/lstm_cell_495/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_165/while/lstm_cell_495/Sigmoid_1Sigmoid+lstm_165/while/lstm_cell_495/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_165/while/lstm_cell_495/mulMul*lstm_165/while/lstm_cell_495/Sigmoid_1:y:0lstm_165_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_165/while/lstm_cell_495/ReluRelu+lstm_165/while/lstm_cell_495/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_165/while/lstm_cell_495/mul_1Mul(lstm_165/while/lstm_cell_495/Sigmoid:y:0/lstm_165/while/lstm_cell_495/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_165/while/lstm_cell_495/add_1AddV2$lstm_165/while/lstm_cell_495/mul:z:0&lstm_165/while/lstm_cell_495/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_165/while/lstm_cell_495/Sigmoid_2Sigmoid+lstm_165/while/lstm_cell_495/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_165/while/lstm_cell_495/Relu_1Relu&lstm_165/while/lstm_cell_495/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_165/while/lstm_cell_495/mul_2Mul*lstm_165/while/lstm_cell_495/Sigmoid_2:y:01lstm_165/while/lstm_cell_495/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_165/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_165_while_placeholder_1lstm_165_while_placeholder&lstm_165/while/lstm_cell_495/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_165/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_165/while/addAddV2lstm_165_while_placeholderlstm_165/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_165/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_165/while/add_1AddV2*lstm_165_while_lstm_165_while_loop_counterlstm_165/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_165/while/IdentityIdentitylstm_165/while/add_1:z:0^lstm_165/while/NoOp*
T0*
_output_shapes
: ?
lstm_165/while/Identity_1Identity0lstm_165_while_lstm_165_while_maximum_iterations^lstm_165/while/NoOp*
T0*
_output_shapes
: t
lstm_165/while/Identity_2Identitylstm_165/while/add:z:0^lstm_165/while/NoOp*
T0*
_output_shapes
: ?
lstm_165/while/Identity_3IdentityClstm_165/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_165/while/NoOp*
T0*
_output_shapes
: ?
lstm_165/while/Identity_4Identity&lstm_165/while/lstm_cell_495/mul_2:z:0^lstm_165/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_165/while/Identity_5Identity&lstm_165/while/lstm_cell_495/add_1:z:0^lstm_165/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_165/while/NoOpNoOp4^lstm_165/while/lstm_cell_495/BiasAdd/ReadVariableOp3^lstm_165/while/lstm_cell_495/MatMul/ReadVariableOp5^lstm_165/while/lstm_cell_495/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_165_while_identity lstm_165/while/Identity:output:0"?
lstm_165_while_identity_1"lstm_165/while/Identity_1:output:0"?
lstm_165_while_identity_2"lstm_165/while/Identity_2:output:0"?
lstm_165_while_identity_3"lstm_165/while/Identity_3:output:0"?
lstm_165_while_identity_4"lstm_165/while/Identity_4:output:0"?
lstm_165_while_identity_5"lstm_165/while/Identity_5:output:0"T
'lstm_165_while_lstm_165_strided_slice_1)lstm_165_while_lstm_165_strided_slice_1_0"~
<lstm_165_while_lstm_cell_495_biasadd_readvariableop_resource>lstm_165_while_lstm_cell_495_biasadd_readvariableop_resource_0"?
=lstm_165_while_lstm_cell_495_matmul_1_readvariableop_resource?lstm_165_while_lstm_cell_495_matmul_1_readvariableop_resource_0"|
;lstm_165_while_lstm_cell_495_matmul_readvariableop_resource=lstm_165_while_lstm_cell_495_matmul_readvariableop_resource_0"?
clstm_165_while_tensorarrayv2read_tensorlistgetitem_lstm_165_tensorarrayunstack_tensorlistfromtensorelstm_165_while_tensorarrayv2read_tensorlistgetitem_lstm_165_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_165/while/lstm_cell_495/BiasAdd/ReadVariableOp3lstm_165/while/lstm_cell_495/BiasAdd/ReadVariableOp2h
2lstm_165/while/lstm_cell_495/MatMul/ReadVariableOp2lstm_165/while/lstm_cell_495/MatMul/ReadVariableOp2l
4lstm_165/while/lstm_cell_495/MatMul_1/ReadVariableOp4lstm_165/while/lstm_cell_495/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_165_while_cond_3008503.
*lstm_165_while_lstm_165_while_loop_counter4
0lstm_165_while_lstm_165_while_maximum_iterations
lstm_165_while_placeholder 
lstm_165_while_placeholder_1 
lstm_165_while_placeholder_2 
lstm_165_while_placeholder_30
,lstm_165_while_less_lstm_165_strided_slice_1G
Clstm_165_while_lstm_165_while_cond_3008503___redundant_placeholder0G
Clstm_165_while_lstm_165_while_cond_3008503___redundant_placeholder1G
Clstm_165_while_lstm_165_while_cond_3008503___redundant_placeholder2G
Clstm_165_while_lstm_165_while_cond_3008503___redundant_placeholder3
lstm_165_while_identity
?
lstm_165/while/LessLesslstm_165_while_placeholder,lstm_165_while_less_lstm_165_strided_slice_1*
T0*
_output_shapes
: ]
lstm_165/while/IdentityIdentitylstm_165/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_165_while_identity lstm_165/while/Identity:output:0*(
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
J__inference_lstm_cell_496_layer_call_and_return_conditional_losses_3006267

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
E__inference_lstm_165_layer_call_and_return_conditional_losses_3009202
inputs_0?
,lstm_cell_495_matmul_readvariableop_resource:	?A
.lstm_cell_495_matmul_1_readvariableop_resource:	d?<
-lstm_cell_495_biasadd_readvariableop_resource:	?
identity??$lstm_cell_495/BiasAdd/ReadVariableOp?#lstm_cell_495/MatMul/ReadVariableOp?%lstm_cell_495/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_495/MatMul/ReadVariableOpReadVariableOp,lstm_cell_495_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_495/MatMulMatMulstrided_slice_2:output:0+lstm_cell_495/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_495/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_495_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_495/MatMul_1MatMulzeros:output:0-lstm_cell_495/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_495/addAddV2lstm_cell_495/MatMul:product:0 lstm_cell_495/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_495/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_495_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_495/BiasAddBiasAddlstm_cell_495/add:z:0,lstm_cell_495/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_495/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_495/splitSplit&lstm_cell_495/split/split_dim:output:0lstm_cell_495/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_495/SigmoidSigmoidlstm_cell_495/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_495/Sigmoid_1Sigmoidlstm_cell_495/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_495/mulMullstm_cell_495/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_495/ReluRelulstm_cell_495/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_495/mul_1Mullstm_cell_495/Sigmoid:y:0 lstm_cell_495/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_495/add_1AddV2lstm_cell_495/mul:z:0lstm_cell_495/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_495/Sigmoid_2Sigmoidlstm_cell_495/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_495/Relu_1Relulstm_cell_495/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_495/mul_2Mullstm_cell_495/Sigmoid_2:y:0"lstm_cell_495/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_495_matmul_readvariableop_resource.lstm_cell_495_matmul_1_readvariableop_resource-lstm_cell_495_biasadd_readvariableop_resource*
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
while_body_3009118*
condR
while_cond_3009117*K
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
NoOpNoOp%^lstm_cell_495/BiasAdd/ReadVariableOp$^lstm_cell_495/MatMul/ReadVariableOp&^lstm_cell_495/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_495/BiasAdd/ReadVariableOp$lstm_cell_495/BiasAdd/ReadVariableOp2J
#lstm_cell_495/MatMul/ReadVariableOp#lstm_cell_495/MatMul/ReadVariableOp2N
%lstm_cell_495/MatMul_1/ReadVariableOp%lstm_cell_495/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?K
?
E__inference_lstm_165_layer_call_and_return_conditional_losses_3009059
inputs_0?
,lstm_cell_495_matmul_readvariableop_resource:	?A
.lstm_cell_495_matmul_1_readvariableop_resource:	d?<
-lstm_cell_495_biasadd_readvariableop_resource:	?
identity??$lstm_cell_495/BiasAdd/ReadVariableOp?#lstm_cell_495/MatMul/ReadVariableOp?%lstm_cell_495/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_495/MatMul/ReadVariableOpReadVariableOp,lstm_cell_495_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_495/MatMulMatMulstrided_slice_2:output:0+lstm_cell_495/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_495/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_495_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_495/MatMul_1MatMulzeros:output:0-lstm_cell_495/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_495/addAddV2lstm_cell_495/MatMul:product:0 lstm_cell_495/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_495/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_495_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_495/BiasAddBiasAddlstm_cell_495/add:z:0,lstm_cell_495/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_495/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_495/splitSplit&lstm_cell_495/split/split_dim:output:0lstm_cell_495/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_495/SigmoidSigmoidlstm_cell_495/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_495/Sigmoid_1Sigmoidlstm_cell_495/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_495/mulMullstm_cell_495/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_495/ReluRelulstm_cell_495/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_495/mul_1Mullstm_cell_495/Sigmoid:y:0 lstm_cell_495/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_495/add_1AddV2lstm_cell_495/mul:z:0lstm_cell_495/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_495/Sigmoid_2Sigmoidlstm_cell_495/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_495/Relu_1Relulstm_cell_495/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_495/mul_2Mullstm_cell_495/Sigmoid_2:y:0"lstm_cell_495/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_495_matmul_readvariableop_resource.lstm_cell_495_matmul_1_readvariableop_resource-lstm_cell_495_biasadd_readvariableop_resource*
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
while_body_3008975*
condR
while_cond_3008974*K
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
NoOpNoOp%^lstm_cell_495/BiasAdd/ReadVariableOp$^lstm_cell_495/MatMul/ReadVariableOp&^lstm_cell_495/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_495/BiasAdd/ReadVariableOp$lstm_cell_495/BiasAdd/ReadVariableOp2J
#lstm_cell_495/MatMul/ReadVariableOp#lstm_cell_495/MatMul/ReadVariableOp2N
%lstm_cell_495/MatMul_1/ReadVariableOp%lstm_cell_495/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_3010019
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3010019___redundant_placeholder05
1while_while_cond_3010019___redundant_placeholder15
1while_while_cond_3010019___redundant_placeholder25
1while_while_cond_3010019___redundant_placeholder3
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
/__inference_lstm_cell_495_layer_call_fn_3010773

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
J__inference_lstm_cell_495_layer_call_and_return_conditional_losses_3005917o
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
while_body_3009734
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_496_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_496_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_496_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_496_matmul_readvariableop_resource:	d?G
4while_lstm_cell_496_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_496_biasadd_readvariableop_resource:	???*while/lstm_cell_496/BiasAdd/ReadVariableOp?)while/lstm_cell_496/MatMul/ReadVariableOp?+while/lstm_cell_496/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_496/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_496_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_496/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_496/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_496/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_496_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_496/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_496/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_496/addAddV2$while/lstm_cell_496/MatMul:product:0&while/lstm_cell_496/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_496/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_496_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_496/BiasAddBiasAddwhile/lstm_cell_496/add:z:02while/lstm_cell_496/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_496/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_496/splitSplit,while/lstm_cell_496/split/split_dim:output:0$while/lstm_cell_496/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_496/SigmoidSigmoid"while/lstm_cell_496/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_496/Sigmoid_1Sigmoid"while/lstm_cell_496/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_496/mulMul!while/lstm_cell_496/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_496/ReluRelu"while/lstm_cell_496/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_496/mul_1Mulwhile/lstm_cell_496/Sigmoid:y:0&while/lstm_cell_496/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_496/add_1AddV2while/lstm_cell_496/mul:z:0while/lstm_cell_496/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_496/Sigmoid_2Sigmoid"while/lstm_cell_496/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_496/Relu_1Reluwhile/lstm_cell_496/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_496/mul_2Mul!while/lstm_cell_496/Sigmoid_2:y:0(while/lstm_cell_496/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_496/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_496/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_496/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_496/BiasAdd/ReadVariableOp*^while/lstm_cell_496/MatMul/ReadVariableOp,^while/lstm_cell_496/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_496_biasadd_readvariableop_resource5while_lstm_cell_496_biasadd_readvariableop_resource_0"n
4while_lstm_cell_496_matmul_1_readvariableop_resource6while_lstm_cell_496_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_496_matmul_readvariableop_resource4while_lstm_cell_496_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_496/BiasAdd/ReadVariableOp*while/lstm_cell_496/BiasAdd/ReadVariableOp2V
)while/lstm_cell_496/MatMul/ReadVariableOp)while/lstm_cell_496/MatMul/ReadVariableOp2Z
+while/lstm_cell_496/MatMul_1/ReadVariableOp+while/lstm_cell_496/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_165_layer_call_fn_3008905

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
E__inference_lstm_165_layer_call_and_return_conditional_losses_3006903s
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
)sequential_55_lstm_166_while_cond_3005474J
Fsequential_55_lstm_166_while_sequential_55_lstm_166_while_loop_counterP
Lsequential_55_lstm_166_while_sequential_55_lstm_166_while_maximum_iterations,
(sequential_55_lstm_166_while_placeholder.
*sequential_55_lstm_166_while_placeholder_1.
*sequential_55_lstm_166_while_placeholder_2.
*sequential_55_lstm_166_while_placeholder_3L
Hsequential_55_lstm_166_while_less_sequential_55_lstm_166_strided_slice_1c
_sequential_55_lstm_166_while_sequential_55_lstm_166_while_cond_3005474___redundant_placeholder0c
_sequential_55_lstm_166_while_sequential_55_lstm_166_while_cond_3005474___redundant_placeholder1c
_sequential_55_lstm_166_while_sequential_55_lstm_166_while_cond_3005474___redundant_placeholder2c
_sequential_55_lstm_166_while_sequential_55_lstm_166_while_cond_3005474___redundant_placeholder3)
%sequential_55_lstm_166_while_identity
?
!sequential_55/lstm_166/while/LessLess(sequential_55_lstm_166_while_placeholderHsequential_55_lstm_166_while_less_sequential_55_lstm_166_strided_slice_1*
T0*
_output_shapes
: y
%sequential_55/lstm_166/while/IdentityIdentity%sequential_55/lstm_166/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_55_lstm_166_while_identity.sequential_55/lstm_166/while/Identity:output:0*(
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
J__inference_lstm_cell_495_layer_call_and_return_conditional_losses_3010805

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
?W
?
 __inference__traced_save_3011176
file_prefix.
*savev2_dense_55_kernel_read_readvariableop,
(savev2_dense_55_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_165_lstm_cell_165_kernel_read_readvariableopF
Bsavev2_lstm_165_lstm_cell_165_recurrent_kernel_read_readvariableop:
6savev2_lstm_165_lstm_cell_165_bias_read_readvariableop<
8savev2_lstm_166_lstm_cell_166_kernel_read_readvariableopF
Bsavev2_lstm_166_lstm_cell_166_recurrent_kernel_read_readvariableop:
6savev2_lstm_166_lstm_cell_166_bias_read_readvariableop<
8savev2_lstm_167_lstm_cell_167_kernel_read_readvariableopF
Bsavev2_lstm_167_lstm_cell_167_recurrent_kernel_read_readvariableop:
6savev2_lstm_167_lstm_cell_167_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_55_kernel_m_read_readvariableop3
/savev2_adam_dense_55_bias_m_read_readvariableopC
?savev2_adam_lstm_165_lstm_cell_165_kernel_m_read_readvariableopM
Isavev2_adam_lstm_165_lstm_cell_165_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_165_lstm_cell_165_bias_m_read_readvariableopC
?savev2_adam_lstm_166_lstm_cell_166_kernel_m_read_readvariableopM
Isavev2_adam_lstm_166_lstm_cell_166_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_166_lstm_cell_166_bias_m_read_readvariableopC
?savev2_adam_lstm_167_lstm_cell_167_kernel_m_read_readvariableopM
Isavev2_adam_lstm_167_lstm_cell_167_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_167_lstm_cell_167_bias_m_read_readvariableop5
1savev2_adam_dense_55_kernel_v_read_readvariableop3
/savev2_adam_dense_55_bias_v_read_readvariableopC
?savev2_adam_lstm_165_lstm_cell_165_kernel_v_read_readvariableopM
Isavev2_adam_lstm_165_lstm_cell_165_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_165_lstm_cell_165_bias_v_read_readvariableopC
?savev2_adam_lstm_166_lstm_cell_166_kernel_v_read_readvariableopM
Isavev2_adam_lstm_166_lstm_cell_166_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_166_lstm_cell_166_bias_v_read_readvariableopC
?savev2_adam_lstm_167_lstm_cell_167_kernel_v_read_readvariableopM
Isavev2_adam_lstm_167_lstm_cell_167_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_167_lstm_cell_167_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_55_kernel_read_readvariableop(savev2_dense_55_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_165_lstm_cell_165_kernel_read_readvariableopBsavev2_lstm_165_lstm_cell_165_recurrent_kernel_read_readvariableop6savev2_lstm_165_lstm_cell_165_bias_read_readvariableop8savev2_lstm_166_lstm_cell_166_kernel_read_readvariableopBsavev2_lstm_166_lstm_cell_166_recurrent_kernel_read_readvariableop6savev2_lstm_166_lstm_cell_166_bias_read_readvariableop8savev2_lstm_167_lstm_cell_167_kernel_read_readvariableopBsavev2_lstm_167_lstm_cell_167_recurrent_kernel_read_readvariableop6savev2_lstm_167_lstm_cell_167_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_55_kernel_m_read_readvariableop/savev2_adam_dense_55_bias_m_read_readvariableop?savev2_adam_lstm_165_lstm_cell_165_kernel_m_read_readvariableopIsavev2_adam_lstm_165_lstm_cell_165_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_165_lstm_cell_165_bias_m_read_readvariableop?savev2_adam_lstm_166_lstm_cell_166_kernel_m_read_readvariableopIsavev2_adam_lstm_166_lstm_cell_166_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_166_lstm_cell_166_bias_m_read_readvariableop?savev2_adam_lstm_167_lstm_cell_167_kernel_m_read_readvariableopIsavev2_adam_lstm_167_lstm_cell_167_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_167_lstm_cell_167_bias_m_read_readvariableop1savev2_adam_dense_55_kernel_v_read_readvariableop/savev2_adam_dense_55_bias_v_read_readvariableop?savev2_adam_lstm_165_lstm_cell_165_kernel_v_read_readvariableopIsavev2_adam_lstm_165_lstm_cell_165_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_165_lstm_cell_165_bias_v_read_readvariableop?savev2_adam_lstm_166_lstm_cell_166_kernel_v_read_readvariableopIsavev2_adam_lstm_166_lstm_cell_166_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_166_lstm_cell_166_bias_v_read_readvariableop?savev2_adam_lstm_167_lstm_cell_167_kernel_v_read_readvariableopIsavev2_adam_lstm_167_lstm_cell_167_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_167_lstm_cell_167_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
E__inference_lstm_167_layer_call_and_return_conditional_losses_3007203

inputs>
,lstm_cell_497_matmul_readvariableop_resource:2(@
.lstm_cell_497_matmul_1_readvariableop_resource:
(;
-lstm_cell_497_biasadd_readvariableop_resource:(
identity??$lstm_cell_497/BiasAdd/ReadVariableOp?#lstm_cell_497/MatMul/ReadVariableOp?%lstm_cell_497/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_497/MatMul/ReadVariableOpReadVariableOp,lstm_cell_497_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_497/MatMulMatMulstrided_slice_2:output:0+lstm_cell_497/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_497/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_497_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_497/MatMul_1MatMulzeros:output:0-lstm_cell_497/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_497/addAddV2lstm_cell_497/MatMul:product:0 lstm_cell_497/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_497/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_497_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_497/BiasAddBiasAddlstm_cell_497/add:z:0,lstm_cell_497/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_497/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_497/splitSplit&lstm_cell_497/split/split_dim:output:0lstm_cell_497/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_497/SigmoidSigmoidlstm_cell_497/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_497/Sigmoid_1Sigmoidlstm_cell_497/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_497/mulMullstm_cell_497/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_497/ReluRelulstm_cell_497/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_497/mul_1Mullstm_cell_497/Sigmoid:y:0 lstm_cell_497/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_497/add_1AddV2lstm_cell_497/mul:z:0lstm_cell_497/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_497/Sigmoid_2Sigmoidlstm_cell_497/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_497/Relu_1Relulstm_cell_497/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_497/mul_2Mullstm_cell_497/Sigmoid_2:y:0"lstm_cell_497/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_497_matmul_readvariableop_resource.lstm_cell_497_matmul_1_readvariableop_resource-lstm_cell_497_biasadd_readvariableop_resource*
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
while_body_3007119*
condR
while_cond_3007118*K
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
NoOpNoOp%^lstm_cell_497/BiasAdd/ReadVariableOp$^lstm_cell_497/MatMul/ReadVariableOp&^lstm_cell_497/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_497/BiasAdd/ReadVariableOp$lstm_cell_497/BiasAdd/ReadVariableOp2J
#lstm_cell_497/MatMul/ReadVariableOp#lstm_cell_497/MatMul/ReadVariableOp2N
%lstm_cell_497/MatMul_1/ReadVariableOp%lstm_cell_497/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_165_layer_call_and_return_conditional_losses_3006903

inputs?
,lstm_cell_495_matmul_readvariableop_resource:	?A
.lstm_cell_495_matmul_1_readvariableop_resource:	d?<
-lstm_cell_495_biasadd_readvariableop_resource:	?
identity??$lstm_cell_495/BiasAdd/ReadVariableOp?#lstm_cell_495/MatMul/ReadVariableOp?%lstm_cell_495/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_495/MatMul/ReadVariableOpReadVariableOp,lstm_cell_495_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_495/MatMulMatMulstrided_slice_2:output:0+lstm_cell_495/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_495/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_495_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_495/MatMul_1MatMulzeros:output:0-lstm_cell_495/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_495/addAddV2lstm_cell_495/MatMul:product:0 lstm_cell_495/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_495/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_495_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_495/BiasAddBiasAddlstm_cell_495/add:z:0,lstm_cell_495/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_495/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_495/splitSplit&lstm_cell_495/split/split_dim:output:0lstm_cell_495/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_495/SigmoidSigmoidlstm_cell_495/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_495/Sigmoid_1Sigmoidlstm_cell_495/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_495/mulMullstm_cell_495/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_495/ReluRelulstm_cell_495/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_495/mul_1Mullstm_cell_495/Sigmoid:y:0 lstm_cell_495/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_495/add_1AddV2lstm_cell_495/mul:z:0lstm_cell_495/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_495/Sigmoid_2Sigmoidlstm_cell_495/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_495/Relu_1Relulstm_cell_495/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_495/mul_2Mullstm_cell_495/Sigmoid_2:y:0"lstm_cell_495/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_495_matmul_readvariableop_resource.lstm_cell_495_matmul_1_readvariableop_resource-lstm_cell_495_biasadd_readvariableop_resource*
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
while_body_3006819*
condR
while_cond_3006818*K
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
NoOpNoOp%^lstm_cell_495/BiasAdd/ReadVariableOp$^lstm_cell_495/MatMul/ReadVariableOp&^lstm_cell_495/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_495/BiasAdd/ReadVariableOp$lstm_cell_495/BiasAdd/ReadVariableOp2J
#lstm_cell_495/MatMul/ReadVariableOp#lstm_cell_495/MatMul/ReadVariableOp2N
%lstm_cell_495/MatMul_1/ReadVariableOp%lstm_cell_495/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
"__inference__wrapped_model_3005704
lstm_165_inputV
Csequential_55_lstm_165_lstm_cell_495_matmul_readvariableop_resource:	?X
Esequential_55_lstm_165_lstm_cell_495_matmul_1_readvariableop_resource:	d?S
Dsequential_55_lstm_165_lstm_cell_495_biasadd_readvariableop_resource:	?V
Csequential_55_lstm_166_lstm_cell_496_matmul_readvariableop_resource:	d?X
Esequential_55_lstm_166_lstm_cell_496_matmul_1_readvariableop_resource:	2?S
Dsequential_55_lstm_166_lstm_cell_496_biasadd_readvariableop_resource:	?U
Csequential_55_lstm_167_lstm_cell_497_matmul_readvariableop_resource:2(W
Esequential_55_lstm_167_lstm_cell_497_matmul_1_readvariableop_resource:
(R
Dsequential_55_lstm_167_lstm_cell_497_biasadd_readvariableop_resource:(G
5sequential_55_dense_55_matmul_readvariableop_resource:
D
6sequential_55_dense_55_biasadd_readvariableop_resource:
identity??-sequential_55/dense_55/BiasAdd/ReadVariableOp?,sequential_55/dense_55/MatMul/ReadVariableOp?;sequential_55/lstm_165/lstm_cell_495/BiasAdd/ReadVariableOp?:sequential_55/lstm_165/lstm_cell_495/MatMul/ReadVariableOp?<sequential_55/lstm_165/lstm_cell_495/MatMul_1/ReadVariableOp?sequential_55/lstm_165/while?;sequential_55/lstm_166/lstm_cell_496/BiasAdd/ReadVariableOp?:sequential_55/lstm_166/lstm_cell_496/MatMul/ReadVariableOp?<sequential_55/lstm_166/lstm_cell_496/MatMul_1/ReadVariableOp?sequential_55/lstm_166/while?;sequential_55/lstm_167/lstm_cell_497/BiasAdd/ReadVariableOp?:sequential_55/lstm_167/lstm_cell_497/MatMul/ReadVariableOp?<sequential_55/lstm_167/lstm_cell_497/MatMul_1/ReadVariableOp?sequential_55/lstm_167/whileZ
sequential_55/lstm_165/ShapeShapelstm_165_input*
T0*
_output_shapes
:t
*sequential_55/lstm_165/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_55/lstm_165/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_55/lstm_165/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_55/lstm_165/strided_sliceStridedSlice%sequential_55/lstm_165/Shape:output:03sequential_55/lstm_165/strided_slice/stack:output:05sequential_55/lstm_165/strided_slice/stack_1:output:05sequential_55/lstm_165/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_55/lstm_165/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
#sequential_55/lstm_165/zeros/packedPack-sequential_55/lstm_165/strided_slice:output:0.sequential_55/lstm_165/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_55/lstm_165/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_55/lstm_165/zerosFill,sequential_55/lstm_165/zeros/packed:output:0+sequential_55/lstm_165/zeros/Const:output:0*
T0*'
_output_shapes
:?????????di
'sequential_55/lstm_165/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
%sequential_55/lstm_165/zeros_1/packedPack-sequential_55/lstm_165/strided_slice:output:00sequential_55/lstm_165/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_55/lstm_165/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_55/lstm_165/zeros_1Fill.sequential_55/lstm_165/zeros_1/packed:output:0-sequential_55/lstm_165/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dz
%sequential_55/lstm_165/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_55/lstm_165/transpose	Transposelstm_165_input.sequential_55/lstm_165/transpose/perm:output:0*
T0*+
_output_shapes
:?????????r
sequential_55/lstm_165/Shape_1Shape$sequential_55/lstm_165/transpose:y:0*
T0*
_output_shapes
:v
,sequential_55/lstm_165/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_55/lstm_165/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_55/lstm_165/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_55/lstm_165/strided_slice_1StridedSlice'sequential_55/lstm_165/Shape_1:output:05sequential_55/lstm_165/strided_slice_1/stack:output:07sequential_55/lstm_165/strided_slice_1/stack_1:output:07sequential_55/lstm_165/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_55/lstm_165/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_55/lstm_165/TensorArrayV2TensorListReserve;sequential_55/lstm_165/TensorArrayV2/element_shape:output:0/sequential_55/lstm_165/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_55/lstm_165/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
>sequential_55/lstm_165/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_55/lstm_165/transpose:y:0Usequential_55/lstm_165/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_55/lstm_165/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_55/lstm_165/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_55/lstm_165/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_55/lstm_165/strided_slice_2StridedSlice$sequential_55/lstm_165/transpose:y:05sequential_55/lstm_165/strided_slice_2/stack:output:07sequential_55/lstm_165/strided_slice_2/stack_1:output:07sequential_55/lstm_165/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
:sequential_55/lstm_165/lstm_cell_495/MatMul/ReadVariableOpReadVariableOpCsequential_55_lstm_165_lstm_cell_495_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
+sequential_55/lstm_165/lstm_cell_495/MatMulMatMul/sequential_55/lstm_165/strided_slice_2:output:0Bsequential_55/lstm_165/lstm_cell_495/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_55/lstm_165/lstm_cell_495/MatMul_1/ReadVariableOpReadVariableOpEsequential_55_lstm_165_lstm_cell_495_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
-sequential_55/lstm_165/lstm_cell_495/MatMul_1MatMul%sequential_55/lstm_165/zeros:output:0Dsequential_55/lstm_165/lstm_cell_495/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_55/lstm_165/lstm_cell_495/addAddV25sequential_55/lstm_165/lstm_cell_495/MatMul:product:07sequential_55/lstm_165/lstm_cell_495/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_55/lstm_165/lstm_cell_495/BiasAdd/ReadVariableOpReadVariableOpDsequential_55_lstm_165_lstm_cell_495_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_55/lstm_165/lstm_cell_495/BiasAddBiasAdd,sequential_55/lstm_165/lstm_cell_495/add:z:0Csequential_55/lstm_165/lstm_cell_495/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_55/lstm_165/lstm_cell_495/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_55/lstm_165/lstm_cell_495/splitSplit=sequential_55/lstm_165/lstm_cell_495/split/split_dim:output:05sequential_55/lstm_165/lstm_cell_495/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
,sequential_55/lstm_165/lstm_cell_495/SigmoidSigmoid3sequential_55/lstm_165/lstm_cell_495/split:output:0*
T0*'
_output_shapes
:?????????d?
.sequential_55/lstm_165/lstm_cell_495/Sigmoid_1Sigmoid3sequential_55/lstm_165/lstm_cell_495/split:output:1*
T0*'
_output_shapes
:?????????d?
(sequential_55/lstm_165/lstm_cell_495/mulMul2sequential_55/lstm_165/lstm_cell_495/Sigmoid_1:y:0'sequential_55/lstm_165/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
)sequential_55/lstm_165/lstm_cell_495/ReluRelu3sequential_55/lstm_165/lstm_cell_495/split:output:2*
T0*'
_output_shapes
:?????????d?
*sequential_55/lstm_165/lstm_cell_495/mul_1Mul0sequential_55/lstm_165/lstm_cell_495/Sigmoid:y:07sequential_55/lstm_165/lstm_cell_495/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
*sequential_55/lstm_165/lstm_cell_495/add_1AddV2,sequential_55/lstm_165/lstm_cell_495/mul:z:0.sequential_55/lstm_165/lstm_cell_495/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
.sequential_55/lstm_165/lstm_cell_495/Sigmoid_2Sigmoid3sequential_55/lstm_165/lstm_cell_495/split:output:3*
T0*'
_output_shapes
:?????????d?
+sequential_55/lstm_165/lstm_cell_495/Relu_1Relu.sequential_55/lstm_165/lstm_cell_495/add_1:z:0*
T0*'
_output_shapes
:?????????d?
*sequential_55/lstm_165/lstm_cell_495/mul_2Mul2sequential_55/lstm_165/lstm_cell_495/Sigmoid_2:y:09sequential_55/lstm_165/lstm_cell_495/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
4sequential_55/lstm_165/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
&sequential_55/lstm_165/TensorArrayV2_1TensorListReserve=sequential_55/lstm_165/TensorArrayV2_1/element_shape:output:0/sequential_55/lstm_165/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_55/lstm_165/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_55/lstm_165/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_55/lstm_165/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_55/lstm_165/whileWhile2sequential_55/lstm_165/while/loop_counter:output:08sequential_55/lstm_165/while/maximum_iterations:output:0$sequential_55/lstm_165/time:output:0/sequential_55/lstm_165/TensorArrayV2_1:handle:0%sequential_55/lstm_165/zeros:output:0'sequential_55/lstm_165/zeros_1:output:0/sequential_55/lstm_165/strided_slice_1:output:0Nsequential_55/lstm_165/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_55_lstm_165_lstm_cell_495_matmul_readvariableop_resourceEsequential_55_lstm_165_lstm_cell_495_matmul_1_readvariableop_resourceDsequential_55_lstm_165_lstm_cell_495_biasadd_readvariableop_resource*
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
)sequential_55_lstm_165_while_body_3005336*5
cond-R+
)sequential_55_lstm_165_while_cond_3005335*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Gsequential_55/lstm_165/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
9sequential_55/lstm_165/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_55/lstm_165/while:output:3Psequential_55/lstm_165/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0
,sequential_55/lstm_165/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_55/lstm_165/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_55/lstm_165/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_55/lstm_165/strided_slice_3StridedSliceBsequential_55/lstm_165/TensorArrayV2Stack/TensorListStack:tensor:05sequential_55/lstm_165/strided_slice_3/stack:output:07sequential_55/lstm_165/strided_slice_3/stack_1:output:07sequential_55/lstm_165/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask|
'sequential_55/lstm_165/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_55/lstm_165/transpose_1	TransposeBsequential_55/lstm_165/TensorArrayV2Stack/TensorListStack:tensor:00sequential_55/lstm_165/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_55/lstm_165/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_55/lstm_166/ShapeShape&sequential_55/lstm_165/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_55/lstm_166/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_55/lstm_166/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_55/lstm_166/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_55/lstm_166/strided_sliceStridedSlice%sequential_55/lstm_166/Shape:output:03sequential_55/lstm_166/strided_slice/stack:output:05sequential_55/lstm_166/strided_slice/stack_1:output:05sequential_55/lstm_166/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_55/lstm_166/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
#sequential_55/lstm_166/zeros/packedPack-sequential_55/lstm_166/strided_slice:output:0.sequential_55/lstm_166/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_55/lstm_166/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_55/lstm_166/zerosFill,sequential_55/lstm_166/zeros/packed:output:0+sequential_55/lstm_166/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2i
'sequential_55/lstm_166/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
%sequential_55/lstm_166/zeros_1/packedPack-sequential_55/lstm_166/strided_slice:output:00sequential_55/lstm_166/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_55/lstm_166/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_55/lstm_166/zeros_1Fill.sequential_55/lstm_166/zeros_1/packed:output:0-sequential_55/lstm_166/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2z
%sequential_55/lstm_166/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_55/lstm_166/transpose	Transpose&sequential_55/lstm_165/transpose_1:y:0.sequential_55/lstm_166/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_55/lstm_166/Shape_1Shape$sequential_55/lstm_166/transpose:y:0*
T0*
_output_shapes
:v
,sequential_55/lstm_166/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_55/lstm_166/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_55/lstm_166/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_55/lstm_166/strided_slice_1StridedSlice'sequential_55/lstm_166/Shape_1:output:05sequential_55/lstm_166/strided_slice_1/stack:output:07sequential_55/lstm_166/strided_slice_1/stack_1:output:07sequential_55/lstm_166/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_55/lstm_166/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_55/lstm_166/TensorArrayV2TensorListReserve;sequential_55/lstm_166/TensorArrayV2/element_shape:output:0/sequential_55/lstm_166/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_55/lstm_166/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
>sequential_55/lstm_166/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_55/lstm_166/transpose:y:0Usequential_55/lstm_166/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_55/lstm_166/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_55/lstm_166/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_55/lstm_166/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_55/lstm_166/strided_slice_2StridedSlice$sequential_55/lstm_166/transpose:y:05sequential_55/lstm_166/strided_slice_2/stack:output:07sequential_55/lstm_166/strided_slice_2/stack_1:output:07sequential_55/lstm_166/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
:sequential_55/lstm_166/lstm_cell_496/MatMul/ReadVariableOpReadVariableOpCsequential_55_lstm_166_lstm_cell_496_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
+sequential_55/lstm_166/lstm_cell_496/MatMulMatMul/sequential_55/lstm_166/strided_slice_2:output:0Bsequential_55/lstm_166/lstm_cell_496/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_55/lstm_166/lstm_cell_496/MatMul_1/ReadVariableOpReadVariableOpEsequential_55_lstm_166_lstm_cell_496_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
-sequential_55/lstm_166/lstm_cell_496/MatMul_1MatMul%sequential_55/lstm_166/zeros:output:0Dsequential_55/lstm_166/lstm_cell_496/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_55/lstm_166/lstm_cell_496/addAddV25sequential_55/lstm_166/lstm_cell_496/MatMul:product:07sequential_55/lstm_166/lstm_cell_496/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_55/lstm_166/lstm_cell_496/BiasAdd/ReadVariableOpReadVariableOpDsequential_55_lstm_166_lstm_cell_496_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_55/lstm_166/lstm_cell_496/BiasAddBiasAdd,sequential_55/lstm_166/lstm_cell_496/add:z:0Csequential_55/lstm_166/lstm_cell_496/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_55/lstm_166/lstm_cell_496/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_55/lstm_166/lstm_cell_496/splitSplit=sequential_55/lstm_166/lstm_cell_496/split/split_dim:output:05sequential_55/lstm_166/lstm_cell_496/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
,sequential_55/lstm_166/lstm_cell_496/SigmoidSigmoid3sequential_55/lstm_166/lstm_cell_496/split:output:0*
T0*'
_output_shapes
:?????????2?
.sequential_55/lstm_166/lstm_cell_496/Sigmoid_1Sigmoid3sequential_55/lstm_166/lstm_cell_496/split:output:1*
T0*'
_output_shapes
:?????????2?
(sequential_55/lstm_166/lstm_cell_496/mulMul2sequential_55/lstm_166/lstm_cell_496/Sigmoid_1:y:0'sequential_55/lstm_166/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
)sequential_55/lstm_166/lstm_cell_496/ReluRelu3sequential_55/lstm_166/lstm_cell_496/split:output:2*
T0*'
_output_shapes
:?????????2?
*sequential_55/lstm_166/lstm_cell_496/mul_1Mul0sequential_55/lstm_166/lstm_cell_496/Sigmoid:y:07sequential_55/lstm_166/lstm_cell_496/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
*sequential_55/lstm_166/lstm_cell_496/add_1AddV2,sequential_55/lstm_166/lstm_cell_496/mul:z:0.sequential_55/lstm_166/lstm_cell_496/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
.sequential_55/lstm_166/lstm_cell_496/Sigmoid_2Sigmoid3sequential_55/lstm_166/lstm_cell_496/split:output:3*
T0*'
_output_shapes
:?????????2?
+sequential_55/lstm_166/lstm_cell_496/Relu_1Relu.sequential_55/lstm_166/lstm_cell_496/add_1:z:0*
T0*'
_output_shapes
:?????????2?
*sequential_55/lstm_166/lstm_cell_496/mul_2Mul2sequential_55/lstm_166/lstm_cell_496/Sigmoid_2:y:09sequential_55/lstm_166/lstm_cell_496/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
4sequential_55/lstm_166/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
&sequential_55/lstm_166/TensorArrayV2_1TensorListReserve=sequential_55/lstm_166/TensorArrayV2_1/element_shape:output:0/sequential_55/lstm_166/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_55/lstm_166/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_55/lstm_166/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_55/lstm_166/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_55/lstm_166/whileWhile2sequential_55/lstm_166/while/loop_counter:output:08sequential_55/lstm_166/while/maximum_iterations:output:0$sequential_55/lstm_166/time:output:0/sequential_55/lstm_166/TensorArrayV2_1:handle:0%sequential_55/lstm_166/zeros:output:0'sequential_55/lstm_166/zeros_1:output:0/sequential_55/lstm_166/strided_slice_1:output:0Nsequential_55/lstm_166/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_55_lstm_166_lstm_cell_496_matmul_readvariableop_resourceEsequential_55_lstm_166_lstm_cell_496_matmul_1_readvariableop_resourceDsequential_55_lstm_166_lstm_cell_496_biasadd_readvariableop_resource*
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
)sequential_55_lstm_166_while_body_3005475*5
cond-R+
)sequential_55_lstm_166_while_cond_3005474*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Gsequential_55/lstm_166/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
9sequential_55/lstm_166/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_55/lstm_166/while:output:3Psequential_55/lstm_166/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0
,sequential_55/lstm_166/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_55/lstm_166/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_55/lstm_166/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_55/lstm_166/strided_slice_3StridedSliceBsequential_55/lstm_166/TensorArrayV2Stack/TensorListStack:tensor:05sequential_55/lstm_166/strided_slice_3/stack:output:07sequential_55/lstm_166/strided_slice_3/stack_1:output:07sequential_55/lstm_166/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask|
'sequential_55/lstm_166/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_55/lstm_166/transpose_1	TransposeBsequential_55/lstm_166/TensorArrayV2Stack/TensorListStack:tensor:00sequential_55/lstm_166/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_55/lstm_166/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_55/lstm_167/ShapeShape&sequential_55/lstm_166/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_55/lstm_167/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_55/lstm_167/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_55/lstm_167/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_55/lstm_167/strided_sliceStridedSlice%sequential_55/lstm_167/Shape:output:03sequential_55/lstm_167/strided_slice/stack:output:05sequential_55/lstm_167/strided_slice/stack_1:output:05sequential_55/lstm_167/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_55/lstm_167/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
#sequential_55/lstm_167/zeros/packedPack-sequential_55/lstm_167/strided_slice:output:0.sequential_55/lstm_167/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_55/lstm_167/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_55/lstm_167/zerosFill,sequential_55/lstm_167/zeros/packed:output:0+sequential_55/lstm_167/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
i
'sequential_55/lstm_167/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
%sequential_55/lstm_167/zeros_1/packedPack-sequential_55/lstm_167/strided_slice:output:00sequential_55/lstm_167/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_55/lstm_167/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_55/lstm_167/zeros_1Fill.sequential_55/lstm_167/zeros_1/packed:output:0-sequential_55/lstm_167/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
z
%sequential_55/lstm_167/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_55/lstm_167/transpose	Transpose&sequential_55/lstm_166/transpose_1:y:0.sequential_55/lstm_167/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_55/lstm_167/Shape_1Shape$sequential_55/lstm_167/transpose:y:0*
T0*
_output_shapes
:v
,sequential_55/lstm_167/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_55/lstm_167/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_55/lstm_167/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_55/lstm_167/strided_slice_1StridedSlice'sequential_55/lstm_167/Shape_1:output:05sequential_55/lstm_167/strided_slice_1/stack:output:07sequential_55/lstm_167/strided_slice_1/stack_1:output:07sequential_55/lstm_167/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_55/lstm_167/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_55/lstm_167/TensorArrayV2TensorListReserve;sequential_55/lstm_167/TensorArrayV2/element_shape:output:0/sequential_55/lstm_167/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_55/lstm_167/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
>sequential_55/lstm_167/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_55/lstm_167/transpose:y:0Usequential_55/lstm_167/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_55/lstm_167/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_55/lstm_167/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_55/lstm_167/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_55/lstm_167/strided_slice_2StridedSlice$sequential_55/lstm_167/transpose:y:05sequential_55/lstm_167/strided_slice_2/stack:output:07sequential_55/lstm_167/strided_slice_2/stack_1:output:07sequential_55/lstm_167/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
:sequential_55/lstm_167/lstm_cell_497/MatMul/ReadVariableOpReadVariableOpCsequential_55_lstm_167_lstm_cell_497_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
+sequential_55/lstm_167/lstm_cell_497/MatMulMatMul/sequential_55/lstm_167/strided_slice_2:output:0Bsequential_55/lstm_167/lstm_cell_497/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
<sequential_55/lstm_167/lstm_cell_497/MatMul_1/ReadVariableOpReadVariableOpEsequential_55_lstm_167_lstm_cell_497_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
-sequential_55/lstm_167/lstm_cell_497/MatMul_1MatMul%sequential_55/lstm_167/zeros:output:0Dsequential_55/lstm_167/lstm_cell_497/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
(sequential_55/lstm_167/lstm_cell_497/addAddV25sequential_55/lstm_167/lstm_cell_497/MatMul:product:07sequential_55/lstm_167/lstm_cell_497/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
;sequential_55/lstm_167/lstm_cell_497/BiasAdd/ReadVariableOpReadVariableOpDsequential_55_lstm_167_lstm_cell_497_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
,sequential_55/lstm_167/lstm_cell_497/BiasAddBiasAdd,sequential_55/lstm_167/lstm_cell_497/add:z:0Csequential_55/lstm_167/lstm_cell_497/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(v
4sequential_55/lstm_167/lstm_cell_497/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_55/lstm_167/lstm_cell_497/splitSplit=sequential_55/lstm_167/lstm_cell_497/split/split_dim:output:05sequential_55/lstm_167/lstm_cell_497/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
,sequential_55/lstm_167/lstm_cell_497/SigmoidSigmoid3sequential_55/lstm_167/lstm_cell_497/split:output:0*
T0*'
_output_shapes
:?????????
?
.sequential_55/lstm_167/lstm_cell_497/Sigmoid_1Sigmoid3sequential_55/lstm_167/lstm_cell_497/split:output:1*
T0*'
_output_shapes
:?????????
?
(sequential_55/lstm_167/lstm_cell_497/mulMul2sequential_55/lstm_167/lstm_cell_497/Sigmoid_1:y:0'sequential_55/lstm_167/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
)sequential_55/lstm_167/lstm_cell_497/ReluRelu3sequential_55/lstm_167/lstm_cell_497/split:output:2*
T0*'
_output_shapes
:?????????
?
*sequential_55/lstm_167/lstm_cell_497/mul_1Mul0sequential_55/lstm_167/lstm_cell_497/Sigmoid:y:07sequential_55/lstm_167/lstm_cell_497/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
*sequential_55/lstm_167/lstm_cell_497/add_1AddV2,sequential_55/lstm_167/lstm_cell_497/mul:z:0.sequential_55/lstm_167/lstm_cell_497/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
.sequential_55/lstm_167/lstm_cell_497/Sigmoid_2Sigmoid3sequential_55/lstm_167/lstm_cell_497/split:output:3*
T0*'
_output_shapes
:?????????
?
+sequential_55/lstm_167/lstm_cell_497/Relu_1Relu.sequential_55/lstm_167/lstm_cell_497/add_1:z:0*
T0*'
_output_shapes
:?????????
?
*sequential_55/lstm_167/lstm_cell_497/mul_2Mul2sequential_55/lstm_167/lstm_cell_497/Sigmoid_2:y:09sequential_55/lstm_167/lstm_cell_497/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
4sequential_55/lstm_167/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
&sequential_55/lstm_167/TensorArrayV2_1TensorListReserve=sequential_55/lstm_167/TensorArrayV2_1/element_shape:output:0/sequential_55/lstm_167/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_55/lstm_167/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_55/lstm_167/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_55/lstm_167/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_55/lstm_167/whileWhile2sequential_55/lstm_167/while/loop_counter:output:08sequential_55/lstm_167/while/maximum_iterations:output:0$sequential_55/lstm_167/time:output:0/sequential_55/lstm_167/TensorArrayV2_1:handle:0%sequential_55/lstm_167/zeros:output:0'sequential_55/lstm_167/zeros_1:output:0/sequential_55/lstm_167/strided_slice_1:output:0Nsequential_55/lstm_167/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_55_lstm_167_lstm_cell_497_matmul_readvariableop_resourceEsequential_55_lstm_167_lstm_cell_497_matmul_1_readvariableop_resourceDsequential_55_lstm_167_lstm_cell_497_biasadd_readvariableop_resource*
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
)sequential_55_lstm_167_while_body_3005614*5
cond-R+
)sequential_55_lstm_167_while_cond_3005613*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Gsequential_55/lstm_167/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
9sequential_55/lstm_167/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_55/lstm_167/while:output:3Psequential_55/lstm_167/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0
,sequential_55/lstm_167/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_55/lstm_167/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_55/lstm_167/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_55/lstm_167/strided_slice_3StridedSliceBsequential_55/lstm_167/TensorArrayV2Stack/TensorListStack:tensor:05sequential_55/lstm_167/strided_slice_3/stack:output:07sequential_55/lstm_167/strided_slice_3/stack_1:output:07sequential_55/lstm_167/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask|
'sequential_55/lstm_167/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_55/lstm_167/transpose_1	TransposeBsequential_55/lstm_167/TensorArrayV2Stack/TensorListStack:tensor:00sequential_55/lstm_167/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
r
sequential_55/lstm_167/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_55/dense_55/MatMul/ReadVariableOpReadVariableOp5sequential_55_dense_55_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_55/dense_55/MatMulMatMul/sequential_55/lstm_167/strided_slice_3:output:04sequential_55/dense_55/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_55/dense_55/BiasAdd/ReadVariableOpReadVariableOp6sequential_55_dense_55_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_55/dense_55/BiasAddBiasAdd'sequential_55/dense_55/MatMul:product:05sequential_55/dense_55/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_55/dense_55/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_55/dense_55/BiasAdd/ReadVariableOp-^sequential_55/dense_55/MatMul/ReadVariableOp<^sequential_55/lstm_165/lstm_cell_495/BiasAdd/ReadVariableOp;^sequential_55/lstm_165/lstm_cell_495/MatMul/ReadVariableOp=^sequential_55/lstm_165/lstm_cell_495/MatMul_1/ReadVariableOp^sequential_55/lstm_165/while<^sequential_55/lstm_166/lstm_cell_496/BiasAdd/ReadVariableOp;^sequential_55/lstm_166/lstm_cell_496/MatMul/ReadVariableOp=^sequential_55/lstm_166/lstm_cell_496/MatMul_1/ReadVariableOp^sequential_55/lstm_166/while<^sequential_55/lstm_167/lstm_cell_497/BiasAdd/ReadVariableOp;^sequential_55/lstm_167/lstm_cell_497/MatMul/ReadVariableOp=^sequential_55/lstm_167/lstm_cell_497/MatMul_1/ReadVariableOp^sequential_55/lstm_167/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2^
-sequential_55/dense_55/BiasAdd/ReadVariableOp-sequential_55/dense_55/BiasAdd/ReadVariableOp2\
,sequential_55/dense_55/MatMul/ReadVariableOp,sequential_55/dense_55/MatMul/ReadVariableOp2z
;sequential_55/lstm_165/lstm_cell_495/BiasAdd/ReadVariableOp;sequential_55/lstm_165/lstm_cell_495/BiasAdd/ReadVariableOp2x
:sequential_55/lstm_165/lstm_cell_495/MatMul/ReadVariableOp:sequential_55/lstm_165/lstm_cell_495/MatMul/ReadVariableOp2|
<sequential_55/lstm_165/lstm_cell_495/MatMul_1/ReadVariableOp<sequential_55/lstm_165/lstm_cell_495/MatMul_1/ReadVariableOp2<
sequential_55/lstm_165/whilesequential_55/lstm_165/while2z
;sequential_55/lstm_166/lstm_cell_496/BiasAdd/ReadVariableOp;sequential_55/lstm_166/lstm_cell_496/BiasAdd/ReadVariableOp2x
:sequential_55/lstm_166/lstm_cell_496/MatMul/ReadVariableOp:sequential_55/lstm_166/lstm_cell_496/MatMul/ReadVariableOp2|
<sequential_55/lstm_166/lstm_cell_496/MatMul_1/ReadVariableOp<sequential_55/lstm_166/lstm_cell_496/MatMul_1/ReadVariableOp2<
sequential_55/lstm_166/whilesequential_55/lstm_166/while2z
;sequential_55/lstm_167/lstm_cell_497/BiasAdd/ReadVariableOp;sequential_55/lstm_167/lstm_cell_497/BiasAdd/ReadVariableOp2x
:sequential_55/lstm_167/lstm_cell_497/MatMul/ReadVariableOp:sequential_55/lstm_167/lstm_cell_497/MatMul/ReadVariableOp2|
<sequential_55/lstm_167/lstm_cell_497/MatMul_1/ReadVariableOp<sequential_55/lstm_167/lstm_cell_497/MatMul_1/ReadVariableOp2<
sequential_55/lstm_167/whilesequential_55/lstm_167/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_165_input
?S
?
)sequential_55_lstm_165_while_body_3005336J
Fsequential_55_lstm_165_while_sequential_55_lstm_165_while_loop_counterP
Lsequential_55_lstm_165_while_sequential_55_lstm_165_while_maximum_iterations,
(sequential_55_lstm_165_while_placeholder.
*sequential_55_lstm_165_while_placeholder_1.
*sequential_55_lstm_165_while_placeholder_2.
*sequential_55_lstm_165_while_placeholder_3I
Esequential_55_lstm_165_while_sequential_55_lstm_165_strided_slice_1_0?
?sequential_55_lstm_165_while_tensorarrayv2read_tensorlistgetitem_sequential_55_lstm_165_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_55_lstm_165_while_lstm_cell_495_matmul_readvariableop_resource_0:	?`
Msequential_55_lstm_165_while_lstm_cell_495_matmul_1_readvariableop_resource_0:	d?[
Lsequential_55_lstm_165_while_lstm_cell_495_biasadd_readvariableop_resource_0:	?)
%sequential_55_lstm_165_while_identity+
'sequential_55_lstm_165_while_identity_1+
'sequential_55_lstm_165_while_identity_2+
'sequential_55_lstm_165_while_identity_3+
'sequential_55_lstm_165_while_identity_4+
'sequential_55_lstm_165_while_identity_5G
Csequential_55_lstm_165_while_sequential_55_lstm_165_strided_slice_1?
sequential_55_lstm_165_while_tensorarrayv2read_tensorlistgetitem_sequential_55_lstm_165_tensorarrayunstack_tensorlistfromtensor\
Isequential_55_lstm_165_while_lstm_cell_495_matmul_readvariableop_resource:	?^
Ksequential_55_lstm_165_while_lstm_cell_495_matmul_1_readvariableop_resource:	d?Y
Jsequential_55_lstm_165_while_lstm_cell_495_biasadd_readvariableop_resource:	???Asequential_55/lstm_165/while/lstm_cell_495/BiasAdd/ReadVariableOp?@sequential_55/lstm_165/while/lstm_cell_495/MatMul/ReadVariableOp?Bsequential_55/lstm_165/while/lstm_cell_495/MatMul_1/ReadVariableOp?
Nsequential_55/lstm_165/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
@sequential_55/lstm_165/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_55_lstm_165_while_tensorarrayv2read_tensorlistgetitem_sequential_55_lstm_165_tensorarrayunstack_tensorlistfromtensor_0(sequential_55_lstm_165_while_placeholderWsequential_55/lstm_165/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
@sequential_55/lstm_165/while/lstm_cell_495/MatMul/ReadVariableOpReadVariableOpKsequential_55_lstm_165_while_lstm_cell_495_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
1sequential_55/lstm_165/while/lstm_cell_495/MatMulMatMulGsequential_55/lstm_165/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_55/lstm_165/while/lstm_cell_495/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_55/lstm_165/while/lstm_cell_495/MatMul_1/ReadVariableOpReadVariableOpMsequential_55_lstm_165_while_lstm_cell_495_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
3sequential_55/lstm_165/while/lstm_cell_495/MatMul_1MatMul*sequential_55_lstm_165_while_placeholder_2Jsequential_55/lstm_165/while/lstm_cell_495/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_55/lstm_165/while/lstm_cell_495/addAddV2;sequential_55/lstm_165/while/lstm_cell_495/MatMul:product:0=sequential_55/lstm_165/while/lstm_cell_495/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_55/lstm_165/while/lstm_cell_495/BiasAdd/ReadVariableOpReadVariableOpLsequential_55_lstm_165_while_lstm_cell_495_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_55/lstm_165/while/lstm_cell_495/BiasAddBiasAdd2sequential_55/lstm_165/while/lstm_cell_495/add:z:0Isequential_55/lstm_165/while/lstm_cell_495/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_55/lstm_165/while/lstm_cell_495/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_55/lstm_165/while/lstm_cell_495/splitSplitCsequential_55/lstm_165/while/lstm_cell_495/split/split_dim:output:0;sequential_55/lstm_165/while/lstm_cell_495/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
2sequential_55/lstm_165/while/lstm_cell_495/SigmoidSigmoid9sequential_55/lstm_165/while/lstm_cell_495/split:output:0*
T0*'
_output_shapes
:?????????d?
4sequential_55/lstm_165/while/lstm_cell_495/Sigmoid_1Sigmoid9sequential_55/lstm_165/while/lstm_cell_495/split:output:1*
T0*'
_output_shapes
:?????????d?
.sequential_55/lstm_165/while/lstm_cell_495/mulMul8sequential_55/lstm_165/while/lstm_cell_495/Sigmoid_1:y:0*sequential_55_lstm_165_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
/sequential_55/lstm_165/while/lstm_cell_495/ReluRelu9sequential_55/lstm_165/while/lstm_cell_495/split:output:2*
T0*'
_output_shapes
:?????????d?
0sequential_55/lstm_165/while/lstm_cell_495/mul_1Mul6sequential_55/lstm_165/while/lstm_cell_495/Sigmoid:y:0=sequential_55/lstm_165/while/lstm_cell_495/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
0sequential_55/lstm_165/while/lstm_cell_495/add_1AddV22sequential_55/lstm_165/while/lstm_cell_495/mul:z:04sequential_55/lstm_165/while/lstm_cell_495/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
4sequential_55/lstm_165/while/lstm_cell_495/Sigmoid_2Sigmoid9sequential_55/lstm_165/while/lstm_cell_495/split:output:3*
T0*'
_output_shapes
:?????????d?
1sequential_55/lstm_165/while/lstm_cell_495/Relu_1Relu4sequential_55/lstm_165/while/lstm_cell_495/add_1:z:0*
T0*'
_output_shapes
:?????????d?
0sequential_55/lstm_165/while/lstm_cell_495/mul_2Mul8sequential_55/lstm_165/while/lstm_cell_495/Sigmoid_2:y:0?sequential_55/lstm_165/while/lstm_cell_495/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Asequential_55/lstm_165/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_55_lstm_165_while_placeholder_1(sequential_55_lstm_165_while_placeholder4sequential_55/lstm_165/while/lstm_cell_495/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_55/lstm_165/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_55/lstm_165/while/addAddV2(sequential_55_lstm_165_while_placeholder+sequential_55/lstm_165/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_55/lstm_165/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_55/lstm_165/while/add_1AddV2Fsequential_55_lstm_165_while_sequential_55_lstm_165_while_loop_counter-sequential_55/lstm_165/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_55/lstm_165/while/IdentityIdentity&sequential_55/lstm_165/while/add_1:z:0"^sequential_55/lstm_165/while/NoOp*
T0*
_output_shapes
: ?
'sequential_55/lstm_165/while/Identity_1IdentityLsequential_55_lstm_165_while_sequential_55_lstm_165_while_maximum_iterations"^sequential_55/lstm_165/while/NoOp*
T0*
_output_shapes
: ?
'sequential_55/lstm_165/while/Identity_2Identity$sequential_55/lstm_165/while/add:z:0"^sequential_55/lstm_165/while/NoOp*
T0*
_output_shapes
: ?
'sequential_55/lstm_165/while/Identity_3IdentityQsequential_55/lstm_165/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_55/lstm_165/while/NoOp*
T0*
_output_shapes
: ?
'sequential_55/lstm_165/while/Identity_4Identity4sequential_55/lstm_165/while/lstm_cell_495/mul_2:z:0"^sequential_55/lstm_165/while/NoOp*
T0*'
_output_shapes
:?????????d?
'sequential_55/lstm_165/while/Identity_5Identity4sequential_55/lstm_165/while/lstm_cell_495/add_1:z:0"^sequential_55/lstm_165/while/NoOp*
T0*'
_output_shapes
:?????????d?
!sequential_55/lstm_165/while/NoOpNoOpB^sequential_55/lstm_165/while/lstm_cell_495/BiasAdd/ReadVariableOpA^sequential_55/lstm_165/while/lstm_cell_495/MatMul/ReadVariableOpC^sequential_55/lstm_165/while/lstm_cell_495/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_55_lstm_165_while_identity.sequential_55/lstm_165/while/Identity:output:0"[
'sequential_55_lstm_165_while_identity_10sequential_55/lstm_165/while/Identity_1:output:0"[
'sequential_55_lstm_165_while_identity_20sequential_55/lstm_165/while/Identity_2:output:0"[
'sequential_55_lstm_165_while_identity_30sequential_55/lstm_165/while/Identity_3:output:0"[
'sequential_55_lstm_165_while_identity_40sequential_55/lstm_165/while/Identity_4:output:0"[
'sequential_55_lstm_165_while_identity_50sequential_55/lstm_165/while/Identity_5:output:0"?
Jsequential_55_lstm_165_while_lstm_cell_495_biasadd_readvariableop_resourceLsequential_55_lstm_165_while_lstm_cell_495_biasadd_readvariableop_resource_0"?
Ksequential_55_lstm_165_while_lstm_cell_495_matmul_1_readvariableop_resourceMsequential_55_lstm_165_while_lstm_cell_495_matmul_1_readvariableop_resource_0"?
Isequential_55_lstm_165_while_lstm_cell_495_matmul_readvariableop_resourceKsequential_55_lstm_165_while_lstm_cell_495_matmul_readvariableop_resource_0"?
Csequential_55_lstm_165_while_sequential_55_lstm_165_strided_slice_1Esequential_55_lstm_165_while_sequential_55_lstm_165_strided_slice_1_0"?
sequential_55_lstm_165_while_tensorarrayv2read_tensorlistgetitem_sequential_55_lstm_165_tensorarrayunstack_tensorlistfromtensor?sequential_55_lstm_165_while_tensorarrayv2read_tensorlistgetitem_sequential_55_lstm_165_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Asequential_55/lstm_165/while/lstm_cell_495/BiasAdd/ReadVariableOpAsequential_55/lstm_165/while/lstm_cell_495/BiasAdd/ReadVariableOp2?
@sequential_55/lstm_165/while/lstm_cell_495/MatMul/ReadVariableOp@sequential_55/lstm_165/while/lstm_cell_495/MatMul/ReadVariableOp2?
Bsequential_55/lstm_165/while/lstm_cell_495/MatMul_1/ReadVariableOpBsequential_55/lstm_165/while/lstm_cell_495/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_167_layer_call_and_return_conditional_losses_3007419

inputs>
,lstm_cell_497_matmul_readvariableop_resource:2(@
.lstm_cell_497_matmul_1_readvariableop_resource:
(;
-lstm_cell_497_biasadd_readvariableop_resource:(
identity??$lstm_cell_497/BiasAdd/ReadVariableOp?#lstm_cell_497/MatMul/ReadVariableOp?%lstm_cell_497/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_497/MatMul/ReadVariableOpReadVariableOp,lstm_cell_497_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_497/MatMulMatMulstrided_slice_2:output:0+lstm_cell_497/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_497/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_497_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_497/MatMul_1MatMulzeros:output:0-lstm_cell_497/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_497/addAddV2lstm_cell_497/MatMul:product:0 lstm_cell_497/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_497/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_497_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_497/BiasAddBiasAddlstm_cell_497/add:z:0,lstm_cell_497/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_497/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_497/splitSplit&lstm_cell_497/split/split_dim:output:0lstm_cell_497/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_497/SigmoidSigmoidlstm_cell_497/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_497/Sigmoid_1Sigmoidlstm_cell_497/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_497/mulMullstm_cell_497/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_497/ReluRelulstm_cell_497/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_497/mul_1Mullstm_cell_497/Sigmoid:y:0 lstm_cell_497/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_497/add_1AddV2lstm_cell_497/mul:z:0lstm_cell_497/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_497/Sigmoid_2Sigmoidlstm_cell_497/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_497/Relu_1Relulstm_cell_497/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_497/mul_2Mullstm_cell_497/Sigmoid_2:y:0"lstm_cell_497/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_497_matmul_readvariableop_resource.lstm_cell_497_matmul_1_readvariableop_resource-lstm_cell_497_biasadd_readvariableop_resource*
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
while_body_3007335*
condR
while_cond_3007334*K
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
NoOpNoOp%^lstm_cell_497/BiasAdd/ReadVariableOp$^lstm_cell_497/MatMul/ReadVariableOp&^lstm_cell_497/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_497/BiasAdd/ReadVariableOp$lstm_cell_497/BiasAdd/ReadVariableOp2J
#lstm_cell_497/MatMul/ReadVariableOp#lstm_cell_497/MatMul/ReadVariableOp2N
%lstm_cell_497/MatMul_1/ReadVariableOp%lstm_cell_497/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_166_layer_call_and_return_conditional_losses_3009961

inputs?
,lstm_cell_496_matmul_readvariableop_resource:	d?A
.lstm_cell_496_matmul_1_readvariableop_resource:	2?<
-lstm_cell_496_biasadd_readvariableop_resource:	?
identity??$lstm_cell_496/BiasAdd/ReadVariableOp?#lstm_cell_496/MatMul/ReadVariableOp?%lstm_cell_496/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_496/MatMul/ReadVariableOpReadVariableOp,lstm_cell_496_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_496/MatMulMatMulstrided_slice_2:output:0+lstm_cell_496/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_496/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_496_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_496/MatMul_1MatMulzeros:output:0-lstm_cell_496/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_496/addAddV2lstm_cell_496/MatMul:product:0 lstm_cell_496/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_496/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_496_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_496/BiasAddBiasAddlstm_cell_496/add:z:0,lstm_cell_496/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_496/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_496/splitSplit&lstm_cell_496/split/split_dim:output:0lstm_cell_496/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_496/SigmoidSigmoidlstm_cell_496/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_496/Sigmoid_1Sigmoidlstm_cell_496/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_496/mulMullstm_cell_496/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_496/ReluRelulstm_cell_496/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_496/mul_1Mullstm_cell_496/Sigmoid:y:0 lstm_cell_496/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_496/add_1AddV2lstm_cell_496/mul:z:0lstm_cell_496/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_496/Sigmoid_2Sigmoidlstm_cell_496/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_496/Relu_1Relulstm_cell_496/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_496/mul_2Mullstm_cell_496/Sigmoid_2:y:0"lstm_cell_496/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_496_matmul_readvariableop_resource.lstm_cell_496_matmul_1_readvariableop_resource-lstm_cell_496_biasadd_readvariableop_resource*
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
while_body_3009877*
condR
while_cond_3009876*K
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
NoOpNoOp%^lstm_cell_496/BiasAdd/ReadVariableOp$^lstm_cell_496/MatMul/ReadVariableOp&^lstm_cell_496/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_496/BiasAdd/ReadVariableOp$lstm_cell_496/BiasAdd/ReadVariableOp2J
#lstm_cell_496/MatMul/ReadVariableOp#lstm_cell_496/MatMul/ReadVariableOp2N
%lstm_cell_496/MatMul_1/ReadVariableOp%lstm_cell_496/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
E__inference_lstm_167_layer_call_and_return_conditional_losses_3006554

inputs'
lstm_cell_497_3006472:2('
lstm_cell_497_3006474:
(#
lstm_cell_497_3006476:(
identity??%lstm_cell_497/StatefulPartitionedCall?while;
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
%lstm_cell_497/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_497_3006472lstm_cell_497_3006474lstm_cell_497_3006476*
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
J__inference_lstm_cell_497_layer_call_and_return_conditional_losses_3006471n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_497_3006472lstm_cell_497_3006474lstm_cell_497_3006476*
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
while_body_3006485*
condR
while_cond_3006484*K
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
NoOpNoOp&^lstm_cell_497/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_497/StatefulPartitionedCall%lstm_cell_497/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_166_layer_call_fn_3009510
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
E__inference_lstm_166_layer_call_and_return_conditional_losses_3006395|
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
?
)sequential_55_lstm_167_while_cond_3005613J
Fsequential_55_lstm_167_while_sequential_55_lstm_167_while_loop_counterP
Lsequential_55_lstm_167_while_sequential_55_lstm_167_while_maximum_iterations,
(sequential_55_lstm_167_while_placeholder.
*sequential_55_lstm_167_while_placeholder_1.
*sequential_55_lstm_167_while_placeholder_2.
*sequential_55_lstm_167_while_placeholder_3L
Hsequential_55_lstm_167_while_less_sequential_55_lstm_167_strided_slice_1c
_sequential_55_lstm_167_while_sequential_55_lstm_167_while_cond_3005613___redundant_placeholder0c
_sequential_55_lstm_167_while_sequential_55_lstm_167_while_cond_3005613___redundant_placeholder1c
_sequential_55_lstm_167_while_sequential_55_lstm_167_while_cond_3005613___redundant_placeholder2c
_sequential_55_lstm_167_while_sequential_55_lstm_167_while_cond_3005613___redundant_placeholder3)
%sequential_55_lstm_167_while_identity
?
!sequential_55/lstm_167/while/LessLess(sequential_55_lstm_167_while_placeholderHsequential_55_lstm_167_while_less_sequential_55_lstm_167_strided_slice_1*
T0*
_output_shapes
: y
%sequential_55/lstm_167/while/IdentityIdentity%sequential_55/lstm_167/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_55_lstm_167_while_identity.sequential_55/lstm_167/while/Identity:output:0*(
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
E__inference_lstm_167_layer_call_and_return_conditional_losses_3006745

inputs'
lstm_cell_497_3006663:2('
lstm_cell_497_3006665:
(#
lstm_cell_497_3006667:(
identity??%lstm_cell_497/StatefulPartitionedCall?while;
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
%lstm_cell_497/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_497_3006663lstm_cell_497_3006665lstm_cell_497_3006667*
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
J__inference_lstm_cell_497_layer_call_and_return_conditional_losses_3006617n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_497_3006663lstm_cell_497_3006665lstm_cell_497_3006667*
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
while_body_3006676*
condR
while_cond_3006675*K
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
NoOpNoOp&^lstm_cell_497/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_497/StatefulPartitionedCall%lstm_cell_497/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?C
?

lstm_166_while_body_3008216.
*lstm_166_while_lstm_166_while_loop_counter4
0lstm_166_while_lstm_166_while_maximum_iterations
lstm_166_while_placeholder 
lstm_166_while_placeholder_1 
lstm_166_while_placeholder_2 
lstm_166_while_placeholder_3-
)lstm_166_while_lstm_166_strided_slice_1_0i
elstm_166_while_tensorarrayv2read_tensorlistgetitem_lstm_166_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_166_while_lstm_cell_496_matmul_readvariableop_resource_0:	d?R
?lstm_166_while_lstm_cell_496_matmul_1_readvariableop_resource_0:	2?M
>lstm_166_while_lstm_cell_496_biasadd_readvariableop_resource_0:	?
lstm_166_while_identity
lstm_166_while_identity_1
lstm_166_while_identity_2
lstm_166_while_identity_3
lstm_166_while_identity_4
lstm_166_while_identity_5+
'lstm_166_while_lstm_166_strided_slice_1g
clstm_166_while_tensorarrayv2read_tensorlistgetitem_lstm_166_tensorarrayunstack_tensorlistfromtensorN
;lstm_166_while_lstm_cell_496_matmul_readvariableop_resource:	d?P
=lstm_166_while_lstm_cell_496_matmul_1_readvariableop_resource:	2?K
<lstm_166_while_lstm_cell_496_biasadd_readvariableop_resource:	???3lstm_166/while/lstm_cell_496/BiasAdd/ReadVariableOp?2lstm_166/while/lstm_cell_496/MatMul/ReadVariableOp?4lstm_166/while/lstm_cell_496/MatMul_1/ReadVariableOp?
@lstm_166/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_166/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_166_while_tensorarrayv2read_tensorlistgetitem_lstm_166_tensorarrayunstack_tensorlistfromtensor_0lstm_166_while_placeholderIlstm_166/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_166/while/lstm_cell_496/MatMul/ReadVariableOpReadVariableOp=lstm_166_while_lstm_cell_496_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_166/while/lstm_cell_496/MatMulMatMul9lstm_166/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_166/while/lstm_cell_496/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_166/while/lstm_cell_496/MatMul_1/ReadVariableOpReadVariableOp?lstm_166_while_lstm_cell_496_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_166/while/lstm_cell_496/MatMul_1MatMullstm_166_while_placeholder_2<lstm_166/while/lstm_cell_496/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_166/while/lstm_cell_496/addAddV2-lstm_166/while/lstm_cell_496/MatMul:product:0/lstm_166/while/lstm_cell_496/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_166/while/lstm_cell_496/BiasAdd/ReadVariableOpReadVariableOp>lstm_166_while_lstm_cell_496_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_166/while/lstm_cell_496/BiasAddBiasAdd$lstm_166/while/lstm_cell_496/add:z:0;lstm_166/while/lstm_cell_496/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_166/while/lstm_cell_496/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_166/while/lstm_cell_496/splitSplit5lstm_166/while/lstm_cell_496/split/split_dim:output:0-lstm_166/while/lstm_cell_496/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_166/while/lstm_cell_496/SigmoidSigmoid+lstm_166/while/lstm_cell_496/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_166/while/lstm_cell_496/Sigmoid_1Sigmoid+lstm_166/while/lstm_cell_496/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_166/while/lstm_cell_496/mulMul*lstm_166/while/lstm_cell_496/Sigmoid_1:y:0lstm_166_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_166/while/lstm_cell_496/ReluRelu+lstm_166/while/lstm_cell_496/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_166/while/lstm_cell_496/mul_1Mul(lstm_166/while/lstm_cell_496/Sigmoid:y:0/lstm_166/while/lstm_cell_496/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_166/while/lstm_cell_496/add_1AddV2$lstm_166/while/lstm_cell_496/mul:z:0&lstm_166/while/lstm_cell_496/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_166/while/lstm_cell_496/Sigmoid_2Sigmoid+lstm_166/while/lstm_cell_496/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_166/while/lstm_cell_496/Relu_1Relu&lstm_166/while/lstm_cell_496/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_166/while/lstm_cell_496/mul_2Mul*lstm_166/while/lstm_cell_496/Sigmoid_2:y:01lstm_166/while/lstm_cell_496/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_166/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_166_while_placeholder_1lstm_166_while_placeholder&lstm_166/while/lstm_cell_496/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_166/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_166/while/addAddV2lstm_166_while_placeholderlstm_166/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_166/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_166/while/add_1AddV2*lstm_166_while_lstm_166_while_loop_counterlstm_166/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_166/while/IdentityIdentitylstm_166/while/add_1:z:0^lstm_166/while/NoOp*
T0*
_output_shapes
: ?
lstm_166/while/Identity_1Identity0lstm_166_while_lstm_166_while_maximum_iterations^lstm_166/while/NoOp*
T0*
_output_shapes
: t
lstm_166/while/Identity_2Identitylstm_166/while/add:z:0^lstm_166/while/NoOp*
T0*
_output_shapes
: ?
lstm_166/while/Identity_3IdentityClstm_166/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_166/while/NoOp*
T0*
_output_shapes
: ?
lstm_166/while/Identity_4Identity&lstm_166/while/lstm_cell_496/mul_2:z:0^lstm_166/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_166/while/Identity_5Identity&lstm_166/while/lstm_cell_496/add_1:z:0^lstm_166/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_166/while/NoOpNoOp4^lstm_166/while/lstm_cell_496/BiasAdd/ReadVariableOp3^lstm_166/while/lstm_cell_496/MatMul/ReadVariableOp5^lstm_166/while/lstm_cell_496/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_166_while_identity lstm_166/while/Identity:output:0"?
lstm_166_while_identity_1"lstm_166/while/Identity_1:output:0"?
lstm_166_while_identity_2"lstm_166/while/Identity_2:output:0"?
lstm_166_while_identity_3"lstm_166/while/Identity_3:output:0"?
lstm_166_while_identity_4"lstm_166/while/Identity_4:output:0"?
lstm_166_while_identity_5"lstm_166/while/Identity_5:output:0"T
'lstm_166_while_lstm_166_strided_slice_1)lstm_166_while_lstm_166_strided_slice_1_0"~
<lstm_166_while_lstm_cell_496_biasadd_readvariableop_resource>lstm_166_while_lstm_cell_496_biasadd_readvariableop_resource_0"?
=lstm_166_while_lstm_cell_496_matmul_1_readvariableop_resource?lstm_166_while_lstm_cell_496_matmul_1_readvariableop_resource_0"|
;lstm_166_while_lstm_cell_496_matmul_readvariableop_resource=lstm_166_while_lstm_cell_496_matmul_readvariableop_resource_0"?
clstm_166_while_tensorarrayv2read_tensorlistgetitem_lstm_166_tensorarrayunstack_tensorlistfromtensorelstm_166_while_tensorarrayv2read_tensorlistgetitem_lstm_166_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_166/while/lstm_cell_496/BiasAdd/ReadVariableOp3lstm_166/while/lstm_cell_496/BiasAdd/ReadVariableOp2h
2lstm_166/while/lstm_cell_496/MatMul/ReadVariableOp2lstm_166/while/lstm_cell_496/MatMul/ReadVariableOp2l
4lstm_166/while/lstm_cell_496/MatMul_1/ReadVariableOp4lstm_166/while/lstm_cell_496/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3009404
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_495_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_495_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_495_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_495_matmul_readvariableop_resource:	?G
4while_lstm_cell_495_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_495_biasadd_readvariableop_resource:	???*while/lstm_cell_495/BiasAdd/ReadVariableOp?)while/lstm_cell_495/MatMul/ReadVariableOp?+while/lstm_cell_495/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_495/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_495_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_495/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_495/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_495/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_495_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_495/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_495/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_495/addAddV2$while/lstm_cell_495/MatMul:product:0&while/lstm_cell_495/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_495/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_495_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_495/BiasAddBiasAddwhile/lstm_cell_495/add:z:02while/lstm_cell_495/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_495/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_495/splitSplit,while/lstm_cell_495/split/split_dim:output:0$while/lstm_cell_495/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_495/SigmoidSigmoid"while/lstm_cell_495/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_495/Sigmoid_1Sigmoid"while/lstm_cell_495/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_495/mulMul!while/lstm_cell_495/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_495/ReluRelu"while/lstm_cell_495/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_495/mul_1Mulwhile/lstm_cell_495/Sigmoid:y:0&while/lstm_cell_495/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_495/add_1AddV2while/lstm_cell_495/mul:z:0while/lstm_cell_495/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_495/Sigmoid_2Sigmoid"while/lstm_cell_495/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_495/Relu_1Reluwhile/lstm_cell_495/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_495/mul_2Mul!while/lstm_cell_495/Sigmoid_2:y:0(while/lstm_cell_495/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_495/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_495/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_495/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_495/BiasAdd/ReadVariableOp*^while/lstm_cell_495/MatMul/ReadVariableOp,^while/lstm_cell_495/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_495_biasadd_readvariableop_resource5while_lstm_cell_495_biasadd_readvariableop_resource_0"n
4while_lstm_cell_495_matmul_1_readvariableop_resource6while_lstm_cell_495_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_495_matmul_readvariableop_resource4while_lstm_cell_495_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_495/BiasAdd/ReadVariableOp*while/lstm_cell_495/BiasAdd/ReadVariableOp2V
)while/lstm_cell_495/MatMul/ReadVariableOp)while/lstm_cell_495/MatMul/ReadVariableOp2Z
+while/lstm_cell_495/MatMul_1/ReadVariableOp+while/lstm_cell_495/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3009876
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3009876___redundant_placeholder05
1while_while_cond_3009876___redundant_placeholder15
1while_while_cond_3009876___redundant_placeholder25
1while_while_cond_3009876___redundant_placeholder3
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
while_cond_3010349
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3010349___redundant_placeholder05
1while_while_cond_3010349___redundant_placeholder15
1while_while_cond_3010349___redundant_placeholder25
1while_while_cond_3010349___redundant_placeholder3
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
%__inference_signature_wrapper_3007964
lstm_165_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_165_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3005704o
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
_user_specified_namelstm_165_input
?	
?
E__inference_dense_55_layer_call_and_return_conditional_losses_3007221

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
?#
?
while_body_3005785
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_495_3005809_0:	?0
while_lstm_cell_495_3005811_0:	d?,
while_lstm_cell_495_3005813_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_495_3005809:	?.
while_lstm_cell_495_3005811:	d?*
while_lstm_cell_495_3005813:	???+while/lstm_cell_495/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_495/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_495_3005809_0while_lstm_cell_495_3005811_0while_lstm_cell_495_3005813_0*
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
J__inference_lstm_cell_495_layer_call_and_return_conditional_losses_3005771?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_495/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_495/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_495/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_495/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_495_3005809while_lstm_cell_495_3005809_0"<
while_lstm_cell_495_3005811while_lstm_cell_495_3005811_0"<
while_lstm_cell_495_3005813while_lstm_cell_495_3005813_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_495/StatefulPartitionedCall+while/lstm_cell_495/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_3010636
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_497_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_497_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_497_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_497_matmul_readvariableop_resource:2(F
4while_lstm_cell_497_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_497_biasadd_readvariableop_resource:(??*while/lstm_cell_497/BiasAdd/ReadVariableOp?)while/lstm_cell_497/MatMul/ReadVariableOp?+while/lstm_cell_497/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_497/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_497_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_497/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_497/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_497/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_497_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_497/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_497/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_497/addAddV2$while/lstm_cell_497/MatMul:product:0&while/lstm_cell_497/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_497/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_497_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_497/BiasAddBiasAddwhile/lstm_cell_497/add:z:02while/lstm_cell_497/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_497/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_497/splitSplit,while/lstm_cell_497/split/split_dim:output:0$while/lstm_cell_497/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_497/SigmoidSigmoid"while/lstm_cell_497/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_497/Sigmoid_1Sigmoid"while/lstm_cell_497/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_497/mulMul!while/lstm_cell_497/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_497/ReluRelu"while/lstm_cell_497/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_497/mul_1Mulwhile/lstm_cell_497/Sigmoid:y:0&while/lstm_cell_497/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_497/add_1AddV2while/lstm_cell_497/mul:z:0while/lstm_cell_497/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_497/Sigmoid_2Sigmoid"while/lstm_cell_497/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_497/Relu_1Reluwhile/lstm_cell_497/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_497/mul_2Mul!while/lstm_cell_497/Sigmoid_2:y:0(while/lstm_cell_497/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_497/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_497/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_497/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_497/BiasAdd/ReadVariableOp*^while/lstm_cell_497/MatMul/ReadVariableOp,^while/lstm_cell_497/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_497_biasadd_readvariableop_resource5while_lstm_cell_497_biasadd_readvariableop_resource_0"n
4while_lstm_cell_497_matmul_1_readvariableop_resource6while_lstm_cell_497_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_497_matmul_readvariableop_resource4while_lstm_cell_497_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_497/BiasAdd/ReadVariableOp*while/lstm_cell_497/BiasAdd/ReadVariableOp2V
)while/lstm_cell_497/MatMul/ReadVariableOp)while/lstm_cell_497/MatMul/ReadVariableOp2Z
+while/lstm_cell_497/MatMul_1/ReadVariableOp+while/lstm_cell_497/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_166_while_body_3008643.
*lstm_166_while_lstm_166_while_loop_counter4
0lstm_166_while_lstm_166_while_maximum_iterations
lstm_166_while_placeholder 
lstm_166_while_placeholder_1 
lstm_166_while_placeholder_2 
lstm_166_while_placeholder_3-
)lstm_166_while_lstm_166_strided_slice_1_0i
elstm_166_while_tensorarrayv2read_tensorlistgetitem_lstm_166_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_166_while_lstm_cell_496_matmul_readvariableop_resource_0:	d?R
?lstm_166_while_lstm_cell_496_matmul_1_readvariableop_resource_0:	2?M
>lstm_166_while_lstm_cell_496_biasadd_readvariableop_resource_0:	?
lstm_166_while_identity
lstm_166_while_identity_1
lstm_166_while_identity_2
lstm_166_while_identity_3
lstm_166_while_identity_4
lstm_166_while_identity_5+
'lstm_166_while_lstm_166_strided_slice_1g
clstm_166_while_tensorarrayv2read_tensorlistgetitem_lstm_166_tensorarrayunstack_tensorlistfromtensorN
;lstm_166_while_lstm_cell_496_matmul_readvariableop_resource:	d?P
=lstm_166_while_lstm_cell_496_matmul_1_readvariableop_resource:	2?K
<lstm_166_while_lstm_cell_496_biasadd_readvariableop_resource:	???3lstm_166/while/lstm_cell_496/BiasAdd/ReadVariableOp?2lstm_166/while/lstm_cell_496/MatMul/ReadVariableOp?4lstm_166/while/lstm_cell_496/MatMul_1/ReadVariableOp?
@lstm_166/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_166/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_166_while_tensorarrayv2read_tensorlistgetitem_lstm_166_tensorarrayunstack_tensorlistfromtensor_0lstm_166_while_placeholderIlstm_166/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_166/while/lstm_cell_496/MatMul/ReadVariableOpReadVariableOp=lstm_166_while_lstm_cell_496_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_166/while/lstm_cell_496/MatMulMatMul9lstm_166/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_166/while/lstm_cell_496/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_166/while/lstm_cell_496/MatMul_1/ReadVariableOpReadVariableOp?lstm_166_while_lstm_cell_496_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_166/while/lstm_cell_496/MatMul_1MatMullstm_166_while_placeholder_2<lstm_166/while/lstm_cell_496/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_166/while/lstm_cell_496/addAddV2-lstm_166/while/lstm_cell_496/MatMul:product:0/lstm_166/while/lstm_cell_496/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_166/while/lstm_cell_496/BiasAdd/ReadVariableOpReadVariableOp>lstm_166_while_lstm_cell_496_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_166/while/lstm_cell_496/BiasAddBiasAdd$lstm_166/while/lstm_cell_496/add:z:0;lstm_166/while/lstm_cell_496/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_166/while/lstm_cell_496/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_166/while/lstm_cell_496/splitSplit5lstm_166/while/lstm_cell_496/split/split_dim:output:0-lstm_166/while/lstm_cell_496/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_166/while/lstm_cell_496/SigmoidSigmoid+lstm_166/while/lstm_cell_496/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_166/while/lstm_cell_496/Sigmoid_1Sigmoid+lstm_166/while/lstm_cell_496/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_166/while/lstm_cell_496/mulMul*lstm_166/while/lstm_cell_496/Sigmoid_1:y:0lstm_166_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_166/while/lstm_cell_496/ReluRelu+lstm_166/while/lstm_cell_496/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_166/while/lstm_cell_496/mul_1Mul(lstm_166/while/lstm_cell_496/Sigmoid:y:0/lstm_166/while/lstm_cell_496/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_166/while/lstm_cell_496/add_1AddV2$lstm_166/while/lstm_cell_496/mul:z:0&lstm_166/while/lstm_cell_496/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_166/while/lstm_cell_496/Sigmoid_2Sigmoid+lstm_166/while/lstm_cell_496/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_166/while/lstm_cell_496/Relu_1Relu&lstm_166/while/lstm_cell_496/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_166/while/lstm_cell_496/mul_2Mul*lstm_166/while/lstm_cell_496/Sigmoid_2:y:01lstm_166/while/lstm_cell_496/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_166/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_166_while_placeholder_1lstm_166_while_placeholder&lstm_166/while/lstm_cell_496/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_166/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_166/while/addAddV2lstm_166_while_placeholderlstm_166/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_166/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_166/while/add_1AddV2*lstm_166_while_lstm_166_while_loop_counterlstm_166/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_166/while/IdentityIdentitylstm_166/while/add_1:z:0^lstm_166/while/NoOp*
T0*
_output_shapes
: ?
lstm_166/while/Identity_1Identity0lstm_166_while_lstm_166_while_maximum_iterations^lstm_166/while/NoOp*
T0*
_output_shapes
: t
lstm_166/while/Identity_2Identitylstm_166/while/add:z:0^lstm_166/while/NoOp*
T0*
_output_shapes
: ?
lstm_166/while/Identity_3IdentityClstm_166/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_166/while/NoOp*
T0*
_output_shapes
: ?
lstm_166/while/Identity_4Identity&lstm_166/while/lstm_cell_496/mul_2:z:0^lstm_166/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_166/while/Identity_5Identity&lstm_166/while/lstm_cell_496/add_1:z:0^lstm_166/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_166/while/NoOpNoOp4^lstm_166/while/lstm_cell_496/BiasAdd/ReadVariableOp3^lstm_166/while/lstm_cell_496/MatMul/ReadVariableOp5^lstm_166/while/lstm_cell_496/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_166_while_identity lstm_166/while/Identity:output:0"?
lstm_166_while_identity_1"lstm_166/while/Identity_1:output:0"?
lstm_166_while_identity_2"lstm_166/while/Identity_2:output:0"?
lstm_166_while_identity_3"lstm_166/while/Identity_3:output:0"?
lstm_166_while_identity_4"lstm_166/while/Identity_4:output:0"?
lstm_166_while_identity_5"lstm_166/while/Identity_5:output:0"T
'lstm_166_while_lstm_166_strided_slice_1)lstm_166_while_lstm_166_strided_slice_1_0"~
<lstm_166_while_lstm_cell_496_biasadd_readvariableop_resource>lstm_166_while_lstm_cell_496_biasadd_readvariableop_resource_0"?
=lstm_166_while_lstm_cell_496_matmul_1_readvariableop_resource?lstm_166_while_lstm_cell_496_matmul_1_readvariableop_resource_0"|
;lstm_166_while_lstm_cell_496_matmul_readvariableop_resource=lstm_166_while_lstm_cell_496_matmul_readvariableop_resource_0"?
clstm_166_while_tensorarrayv2read_tensorlistgetitem_lstm_166_tensorarrayunstack_tensorlistfromtensorelstm_166_while_tensorarrayv2read_tensorlistgetitem_lstm_166_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_166/while/lstm_cell_496/BiasAdd/ReadVariableOp3lstm_166/while/lstm_cell_496/BiasAdd/ReadVariableOp2h
2lstm_166/while/lstm_cell_496/MatMul/ReadVariableOp2lstm_166/while/lstm_cell_496/MatMul/ReadVariableOp2l
4lstm_166/while/lstm_cell_496/MatMul_1/ReadVariableOp4lstm_166/while/lstm_cell_496/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3008975
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_495_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_495_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_495_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_495_matmul_readvariableop_resource:	?G
4while_lstm_cell_495_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_495_biasadd_readvariableop_resource:	???*while/lstm_cell_495/BiasAdd/ReadVariableOp?)while/lstm_cell_495/MatMul/ReadVariableOp?+while/lstm_cell_495/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_495/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_495_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_495/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_495/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_495/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_495_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_495/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_495/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_495/addAddV2$while/lstm_cell_495/MatMul:product:0&while/lstm_cell_495/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_495/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_495_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_495/BiasAddBiasAddwhile/lstm_cell_495/add:z:02while/lstm_cell_495/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_495/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_495/splitSplit,while/lstm_cell_495/split/split_dim:output:0$while/lstm_cell_495/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_495/SigmoidSigmoid"while/lstm_cell_495/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_495/Sigmoid_1Sigmoid"while/lstm_cell_495/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_495/mulMul!while/lstm_cell_495/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_495/ReluRelu"while/lstm_cell_495/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_495/mul_1Mulwhile/lstm_cell_495/Sigmoid:y:0&while/lstm_cell_495/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_495/add_1AddV2while/lstm_cell_495/mul:z:0while/lstm_cell_495/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_495/Sigmoid_2Sigmoid"while/lstm_cell_495/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_495/Relu_1Reluwhile/lstm_cell_495/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_495/mul_2Mul!while/lstm_cell_495/Sigmoid_2:y:0(while/lstm_cell_495/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_495/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_495/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_495/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_495/BiasAdd/ReadVariableOp*^while/lstm_cell_495/MatMul/ReadVariableOp,^while/lstm_cell_495/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_495_biasadd_readvariableop_resource5while_lstm_cell_495_biasadd_readvariableop_resource_0"n
4while_lstm_cell_495_matmul_1_readvariableop_resource6while_lstm_cell_495_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_495_matmul_readvariableop_resource4while_lstm_cell_495_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_495/BiasAdd/ReadVariableOp*while/lstm_cell_495/BiasAdd/ReadVariableOp2V
)while/lstm_cell_495/MatMul/ReadVariableOp)while/lstm_cell_495/MatMul/ReadVariableOp2Z
+while/lstm_cell_495/MatMul_1/ReadVariableOp+while/lstm_cell_495/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_167_layer_call_fn_3010126
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
E__inference_lstm_167_layer_call_and_return_conditional_losses_3006745o
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
while_cond_3009590
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3009590___redundant_placeholder05
1while_while_cond_3009590___redundant_placeholder15
1while_while_cond_3009590___redundant_placeholder25
1while_while_cond_3009590___redundant_placeholder3
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
while_body_3009118
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_495_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_495_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_495_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_495_matmul_readvariableop_resource:	?G
4while_lstm_cell_495_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_495_biasadd_readvariableop_resource:	???*while/lstm_cell_495/BiasAdd/ReadVariableOp?)while/lstm_cell_495/MatMul/ReadVariableOp?+while/lstm_cell_495/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_495/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_495_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_495/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_495/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_495/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_495_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_495/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_495/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_495/addAddV2$while/lstm_cell_495/MatMul:product:0&while/lstm_cell_495/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_495/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_495_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_495/BiasAddBiasAddwhile/lstm_cell_495/add:z:02while/lstm_cell_495/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_495/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_495/splitSplit,while/lstm_cell_495/split/split_dim:output:0$while/lstm_cell_495/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_495/SigmoidSigmoid"while/lstm_cell_495/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_495/Sigmoid_1Sigmoid"while/lstm_cell_495/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_495/mulMul!while/lstm_cell_495/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_495/ReluRelu"while/lstm_cell_495/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_495/mul_1Mulwhile/lstm_cell_495/Sigmoid:y:0&while/lstm_cell_495/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_495/add_1AddV2while/lstm_cell_495/mul:z:0while/lstm_cell_495/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_495/Sigmoid_2Sigmoid"while/lstm_cell_495/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_495/Relu_1Reluwhile/lstm_cell_495/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_495/mul_2Mul!while/lstm_cell_495/Sigmoid_2:y:0(while/lstm_cell_495/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_495/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_495/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_495/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_495/BiasAdd/ReadVariableOp*^while/lstm_cell_495/MatMul/ReadVariableOp,^while/lstm_cell_495/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_495_biasadd_readvariableop_resource5while_lstm_cell_495_biasadd_readvariableop_resource_0"n
4while_lstm_cell_495_matmul_1_readvariableop_resource6while_lstm_cell_495_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_495_matmul_readvariableop_resource4while_lstm_cell_495_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_495/BiasAdd/ReadVariableOp*while/lstm_cell_495/BiasAdd/ReadVariableOp2V
)while/lstm_cell_495/MatMul/ReadVariableOp)while/lstm_cell_495/MatMul/ReadVariableOp2Z
+while/lstm_cell_495/MatMul_1/ReadVariableOp+while/lstm_cell_495/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3010020
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_496_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_496_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_496_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_496_matmul_readvariableop_resource:	d?G
4while_lstm_cell_496_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_496_biasadd_readvariableop_resource:	???*while/lstm_cell_496/BiasAdd/ReadVariableOp?)while/lstm_cell_496/MatMul/ReadVariableOp?+while/lstm_cell_496/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_496/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_496_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_496/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_496/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_496/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_496_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_496/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_496/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_496/addAddV2$while/lstm_cell_496/MatMul:product:0&while/lstm_cell_496/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_496/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_496_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_496/BiasAddBiasAddwhile/lstm_cell_496/add:z:02while/lstm_cell_496/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_496/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_496/splitSplit,while/lstm_cell_496/split/split_dim:output:0$while/lstm_cell_496/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_496/SigmoidSigmoid"while/lstm_cell_496/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_496/Sigmoid_1Sigmoid"while/lstm_cell_496/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_496/mulMul!while/lstm_cell_496/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_496/ReluRelu"while/lstm_cell_496/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_496/mul_1Mulwhile/lstm_cell_496/Sigmoid:y:0&while/lstm_cell_496/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_496/add_1AddV2while/lstm_cell_496/mul:z:0while/lstm_cell_496/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_496/Sigmoid_2Sigmoid"while/lstm_cell_496/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_496/Relu_1Reluwhile/lstm_cell_496/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_496/mul_2Mul!while/lstm_cell_496/Sigmoid_2:y:0(while/lstm_cell_496/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_496/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_496/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_496/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_496/BiasAdd/ReadVariableOp*^while/lstm_cell_496/MatMul/ReadVariableOp,^while/lstm_cell_496/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_496_biasadd_readvariableop_resource5while_lstm_cell_496_biasadd_readvariableop_resource_0"n
4while_lstm_cell_496_matmul_1_readvariableop_resource6while_lstm_cell_496_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_496_matmul_readvariableop_resource4while_lstm_cell_496_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_496/BiasAdd/ReadVariableOp*while/lstm_cell_496/BiasAdd/ReadVariableOp2V
)while/lstm_cell_496/MatMul/ReadVariableOp)while/lstm_cell_496/MatMul/ReadVariableOp2Z
+while/lstm_cell_496/MatMul_1/ReadVariableOp+while/lstm_cell_496/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_165_layer_call_and_return_conditional_losses_3007749

inputs?
,lstm_cell_495_matmul_readvariableop_resource:	?A
.lstm_cell_495_matmul_1_readvariableop_resource:	d?<
-lstm_cell_495_biasadd_readvariableop_resource:	?
identity??$lstm_cell_495/BiasAdd/ReadVariableOp?#lstm_cell_495/MatMul/ReadVariableOp?%lstm_cell_495/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_495/MatMul/ReadVariableOpReadVariableOp,lstm_cell_495_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_495/MatMulMatMulstrided_slice_2:output:0+lstm_cell_495/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_495/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_495_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_495/MatMul_1MatMulzeros:output:0-lstm_cell_495/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_495/addAddV2lstm_cell_495/MatMul:product:0 lstm_cell_495/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_495/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_495_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_495/BiasAddBiasAddlstm_cell_495/add:z:0,lstm_cell_495/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_495/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_495/splitSplit&lstm_cell_495/split/split_dim:output:0lstm_cell_495/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_495/SigmoidSigmoidlstm_cell_495/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_495/Sigmoid_1Sigmoidlstm_cell_495/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_495/mulMullstm_cell_495/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_495/ReluRelulstm_cell_495/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_495/mul_1Mullstm_cell_495/Sigmoid:y:0 lstm_cell_495/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_495/add_1AddV2lstm_cell_495/mul:z:0lstm_cell_495/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_495/Sigmoid_2Sigmoidlstm_cell_495/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_495/Relu_1Relulstm_cell_495/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_495/mul_2Mullstm_cell_495/Sigmoid_2:y:0"lstm_cell_495/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_495_matmul_readvariableop_resource.lstm_cell_495_matmul_1_readvariableop_resource-lstm_cell_495_biasadd_readvariableop_resource*
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
while_body_3007665*
condR
while_cond_3007664*K
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
NoOpNoOp%^lstm_cell_495/BiasAdd/ReadVariableOp$^lstm_cell_495/MatMul/ReadVariableOp&^lstm_cell_495/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_495/BiasAdd/ReadVariableOp$lstm_cell_495/BiasAdd/ReadVariableOp2J
#lstm_cell_495/MatMul/ReadVariableOp#lstm_cell_495/MatMul/ReadVariableOp2N
%lstm_cell_495/MatMul_1/ReadVariableOp%lstm_cell_495/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3006134
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3006134___redundant_placeholder05
1while_while_cond_3006134___redundant_placeholder15
1while_while_cond_3006134___redundant_placeholder25
1while_while_cond_3006134___redundant_placeholder3
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
J__inference_lstm_cell_496_layer_call_and_return_conditional_losses_3010903

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
*__inference_lstm_165_layer_call_fn_3008916

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
E__inference_lstm_165_layer_call_and_return_conditional_losses_3007749s
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
??
?
#__inference__traced_restore_3011306
file_prefix2
 assignvariableop_dense_55_kernel:
.
 assignvariableop_1_dense_55_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_165_lstm_cell_165_kernel:	?M
:assignvariableop_8_lstm_165_lstm_cell_165_recurrent_kernel:	d?=
.assignvariableop_9_lstm_165_lstm_cell_165_bias:	?D
1assignvariableop_10_lstm_166_lstm_cell_166_kernel:	d?N
;assignvariableop_11_lstm_166_lstm_cell_166_recurrent_kernel:	2?>
/assignvariableop_12_lstm_166_lstm_cell_166_bias:	?C
1assignvariableop_13_lstm_167_lstm_cell_167_kernel:2(M
;assignvariableop_14_lstm_167_lstm_cell_167_recurrent_kernel:
(=
/assignvariableop_15_lstm_167_lstm_cell_167_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_55_kernel_m:
6
(assignvariableop_19_adam_dense_55_bias_m:K
8assignvariableop_20_adam_lstm_165_lstm_cell_165_kernel_m:	?U
Bassignvariableop_21_adam_lstm_165_lstm_cell_165_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_165_lstm_cell_165_bias_m:	?K
8assignvariableop_23_adam_lstm_166_lstm_cell_166_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_166_lstm_cell_166_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_166_lstm_cell_166_bias_m:	?J
8assignvariableop_26_adam_lstm_167_lstm_cell_167_kernel_m:2(T
Bassignvariableop_27_adam_lstm_167_lstm_cell_167_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_167_lstm_cell_167_bias_m:(<
*assignvariableop_29_adam_dense_55_kernel_v:
6
(assignvariableop_30_adam_dense_55_bias_v:K
8assignvariableop_31_adam_lstm_165_lstm_cell_165_kernel_v:	?U
Bassignvariableop_32_adam_lstm_165_lstm_cell_165_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_165_lstm_cell_165_bias_v:	?K
8assignvariableop_34_adam_lstm_166_lstm_cell_166_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_166_lstm_cell_166_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_166_lstm_cell_166_bias_v:	?J
8assignvariableop_37_adam_lstm_167_lstm_cell_167_kernel_v:2(T
Bassignvariableop_38_adam_lstm_167_lstm_cell_167_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_167_lstm_cell_167_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_55_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_55_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_165_lstm_cell_165_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_165_lstm_cell_165_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_165_lstm_cell_165_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_166_lstm_cell_166_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_166_lstm_cell_166_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_166_lstm_cell_166_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_167_lstm_cell_167_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_167_lstm_cell_167_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_167_lstm_cell_167_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_55_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_55_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_165_lstm_cell_165_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_165_lstm_cell_165_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_165_lstm_cell_165_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_166_lstm_cell_166_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_166_lstm_cell_166_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_166_lstm_cell_166_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_167_lstm_cell_167_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_167_lstm_cell_167_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_167_lstm_cell_167_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_55_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_55_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_165_lstm_cell_165_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_165_lstm_cell_165_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_165_lstm_cell_165_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_166_lstm_cell_166_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_166_lstm_cell_166_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_166_lstm_cell_166_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_167_lstm_cell_167_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_167_lstm_cell_167_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_167_lstm_cell_167_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_cond_3009403
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3009403___redundant_placeholder05
1while_while_cond_3009403___redundant_placeholder15
1while_while_cond_3009403___redundant_placeholder25
1while_while_cond_3009403___redundant_placeholder3
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
lstm_167_while_cond_3008781.
*lstm_167_while_lstm_167_while_loop_counter4
0lstm_167_while_lstm_167_while_maximum_iterations
lstm_167_while_placeholder 
lstm_167_while_placeholder_1 
lstm_167_while_placeholder_2 
lstm_167_while_placeholder_30
,lstm_167_while_less_lstm_167_strided_slice_1G
Clstm_167_while_lstm_167_while_cond_3008781___redundant_placeholder0G
Clstm_167_while_lstm_167_while_cond_3008781___redundant_placeholder1G
Clstm_167_while_lstm_167_while_cond_3008781___redundant_placeholder2G
Clstm_167_while_lstm_167_while_cond_3008781___redundant_placeholder3
lstm_167_while_identity
?
lstm_167/while/LessLesslstm_167_while_placeholder,lstm_167_while_less_lstm_167_strided_slice_1*
T0*
_output_shapes
: ]
lstm_167/while/IdentityIdentitylstm_167/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_167_while_identity lstm_167/while/Identity:output:0*(
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
lstm_165_input;
 serving_default_lstm_165_input:0?????????<
dense_550
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
2dense_55/kernel
:2dense_55/bias
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
0:.	?2lstm_165/lstm_cell_165/kernel
::8	d?2'lstm_165/lstm_cell_165/recurrent_kernel
*:(?2lstm_165/lstm_cell_165/bias
0:.	d?2lstm_166/lstm_cell_166/kernel
::8	2?2'lstm_166/lstm_cell_166/recurrent_kernel
*:(?2lstm_166/lstm_cell_166/bias
/:-2(2lstm_167/lstm_cell_167/kernel
9:7
(2'lstm_167/lstm_cell_167/recurrent_kernel
):'(2lstm_167/lstm_cell_167/bias
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
2Adam/dense_55/kernel/m
 :2Adam/dense_55/bias/m
5:3	?2$Adam/lstm_165/lstm_cell_165/kernel/m
?:=	d?2.Adam/lstm_165/lstm_cell_165/recurrent_kernel/m
/:-?2"Adam/lstm_165/lstm_cell_165/bias/m
5:3	d?2$Adam/lstm_166/lstm_cell_166/kernel/m
?:=	2?2.Adam/lstm_166/lstm_cell_166/recurrent_kernel/m
/:-?2"Adam/lstm_166/lstm_cell_166/bias/m
4:22(2$Adam/lstm_167/lstm_cell_167/kernel/m
>:<
(2.Adam/lstm_167/lstm_cell_167/recurrent_kernel/m
.:,(2"Adam/lstm_167/lstm_cell_167/bias/m
&:$
2Adam/dense_55/kernel/v
 :2Adam/dense_55/bias/v
5:3	?2$Adam/lstm_165/lstm_cell_165/kernel/v
?:=	d?2.Adam/lstm_165/lstm_cell_165/recurrent_kernel/v
/:-?2"Adam/lstm_165/lstm_cell_165/bias/v
5:3	d?2$Adam/lstm_166/lstm_cell_166/kernel/v
?:=	2?2.Adam/lstm_166/lstm_cell_166/recurrent_kernel/v
/:-?2"Adam/lstm_166/lstm_cell_166/bias/v
4:22(2$Adam/lstm_167/lstm_cell_167/kernel/v
>:<
(2.Adam/lstm_167/lstm_cell_167/recurrent_kernel/v
.:,(2"Adam/lstm_167/lstm_cell_167/bias/v
?2?
/__inference_sequential_55_layer_call_fn_3007253
/__inference_sequential_55_layer_call_fn_3007991
/__inference_sequential_55_layer_call_fn_3008018
/__inference_sequential_55_layer_call_fn_3007869?
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
J__inference_sequential_55_layer_call_and_return_conditional_losses_3008445
J__inference_sequential_55_layer_call_and_return_conditional_losses_3008872
J__inference_sequential_55_layer_call_and_return_conditional_losses_3007899
J__inference_sequential_55_layer_call_and_return_conditional_losses_3007929?
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
"__inference__wrapped_model_3005704lstm_165_input"?
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
*__inference_lstm_165_layer_call_fn_3008883
*__inference_lstm_165_layer_call_fn_3008894
*__inference_lstm_165_layer_call_fn_3008905
*__inference_lstm_165_layer_call_fn_3008916?
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
E__inference_lstm_165_layer_call_and_return_conditional_losses_3009059
E__inference_lstm_165_layer_call_and_return_conditional_losses_3009202
E__inference_lstm_165_layer_call_and_return_conditional_losses_3009345
E__inference_lstm_165_layer_call_and_return_conditional_losses_3009488?
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
*__inference_lstm_166_layer_call_fn_3009499
*__inference_lstm_166_layer_call_fn_3009510
*__inference_lstm_166_layer_call_fn_3009521
*__inference_lstm_166_layer_call_fn_3009532?
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
E__inference_lstm_166_layer_call_and_return_conditional_losses_3009675
E__inference_lstm_166_layer_call_and_return_conditional_losses_3009818
E__inference_lstm_166_layer_call_and_return_conditional_losses_3009961
E__inference_lstm_166_layer_call_and_return_conditional_losses_3010104?
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
*__inference_lstm_167_layer_call_fn_3010115
*__inference_lstm_167_layer_call_fn_3010126
*__inference_lstm_167_layer_call_fn_3010137
*__inference_lstm_167_layer_call_fn_3010148?
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
E__inference_lstm_167_layer_call_and_return_conditional_losses_3010291
E__inference_lstm_167_layer_call_and_return_conditional_losses_3010434
E__inference_lstm_167_layer_call_and_return_conditional_losses_3010577
E__inference_lstm_167_layer_call_and_return_conditional_losses_3010720?
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
*__inference_dense_55_layer_call_fn_3010729?
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
E__inference_dense_55_layer_call_and_return_conditional_losses_3010739?
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
%__inference_signature_wrapper_3007964lstm_165_input"?
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
/__inference_lstm_cell_495_layer_call_fn_3010756
/__inference_lstm_cell_495_layer_call_fn_3010773?
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
J__inference_lstm_cell_495_layer_call_and_return_conditional_losses_3010805
J__inference_lstm_cell_495_layer_call_and_return_conditional_losses_3010837?
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
/__inference_lstm_cell_496_layer_call_fn_3010854
/__inference_lstm_cell_496_layer_call_fn_3010871?
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
J__inference_lstm_cell_496_layer_call_and_return_conditional_losses_3010903
J__inference_lstm_cell_496_layer_call_and_return_conditional_losses_3010935?
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
/__inference_lstm_cell_497_layer_call_fn_3010952
/__inference_lstm_cell_497_layer_call_fn_3010969?
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
J__inference_lstm_cell_497_layer_call_and_return_conditional_losses_3011001
J__inference_lstm_cell_497_layer_call_and_return_conditional_losses_3011033?
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
"__inference__wrapped_model_3005704-./012345!";?8
1?.
,?)
lstm_165_input?????????
? "3?0
.
dense_55"?
dense_55??????????
E__inference_dense_55_layer_call_and_return_conditional_losses_3010739\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_55_layer_call_fn_3010729O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_165_layer_call_and_return_conditional_losses_3009059?-./O?L
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
E__inference_lstm_165_layer_call_and_return_conditional_losses_3009202?-./O?L
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
E__inference_lstm_165_layer_call_and_return_conditional_losses_3009345q-./??<
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
E__inference_lstm_165_layer_call_and_return_conditional_losses_3009488q-./??<
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
*__inference_lstm_165_layer_call_fn_3008883}-./O?L
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
*__inference_lstm_165_layer_call_fn_3008894}-./O?L
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
*__inference_lstm_165_layer_call_fn_3008905d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_165_layer_call_fn_3008916d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_166_layer_call_and_return_conditional_losses_3009675?012O?L
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
E__inference_lstm_166_layer_call_and_return_conditional_losses_3009818?012O?L
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
E__inference_lstm_166_layer_call_and_return_conditional_losses_3009961q012??<
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
E__inference_lstm_166_layer_call_and_return_conditional_losses_3010104q012??<
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
*__inference_lstm_166_layer_call_fn_3009499}012O?L
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
*__inference_lstm_166_layer_call_fn_3009510}012O?L
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
*__inference_lstm_166_layer_call_fn_3009521d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_166_layer_call_fn_3009532d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_167_layer_call_and_return_conditional_losses_3010291}345O?L
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
E__inference_lstm_167_layer_call_and_return_conditional_losses_3010434}345O?L
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
E__inference_lstm_167_layer_call_and_return_conditional_losses_3010577m345??<
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
E__inference_lstm_167_layer_call_and_return_conditional_losses_3010720m345??<
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
*__inference_lstm_167_layer_call_fn_3010115p345O?L
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
*__inference_lstm_167_layer_call_fn_3010126p345O?L
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
*__inference_lstm_167_layer_call_fn_3010137`345??<
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
*__inference_lstm_167_layer_call_fn_3010148`345??<
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
J__inference_lstm_cell_495_layer_call_and_return_conditional_losses_3010805?-./??}
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
J__inference_lstm_cell_495_layer_call_and_return_conditional_losses_3010837?-./??}
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
/__inference_lstm_cell_495_layer_call_fn_3010756?-./??}
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
/__inference_lstm_cell_495_layer_call_fn_3010773?-./??}
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
J__inference_lstm_cell_496_layer_call_and_return_conditional_losses_3010903?012??}
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
J__inference_lstm_cell_496_layer_call_and_return_conditional_losses_3010935?012??}
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
/__inference_lstm_cell_496_layer_call_fn_3010854?012??}
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
/__inference_lstm_cell_496_layer_call_fn_3010871?012??}
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
J__inference_lstm_cell_497_layer_call_and_return_conditional_losses_3011001?345??}
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
J__inference_lstm_cell_497_layer_call_and_return_conditional_losses_3011033?345??}
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
/__inference_lstm_cell_497_layer_call_fn_3010952?345??}
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
/__inference_lstm_cell_497_layer_call_fn_3010969?345??}
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
J__inference_sequential_55_layer_call_and_return_conditional_losses_3007899y-./012345!"C?@
9?6
,?)
lstm_165_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_55_layer_call_and_return_conditional_losses_3007929y-./012345!"C?@
9?6
,?)
lstm_165_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_55_layer_call_and_return_conditional_losses_3008445q-./012345!";?8
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
J__inference_sequential_55_layer_call_and_return_conditional_losses_3008872q-./012345!";?8
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
/__inference_sequential_55_layer_call_fn_3007253l-./012345!"C?@
9?6
,?)
lstm_165_input?????????
p 

 
? "???????????
/__inference_sequential_55_layer_call_fn_3007869l-./012345!"C?@
9?6
,?)
lstm_165_input?????????
p

 
? "???????????
/__inference_sequential_55_layer_call_fn_3007991d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_55_layer_call_fn_3008018d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_3007964?-./012345!"M?J
? 
C?@
>
lstm_165_input,?)
lstm_165_input?????????"3?0
.
dense_55"?
dense_55?????????